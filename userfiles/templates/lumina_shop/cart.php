<?php
/*
type: layout
name: Cart
description: Shopping cart layout
is_shop: y
*/
?>
<?php include 'header.php'; ?>

<style>
    .cart-item-exit { transition: opacity 0.3s ease, transform 0.3s ease; }
    .cart-empty-state { text-align: center; padding: 80px 20px; }
    .qty-btn { transition: background 0.2s; }
    .qty-btn:hover { background: #dce1ff; }
</style>

<main class="max-w-[1280px] mx-auto px-4 md:px-10 pt-[120px] pb-20 min-h-screen">

    <!-- Page Header -->
    <div class="mb-10">
        <h1 class="text-3xl font-bold text-[#00236f] tracking-tight">Keranjang Belanja</h1>
        <p class="text-base text-[#444651] mt-2">Periksa produk Anda dan lanjutkan ke pembayaran yang aman.</p>
    </div>

    <?php
    $cartItems = app()->cart_manager->get();
    $cartTotal = app()->cart_manager->sum(true);
    $hasItems  = !empty($cartItems);
    ?>

    <?php if ($hasItems): ?>
    <div class="grid grid-cols-1 lg:grid-cols-12 gap-10">

        <!-- Cart Items -->
        <div class="lg:col-span-8 space-y-4" id="cart-items-container">
            <?php foreach ($cartItems as $item): ?>
            <?php
                $imgUrl   = !empty($item['thumb']) ? $item['thumb'] : (!empty($item['image']) ? $item['image'] : '');
                $itemPrice = floatval($item['price'] ?? 0);
                $itemQty   = intval($item['qty'] ?? 1);
                $itemTotal = $itemPrice * $itemQty;
            ?>
            <div class="cart-item-exit flex flex-col sm:flex-row bg-white border border-[#c5c5d3]/30 rounded-xl p-4 shadow-sm hover:shadow-md hover:-translate-y-0.5 transition-all duration-300"
                 data-cart-id="<?php echo htmlspecialchars($item['id'] ?? ''); ?>">

                <!-- Product Image -->
                <div class="w-full sm:w-36 h-36 bg-[#eceef0] rounded-lg overflow-hidden flex-shrink-0 border border-[#c5c5d3]/20">
                    <?php if ($imgUrl): ?>
                    <img src="<?php echo htmlspecialchars($imgUrl); ?>" alt="<?php echo htmlspecialchars($item['title'] ?? ''); ?>"
                         class="w-full h-full object-cover"/>
                    <?php else: ?>
                    <div class="w-full h-full flex items-center justify-center text-[#757682]">
                        <span class="material-symbols-outlined text-4xl">image_not_supported</span>
                    </div>
                    <?php endif; ?>
                </div>

                <!-- Product Info -->
                <div class="sm:ml-4 mt-3 sm:mt-0 flex flex-col justify-between flex-grow">
                    <div class="flex justify-between items-start">
                        <div>
                            <h3 class="text-lg font-semibold text-[#191c1e]"><?php echo htmlspecialchars($item['title'] ?? ''); ?></h3>
                            <?php if (!empty($item['variant'])): ?>
                            <p class="text-sm text-[#444651] mt-0.5"><?php echo htmlspecialchars($item['variant']); ?></p>
                            <?php endif; ?>
                        </div>
                        <p class="text-lg font-bold text-[#00236f] ml-4">
                            Rp <?php echo number_format($itemTotal, 0, ',', '.'); ?>
                        </p>
                    </div>

                    <div class="flex justify-between items-center mt-4">
                        <!-- Quantity Controls -->
                        <div class="flex items-center bg-[#f2f4f6] rounded-lg border border-[#c5c5d3]/20 p-1">
                            <button class="qty-btn w-8 h-8 flex items-center justify-center rounded text-[#191c1e]"
                                onclick="updateQty('<?php echo $item['id'] ?? ''; ?>', -1, this)">
                                <span class="material-symbols-outlined text-[18px]">remove</span>
                            </button>
                            <span class="w-10 text-center text-sm font-medium qty-display"><?php echo $itemQty; ?></span>
                            <button class="qty-btn w-8 h-8 flex items-center justify-center rounded text-[#191c1e]"
                                onclick="updateQty('<?php echo $item['id'] ?? ''; ?>', 1, this)">
                                <span class="material-symbols-outlined text-[18px]">add</span>
                            </button>
                        </div>

                        <!-- Remove Button -->
                        <button onclick="removeItem('<?php echo $item['id'] ?? ''; ?>', this)"
                            class="flex items-center gap-1 text-[#444651] hover:text-[#ba1a1a] transition-colors text-sm">
                            <span class="material-symbols-outlined text-[20px]">delete</span>
                            <span>Hapus</span>
                        </button>
                    </div>
                </div>
            </div>
            <?php endforeach; ?>

            <a href="<?php echo site_url(); ?>shop"
               class="inline-flex items-center text-[#00236f] text-sm font-medium mt-4 hover:underline underline-offset-4">
                <span class="material-symbols-outlined mr-1 text-[18px]">arrow_back</span>
                Lanjut Belanja
            </a>
        </div>

        <!-- Order Summary -->
        <aside class="lg:col-span-4">
            <div class="sticky top-[100px] bg-[#f2f4f6] rounded-xl p-6 border border-[#c5c5d3]/20 shadow-sm">
                <h2 class="text-xl font-semibold text-[#191c1e] mb-5">Ringkasan Pesanan</h2>

                <div class="space-y-3 mb-5" id="cart-summary">
                    <?php foreach ($cartItems as $item): ?>
                    <div class="flex justify-between text-sm text-[#444651]">
                        <span class="flex-1 mr-2 truncate"><?php echo htmlspecialchars($item['title'] ?? ''); ?> ×<?php echo intval($item['qty'] ?? 1); ?></span>
                        <span class="font-medium text-[#191c1e] whitespace-nowrap">Rp <?php echo number_format(floatval($item['price'] ?? 0) * intval($item['qty'] ?? 1), 0, ',', '.'); ?></span>
                    </div>
                    <?php endforeach; ?>

                    <div class="border-t border-[#c5c5d3]/30 pt-3 flex justify-between text-lg font-bold">
                        <span class="text-[#191c1e]">Total</span>
                        <span class="text-[#00236f]">Rp <?php echo number_format(floatval($cartTotal), 0, ',', '.'); ?></span>
                    </div>
                </div>

                <a href="<?php echo site_url(); ?>checkout"
                   id="checkout-btn"
                   class="w-full bg-[#00236f] text-white py-4 rounded-lg text-sm font-semibold hover:opacity-90 transition-all flex items-center justify-center gap-2 group">
                    <span>Lanjut ke Pembayaran</span>
                    <span class="material-symbols-outlined group-hover:translate-x-1 transition-transform">arrow_forward</span>
                </a>

                <p class="text-center text-xs text-[#757682] mt-3">
                    <span class="material-symbols-outlined align-middle text-[14px] mr-1">lock</span>
                    Pembayaran Aman & Terenkripsi SSL
                </p>

                <!-- Promo Code -->
                <div class="mt-6 pt-5 border-t border-[#c5c5d3]/30">
                    <label class="text-sm font-medium text-[#444651] block mb-2">Kode Promo</label>
                    <div class="flex gap-2">
                        <input id="promo-input" type="text" placeholder="Masukkan kode..."
                               class="flex-grow bg-white border border-[#c5c5d3] rounded-lg px-3 py-2 text-sm outline-none focus:ring-2 focus:ring-[#00236f]/20 focus:border-[#00236f]"/>
                        <button onclick="applyPromo()" class="bg-[#d0e1fb] text-[#00236f] px-4 py-2 rounded-lg text-sm font-medium hover:bg-[#b7c8e1] transition-colors">
                            Pakai
                        </button>
                    </div>
                    <p id="promo-msg" class="text-xs mt-1 hidden"></p>
                </div>
            </div>
        </aside>
    </div>

    <?php else: ?>
    <!-- Empty Cart State -->
    <div class="cart-empty-state">
        <span class="material-symbols-outlined text-6xl text-[#c5c5d3] block mb-4">shopping_cart</span>
        <h2 class="text-2xl font-semibold text-[#191c1e] mb-2">Keranjang Anda Kosong</h2>
        <p class="text-[#444651] mb-6">Yuk, mulai belanja dan tambahkan produk ke keranjang!</p>
        <a href="<?php echo site_url(); ?>shop"
           class="inline-flex items-center gap-2 bg-[#00236f] text-white px-6 py-3 rounded-lg font-medium hover:opacity-90 transition-all">
            <span class="material-symbols-outlined">storefront</span>
            Lihat Produk
        </a>
    </div>
    <?php endif; ?>
</main>

<script>
    // Microweber Cart API
    function updateQty(cartId, change, btn) {
        const wrapper = btn.closest('[data-cart-id]');
        const qtyEl   = wrapper.querySelector('.qty-display');
        let qty = parseInt(qtyEl.textContent) + change;
        if (qty < 1) { removeItem(cartId, btn); return; }

        $.post('<?php echo site_url(); ?>api/update_cart_item_qty', { id: cartId, qty: qty })
            .done(function() { location.reload(); })
            .fail(function() { qtyEl.textContent = qty - change; });
    }

    function removeItem(cartId, btn) {
        const wrapper = btn.closest('[data-cart-id]');
        wrapper.style.opacity = '0';
        wrapper.style.transform = 'translateX(20px)';

        $.post('<?php echo site_url(); ?>api/remove_cart_item', { id: cartId })
            .done(function() { setTimeout(() => location.reload(), 300); })
            .fail(function() { location.reload(); });
    }

    function applyPromo() {
        const code = document.getElementById('promo-input').value.trim();
        const msg  = document.getElementById('promo-msg');
        if (!code) return;
        
        $.post('<?php echo site_url(); ?>api/coupon_apply', { coupon_code: code })
            .done(function(data) {
                msg.classList.remove('hidden', 'text-[#ba1a1a]', 'text-[#00236f]');
                if (data && data.success) {
                    msg.classList.add('text-[#00236f]');
                    msg.textContent = '✅ Kode promo berhasil!';
                    location.reload();
                } else {
                    msg.classList.add('text-[#ba1a1a]');
                    msg.textContent = '❌ Kode tidak valid.';
                }
                msg.classList.remove('hidden');
            })
            .fail(function() {
                msg.classList.remove('hidden', 'text-[#ba1a1a]', 'text-[#00236f]');
                msg.classList.add('text-[#ba1a1a]');
                msg.textContent = '❌ Gagal memeriksa kode promo.';
            });
    }
</script>

<?php include 'footer.php'; ?>
