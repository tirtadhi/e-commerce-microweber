<?php
use Illuminate\Support\Facades\DB;

echo "=== CEK SHOP PAGE & PARENT ===\n";

// Cek semua halaman yang ada
$pages = DB::table('content')
    ->where('is_deleted', 0)
    ->where('is_active', 1)
    ->whereIn('content_type', ['page', 'shop_page', 'shop', 'product_page'])
    ->orWhere('is_shop', 1)
    ->select('id','title','url','content_type','is_shop','parent')
    ->get();

echo "Halaman aktif:\n";
foreach ($pages as $p) {
    echo "  ID:{$p->id} | [{$p->content_type}] | {$p->url} | is_shop={$p->is_shop} | parent={$p->parent}\n";
}

echo "\n=== CEK url='shop' ===\n";
$shop = DB::table('content')->where('url', 'shop')->get(['id','title','url','content_type','is_shop','is_active']);
foreach ($shop as $s) {
    echo "  ID:{$s->id} | {$s->url} | type={$s->content_type} | is_shop={$s->is_shop} | active={$s->is_active}\n";
}

echo "\n=== PARENT PRODUK ===\n";
$parentIds = DB::table('content')->where('content_type','product')->where('is_deleted',0)->pluck('parent')->unique();
echo "Parent IDs digunakan: " . $parentIds->join(', ') . "\n";
foreach ($parentIds as $pid) {
    if ($pid) {
        $par = DB::table('content')->find($pid);
        echo "  Parent ID:{$pid} = " . ($par ? "{$par->title} [{$par->url}]" : "TIDAK DITEMUKAN") . "\n";
    } else {
        echo "  Parent ID: 0 (tidak ada parent)\n";
    }
}

echo "\n=== BUAT/PERBAIKI SHOP PAGE ===\n";
// Cek apakah ada shop page
$shopPage = DB::table('content')
    ->where('url', 'shop')
    ->where('is_deleted', 0)
    ->first();

if (!$shopPage) {
    echo "Shop page tidak ada! Membuat...\n";
    $shopId = DB::table('content')->insertGetId([
        'title'        => 'Shop',
        'url'          => 'shop',
        'content_type' => 'page',
        'subtype'      => 'shop',
        'is_shop'      => 1,
        'is_active'    => 1,
        'is_deleted'   => 0,
        'is_home'      => 0,
        'position'     => 1,
        'created_at'   => now(),
        'updated_at'   => now(),
    ]);
    echo "  ✓ Shop page dibuat ID:{$shopId}\n";
} else {
    $shopId = $shopPage->id;
    echo "Shop page sudah ada ID:{$shopId} | url={$shopPage->url}\n";
    // Pastikan aktif
    DB::table('content')->where('id', $shopId)->update([
        'is_shop'   => 1,
        'is_active' => 1,
        'subtype'   => 'shop',
    ]);
}

// Set semua produk parent ke shop page
$updated = DB::table('content')
    ->where('content_type', 'product')
    ->where('is_deleted', 0)
    ->update(['parent' => $shopId]);
echo "  ✓ {$updated} produk ditautkan ke shop page (parent={$shopId})\n";

echo "\n=== VERIFIKASI AKHIR ===\n";
$total = DB::table('content')
    ->where('content_type','product')
    ->where('is_deleted',0)
    ->where('is_active',1)
    ->where('parent', $shopId)
    ->count();
echo "Produk siap ditampilkan: {$total}\n";
