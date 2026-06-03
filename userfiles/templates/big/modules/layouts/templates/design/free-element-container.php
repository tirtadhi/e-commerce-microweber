<?php

/*

type: layout

name: Free Element Container

position: 1000

categories: Design

*/

?>

<?php
    if (!$classes['padding_top']) {
        $classes['padding_top'] = '';
    }
    if (!$classes['padding_bottom']) {
        $classes['padding_bottom'] = '';
    }

    $layout_classes = $layout_classes ?? ''; $layout_classes .= ' ' . $classes['padding_top'] . ' ' . $classes['padding_bottom'] . ' ';
?>

<style>
    #mw-free-layout-container-<?php print $params['id'] ?>{
        min-heigh: 300px;
        min-height: max(300px, calc(100vh - 500px));
        position:relative;
    }

</style>

<section class="<?php print $layout_classes; ?> section ">
    <module type="background" id="background-layout--<?php print $params['id'] ?>" />
    <div
        id="mw-free-layout-container-<?php print $params['id'] ?>"
        class="mw-layout-container mw-free-layout-container no-element allow-select"
         >

        <div
            class="edit "
            field="layout-content-free-element-container-<?php print $params['id'] ?>"
            rel="module">

        </div>
    </div>
</section>
