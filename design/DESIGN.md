---
name: Lumina Commerce
colors:
  surface: '#f7f9fb'
  surface-dim: '#d8dadc'
  surface-bright: '#f7f9fb'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4f6'
  surface-container: '#eceef0'
  surface-container-high: '#e6e8ea'
  surface-container-highest: '#e0e3e5'
  on-surface: '#191c1e'
  on-surface-variant: '#444651'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eff1f3'
  outline: '#757682'
  outline-variant: '#c5c5d3'
  surface-tint: '#4059aa'
  primary: '#00236f'
  on-primary: '#ffffff'
  primary-container: '#1e3a8a'
  on-primary-container: '#90a8ff'
  inverse-primary: '#b6c4ff'
  secondary: '#505f76'
  on-secondary: '#ffffff'
  secondary-container: '#d0e1fb'
  on-secondary-container: '#54647a'
  tertiary: '#4b1c00'
  on-tertiary: '#ffffff'
  tertiary-container: '#6e2c00'
  on-tertiary-container: '#f39461'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dce1ff'
  primary-fixed-dim: '#b6c4ff'
  on-primary-fixed: '#00164e'
  on-primary-fixed-variant: '#264191'
  secondary-fixed: '#d3e4fe'
  secondary-fixed-dim: '#b7c8e1'
  on-secondary-fixed: '#0b1c30'
  on-secondary-fixed-variant: '#38485d'
  tertiary-fixed: '#ffdbcb'
  tertiary-fixed-dim: '#ffb691'
  on-tertiary-fixed: '#341100'
  on-tertiary-fixed-variant: '#773205'
  background: '#f7f9fb'
  on-background: '#191c1e'
  surface-variant: '#e0e3e5'
typography:
  display:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.25'
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '500'
    lineHeight: '1.4'
    letterSpacing: 0.01em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.05em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 4px
  xs: 8px
  sm: 16px
  md: 24px
  lg: 48px
  xl: 80px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 40px
---

## Brand & Style

The design system is engineered for a high-end, modern e-commerce experience integrated within the Microweber CMS ecosystem. The brand personality is professional, reliable, and exceptionally clear, prioritizing product imagery and ease of navigation above decorative elements. 

The aesthetic follows a **Refined Minimalism** approach. It leverages generous whitespace to reduce cognitive load and a structured grid to mirror the block-based editing logic of the CMS. The emotional response should be one of "effortless premium"—a UI that feels invisible yet high-quality, ensuring the user's focus remains on the merchant's inventory.

## Colors

This design system utilizes a high-contrast, professional palette optimized for legibility and conversion.

- **Primary (#1e3a8a):** A deep Navy Blue reserved for high-priority actions, checkout buttons, and active states. It conveys trust and stability.
- **Secondary/Text (#64748b):** A Soft Slate Gray used for secondary information, descriptions, and UI borders to maintain a soft, non-aggressive visual hierarchy.
- **Surface & Background:** The primary canvas is pure white (#ffffff) to maximize product vibrance, supported by Slate-50 (#f8fafc) for subtle sectional backgrounds and card containers.
- **Semantic:** Success green is used sparingly for "In Stock" indicators and completed purchase states.

## Typography

The design system uses **Inter** exclusively to ensure maximum readability and a technical, modern feel. The typographic scale is highly disciplined:

- **Headlines:** Use tighter letter spacing and heavier weights to create a strong visual anchor for product titles.
- **Body Text:** Uses a slightly relaxed line height (1.5 - 1.6) for extended product descriptions and reviews.
- **Labels:** Small caps or medium-weight 12px-14px type are used for metadata like categories, SKU numbers, and price suffixes.
- **Mobile Adaptation:** Large display type scales down significantly on mobile to prevent awkward line breaks in narrow viewports.

## Layout & Spacing

The layout is built on a **12-column fluid grid** for desktop and a **single-column fluid grid** for mobile. 

- **The 8px Rule:** All spacing increments are multiples of 8px to ensure mathematical harmony.
- **Guttering:** A consistent 24px gutter is maintained between product cards in a grid.
- **Sectional Padding:** Vertical spacing between blocks (e.g., Hero to Featured Products) should be generous (80px on desktop) to reinforce the minimalist, airy feel.
- **Alignment:** Content should be center-aligned in containers with a maximum width of 1280px to maintain readability on ultra-wide monitors.

## Elevation & Depth

This design system uses **Tonal Elevation** combined with **Ambient Shadows** to create a sense of tactile layers.

- **Level 0 (Flat):** Main background surface.
- **Level 1 (Subtle):** Used for product cards and input fields. A soft shadow (Y: 2px, Blur: 4px, Color: rgba(0,0,0,0.04)) and a 1px Slate-200 border.
- **Level 2 (Floating):** Used for navigation bars and dropdown menus. A more pronounced shadow (Y: 8px, Blur: 16px, Color: rgba(0,0,0,0.08)).
- **Interactive Depth:** On hover, product cards should transition from Level 1 to Level 2 with a slight upward translation (-4px) to signal interactivity.

## Shapes

The shape language is defined by **Soft Geometricism**. 

- **Standard Radius:** 8px (0.5rem) is the default for buttons, input fields, and small UI widgets.
- **Large Radius:** 16px (1rem) is used for product cards and modal containers to give them a friendly, modern appearance.
- **Icons:** Use linear, 2px stroke icons with slightly rounded caps to match the typography's weight.

## Components

- **Buttons:** 
  - *Primary:* Solid Navy Blue (#1e3a8a) with white text. High contrast, 8px radius.
  - *Secondary:* Ghost style with 1px Slate-300 border and Slate-700 text.
- **Product Cards:** White background, 16px radius, Level 1 shadow. Image should have a slight 0.5px internal border to prevent "bleeding" into the card on white product shots.
- **Input Fields:** 16px padding, 8px radius, Slate-100 background. On focus, the border transitions to Primary Navy.
- **Chips/Badges:** Used for "New", "Sale", or "Category". Use a semi-transparent fill of the primary color (10% opacity) with bold 12px text.
- **Navigation:** A sticky top header with a Level 2 elevation. Links use `label-md` typography with a 2px bottom border indicator for the active state.
- **Microweber Blocks:** Ensure every drag-and-drop block follows the 80px vertical spacing rule to maintain the "Lumina" rhythm throughout the page building experience.