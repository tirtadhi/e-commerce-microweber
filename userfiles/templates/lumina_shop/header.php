<!DOCTYPE html>
<html class="light" lang="en">
<head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>{content_meta_title}</title>

<!-- Microweber Head -->
<script type="text/javascript">
    mw.lib.require('jqueryui');
    mw.require('icon_selector.js');
    mw.lib.require('bootstrap4');
    mw.lib.require('bootstrap_select');
</script>

<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>

<script id="tailwind-config">
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    "colors": {
                        "secondary-container": "#d0e1fb",
                        "background": "#f7f9fb",
                        "on-tertiary": "#ffffff",
                        "secondary-fixed-dim": "#b7c8e1",
                        "tertiary-fixed": "#ffdbcb",
                        "primary-container": "#1e3a8a",
                        "on-secondary-fixed-variant": "#38485d",
                        "tertiary-container": "#6e2c00",
                        "on-tertiary-container": "#f39461",
                        "outline": "#757682",
                        "on-primary-container": "#90a8ff",
                        "surface-dim": "#d8dadc",
                        "on-tertiary-fixed-variant": "#773205",
                        "tertiary-fixed-dim": "#ffb691",
                        "primary-fixed-dim": "#b6c4ff",
                        "surface-variant": "#e0e3e5",
                        "secondary-fixed": "#d3e4fe",
                        "primary-fixed": "#dce1ff",
                        "secondary": "#505f76",
                        "surface-container-low": "#f2f4f6",
                        "surface-container-high": "#e6e8ea",
                        "outline-variant": "#c5c5d3",
                        "on-surface": "#191c1e",
                        "surface-container": "#eceef0",
                        "surface-tint": "#4059aa",
                        "on-background": "#191c1e",
                        "surface": "#f7f9fb",
                        "inverse-surface": "#2d3133",
                        "on-error-container": "#93000a",
                        "error-container": "#ffdad6",
                        "surface-container-lowest": "#ffffff",
                        "on-primary": "#ffffff",
                        "surface-bright": "#f7f9fb",
                        "inverse-on-surface": "#eff1f3",
                        "on-secondary": "#ffffff",
                        "on-secondary-fixed": "#0b1c30",
                        "surface-container-highest": "#e0e3e5",
                        "on-secondary-container": "#54647a",
                        "inverse-primary": "#b6c4ff",
                        "primary": "#00236f",
                        "on-error": "#ffffff",
                        "on-primary-fixed": "#00164e",
                        "tertiary": "#4b1c00",
                        "on-surface-variant": "#444651",
                        "error": "#ba1a1a",
                        "on-tertiary-fixed": "#341100",
                        "on-primary-fixed-variant": "#264191"
                    },
                    "borderRadius": {
                        "DEFAULT": "0.25rem",
                        "lg": "0.5rem",
                        "xl": "0.75rem",
                        "full": "9999px"
                    },
                    "spacing": {
                        "xl": "80px",
                        "sm": "16px",
                        "margin-desktop": "40px",
                        "base": "4px",
                        "md": "24px",
                        "margin-mobile": "16px",
                        "gutter": "24px",
                        "xs": "8px",
                        "lg": "48px"
                    },
                    "fontFamily": {
                        "headline-md": ["Inter"],
                        "body-lg": ["Inter"],
                        "label-sm": ["Inter"],
                        "body-md": ["Inter"],
                        "display": ["Inter"],
                        "label-md": ["Inter"],
                        "headline-lg": ["Inter"],
                        "headline-lg-mobile": ["Inter"]
                    },
                    "fontSize": {
                        "headline-md": ["24px", {"lineHeight": "1.3", "fontWeight": "600"}],
                        "body-lg": ["18px", {"lineHeight": "1.6", "fontWeight": "400"}],
                        "label-sm": ["12px", {"lineHeight": "1", "letterSpacing": "0.05em", "fontWeight": "600"}],
                        "body-md": ["16px", {"lineHeight": "1.5", "fontWeight": "400"}],
                        "display": ["48px", {"lineHeight": "1.2", "letterSpacing": "-0.02em", "fontWeight": "700"}],
                        "label-md": ["14px", {"lineHeight": "1.4", "letterSpacing": "0.01em", "fontWeight": "500"}],
                        "headline-lg": ["32px", {"lineHeight": "1.25", "letterSpacing": "-0.01em", "fontWeight": "600"}],
                        "headline-lg-mobile": ["24px", {"lineHeight": "1.3", "fontWeight": "600"}]
                    }
                },
            },
        }
    </script>
<style>
        body {
            background-color: #f7f9fb;
            color: #191c1e;
            -webkit-font-smoothing: antialiased;
        }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
        .product-card-hover {
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }
        .product-card-hover:hover {
            transform: translateY(-4px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.08);
        }
    </style>
</head>
<body class="bg-background text-on-background <?php print helper_body_classes(); ?>">
<!-- TopNavBar -->
<header class="fixed top-0 w-full z-50 bg-surface/80 backdrop-blur-md shadow-md edit" field="lumina_header" rel="global">
<nav class="flex justify-between items-center max-w-[1280px] mx-auto px-margin-desktop py-4">
<a href="<?php print site_url(); ?>" class="font-headline-md text-headline-md font-bold text-primary safe-element">Microweber</a>
<div class="hidden md:flex gap-lg items-center">
<module type="menu" name="header_menu" template="lumina_menu" />
</div>
<div class="flex items-center gap-md">
<!-- Search Bar (functional) -->
<form action="<?php print site_url(); ?>shop" method="GET" class="hidden lg:flex items-center bg-surface-container px-sm py-xs rounded-full safe-element">
<span class="material-symbols-outlined text-outline">search</span>
<input class="bg-transparent border-none focus:ring-0 text-label-md w-40" name="q" placeholder="Cari produk..." type="text" autocomplete="off"/>
</form>
<!-- User Account Icon -->
<?php
$userLoggedIn = mw()->user_manager->is_logged();
$accountUrl   = site_url().'admin';
?>
<a href="<?php echo $accountUrl; ?>" class="text-primary hover:opacity-80 safe-element" title="<?php echo $userLoggedIn ? 'Admin Panel' : 'Login'; ?>">
  <span class="material-symbols-outlined">person</span>
</a>
<!-- Cart Icon with count -->
<?php
$cartCount = 0;
$cartData  = app()->cart_manager->get();
if (is_array($cartData)) { foreach ($cartData as $ci) { $cartCount += intval($ci['qty'] ?? 1); } }
?>
<a href="<?php print site_url(); ?>cart" class="text-primary hover:opacity-80 relative safe-element" title="Keranjang">
<span class="material-symbols-outlined">shopping_cart</span>
<?php if ($cartCount > 0): ?>
<span class="absolute -top-1 -right-1 bg-red-500 text-white text-[9px] w-4 h-4 flex items-center justify-center rounded-full font-bold"><?php echo $cartCount; ?></span>
<?php endif; ?>
</a>
</div>
</nav>
</header>
<main class="mt-20">
