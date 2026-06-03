<?php
/*

  type: layout

  name: Default

  description: Default



*/
?>

<style>
    .content-categories-images--bootstrap-card .col-md-3{
        margin-bottom: 20px;
    }
    .content-categories-images--bootstrap-card .card-img-top > span{
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        transition: all 0.3s;
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
    }
    .content-categories-images--bootstrap-card .card:hover .card-img-top > span{
        transform: scale(1.1);
    }
    .content-categories-images--bootstrap-card .card-img-top{
        display: block;
        position: relative;
        height: 250px;
        overflow: hidden;

    }
    .content-categories-images--bootstrap-card .card-body{
        min-height: 100px;
        align-items: center;
        display: flex;
        justify-content: center;
        font-size: 19px;
    }
    .content-categories-images--bootstrap-card .card-title{
        margin-bottom: 0;

        font-size: var(--mw-heading-six);

        color: var(--mw-heading-color);
        text-transform: var(--mw-text-transform);
        font-weight: var(--mw-font-weight);
        letter-spacing: var(--mw-letter-spacing);

    }
</style>


<div class="content-categories-images--bootstrap-card" id="category-images--<?php print $params['id']; ?>">
    <div class="row">
        <?php if ($data != false) {
            foreach ($data as $cat) { ?>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <a class="card" href="<?php print $cat['url']; ?>">

                    <span class="card-img-top">
                        <span style="background-image: url(<?php print thumbnail($cat['picture'], 600, 600); ?>);"></span>
                    </span>
                    <div class="card-body">
                        <span class="card-title"><?php print $cat['title']; ?></span>
                    </div>
                </a>
            </div>
            <?php }
        } ?>
    </div>
</div>
