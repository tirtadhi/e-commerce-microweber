<?php
/*
type: layout
name: Checkout
description: Checkout / Payment layout
is_shop: y
*/
?>
<?php include 'header.php'; ?>

<?php
// Get CSRF token for form submission
$csrfToken = csrf_token();

// Get cart data
$cartItems = app()->cart_manager->get();
$cartTotal = app()->cart_manager->sum(true);
$shippingMethods = \Illuminate\Support\Facades\DB::table('cart_shipping')
    ->where('is_active', 'y')->orderBy('position')->get();
$defaultShipping = $shippingMethods->first();
?>

<style>
    .input-field {
        width: 100%; background: #f2f4f6; border: 1px solid #c5c5d3;
        border-radius: 0.5rem; padding: 11px 14px; font-size: 14px;
        outline: none; transition: border-color 0.2s, box-shadow 0.2s;
        font-family: 'Inter', sans-serif;
    }
    .input-field:focus { border-color: #00236f; box-shadow: 0 0 0 3px rgba(0,35,111,0.08); }
    .shipping-option {
        cursor: pointer; border: 1.5px solid #c5c5d3; border-radius: 0.75rem;
        padding: 12px 14px; transition: all 0.2s; display: flex;
        align-items: center; justify-content: space-between;
    }
    .shipping-option.active { border-color: #00236f; background: #dce1ff; }
    .shipping-option:hover  { border-color: #00236f; background: #f0f4ff; }
    .payment-opt {
        cursor: pointer; border: 1.5px solid #c5c5d3; border-radius: 0.75rem;
        padding: 13px 14px; transition: all 0.2s; display: flex; align-items: center; gap: 10px;
    }
    .payment-opt.active { border-color: #00236f; background: #dce1ff; }
    .payment-opt:hover  { border-color: #00236f; background: #f0f4ff; }
    .step-badge { width:32px; height:32px; border-radius:50%; background:#00236f; color:#fff;
        display:flex; align-items:center; justify-content:center; font-weight:700; font-size:14px; flex-shrink:0; }
</style>

<main class="max-w-[1280px] mx-auto px-4 md:px-10 pt-[120px] pb-20 min-h-screen">

    <!-- Breadcrumb -->
    <div class="flex items-center gap-2 mb-8 flex-wrap">
        <a href="<?php echo site_url(); ?>cart" class="text-[#00236f] text-sm font-medium hover:underline flex items-center gap-1">
            <span class="material-symbols-outlined text-[16px]">shopping_cart</span> Keranjang
        </a>
        <span class="material-symbols-outlined text-[#757682] text-[16px]">chevron_right</span>
        <span class="text-sm font-semibold text-[#191c1e]">Checkout</span>
        <span class="material-symbols-outlined text-[#757682] text-[16px]">chevron_right</span>
        <span class="text-sm text-[#757682]">Konfirmasi</span>
    </div>

    <?php if (isset($_GET['step']) && $_GET['step'] == 'finish'): ?>
    <div class="text-center py-20">
        <span class="material-symbols-outlined text-6xl text-[#00236f] block mb-4">check_circle</span>
        <h2 class="text-3xl font-bold text-[#191c1e] mb-3">Pesanan Berhasil Dibuat!</h2>
        <p class="text-[#444651] mb-2">Terima kasih atas pesanan Anda. Kami sedang memprosesnya.</p>
        <?php if (!empty($_GET['order_id'])): ?>
        <p class="text-sm text-[#757682] font-semibold mb-6">Nomor Pesanan: #<?php echo htmlspecialchars($_GET['order_id']); ?></p>
        <?php endif; ?>
        <a href="<?php echo site_url(); ?>" class="inline-flex items-center gap-2 bg-[#00236f] text-white px-6 py-3 rounded-lg font-medium hover:opacity-90 transition-all">
            Kembali ke Beranda
        </a>
    </div>
    <?php elseif (empty($cartItems)): ?>
    <div class="text-center py-20">
        <span class="material-symbols-outlined text-6xl text-[#c5c5d3] block mb-4">remove_shopping_cart</span>
        <h2 class="text-2xl font-semibold text-[#191c1e] mb-3">Keranjang Kosong</h2>
        <p class="text-[#444651] mb-6">Tambahkan produk ke keranjang sebelum checkout.</p>
        <a href="<?php echo site_url(); ?>shop" class="inline-flex items-center gap-2 bg-[#00236f] text-white px-6 py-3 rounded-lg font-medium hover:opacity-90 transition-all">
            <span class="material-symbols-outlined">storefront</span> Lihat Produk
        </a>
    </div>
    <?php else: ?>

    <!-- Use Microweber's native checkout API via AJAX -->
    <form id="checkout-form">
        <input type="hidden" name="_token" value="<?php echo $csrfToken; ?>">

        <div class="grid grid-cols-1 lg:grid-cols-12 gap-8">

            <!-- LEFT COLUMN: Steps -->
            <div class="lg:col-span-7 space-y-6">

                <!-- Step 1: Info Penerima -->
                <div class="bg-white rounded-xl p-6 border border-[#c5c5d3]/30 shadow-sm">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="step-badge">1</div>
                        <h2 class="text-xl font-semibold text-[#191c1e]">Informasi Penerima</h2>
                    </div>
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                        <div class="sm:col-span-2">
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Nama Lengkap <span class="text-red-500">*</span></label>
                            <input class="input-field" type="text" name="first_name" id="first_name" placeholder="Contoh: Budi Santoso" required/>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Email <span class="text-red-500">*</span></label>
                            <input class="input-field" type="email" name="email" id="checkout_email" placeholder="email@example.com" required/>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">No. WhatsApp/HP <span class="text-red-500">*</span></label>
                            <input class="input-field" type="tel" name="phone" id="checkout_phone" placeholder="08xxxxxxxxxx" required/>
                        </div>
                        <div class="sm:col-span-2">
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Alamat Lengkap <span class="text-red-500">*</span></label>
                            <textarea class="input-field" name="address" id="checkout_address" rows="3"
                                      placeholder="Jl. Contoh No. 1, RT/RW, Kelurahan, Kecamatan" required></textarea>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Kota <span class="text-red-500">*</span></label>
                            <input class="input-field" type="text" name="city" id="checkout_city" placeholder="Jakarta" required/>
                        </div>
                        <div>
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Kode Pos</label>
                            <input class="input-field" type="text" name="zip" id="checkout_zip" placeholder="12345" maxlength="5"/>
                        </div>
                        <div class="sm:col-span-2">
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Provinsi</label>
                            <input type="hidden" name="country" value="Indonesia">
                            <select class="input-field" name="state" id="checkout_province">
                                <option value="">Pilih Provinsi</option>
                                <option value="DKI Jakarta">DKI Jakarta</option>
                                <option value="Jawa Barat">Jawa Barat</option>
                                <option value="Jawa Tengah">Jawa Tengah</option>
                                <option value="Jawa Timur">Jawa Timur</option>
                                <option value="Banten">Banten</option>
                                <option value="Sumatera Utara">Sumatera Utara</option>
                                <option value="Sumatera Selatan">Sumatera Selatan</option>
                                <option value="Kalimantan Timur">Kalimantan Timur</option>
                                <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                                <option value="Bali">Bali</option>
                                <option value="Yogyakarta">DI Yogyakarta</option>
                                <option value="Papua">Papua</option>
                            </select>
                        </div>
                        <div class="sm:col-span-2">
                            <label class="text-sm font-medium text-[#444651] block mb-1.5">Catatan untuk Penjual</label>
                            <textarea class="input-field" name="note" rows="2" placeholder="Contoh: Harap dikemas dengan aman..."></textarea>
                        </div>
                    </div>
                </div>

                <!-- Step 2: Pilihan Pengiriman -->
                <div class="bg-white rounded-xl p-6 border border-[#c5c5d3]/30 shadow-sm">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="step-badge">2</div>
                        <h2 class="text-xl font-semibold text-[#191c1e]">Pilihan Pengiriman</h2>
                    </div>
                    <div class="space-y-3" id="shipping-list">
                        <?php foreach ($shippingMethods as $i => $method): ?>
                        <label class="shipping-option <?php echo $i === 0 ? 'active' : ''; ?>"
                               onclick="selectShipping(this, <?php echo floatval($method->shipping_cost); ?>)">
                            <div class="flex items-center gap-3">
                                <input type="radio" name="shipping_method_id" value="<?php echo $method->id; ?>"
                                       <?php echo $i === 0 ? 'checked' : ''; ?> class="accent-[#00236f]" style="accent-color:#00236f"/>
                                <span class="text-sm font-semibold text-[#191c1e]"><?php echo htmlspecialchars($method->shipping_type); ?></span>
                            </div>
                            <span class="text-sm font-bold text-[#00236f]">
                                Rp <?php echo number_format(floatval($method->shipping_cost), 0, ',', '.'); ?>
                            </span>
                        </label>
                        <?php endforeach; ?>
                    </div>
                </div>

                <!-- Step 3: Metode Pembayaran -->
                <div class="bg-white rounded-xl p-6 border border-[#c5c5d3]/30 shadow-sm">
                    <div class="flex items-center gap-3 mb-5">
                        <div class="step-badge">3</div>
                        <h2 class="text-xl font-semibold text-[#191c1e]">Metode Pembayaran</h2>
                    </div>
                    <div class="space-y-3">
                        <label class="payment-opt active" onclick="selectPayment(this,'bank_transfer')">
                            <input type="radio" name="payment_gw" value="shop/payments/gateways/bank_transfer" checked class="accent-[#00236f]" style="accent-color:#00236f"/>
                            <span class="material-symbols-outlined text-[#00236f]">account_balance</span>
                            <div><span class="text-sm font-semibold text-[#191c1e]">Transfer Bank</span>
                                <p class="text-xs text-[#757682]">BCA · Mandiri · BNI · BRI</p></div>
                        </label>
                        <label class="payment-opt" onclick="selectPayment(this,'cod')">
                            <input type="radio" name="payment_gw" value="shop/payments/gateways/pay_on_delivery" class="accent-[#00236f]" style="accent-color:#00236f"/>
                            <span class="material-symbols-outlined text-[#00236f]">payments</span>
                            <div><span class="text-sm font-semibold text-[#191c1e]">COD — Bayar di Tempat</span>
                                <p class="text-xs text-[#757682]">Bayar tunai saat paket tiba</p></div>
                        </label>
                        <label class="payment-opt" onclick="selectPayment(this,'ewallet')">
                            <!-- E-Wallet mapped to offline bank transfer for demo purposes -->
                            <input type="radio" name="payment_gw" value="shop/payments/gateways/bank_transfer" class="accent-[#00236f]" style="accent-color:#00236f"/>
                            <span class="material-symbols-outlined text-[#00236f]">smartphone</span>
                            <div><span class="text-sm font-semibold text-[#191c1e]">E-Wallet</span>
                                <p class="text-xs text-[#757682]">GoPay · OVO · Dana · ShopeePay</p></div>
                        </label>
                    </div>

                    <!-- Bank Transfer Info -->
                    <div id="bank-info" class="mt-4 p-4 bg-[#00236f]/5 border border-[#00236f]/20 rounded-lg text-sm">
                        <p class="font-semibold text-[#191c1e] mb-2">Informasi Rekening Transfer:</p>
                        <div class="space-y-1 text-[#444651]">
                            <div class="flex justify-between"><span>BCA</span><span class="font-semibold">1234-5678-90 a.n. Microweber</span></div>
                            <div class="flex justify-between"><span>Mandiri</span><span class="font-semibold">0987-6543-21 a.n. Microweber</span></div>
                        </div>
                        <p class="text-xs text-[#757682] mt-2">*Konfirmasi pembayaran dalam 1×24 jam kerja.</p>
                    </div>
                </div>

            </div>

            <!-- RIGHT: Order Summary -->
            <aside class="lg:col-span-5">
                <div class="sticky top-[100px] bg-[#f2f4f6] rounded-xl p-6 border border-[#c5c5d3]/20 shadow-sm">
                    <h2 class="text-xl font-semibold text-[#191c1e] mb-5">Ringkasan Pesanan</h2>

                    <!-- Items -->
                    <div class="space-y-3 max-h-64 overflow-y-auto pr-1 mb-4">
                        <?php foreach ($cartItems as $item): ?>
                        <div class="flex items-center gap-3">
                            <?php if (!empty($item['thumb']) || !empty($item['image'])): ?>
                            <img src="<?php echo htmlspecialchars($item['thumb'] ?? $item['image']); ?>"
                                 alt="" class="w-12 h-12 rounded-lg object-cover flex-shrink-0 bg-[#e0e3e5]"/>
                            <?php else: ?>
                            <div class="w-12 h-12 rounded-lg bg-[#e0e3e5] flex-shrink-0 flex items-center justify-center">
                                <span class="material-symbols-outlined text-[#757682] text-xl">image</span>
                            </div>
                            <?php endif; ?>
                            <div class="flex-1 min-w-0">
                                <p class="text-sm font-medium text-[#191c1e] truncate"><?php echo htmlspecialchars($item['title'] ?? ''); ?></p>
                                <p class="text-xs text-[#757682]">×<?php echo intval($item['qty'] ?? 1); ?></p>
                            </div>
                            <span class="text-sm font-semibold text-[#191c1e] whitespace-nowrap">
                                Rp <?php echo number_format(floatval($item['price'] ?? 0) * intval($item['qty'] ?? 1), 0, ',', '.'); ?>
                            </span>
                        </div>
                        <?php endforeach; ?>
                    </div>

                    <!-- Totals -->
                    <div class="border-t border-[#c5c5d3]/30 pt-4 space-y-2">
                        <div class="flex justify-between text-sm text-[#444651]">
                            <span>Subtotal</span>
                            <span class="font-medium text-[#191c1e]">Rp <?php echo number_format(floatval($cartTotal), 0, ',', '.'); ?></span>
                        </div>
                        <div class="flex justify-between text-sm text-[#444651]">
                            <span>Ongkos Kirim</span>
                            <span class="font-medium text-[#191c1e]" id="shipping-display">
                                Rp <?php echo $defaultShipping ? number_format(floatval($defaultShipping->shipping_cost), 0, ',', '.') : '0'; ?>
                            </span>
                        </div>
                        <div class="flex justify-between font-bold text-base pt-2 border-t border-[#c5c5d3]/30">
                            <span class="text-[#191c1e]">Total</span>
                            <span class="text-[#00236f]" id="grand-total">
                                Rp <?php echo number_format(floatval($cartTotal) + ($defaultShipping ? floatval($defaultShipping->shipping_cost) : 0), 0, ',', '.'); ?>
                            </span>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" id="submit-btn"
                        class="w-full bg-[#00236f] text-white py-4 rounded-lg text-sm font-semibold hover:opacity-90 transition-all flex items-center justify-center gap-2 mt-5">
                        <span class="material-symbols-outlined">lock</span>
                        <span id="submit-text">Buat Pesanan Sekarang</span>
                    </button>

                    <p class="text-center text-xs text-[#757682] mt-3">
                        <span class="material-symbols-outlined align-middle text-[13px] mr-1">security</span>
                        Data dilindungi enkripsi SSL 256-bit
                    </p>
                </div>
            </aside>
        </div>
    </form>

    <?php endif; ?>
</main>

<script>
    var cartTotal = <?php echo floatval($cartTotal); ?>;
    var selectedShipping = <?php echo $defaultShipping ? floatval($defaultShipping->shipping_cost) : 0; ?>;

    function selectShipping(el, cost) {
        document.querySelectorAll('.shipping-option').forEach(o => o.classList.remove('active'));
        el.classList.add('active');
        el.querySelector('input[type=radio]').checked = true;
        selectedShipping = cost;
        updateGrandTotal();
    }

    function selectPayment(el, type) {
        document.querySelectorAll('.payment-opt').forEach(o => o.classList.remove('active'));
        el.classList.add('active');
        el.querySelector('input[type=radio]').checked = true;
        document.getElementById('bank-info').style.display = (type === 'bank_transfer') ? 'block' : 'none';
    }

    function updateGrandTotal() {
        const grand = cartTotal + selectedShipping;
        document.getElementById('shipping-display').textContent = 'Rp ' + selectedShipping.toLocaleString('id-ID');
        document.getElementById('grand-total').textContent = 'Rp ' + grand.toLocaleString('id-ID');
    }

    // Form submit handler via AJAX to avoid multi-step redirect
    $('#checkout-form').on('submit', function(e) {
        e.preventDefault();
        const btn  = document.getElementById('submit-btn');
        const text = document.getElementById('submit-text');
        btn.disabled = true;
        text.textContent = 'Memproses...';

        const formData = $(this).serialize();

        $.post('<?php echo site_url(); ?>api/checkout', formData)
            .done(function(data) {
                if(data && (data.success || data.id || data.order_completed)) {
                    // Redirect to standard Microweber finish step or clear cart manually
                    window.location.href = '<?php echo site_url(); ?>checkout?step=finish&order_id=' + (data.id || '');
                } else if(data && data.error) {
                    let errMsg = '';
                    if (typeof data.error === 'object') {
                        for (let k in data.error) {
                            errMsg += data.error[k] + '\\n';
                        }
                    } else {
                        errMsg = data.error;
                    }
                    alert('Validasi Gagal:\\n' + errMsg);
                    btn.disabled = false;
                    text.textContent = 'Buat Pesanan Sekarang';
                } else {
                    // Fallback to success page
                    window.location.href = '<?php echo site_url(); ?>checkout?step=finish';
                }
            })
            .fail(function() {
                alert('Terjadi kesalahan saat memproses pesanan. Pastikan semua data benar.');
                btn.disabled = false;
                text.textContent = 'Buat Pesanan Sekarang';
            });
    });

    // Initial total update
    updateGrandTotal();
</script>

<?php include 'footer.php'; ?>
