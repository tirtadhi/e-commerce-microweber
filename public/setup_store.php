<?php

// Bootstrap Laravel properly
define('LARAVEL_START', microtime(true));
require __DIR__ . '/../vendor/autoload.php';
$app = require_once __DIR__ . '/../bootstrap/app.php';

// Run through the console kernel to get full bootstrap
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

use Illuminate\Support\Facades\DB;

echo "Starting store setup...\n\n";

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
echo "✅ Currency set to IDR (Rp)\n";

// ---- 2. SHIPPING METHODS ----
$couriers = [
    ['JNE Regular',   15000, '2-3 hari kerja'],
    ['JNE YES',       30000, '1 hari kerja (Yakin Esok Sampai)'],
    ['J&T Express',   14000, '2-3 hari kerja'],
    ['SiCepat REG',   13000, '2-4 hari kerja'],
    ['SiCepat HALU',  35000, '1 hari kerja (Same Day)'],
    ['Pos Indonesia', 10000, '3-5 hari kerja'],
    ['Anteraja',      12000, '2-3 hari kerja'],
    ['GoSend Same Day', 8000, 'Hari yang sama (dalam kota)'],
];

try {
    DB::table('shipping_methods')->truncate();
    foreach ($couriers as $i => [$name, $price, $duration]) {
        DB::table('shipping_methods')->insert([
            'title'       => $name,
            'description' => $duration,
            'type'        => 'flat',
            'price'       => $price,
            'position'    => $i + 1,
            'is_enabled'  => 1,
            'created_at'  => now(),
            'updated_at'  => now(),
        ]);
    }
    echo "✅ " . count($couriers) . " shipping methods added (JNE, J&T, SiCepat, Pos Indonesia, Anteraja, GoSend)\n";
} catch (\Exception $e) {
    echo "⚠️  Shipping: " . $e->getMessage() . "\n";
}

// ---- 3. CATEGORIES ----
$categoryDefs = [
    ['title' => 'Elektronik',     'slug' => 'elektronik'],
    ['title' => 'Fashion Pria',   'slug' => 'fashion-pria'],
    ['title' => 'Fashion Wanita', 'slug' => 'fashion-wanita'],
    ['title' => 'Aksesoris',      'slug' => 'aksesoris'],
    ['title' => 'Rumah & Dapur',  'slug' => 'rumah-dapur'],
];

$categoryIds = [];
foreach ($categoryDefs as $i => $cat) {
    try {
        $existing = DB::table('categories')->where('slug', $cat['slug'])->first();
        if ($existing) {
            $categoryIds[$i] = $existing->id;
        } else {
            $id = DB::table('categories')->insertGetId([
                'title'       => $cat['title'],
                'slug'        => $cat['slug'],
                'position'    => $i + 1,
                'is_enabled'  => 1,
                'created_at'  => now(),
                'updated_at'  => now(),
            ]);
            $categoryIds[$i] = $id;
        }
    } catch (\Exception $e) {
        echo "⚠️  Category [{$cat['title']}]: " . $e->getMessage() . "\n";
    }
}
echo "✅ 5 categories ensured (Elektronik, Fashion Pria, Fashion Wanita, Aksesoris, Rumah & Dapur)\n";

// ---- 4. PRODUCTS ----
// Find parent shop page
$shopPage = DB::table('content')->where('subtype', 'shop')->orWhere('is_shop', 1)->orderBy('id')->first();
$parentId = $shopPage ? $shopPage->id : 0;

$allProducts = [
    // Elektronik (index 0)
    0 => [
        ['title' => 'Smartphone Samsung Galaxy A35',   'price' => 3999000,  'desc' => 'Smartphone Android 5G dengan kamera 50MP triple, layar Super AMOLED 6.6 inci, baterai 5000mAh, RAM 8GB.'],
        ['title' => 'Laptop ASUS VivoBook 14',         'price' => 7499000,  'desc' => 'Laptop tipis bertenaga Intel Core i5 Gen 12, RAM 8GB DDR4, SSD 512GB NVMe, layar FHD anti-glare.'],
        ['title' => 'TWS Earbuds Xiaomi Redmi Buds 5', 'price' => 349000,   'desc' => 'True Wireless Stereo earbuds Active Noise Cancellation, bass 12.4mm driver, baterai 38 jam total.'],
        ['title' => 'Smart TV Android 43 Inch TCL',    'price' => 4299000,  'desc' => 'Smart TV 4K UHD 43 inci, OS Android TV, Dolby Vision, akses Netflix YouTube Google Play.'],
        ['title' => 'Power Bank Baseus 20000mAh 65W',  'price' => 549000,   'desc' => 'Power bank 20000mAh fast charge 65W, dual output USB-A dan USB-C, layar LED indikator.'],
    ],
    // Fashion Pria (index 1)
    1 => [
        ['title' => 'Kemeja Flannel Pria Slim Fit',    'price' => 189000,   'desc' => 'Kemeja flannel kotak-kotak pria, bahan cotton twill premium, potongan slim fit modern.'],
        ['title' => 'Celana Chino Pria Stretch',       'price' => 259000,   'desc' => 'Celana chino panjang bahan stretch ringan anti-kusut, potongan slim tapered, tersedia 6 warna.'],
        ['title' => 'Jaket Bomber Pria Parasut',       'price' => 349000,   'desc' => 'Jaket bomber pria bahan parasut waterproof, inner fleece hangat, bordir logo minimalis.'],
        ['title' => 'Sepatu Sneaker Pria Putih',       'price' => 429000,   'desc' => 'Sneaker kasual pria all-white, sol karet vulkanisir tebal, bahan canvas premium, ringan.'],
        ['title' => 'Polo Shirt Pria Lacoste Premium', 'price' => 175000,   'desc' => 'Polo shirt berkerah bahan lacoste pique adem dan menyerap keringat, cocok casual & formal.'],
    ],
    // Fashion Wanita (index 2)
    2 => [
        ['title' => 'Dress Maxi Floral Rayon Wanita',  'price' => 289000,   'desc' => 'Dress maxi motif bunga bahan rayon premium ringan dan lembut, cocok hangout dan liburan.'],
        ['title' => 'Blouse Wanita Korean Style',       'price' => 169000,   'desc' => 'Blouse chiffon gaya Korea, lengan balon elegan, tersedia 8 pilihan warna pastel.'],
        ['title' => 'Celana Kulot Linen Wanita',        'price' => 229000,   'desc' => 'Kulot linen potongan longgar, adem dan nyaman, high-waist, tersedia ukuran S-XXL.'],
        ['title' => 'Hijab Voal Lasercut Premium',      'price' => 89000,    'desc' => 'Hijab segi empat voal lasercut 130x130cm, anti-kusut, jatuh cantik, ringan bernapas.'],
        ['title' => 'Flatshoes Pita Wanita',            'price' => 259000,   'desc' => 'Flat shoes wanita PU leather dengan pita cantik, sol anti-slip, tersedia 5 warna.'],
    ],
    // Aksesoris (index 3)
    3 => [
        ['title' => 'Jam Tangan Casio Strap Stainless', 'price' => 699000,  'desc' => 'Jam tangan analog pria Casio MTP-V006, tahan air 50m, strap stainless brushed, kaca mineral.'],
        ['title' => 'Tas Ransel Anti Air 30L',           'price' => 379000,  'desc' => 'Backpack anti-air 30L muat laptop 15.6 inci, banyak saku, bahan polyester 900D tebal.'],
        ['title' => 'Dompet Kulit Pria Slim RFID',       'price' => 229000,  'desc' => 'Dompet bifold kulit sintetis premium dengan perlindungan RFID, 12 slot kartu, tipis.'],
        ['title' => 'Kacamata Hitam Polarized UV400',    'price' => 159000,  'desc' => 'Sunglasses polarized UV400 anti-silau, frame TR90 ringan dan fleksibel, anti-pecah.'],
        ['title' => 'Gelang Stainless Steel Pria',       'price' => 89000,   'desc' => 'Gelang tangan pria baja antikarat 316L, tahan lama, tidak mudah pudar, desain simpel.'],
    ],
    // Rumah & Dapur (index 4)
    4 => [
        ['title' => 'Wajan Anti Lengket Granite 28cm',  'price' => 279000,  'desc' => 'Wajan granite coating anti lengket 28cm, lapisan 5 lapis, kompatibel gas & induksi.'],
        ['title' => 'Set Makan Keramik 12 Pcs',         'price' => 419000,  'desc' => 'Set peralatan makan keramik premium 12 pcs (4 piring, 4 mangkok, 4 mug), motif Nordic.'],
        ['title' => 'Rak Dinding Kayu Minimalis 60cm',  'price' => 175000,  'desc' => 'Rak kayu dinding minimalis 60x20x15cm, sudah termasuk baut & fisher, KAYU JATI PILIHAN.'],
        ['title' => 'Rice Cooker Cosmos 1.8L Fuzzy',    'price' => 359000,  'desc' => 'Rice cooker fuzzy logic 1.8L, inner pot anti-lengket 5 lapis, fitur keep warm 24 jam.'],
        ['title' => 'LED Strip RGB 5M + Remote',        'price' => 129000,  'desc' => 'LED strip RGB 5 meter, remote 44 tombol 16 juta warna, self-adhesive, 12V DC aman.'],
    ],
];

$productCount = 0;
$skipped = 0;

foreach ($allProducts as $catIdx => $items) {
    $catId = $categoryIds[$catIdx] ?? null;
    if (!$catId) { echo "⚠️  No category ID for index $catIdx\n"; continue; }

    foreach ($items as $item) {
        try {
            $slug = strtolower(preg_replace('/[^a-z0-9]+/', '-', iconv('UTF-8', 'ASCII//TRANSLIT', $item['title'])));
            $slug = trim(preg_replace('/-+/', '-', $slug), '-');
            $url  = 'shop/' . $slug;

            $existing = DB::table('content')->where('title', $item['title'])->first();
            if ($existing) {
                DB::table('content')->where('id', $existing->id)->update(['price' => $item['price'], 'is_shop' => 1]);
                $contentId = $existing->id;
                $skipped++;
            } else {
                $maxPos = DB::table('content')->max('position') ?? 0;
                $contentId = DB::table('content')->insertGetId([
                    'title'        => $item['title'],
                    'url'          => $url,
                    'description'  => $item['desc'],
                    'price'        => $item['price'],
                    'content_type' => 'product',
                    'subtype'      => 'product',
                    'subtype_value'=> 'product',
                    'is_shop'      => 1,
                    'is_enabled'   => 1,
                    'position'     => $maxPos + 1,
                    'parent'       => $parentId,
                    'created_at'   => now(),
                    'updated_at'   => now(),
                ]);
            }

            // Link category
            $linked = DB::table('categories_items')
                ->where('category_id', $catId)
                ->where('rel_id', $contentId)
                ->exists();
            if (!$linked) {
                DB::table('categories_items')->insert(['category_id' => $catId, 'rel_id' => $contentId]);
            }

            $productCount++;
        } catch (\Exception $e) {
            echo "⚠️  Product [{$item['title']}]: " . $e->getMessage() . "\n";
        }
    }
}

echo "✅ {$productCount} products created/updated ({$skipped} already existed, updated price)\n";

echo "\n🎉 ========== SETUP SELESAI! ==========\n";
echo "  💰 Mata Uang : IDR (Rp)\n";
echo "  🚚 Pengiriman: " . count($couriers) . " kurir (JNE, J&T, SiCepat, Pos, Anteraja, GoSend)\n";
echo "  📁 Kategori  : 5 (Elektronik, Fashion Pria, Fashion Wanita, Aksesoris, Rumah & Dapur)\n";
echo "  📦 Produk    : {$productCount} produk (5 per kategori)\n";
echo "=======================================\n";
