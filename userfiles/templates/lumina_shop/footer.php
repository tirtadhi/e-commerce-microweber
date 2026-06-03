</main>
<!-- Footer -->
<footer class="w-full mt-lg bg-surface-container-lowest dark:bg-inverse-surface edit" field="lumina_footer" rel="global">
<div class="grid grid-cols-1 md:grid-cols-4 gap-gutter max-w-[1280px] mx-auto px-margin-desktop py-xl">
<div class="flex flex-col gap-sm">
<div class="font-headline-lg text-headline-lg font-black text-primary">Microweber</div>
<p class="font-body-md text-body-md text-secondary">Redefining modern e-commerce with premium products and seamless experiences.</p>
<div class="flex gap-md mt-sm">
<span class="material-symbols-outlined text-primary cursor-pointer hover:opacity-80">social_leaderboard</span>
<span class="material-symbols-outlined text-primary cursor-pointer hover:opacity-80">public</span>
<span class="material-symbols-outlined text-primary cursor-pointer hover:opacity-80">camera</span>
</div>
</div>
<div class="flex flex-col gap-sm">
<h5 class="font-label-md text-label-md text-primary font-bold">Shop</h5>
<ul class="flex flex-col gap-2 mt-2">
    <li><a href="<?php print site_url(); ?>shop" class="text-secondary hover:text-primary transition-colors text-sm">Semua Produk</a></li>
    <li><a href="<?php print site_url(); ?>shop?cat=Elektronik" class="text-secondary hover:text-primary transition-colors text-sm">Elektronik</a></li>
    <li><a href="<?php print site_url(); ?>shop?cat=Fashion" class="text-secondary hover:text-primary transition-colors text-sm">Fashion</a></li>
    <li><a href="<?php print site_url(); ?>shop?cat=Aksesoris" class="text-secondary hover:text-primary transition-colors text-sm">Aksesoris</a></li>
</ul>
</div>
<div class="flex flex-col gap-sm">
<h5 class="font-label-md text-label-md text-primary font-bold">Customer Support</h5>
<ul class="flex flex-col gap-2 mt-2">
    <li><a href="#" class="text-secondary hover:text-primary transition-colors text-sm">Hubungi Kami</a></li>
    <li><a href="#" class="text-secondary hover:text-primary transition-colors text-sm">FAQ & Bantuan</a></li>
    <li><a href="#" class="text-secondary hover:text-primary transition-colors text-sm">Kebijakan Pengiriman</a></li>
    <li><a href="#" class="text-secondary hover:text-primary transition-colors text-sm">Syarat & Ketentuan</a></li>
</ul>
</div>
<div class="flex flex-col gap-sm">
<h5 class="font-label-md text-label-md text-primary font-bold">Stay Updated</h5>
<p class="font-label-sm text-label-sm text-secondary mb-xs">Join our newsletter for exclusive previews and offers.</p>
<div class="flex gap-xs">
<input class="bg-surface-container border-none rounded-lg px-sm py-xs text-label-sm focus:ring-1 focus:ring-primary w-full" placeholder="Email address" type="email"/>
<button class="bg-primary text-on-primary px-sm py-xs rounded-lg font-label-sm text-label-sm">Join</button>
</div>
</div>
</div>
<div class="max-w-[1280px] mx-auto px-margin-desktop py-md border-t border-outline-variant/30 flex flex-col md:flex-row justify-between items-center gap-md">
<p class="font-label-sm text-label-sm text-secondary">© <?php echo date('Y'); ?> Microweber. Powered by Microweber CMS.</p>
<div class="flex gap-md">
<a class="font-label-sm text-label-sm text-secondary hover:text-primary" href="#">Privacy Policy</a>
<a class="font-label-sm text-label-sm text-secondary hover:text-primary" href="#">Terms of Service</a>
</div>
</div>
</footer>
<script>
        // Micro-interaction for the navigation scroll effect
        window.addEventListener('scroll', () => {
            const header = document.querySelector('header');
            if (window.scrollY > 50) {
                header.classList.add('py-2', 'bg-surface/95');
                header.classList.remove('py-4', 'bg-surface/80');
            } else {
                header.classList.add('py-4', 'bg-surface/80');
                header.classList.remove('py-2', 'bg-surface/95');
            }
        });

        // Simple button hover effects logic
        document.querySelectorAll('button').forEach(button => {
            button.addEventListener('mousedown', () => button.style.transform = 'scale(0.98)');
            button.addEventListener('mouseup', () => button.style.transform = 'scale(1)');
        });
    </script>
</body></html>
