<?php

/*

type: layout

name: Video 1

position: 1

categories: Video

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

<section class="section <?php print $layout_classes; ?> ">

     <module type="background" id="background-layout--<?php print $params['id'] ?>" />
    <module type="spacer" id="spacer-layout--<?php print $params['id'] ?>-top" />
    <div class="mw-layout-container no-element   container   safe-mode edit safe-mode" field="layout-video-skin-1-<?php print $params['id'] ?>" rel="module">
        <div class="row text-center  ">
            <div class="col-12 col-lg-10 mx-auto regular-mode">
                <h1 data-mwplaceholder="<?php _e('Enter title here'); ?>">Share your story <br> with a video</h1>

                <p data-mwplaceholder="<?php _e('Enter text here'); ?>">
                    Authenticity is key. <br> Share your journey, your passion, and the real reason behind your venture. <br>
                    People connect with genuine stories.
                </p>
                <module class="module-padding-for-handle safe-mode" type="video" template="default" url="<?php print template_url(); ?>assets/videos/example.mp4" height="500">
            </div>
        </div>
    </div>
 <module type="spacer" id="spacer-layout--<?php print $params['id'] ?>-bottom" />

</section>
