<?php
use Illuminate\Support\Facades\DB;

echo "Memulai setup toko Microweber...\n\n";

// ---- 1. CURRENCY IDR ----
DB::table('options')->updateOrInsert(
    ['option_key' => 'currency', 'option_group' => 'shop'],
    ['option_value' => 'IDR']
);
DB::table('options')->updateOrInsert(
    ['option_key' => 'currency_position', 'option_group' => 'shop'],
    ['option_value' => 'before']
);
DB::table('options')->updateOrInsert(
    ['option_key' => 'currency_symbol', 'option_group' => 'shop'],
    ['option_value' => 'Rp']
);
echo "✅ Mata uang: IDR (Rp)\n";

// ---- 2. SHIPPING (cart_shipping) ----
$couriers = [
    ['JNE Regular',       15000],
    ['JNE YES',           30000],
    ['J&T Express',       14000],
    ['SiCepat REG',       13000],
    ['SiCepat HALU',      35000],
    ['Pos Indonesia',     10000],
    ['Anteraja',          12000],
    ['GoSend Same Day',    8000],
];
DB::table('cart_shipping')->truncate();
foreach ($couriers as $i => [$name, $price]) {
    DB::table('cart_shipping')->insert([
        'shipping_type'   => $name,
        'shipping_cost'   => $price,
        'is_active'       => 'y',
        'position'        => $i + 1,
        'shipping_country'=> 'all',
        'created_at'      => now(),
        'updated_at'      => now(),
    ]);
}
echo "✅ Pengiriman: " . count($couriers) . " kurir (JNE, J&T, SiCepat, Pos, Anteraja, GoSend)\n";

// ---- 3. CATEGORIES ----
$categoryDefs = [
    ['title' => 'Elektronik',     'url' => 'shop/kategori/elektronik'],
    ['title' => 'Fashion Pria',   'url' => 'shop/kategori/fashion-pria'],
    ['title' => 'Fashion Wanita', 'url' => 'shop/kategori/fashion-wanita'],
    ['title' => 'Aksesoris',      'url' => 'shop/kategori/aksesoris'],
    ['title' => 'Rumah Dapur',    'url' => 'shop/kategori/rumah-dapur'],
];
$categoryIds = [];
foreach ($categoryDefs as $i => $cat) {
    $existing = DB::table('categories')->where('title', $cat['title'])->first();
    if ($existing) {
        $categoryIds[$i] = $existing->id;
        echo "  ↩ [{$cat['title']}] sudah ada ID:{$existing->id}\n";
    } else {
        $id = DB::table('categories')->insertGetId([
            'title'      => $cat['title'],
            'url'        => $cat['url'],
            'position'   => $i + 1,
            'is_active'  => 1,
            'data_type'  => 'shop',
            'rel_type'   => 'content',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
        $categoryIds[$i] = $id;
        echo "  ✓ [{$cat['title']}] dibuat ID:$id\n";
    }
}
echo "✅ 5 kategori siap\n\n";

// ---- 4. FIND/CREATE SHOP PARENT ----
$shopPage = DB::table('content')->where('is_shop', 1)->where('is_deleted', 0)->orderBy('id')->first();
$parentId = $shopPage ? $shopPage->id : 0;

// ---- Helper: set price via content_fields ----
$setPrice = function($contentId, $price) {
    $existing = DB::table('content_fields')
        ->where('rel_type', 'content')
        ->where('rel_id', $contentId)
        ->where('field', 'price')
        ->first();
    if ($existing) {
        DB::table('content_fields')->where('id', $existing->id)->update(['value' => $price]);
    } else {
        DB::table('content_fields')->insert([
            'rel_type'   => 'content',
            'rel_id'     => (string)$contentId,
            'field'      => 'price',
            'value'      => (string)$price,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
};

// ---- 5. PRODUCTS ----
$allProducts = [
    0 => [ // Elektronik
        ['title' => 'Smartphone Samsung Galaxy A35',   'price' => 3999000, 'desc' => 'Smartphone Android 5G, kamera 50MP triple, layar Super AMOLED 6.6 inci, baterai 5000mAh, RAM 8GB.'],
        ['title' => 'Laptop ASUS VivoBook 14 i5',      'price' => 7499000, 'desc' => 'Laptop tipis Intel Core i5 Gen12, RAM 8GB DDR4, SSD 512GB NVMe, layar FHD anti-glare 14 inci.'],
        ['title' => 'TWS Earbuds Xiaomi Redmi Buds 5', 'price' => 349000,  'desc' => 'True Wireless earbuds ANC aktif, driver 12.4mm, total 38 jam baterai dengan charging case.'],
        ['title' => 'Smart TV Android 43 Inch TCL 4K', 'price' => 4299000, 'desc' => 'Smart TV 4K UHD 43 inci Android TV, Dolby Vision HDR, Netflix YouTube Google Play built-in.'],
        ['title' => 'Power Bank Baseus 20000mAh 65W',  'price' => 549000,  'desc' => 'Power bank 20000mAh fast charge 65W, dual port USB-A dan USB-C, layar LED indikator daya.'],
    ],
    1 => [ // Fashion Pria
        ['title' => 'Kemeja Flannel Pria Slim Fit',    'price' => 189000,  'desc' => 'Kemeja flannel kotak-kotak pria bahan cotton twill premium, potongan slim fit modern.'],
        ['title' => 'Celana Chino Pria Stretch',       'price' => 259000,  'desc' => 'Celana chino stretch anti-kusut, slim tapered fit, 6 pilihan warna, ukuran 28-36.'],
        ['title' => 'Jaket Bomber Pria Parasut',       'price' => 349000,  'desc' => 'Jaket bomber waterproof, inner fleece hangat, bordir logo minimalis di dada.'],
        ['title' => 'Sepatu Sneaker Casual Pria',      'price' => 429000,  'desc' => 'Sneaker kasual pria all-white, sol vulkanisir tebal, bahan canvas premium, ringan.'],
        ['title' => 'Polo Shirt Pria Lacoste Pique',   'price' => 175000,  'desc' => 'Polo shirt berkerah lacoste pique, adem menyerap keringat, cocok casual dan semi-formal.'],
    ],
    2 => [ // Fashion Wanita
        ['title' => 'Dress Maxi Floral Rayon Wanita',  'price' => 289000,  'desc' => 'Dress maxi motif bunga bahan rayon premium, ringan dan lembut, cocok hangout dan liburan.'],
        ['title' => 'Blouse Chiffon Korean Style',      'price' => 169000,  'desc' => 'Blouse chiffon gaya Korea, lengan balon elegan, tersedia 8 pilihan warna pastel.'],
        ['title' => 'Celana Kulot Linen Wanita',        'price' => 229000,  'desc' => 'Kulot linen high-waist potongan longgar, adem nyaman sepanjang hari, ukuran S-XXL.'],
        ['title' => 'Hijab Voal Lasercut Premium',      'price' => 89000,   'desc' => 'Hijab segi empat voal lasercut 130x130cm, anti-kusut, jatuh cantik, ringan bernapas.'],
        ['title' => 'Flatshoes Pita Wanita PU Leather', 'price' => 259000,  'desc' => 'Flat shoes pita PU leather cantik, sol anti-slip nyaman, tersedia 5 pilihan warna.'],
    ],
    3 => [ // Aksesoris
        ['title' => 'Jam Tangan Casio MTP Stainless',  'price' => 699000,  'desc' => 'Jam tangan analog Casio MTP-V006, tahan air 50m, tali stainless brushed, kaca mineral.'],
        ['title' => 'Tas Ransel Anti Air 30L Laptop',  'price' => 379000,  'desc' => 'Backpack 30L anti-air muat laptop 15.6 inci, banyak kompartemen, polyester 900D tebal.'],
        ['title' => 'Dompet Kulit RFID Slim Bifold',   'price' => 229000,  'desc' => 'Dompet bifold kulit sintetis premium, perlindungan RFID, 12 slot kartu, tipis modern.'],
        ['title' => 'Kacamata Hitam Polarized UV400',  'price' => 159000,  'desc' => 'Sunglasses polarized UV400 anti-silau, frame TR90 ringan fleksibel, anti-pecah.'],
        ['title' => 'Gelang Stainless Steel 316L Pria','price' => 89000,   'desc' => 'Gelang tangan pria baja antikarat 316L, tidak mudah pudar, desain simpel modern.'],
    ],
    4 => [ // Rumah & Dapur
        ['title' => 'Wajan Granite Anti Lengket 28cm', 'price' => 279000,  'desc' => 'Wajan granite coating 5 lapis anti lengket 28cm, kompatibel kompor gas dan induksi.'],
        ['title' => 'Set Makan Keramik Nordic 12 Pcs', 'price' => 419000,  'desc' => 'Set peralatan makan keramik premium 12 pcs (4 piring+4 mangkok+4 mug) motif Nordic.'],
        ['title' => 'Rak Dinding Kayu Minimalis 60cm', 'price' => 175000,  'desc' => 'Rak kayu dinding minimalis 60x20x15cm, sudah termasuk baut dan fisher, kayu jati.'],
        ['title' => 'Rice Cooker Fuzzy Logic 1.8L',    'price' => 359000,  'desc' => 'Rice cooker fuzzy logic 1.8L, inner pot anti-lengket 5 lapis, fitur keep warm 24 jam.'],
        ['title' => 'LED Strip RGB 5 Meter Plus Remote','price' => 129000,  'desc' => 'LED strip RGB 5 meter, remote 44 tombol 16 juta warna, self-adhesive, 12V DC aman.'],
    ],
];

$productCount = 0;
$updatedCount = 0;

foreach ($allProducts as $catIdx => $items) {
    $catId   = $categoryIds[$catIdx] ?? null;
    $catName = $categoryDefs[$catIdx]['title'];
    if (!$catId) { echo "⚠️  Tidak ada kategori index $catIdx\n"; continue; }
    echo "📁 $catName:\n";

    foreach ($items as $item) {
        $slug = strtolower(preg_replace('/[^a-z0-9]+/', '-', iconv('UTF-8', 'ASCII//TRANSLIT//IGNORE', $item['title'])));
        $slug = trim(preg_replace('/-+/', '-', $slug), '-');
        $url  = 'shop/' . $slug;

        $existing = DB::table('content')->where('title', $item['title'])->first();

        if ($existing) {
            DB::table('content')->where('id', $existing->id)->update([
                'is_shop'    => 1,
                'is_active'  => 1,
                'updated_at' => now(),
            ]);
            $contentId = $existing->id;
            $updatedCount++;
        } else {
            $maxPos    = (int) DB::table('content')->max('position');
            $contentId = DB::table('content')->insertGetId([
                'title'         => $item['title'],
                'url'           => $url,
                'description'   => $item['desc'],
                'content_type'  => 'product',
                'subtype'       => 'product',
                'subtype_value' => 'product',
                'is_shop'       => 1,
                'is_active'     => 1,
                'is_deleted'    => 0,
                'position'      => $maxPos + 1,
                'parent'        => $parentId,
                'created_at'    => now(),
                'updated_at'    => now(),
            ]);
        }

        // Set price via content_fields
        $setPrice($contentId, $item['price']);

        // Link to category (parent_id = category ID, rel_id = product ID, rel_type = content)
        $linked = DB::table('categories_items')
            ->where('parent_id', $catId)->where('rel_id', $contentId)->exists();
        if (!$linked) {
            DB::table('categories_items')->insert(['parent_id' => $catId, 'rel_id' => $contentId, 'rel_type' => 'content']);
        }

        $productCount++;
        echo "  ✓ {$item['title']} — Rp " . number_format($item['price'], 0, ',', '.') . "\n";
    }
    echo "\n";
}

echo "🎉 ================================================\n";
echo "   SETUP TOKO SELESAI!\n";
echo "================================================\n";
echo "  💰 Mata Uang  : IDR (Rp / Rupiah)\n";
echo "  🚚 Pengiriman : " . count($couriers) . " kurir\n";
echo "     JNE Regular (Rp 15.000) | JNE YES (Rp 30.000)\n";
echo "     J&T Express (Rp 14.000) | SiCepat REG (Rp 13.000)\n";
echo "     SiCepat HALU (Rp 35.000) | Pos Indonesia (Rp 10.000)\n";
echo "     Anteraja (Rp 12.000) | GoSend Same Day (Rp 8.000)\n";
echo "  📁 Kategori   : 5 kategori\n";
echo "     Elektronik | Fashion Pria | Fashion Wanita\n";
echo "     Aksesoris | Rumah Dapur\n";
echo "  📦 Produk     : $productCount produk total (5 per kategori)\n";
echo "  🔄 Updated    : $updatedCount produk existing\n";
echo "================================================\n";
echo "\nSilakan kunjungi http://ecom.test/shop untuk melihat hasilnya!\n";
