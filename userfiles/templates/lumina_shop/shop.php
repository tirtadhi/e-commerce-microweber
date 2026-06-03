<?php
/*
type: layout
name: Shop
description: Shop layout - Product catalog
*/
?>
<?php include 'header.php'; ?>

<?php
$search    = isset($_GET['q'])   ? trim($_GET['q'])       : '';
$catFilter = isset($_GET['cat']) ? intval($_GET['cat'])   : 0;
$sortBy    = isset($_GET['sort'])? $_GET['sort']          : 'latest';

$db = app('db');

// --------------------------------------------------
// 1. Query produk
// --------------------------------------------------
$query = $db->table('content')
    ->where('content_type', 'product')
    ->where('is_active', 1)
    ->where('is_deleted', 0)
    ->where('is_shop', 1);

if ($search !== '') {
    $s = $search;
    $query->where(function($q) use ($s) {
        $q->where('title', 'like', "%{$s}%")
          ->orWhere('description', 'like', "%{$s}%");
    });
}

if ($catFilter > 0) {
    $catPids = $db->table('categories_items')
        ->where('parent_id', $catFilter)
        ->pluck('rel_id')
        ->toArray();
    $query->whereIn('id', $catPids);
}

$query->orderBy('id', 'desc');

$products = $query->select('id','title','url','description')->get();

// --------------------------------------------------
// 2. Harga dari content_fields
// --------------------------------------------------
$productIds = $products->pluck('id')->toArray();

$priceMap = collect();
if (!empty($productIds)) {
    $priceMap = $db->table('content_fields')
        ->where('rel_type', 'content')
        ->whereIn('rel_id', $productIds)
        ->where('field', 'price')
        ->pluck('value', 'rel_id');
}

// --------------------------------------------------
// 2.5 Apply Price Sorting if requested
// --------------------------------------------------
if ($sortBy === 'lowest') {
    $products = $products->sortBy(function($prod) use ($priceMap) {
        return floatval($priceMap->get($prod->id, 0));
    })->values();
} elseif ($sortBy === 'highest') {
    $products = $products->sortByDesc(function($prod) use ($priceMap) {
        return floatval($priceMap->get($prod->id, 0));
    })->values();
}

// --------------------------------------------------
// 3. Gambar produk — coba beberapa tabel Microweber
// --------------------------------------------------
$mediaMap = collect();
if (!empty($productIds)) {
    $mediaTables = ['media', 'user_files', 'content_fields'];
    foreach ($mediaTables as $tbl) {
        try {
            if ($tbl === 'content_fields') {
                $mediaMap = $db->table('content_fields')
                    ->where('rel_type', 'content')
                    ->whereIn('rel_id', $productIds)
                    ->where('field', 'image')
                    ->pluck('value', 'rel_id');
            } else {
                $mediaMap = $db->table($tbl)
                    ->whereIn('rel_id', $productIds)
                    ->where('rel_type', 'content')
                    ->orderBy('id', 'asc')
                    ->pluck('src', 'rel_id');
            }
            if ($mediaMap->count() > 0) break;
        } catch (\Exception $e) {
            continue;
        }
    }
}

// --------------------------------------------------
// 4. Kategori untuk sidebar
// --------------------------------------------------
$categories = collect();
try {
    $categories = $db->table('categories')
        ->where('is_deleted', 0)
        ->where('is_active', 1)
        ->where('data_type', 'shop')
        ->orderBy('position')
        ->get(['id','title']);
} catch (\Exception $e) {}

// --------------------------------------------------
// Helper
// --------------------------------------------------
function shopFormatRp($n) {
    return 'Rp ' . number_format(floatval($n), 0, ',', '.');
}
?>

<style>
    .product-card          { transition: transform .3s ease, box-shadow .3s ease; }
    .product-card:hover    { transform: translateY(-5px); box-shadow: 0 16px 32px rgba(0,35,111,.12); }
    .cart-overlay          { opacity:0; transition: opacity .25s; }
    .product-card:hover .cart-overlay { opacity:1; }
    #cart-toast            { transition: transform .3s ease, opacity .3s ease; }
</style>

<main class="max-w-[1280px] mx-auto px-4 md:px-10 pt-[100px] pb-20 min-h-screen">

    <!-- Breadcrumb -->
    <nav class="flex items-center gap-1 py-3 text-sm text-[#757682] mb-6">
        <a href="<?php echo site_url(); ?>" class="hover:text-[#00236f] transition-colors">Home</a>
        <span class="material-symbols-outlined text-[14px]">chevron_right</span>
        <span class="text-[#191c1e] font-semibold">Shop</span>
        <?php if ($search): ?>
        <span class="material-symbols-outlined text-[14px]">chevron_right</span>
        <span class="text-[#444651]">Hasil: "<?php echo htmlspecialchars($search); ?>"</span>
        <?php endif; ?>
    </nav>

    <div class="flex flex-col md:flex-row gap-8">

        <!-- ===================== SIDEBAR ===================== -->
        <aside class="w-full md:w-52 shrink-0 space-y-6">

            <!-- Search (mobile) -->
            <form action="" method="GET" class="flex items-center bg-[#eceef0] rounded-full px-3 py-2 gap-2">
                <span class="material-symbols-outlined text-[#757682] text-[18px]">search</span>
                <input type="text" name="q" value="<?php echo htmlspecialchars($search); ?>"
                       placeholder="Cari produk…"
                       class="bg-transparent border-none outline-none text-sm flex-1"/>
                <?php if ($catFilter): ?><input type="hidden" name="cat" value="<?php echo $catFilter; ?>"><?php endif; ?>
            </form>

            <!-- Kategori -->
            <div>
                <h3 class="text-[11px] font-bold uppercase tracking-widest text-[#757682] mb-3">Kategori</h3>
                <div class="space-y-2">
                    <a href="?sort=<?php echo urlencode($sortBy); ?><?php echo $search ? '&q='.urlencode($search) : ''; ?>"
                       class="flex items-center gap-2 px-3 py-2 rounded-lg text-sm font-medium border-[1.5px] transition-all duration-200 <?php echo !$catFilter ? 'bg-[#00236f] text-white border-[#00236f]' : 'text-[#444651] border-[#c5c5d3] hover:bg-[#f0f4ff] hover:text-[#00236f] hover:border-[#00236f]'; ?>">
                        <span class="material-symbols-outlined text-[16px]">grid_view</span>
                        Semua Produk
                        <span class="ml-auto text-xs opacity-70"><?php echo count($productIds); ?></span>
                    </a>
                    <?php foreach ($categories as $cat):
                        $icons = ['Elektronik'=>'devices','Fashion Pria'=>'man','Fashion Wanita'=>'woman','Aksesoris'=>'watch','Rumah Dapur'=>'kitchen','Rumah &amp; Dapur'=>'kitchen'];
                        $icon  = $icons[$cat->title] ?? 'category';
                        $catCount = $db->table('categories_items')->where('parent_id', $cat->id)->count();
                    ?>
                    <a href="?cat=<?php echo $cat->id; ?>&sort=<?php echo urlencode($sortBy); ?><?php echo $search ? '&q='.urlencode($search) : ''; ?>"
                       class="flex items-center gap-2 px-3 py-2 rounded-lg text-sm font-medium border-[1.5px] transition-all duration-200 <?php echo $catFilter == $cat->id ? 'bg-[#00236f] text-white border-[#00236f]' : 'text-[#444651] border-[#c5c5d3] hover:bg-[#f0f4ff] hover:text-[#00236f] hover:border-[#00236f]'; ?>">
                        <span class="material-symbols-outlined text-[16px]"><?php echo $icon; ?></span>
                        <?php echo htmlspecialchars($cat->title); ?>
                        <span class="ml-auto text-xs opacity-70"><?php echo $catCount; ?></span>
                    </a>
                    <?php endforeach; ?>
                </div>
            </div>

            <!-- Urutkan -->
            <div>
                <h3 class="text-[11px] font-bold uppercase tracking-widest text-[#757682] mb-3">Urutkan</h3>
                <select onchange="location.href=this.value"
                        class="w-full border border-[#c5c5d3] rounded-lg px-3 py-2 text-sm text-[#191c1e] bg-white outline-none focus:border-[#00236f] cursor-pointer">
                    <?php
                    $base = '?' . ($catFilter ? 'cat='.$catFilter.'&' : '') . ($search ? 'q='.urlencode($search).'&' : '');
                    ?>
                    <option value="<?php echo $base; ?>sort=latest"     <?php echo $sortBy=='latest'     ? 'selected':'' ?>>Terbaru</option>
                    <option value="<?php echo $base; ?>sort=price_asc"  <?php echo $sortBy=='price_asc'  ? 'selected':'' ?>>Harga: Rendah ke Tinggi</option>
                    <option value="<?php echo $base; ?>sort=price_desc" <?php echo $sortBy=='price_desc' ? 'selected':'' ?>>Harga: Tinggi ke Rendah</option>
                </select>
            </div>
        </aside>

        <!-- ===================== PRODUCT GRID ===================== -->
        <section class="flex-1 min-w-0">

            <!-- Header -->
            <div class="flex flex-wrap justify-between items-center mb-6 gap-3">
                <div>
                    <h1 class="text-2xl md:text-3xl font-bold text-[#191c1e]">
                        <?php if ($search): ?>
                            Hasil "<?php echo htmlspecialchars($search); ?>"
                        <?php elseif ($catFilter && $categories->count()): ?>
                            <?php echo htmlspecialchars($categories->firstWhere('id', $catFilter)->title ?? 'Produk'); ?>
                        <?php else: ?>
                            Semua Produk
                        <?php endif; ?>
                    </h1>
                    <p class="text-sm text-[#757682] mt-0.5"><?php echo $products->count(); ?> produk</p>
                </div>
            </div>

            <?php if ($products->isEmpty()): ?>
            <!-- Empty state -->
            <div class="flex flex-col items-center justify-center py-24 text-center">
                <span class="material-symbols-outlined text-6xl text-[#c5c5d3] mb-4">search_off</span>
                <p class="text-xl font-semibold text-[#191c1e]">Produk tidak ditemukan</p>
                <p class="text-sm text-[#757682] mt-1 mb-5">Coba kata kunci atau kategori yang berbeda.</p>
                <a href="<?php echo site_url(); ?>shop"
                   class="inline-flex items-center gap-2 bg-[#00236f] text-white px-5 py-2.5 rounded-lg text-sm font-semibold hover:opacity-90 transition-opacity">
                    <span class="material-symbols-outlined text-[18px]">storefront</span>
                    Lihat Semua Produk
                </a>
            </div>

            <?php else: ?>
            <!-- Grid produk -->
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
                <?php foreach ($products as $product):
                    $price   = $priceMap->get($product->id, 0);
                    $imgSrc  = $mediaMap->get($product->id, '');
                    $prodUrl = site_url() . ltrim($product->url, '/');
                ?>
                <div class="product-card bg-white rounded-2xl border border-[#e0e3e5] overflow-hidden shadow-sm">

                    <!-- Gambar -->
                    <div class="relative aspect-[4/3] bg-[#f2f4f6] overflow-hidden">
                        <a href="<?php echo $prodUrl; ?>">
                        <?php if ($imgSrc): ?>
                            <img src="<?php echo htmlspecialchars($imgSrc); ?>"
                                 alt="<?php echo htmlspecialchars($product->title); ?>"
                                 class="w-full h-full object-cover transition-transform duration-500 hover:scale-105"
                                 loading="lazy"/>
                        <?php else: ?>
                            <div class="w-full h-full flex flex-col items-center justify-center text-[#c5c5d3] gap-2">
                                <span class="material-symbols-outlined text-5xl">image_not_supported</span>
                                <span class="text-xs">Belum ada foto</span>
                            </div>
                        <?php endif; ?>
                        </a>

                        <!-- Add to Cart overlay -->
                        <div class="cart-overlay absolute inset-0 flex items-end justify-center pb-4 bg-gradient-to-t from-black/50 to-transparent">
                            <button onclick="addToCart(<?php echo $product->id; ?>, this)"
                                    class="flex items-center gap-1.5 bg-[#00236f] text-white px-4 py-2.5 rounded-xl text-sm font-semibold shadow-lg hover:bg-[#1e3a8a] transition-colors">
                                <span class="material-symbols-outlined text-[18px]">shopping_cart</span>
                                Tambah ke Keranjang
                            </button>
                        </div>
                    </div>

                    <!-- Info -->
                    <div class="p-4">
                        <a href="<?php echo $prodUrl; ?>">
                            <h3 class="font-semibold text-[#191c1e] hover:text-[#00236f] transition-colors leading-snug text-sm line-clamp-2">
                                <?php echo htmlspecialchars($product->title); ?>
                            </h3>
                        </a>
                        <div class="flex items-center justify-between mt-3">
                            <span class="text-base font-bold text-[#00236f]">
                                <?php echo $price ? shopFormatRp($price) : '<span class="text-[#757682] text-sm font-normal">Hubungi kami</span>'; ?>
                            </span>
                            <a href="<?php echo $prodUrl; ?>"
                               class="text-xs text-[#757682] hover:text-[#00236f] transition-colors font-medium">
                                Detail →
                            </a>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
            <?php endif; ?>
        </section>
    </div>
</main>

<!-- Toast Notifikasi Keranjang -->
<div id="cart-toast"
     class="fixed bottom-6 right-6 z-50 bg-[#00236f] text-white px-4 py-3 rounded-xl shadow-xl flex items-center gap-2 translate-y-24 opacity-0 pointer-events-none">
    <span class="material-symbols-outlined text-green-300">check_circle</span>
    <span>Produk ditambahkan!</span>
    <a href="<?php echo site_url(); ?>cart"
       class="ml-2 underline text-sm font-semibold hover:text-blue-200 pointer-events-auto">
        Lihat Keranjang
    </a>
</div>

<script>
function addToCart(productId, btn) {
    const orig = btn.innerHTML;
    btn.disabled = true;
    btn.innerHTML = '<span class="material-symbols-outlined text-[18px] animate-spin">sync</span> Menambahkan…';

    $.post('<?php echo site_url(); ?>api/update_cart', { content_id: productId, qty: 1 })
    .done(function(data) {
        btn.innerHTML = '<span class="material-symbols-outlined text-[18px]">check</span> Ditambahkan!';

        // Toast
        const toast = document.getElementById('cart-toast');
        toast.classList.remove('translate-y-24','opacity-0','pointer-events-none');
        toast.classList.add('translate-y-0','opacity-100');
        setTimeout(() => {
            toast.classList.add('translate-y-24','opacity-0','pointer-events-none');
            toast.classList.remove('translate-y-0','opacity-100');
            btn.disabled = false;
            btn.innerHTML = orig;
        }, 3000);

        // Update badge header
        const badge = document.querySelector('header .bg-red-500');
        if (badge) {
            badge.textContent = parseInt(badge.textContent || '0') + 1;
        } else {
            // Buat badge baru
            const cartLink = document.querySelector('a[href$="cart"]');
            if (cartLink && !cartLink.querySelector('.bg-red-500')) {
                const b = document.createElement('span');
                b.className = 'absolute -top-1 -right-1 bg-red-500 text-white text-[9px] w-4 h-4 flex items-center justify-center rounded-full font-bold';
                b.textContent = '1';
                cartLink.style.position = 'relative';
                cartLink.appendChild(b);
            }
        }
    })
    .fail(function() {
        btn.disabled = false;
        btn.innerHTML = orig;
        alert('Gagal menambah ke keranjang. Silakan coba lagi.');
    });
}
</script>

<?php include 'footer.php'; ?>
