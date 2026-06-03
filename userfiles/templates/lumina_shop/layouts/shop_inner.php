<?php
/*
type: layout
name: Product Detail
description: Product Detail layout
is_shop: y
is_custom: y
*/
?>
<?php include 'header.php'; ?>

<main class="pt-[100px] pb-xl max-w-[1280px] mx-auto px-margin-mobile md:px-margin-desktop min-h-[70vh]">
    <!-- Breadcrumbs -->
    <nav class="flex gap-xs mb-lg text-on-surface-variant font-label-md text-label-md edit" field="product_breadcrumbs" rel="content">
        <a class="hover:text-primary" href="<?php print site_url(); ?>">Home</a>
        <span>/</span>
        <a class="hover:text-primary" href="<?php print site_url(); ?>shop">Shop</a>
        <span>/</span>
        <span class="text-on-surface font-semibold">{content_title}</span>
    </nav>
    
    <!-- Product Area -->
    <div class="edit" field="product_content" rel="content">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-xl">
            <!-- Left: Product Imagery -->
            <div class="space-y-md">
                <div class="bg-surface-container-lowest rounded-xl overflow-hidden shadow-sm border border-outline-variant relative group">
                    <module type="pictures" content-id="<?php print PAGE_ID; ?>" />
                </div>
            </div>
            
            <!-- Right: Product Details -->
            <div class="flex flex-col gap-md">
                <div>
                    <h1 class="font-display text-display text-on-surface mb-xs"><?php print content_title(); ?></h1>
                    <p class="font-label-sm text-label-sm text-outline tracking-[2px] uppercase">SKU: <?php print custom_field_value('sku'); ?></p>
                </div>
                
                <div class="flex items-center gap-md">
                    <span class="font-headline-lg text-headline-lg text-primary">
                        <module type="shop/cart_add" content-id="<?php print PAGE_ID; ?>" hide_button="true" hide_qty="true" />
                    </span>
                    <div class="flex items-center text-tertiary">
                        <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">star</span>
                        <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">star</span>
                        <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">star</span>
                        <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">star</span>
                        <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1;">star</span>
                    </div>
                </div>
                
                <div class="font-body-lg text-body-lg text-on-surface-variant border-t border-outline-variant pt-md">
                    <?php print content_description(); ?>
                </div>
                
                <div class="space-y-md py-md">
                    <module type="shop/cart_add" content-id="<?php print PAGE_ID; ?>" />
                </div>
                
                <div class="grid grid-cols-2 gap-md border-t border-outline-variant pt-lg">
                    <div class="flex items-center gap-sm">
                        <div class="w-10 h-10 rounded-full bg-secondary-container flex items-center justify-center text-primary">
                            <span class="material-symbols-outlined">local_shipping</span>
                        </div>
                        <div class="flex flex-col">
                            <span class="font-label-md text-label-md">Free Delivery</span>
                            <span class="text-[12px] text-outline">Orders over $100</span>
                        </div>
                    </div>
                    <div class="flex items-center gap-sm">
                        <div class="w-10 h-10 rounded-full bg-tertiary-fixed flex items-center justify-center text-tertiary">
                            <span class="material-symbols-outlined">verified_user</span>
                        </div>
                        <div class="flex flex-col">
                            <span class="font-label-md text-label-md">2 Year Warranty</span>
                            <span class="text-[12px] text-outline">Full coverage</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Tabs Section -->
        <div class="mt-xl border-t border-outline-variant">
            <div class="flex gap-lg border-b border-outline-variant mb-lg overflow-x-auto no-scrollbar">
                <button class="py-4 font-label-md text-label-md border-b-2 border-primary text-primary transition-all" id="tab-specs" onclick="switchTab('specs')">Specifications</button>
                <button class="py-4 font-label-md text-label-md border-b-2 border-transparent text-on-surface-variant hover:text-primary transition-all" id="tab-reviews" onclick="switchTab('reviews')">Reviews (128)</button>
            </div>
            <div class="grid md:grid-cols-2 gap-xl opacity-100 transition-opacity duration-300" id="content-specs">
                <div class="space-y-md">
                    <div class="flex justify-between border-b border-outline-variant pb-2">
                        <span class="text-on-surface-variant">Material</span>
                        <span class="font-semibold">Premium</span>
                    </div>
                </div>
            </div>
            <div class="hidden opacity-0 transition-opacity duration-300" id="content-reviews">
                <div class="space-y-lg">
                    <module type="comments" content-id="<?php print PAGE_ID; ?>" />
                </div>
            </div>
        </div>
        
        <!-- Related Products Section -->
        <section class="mt-xl">
            <div class="flex justify-between items-end mb-lg">
                <div>
                    <h2 class="font-headline-lg text-headline-lg text-on-surface">Related Products</h2>
                </div>
            </div>
            <module type="shop/products" limit="4" related="true" template="lumina_grid" />
        </section>
    </div>
</main>

<script>
    function switchTab(tabId) {
        const tabs = ['specs', 'reviews'];
        tabs.forEach(t => {
            const btn = document.getElementById(`tab-${t}`);
            const content = document.getElementById(`content-${t}`);
            if (btn && content) {
                if (t === tabId) {
                    btn.classList.add('border-primary', 'text-primary');
                    btn.classList.remove('border-transparent', 'text-on-surface-variant');
                    content.classList.remove('hidden');
                    setTimeout(() => content.classList.add('opacity-100'), 10);
                    content.classList.remove('opacity-0');
                } else {
                    btn.classList.remove('border-primary', 'text-primary');
                    btn.classList.add('border-transparent', 'text-on-surface-variant');
                    content.classList.add('hidden');
                    content.classList.add('opacity-0');
                    content.classList.remove('opacity-100');
                }
            }
        });
    }
</script>

<?php include 'footer.php'; ?>
