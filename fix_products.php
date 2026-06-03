<?php
use Illuminate\Support\Facades\DB;

echo "=== PERBAIKAN PRODUK MICROWEBER ===\n\n";

// Helper: buat slug yang benar tanpa iconv
function makeSlug($text) {
    $text = mb_strtolower($text, 'UTF-8');
    $text = str_replace(
        ['á','à','ä','â','ã','å','é','è','ë','ê','í','ì','ï','î','ó','ò','ö','ô','õ','ú','ù','ü','û','ñ','ç'],
        ['a','a','a','a','a','a','e','e','e','e','i','i','i','i','o','o','o','o','o','u','u','u','u','n','c'],
        $text
    );
    // Keep only alphanumeric, spaces, hyphens
    $text = preg_replace('/[^a-z0-9\s\-]/', '', $text);
    $text = preg_replace('/[\s\-]+/', '-', trim($text));
    return trim($text, '-');
}

// ====================================================
// 1. PERBAIKI URL PRODUK
// ====================================================
echo "1. Memperbaiki URL produk...\n";
$products = DB::table('content')
    ->where('content_type', 'product')
    ->where('is_deleted', 0)
    ->get();

foreach ($products as $p) {
    $slug    = makeSlug($p->title);
    $newUrl  = 'shop/' . $slug;
    if ($p->url !== $newUrl) {
        DB::table('content')->where('id', $p->id)->update(['url' => $newUrl]);
        echo "  ✓ ID:{$p->id} [{$p->title}] → {$newUrl}\n";
    } else {
        echo "  ↩ ID:{$p->id} [{$p->title}] sudah benar\n";
    }
}

// ====================================================
// 2. SET HARGA VIA CUSTOM_FIELDS (cara yang benar Microweber)
// ====================================================
echo "\n2. Menyinkronkan harga ke custom_fields...\n";

// Harga setiap produk
$prices = [
    'Smartphone Samsung Galaxy A35'    => 3999000,
    'Laptop ASUS VivoBook 14 i5'       => 7499000,
    'TWS Earbuds Xiaomi Redmi Buds 5'  => 349000,
    'Smart TV Android 43 Inch TCL 4K'  => 4299000,
    'Power Bank Baseus 20000mAh 65W'   => 549000,
    'Kemeja Flannel Pria Slim Fit'     => 189000,
    'Celana Chino Pria Stretch'        => 259000,
    'Jaket Bomber Pria Parasut'        => 349000,
    'Sepatu Sneaker Casual Pria'       => 429000,
    'Polo Shirt Pria Lacoste Pique'    => 175000,
    'Dress Maxi Floral Rayon Wanita'   => 289000,
    'Blouse Chiffon Korean Style'      => 169000,
    'Celana Kulot Linen Wanita'        => 229000,
    'Hijab Voal Lasercut Premium'      => 89000,
    'Flatshoes Pita Wanita PU Leather' => 259000,
    'Jam Tangan Casio MTP Stainless'   => 699000,
    'Tas Ransel Anti Air 30L Laptop'   => 379000,
    'Dompet Kulit RFID Slim Bifold'    => 229000,
    'Kacamata Hitam Polarized UV400'   => 159000,
    'Gelang Stainless Steel 316L Pria' => 89000,
    'Wajan Granite Anti Lengket 28cm'  => 279000,
    'Set Makan Keramik Nordic 12 Pcs'  => 419000,
    'Rak Dinding Kayu Minimalis 60cm'  => 175000,
    'Rice Cooker Fuzzy Logic 1.8L'     => 359000,
    'LED Strip RGB 5 Meter Plus Remote'=> 129000,
];

// Cara Microweber menyimpan harga: tabel custom_fields dengan type=price
foreach ($products as $p) {
    $price = $prices[$p->title] ?? null;
    if (!$price) {
        echo "  ⚠ Tidak ada harga untuk: {$p->title}\n";
        continue;
    }

    // Update atau insert ke content_fields (field=price)
    $existCf = DB::table('content_fields')
        ->where('rel_type', 'content')
        ->where('rel_id', $p->id)
        ->where('field', 'price')
        ->first();

    if ($existCf) {
        DB::table('content_fields')
            ->where('id', $existCf->id)
            ->update(['value' => $price, 'updated_at' => now()]);
    } else {
        DB::table('content_fields')->insert([
            'rel_type'   => 'content',
            'rel_id'     => (string)$p->id,
            'field'      => 'price',
            'value'      => (string)$price,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }

    // JUGA simpan ke custom_fields jika ada (cara alternatif Microweber)
    // Cek apakah ada tabel custom_fields
    try {
        $existCustom = DB::table('custom_fields')
            ->where('rel_type', 'content')
            ->where('rel_id', $p->id)
            ->where('type', 'price')
            ->first();

        if ($existCustom) {
            DB::table('custom_fields')
                ->where('id', $existCustom->id)
                ->update(['value' => $price]);
        } else {
            DB::table('custom_fields')->insert([
                'rel_type'   => 'content',
                'rel_id'     => $p->id,
                'type'       => 'price',
                'name'       => 'Price',
                'value'      => $price,
                'position'   => 0,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    } catch (\Exception $e) {
        // custom_fields tidak ada, skip
    }

    echo "  ✓ {$p->title} → Rp " . number_format($price, 0, ',', '.') . "\n";
}

// ====================================================
// 3. PASTIKAN SEMUA PRODUK is_shop=1 DAN is_active=1
// ====================================================
echo "\n3. Memastikan semua produk published...\n";
$updated = DB::table('content')
    ->where('content_type', 'product')
    ->where('is_deleted', 0)
    ->update(['is_shop' => 1, 'is_active' => 1, 'status' => 'published']);
echo "  ✓ {$updated} produk diset is_shop=1, is_active=1\n";

// ====================================================
// 4. PERBAIKI KATEGORI (pastikan terhubung)
// ====================================================
echo "\n4. Verifikasi relasi kategori-produk...\n";
$catLinks = DB::table('categories_items')
    ->select('parent_id', DB::raw('count(*) as total'))
    ->groupBy('parent_id')
    ->get();
foreach ($catLinks as $cl) {
    $cat = DB::table('categories')->find($cl->parent_id);
    echo "  Kategori [{$cat->title}]: {$cl->total} produk\n";
}

// ====================================================
// 5. CEK SHOP PAGE (content dengan is_shop halaman)
// ====================================================
echo "\n5. Cek halaman shop...\n";
$shopPage = DB::table('content')
    ->where(function($q) {
        $q->where('url', 'shop')
          ->orWhere('url', 'like', '%/shop')
          ->orWhere('content_type', 'shop_page');
    })
    ->where('is_deleted', 0)
    ->get(['id','title','url','content_type','is_active']);
foreach ($shopPage as $sp) {
    echo "  Shop page: ID={$sp->id} | {$sp->url} | {$sp->content_type} | active={$sp->is_active}\n";
}

echo "\n✅ SELESAI! Bersihkan cache setelah ini.\n";
