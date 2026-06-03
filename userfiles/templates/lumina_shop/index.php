<?php
/*
type: layout
name: Home
description: Home layout
*/
?>
<?php include 'header.php'; ?>

<div class="edit" field="content" rel="content">

<!-- Hero Section -->
<section class="relative h-[819px] flex items-center overflow-hidden bg-surface-container-highest">
<div class="absolute inset-0 z-0">
<img alt="Premium Tech Product" class="w-full h-full object-cover opacity-90" src="https://lh3.googleusercontent.com/aida-public/AB6AXuCPH6Wa4rPF2f5M6EsKOOqsqc_XxLXPmAqSIG3dtU9Wvh82e8GbbEJ3ytzDh6kJXGY1RqGrqgBpxR2z1-77bUL00QfXF9U6XdBGHrI9p7oeS5ejAIIu_wDacH6SuClY7d0T8VMPFRdjGLsXfHK9LeWo2KMUevO-xPvm3MhKmq2OiSy9d1nXKUDlZhxBDafw3bWDYEe-FQrzLQTwGYV7rKAoCVYk5WqqH8c8GOt4sO3hCjkIPMY3AGQI2oXQ326nFwi5xfBx_WgDWlpu"/>
<div class="absolute inset-0 bg-gradient-to-r from-background/80 via-background/40 to-transparent"></div>
</div>
<div class="relative z-10 max-w-[1280px] mx-auto px-margin-desktop w-full">
<div class="max-w-xl">
<span class="inline-block px-sm py-xs rounded-full bg-primary/10 text-primary font-label-sm text-label-sm mb-md uppercase tracking-wider">New Season 2024</span>
<h1 class="font-display text-display mb-sm text-on-surface leading-tight">Elevated Living, <br/>Refined Aesthetics.</h1>
<p class="font-body-lg text-body-lg text-on-surface-variant mb-lg max-w-md">Discover our curated collection of premium essentials designed to blend seamlessly into your modern lifestyle.</p>
<div class="flex gap-md">
<a href="<?php print site_url(); ?>shop" class="bg-primary text-on-primary px-lg py-sm rounded-lg font-label-md text-label-md hover:shadow-lg transition-all duration-300">Shop Now</a>
<a href="#" class="border border-outline-variant text-on-surface px-lg py-sm rounded-lg font-label-md text-label-md hover:bg-surface-container transition-all">View Gallery</a>
</div>
</div>
</div>
</section>

<!-- Featured Collections -->
<section class="py-xl max-w-[1280px] mx-auto px-margin-desktop">
<div class="flex justify-between items-end mb-lg">
<div>
<h2 class="font-headline-lg text-headline-lg text-on-surface">Featured Collections</h2>
<p class="font-body-md text-body-md text-outline">Explore our handpicked categories for the season.</p>
</div>
<a class="text-primary font-label-md text-label-md hover:underline flex items-center gap-xs" href="<?php print site_url(); ?>shop">View All Collections <span class="material-symbols-outlined text-[18px]">arrow_forward</span></a>
</div>
<div class="grid grid-cols-1 md:grid-cols-4 gap-gutter h-[600px]">
<div class="md:col-span-2 relative group overflow-hidden rounded-xl">
<img class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110" src="https://lh3.googleusercontent.com/aida-public/AB6AXuB2zqUMGR_Cf5f0gvCn8SmMCuX95fujvzRg9IYOoCDZebt490Tluv4DvE1MTH8aw68rSCZJckK22afcpujpVVE2Wa7c2zddEzWuHzjLAGGYmGHfE6xP6_kX0_LMzOoN1B15cNNFL4cUtA5TQKMeFpZKOWNtjtIseHJQuxkvmN6K17V8LYIC_v39GN2YcFiPbq9s7wczsm7Ys5pcQNlGtK6LT2EgcI3LQ4-c4HapnC3xfbk0x9J8K72O1zFMLZmDHYqe_5C1LwmClauZ"/>
<div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
<div class="absolute bottom-lg left-lg text-white">
<p class="font-label-sm text-label-sm uppercase mb-xs opacity-80">Collection</p>
<h3 class="font-headline-md text-headline-md mb-sm">Active Performance</h3>
<a href="<?php print site_url(); ?>shop" class="text-white border-b border-white font-label-md text-label-md hover:pb-1 transition-all">Discover</a>
</div>
</div>
<div class="md:col-span-1 relative group overflow-hidden rounded-xl">
<img class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110" src="https://lh3.googleusercontent.com/aida-public/AB6AXuCRZy8gb2mxwyqG96TJMshdQVTWFG_BRYc0WWRsrah02PKL84fqQTJBQV04_-UL2YddY13S2QM87N6yteTMAwyl4ykFR3TUmsNLYl2fEizp4L5TO1xd0Z3Rs8oPTgk0Uol4jyDXsdYQESNVA0XYEE7NBSilrKr4O7Y8EONksH0jjLrhHGqqCM1h7SAdvX_eijjvGp7l6EOEkEf8OPIZqDiyFaNEAEiRDKoNjIp0UDIT0LzI7UcdL5-sBRNtnVHLtoo436aGfNxq7uhG"/>
<div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
<div class="absolute bottom-lg left-lg text-white">
<h3 class="font-headline-md text-headline-md">Audio Tech</h3>
</div>
</div>
<div class="md:col-span-1 relative group overflow-hidden rounded-xl">
<img class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110" src="https://lh3.googleusercontent.com/aida-public/AB6AXuCjp-wcS_mXqzU01H1yLRi3X4YmhwLYnyhoVWt8YQ5eQqtvZMiP9jZQj4SLWMoXFS_2AdM2xlWVpNENkojxJck7ZXqgKlAo4SzG6elG0JZofyTEKd6V6UKXf7msKXBCdN7YhweLtipccEdmnOGh-HYnmJk81vaTxOyyh4iw9-lgByaqfCKu2Gg8fLW1PzoCafohFZNmavlr9UbY6SwpBLGxOcAAA_Xop9W22-vmNRDHJeT2vla5kFN5vuUyK6GPJA_rPKKODOGBT1w4"/>
<div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
<div class="absolute bottom-lg left-lg text-white">
<h3 class="font-headline-md text-headline-md">Home Office</h3>
</div>
</div>
</div>
</section>

<!-- New Arrivals Section (Product Grid) -->
<section class="py-xl bg-surface-container-low">
<div class="max-w-[1280px] mx-auto px-margin-desktop">
<div class="text-center mb-lg">
<h2 class="font-headline-lg text-headline-lg text-on-surface">New Arrivals</h2>
<div class="w-20 h-1 bg-primary mx-auto mt-sm rounded-full"></div>
</div>

<!-- Dynamic Microweber Products Module -->
<module type="shop/products" template="lumina_grid" limit="4" hide_paging="true" />

</div>
</section>

</div>

<?php include 'footer.php'; ?>
