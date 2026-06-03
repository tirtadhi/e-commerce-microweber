<?php

/*

type: layout

name: Arrow

description: Arrow skin, the arrow get backs you to the previous page

*/

?>

<style>
    .mw-breadcrumb-arrow a {
        height: 40px;
        width: 40px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        transition: .25s ease;
        margin-inline-start: -10px;
        color: #000;
    }

    .mw-breadcrumb-arrow a:hover {
        background-color: #ececec;
        border-radius: 50%;
        box-shadow: #ececec;
    }
</style>


<?php if (isset($data) and is_array($data)): ?>
    <div class="mw-breadcrumb-arrow text-start">

        <?php foreach ($data as $item): ?>
            <?php if (!($item['is_active'])): ?>
                <a href="<?php print($item['url']); ?>">

                    <svg fill="currentColor" xmlns="http://www.w3.org/2000/svg" height="28" viewBox="0 96 960 960" width="28"><path d="M480 896 160 576l320-320 47 46.666-240.001 240.001H800v66.666H286.999L527 849.334 480 896Z"></path></svg>
                </a>
            <?php endif; ?>
        <?php endforeach; ?>

    </div>
<?php endif; ?>
