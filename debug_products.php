<?php
use Illuminate\Support\Facades\DB;

echo "=== AUDIT PRODUK ===\n";
$products = DB::table('content')
    ->where('content_type', 'product')
    ->where('is_deleted', 0)
    ->select('id','title','url','is_active','is_shop','subtype','subtype_value','content_type')
    ->get();

echo "Total produk: " . $products->count() . "\n\n";
foreach ($products as $p) {
    echo "ID:{$p->id} | {$p->title}\n";
    echo "   content_type={$p->content_type} | subtype={$p->subtype} | subtype_value={$p->subtype_value}\n";
    echo "   is_active={$p->is_active} | is_shop={$p->is_shop} | url={$p->url}\n\n";
}

echo "\n=== AUDIT CONTENT_FIELDS (prices) ===\n";
$prices = DB::table('content_fields')
    ->where('rel_type','content')
    ->where('field','price')
    ->get();
echo "Total price records: " . $prices->count() . "\n";
foreach ($prices->take(5) as $pr) {
    echo "  rel_id={$pr->rel_id} | value={$pr->value}\n";
}

echo "\n=== SHOP OPTION CHECK ===\n";
$opts = DB::table('options')->where('option_group','shop')->orWhere('option_group','payments')->get();
foreach ($opts as $o) {
    echo "  [{$o->option_group}] {$o->option_key} = {$o->option_value}\n";
}

echo "\n=== TOTAL SHOP ITEMS (is_shop=1) ===\n";
echo DB::table('content')->where('is_shop',1)->where('is_deleted',0)->count() . " produk\n";

echo "\n=== COBA FUNGSI get_products ===\n";
$res = app()->content_manager->get([
    'content_type' => 'product',
    'is_active'    => 1,
    'limit'        => 5
]);
echo "Hasil get_products: " . (is_array($res) ? count($res) : '0 atau null') . "\n";
if (is_array($res)) {
    foreach ($res as $r) {
        echo "  -> " . ($r['title'] ?? '?') . " price=" . ($r['price'] ?? 'N/A') . "\n";
    }
}
