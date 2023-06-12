<?php require_once('include/header.php') ?>
   <body class="sub_page">
      <div class="hero_area">
         <?php require_once('include/sidebar.php') ?>
      </div>
<style>
body {
    font-family: 'Roboto Condensed', sans-serif;
    background-color: #f5f5f5
}

.hedding {
    font-size: 20px;
    color: #ab8181`;
}

.main-section {
    position: absolute;
    left: 50%;
    right: 50%;
    transform: translate(-50%, 5%);
}

.left-side-product-box img {
    width: 100%;
}

.left-side-product-box .sub-img img {
    margin-top: 5px;
    width: 83px;
    height: 100px;
}

.right-side-pro-detail span {
    font-size: 15px;
}

.right-side-pro-detail p {
    font-size: 25px;
    color: #a1a1a1;
}

.right-side-pro-detail .price-pro {
    color: #E45641;
}

.right-side-pro-detail .tag-section {
    font-size: 18px;
    color: #5D4C46;
}

.pro-box-section .pro-box img {
    width: 100%;
    height: 200px;
}

@media (min-width:360px) and (max-width:640px) {
    .pro-box-section .pro-box img {
        height: auto;
    }
}
</style>
<?php
    $id=$_GET['id'];
    $data=$mysqli->common_select_query("SELECT product_tbl.*, category_tbl.name as category,
     sub_subcategory.name as subsubcategory, subcategory_tbl.name as subcategory,brand_tbl.name as brand FROM `product_tbl`
                            join brand_tbl on brand_tbl.id=product_tbl.brand_id
                            join category_tbl on category_tbl.id=product_tbl.category_id
                            JOIN subcategory_tbl on subcategory_tbl.id=product_tbl.subcategory_id
                            join sub_subcategory on sub_subcategory.id=product_tbl.sub_subcategory_id
                            WHERE product_tbl.id=$id")['data'][0];
?>
<div class="container">
    <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="">Home</a></li>
        <?php if($data->category) { ?>
        <li class="breadcrumb-item"><a href="#"><?= $data->category ?></a></li>
        <?php } ?>
        <?php if($data->subcategory) { ?>
        <li class="breadcrumb-item"><a href="#"><?= $data->subcategory ?></a></li>
        <?php } ?>
        <?php if($data->subsubcategory) { ?>
            <li class="breadcrumb-item active" aria-current="page"><?= $data->subsubcategory ?></li>
        <?php } ?>
    </ol>
    </nav>
    <div class="col-lg-12 bg-white">
        <div class="row m-0">
            <div class="col-lg-4 left-side-product-box pb-3 mt-1 pb-5">
                <img src="<?= $base_url?>upload/product/<?= $data->picture ?>" class="border p-3">
            </div>
            <div class="col-lg-8">
                <div class="right-side-pro-detail border p-3 m-0">
                    <div class="row">
                        <form action="add_to_cart.php" method="post">
                            <div class="col-lg-12">
                                
                                <p class="m-0 p-0"><?= $data->name ?></p>
                            </div>
                            <div class="col-lg-12">
                                <p class="m-0 p-0 price-pro">Price: BDT<?= $data->price ?> 
                                <?php if($data->stock > 0){ ?>
                                    <span class="text-success small">In Stock</span>
                                <?php }else{ ?>
                                    <span class="text-danger small">Out of Stock</span>
                                <?php } ?>
                                    
                                </p>
                                <hr class="p-0 m-0">
                            </div>
                            <div class="col-lg-12 pt-2">
                                <h5>Product Detail</h5>
                                <span><?= $data->details ?></span>
                                <hr class="m-0 pt-2 mt-2">
                            </div>
                            
                            <div class="col-sm-7">
                                <dl class="param param-feature">
                                    <dd>Brand: <?= $data->brand ?></dd>
                                </dl> 

                            </div>
                            <div class="col-lg-12">
                                <h6>Quantity : <input type="number" name="qty" class="text-center w-25" value="1"></h6>
                                
                            </div>
                            <div class="col-lg-12 mt-3">
                                <div class="row">
                                    <div class="col-lg-6 pb-2">
                                        <button type="submit" class="btn btn-danger w-100">Add To Cart</button>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="price" value="<?= $data->price ?>">
                            <input type="hidden" name="id" value="<?= $data->id ?>">
                            <input type="hidden" name="image" value="<?= $data->picture ?>">
                            <input type="hidden" name="name" value="<?= $data->name ?>">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php require_once('include/footer.php') ?>