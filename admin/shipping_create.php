<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Shipping Add</h6>
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="name" class="form-label">City Name</label>
                        <input type="text" class="form-control" id="city_name" name="city_name">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Shipping Charge</label>
                        <input type="text" class="form-control" id="shipping_charge" name="shipping_charge">
                    </div>
                    <button type="submit" class="btn btn-success">Add</button>
                </form>
                <?php
                    if($_POST){
                        $rs=$mysqli->common_create('shipping_city',$_POST);
                        if(!$rs['error']){
                        echo "<script>window.location='shipping_list.php'</script>";
                        }else{
                            echo $rs['error'];
                        }
                    }
                ?>
            </div>
        </div>
    </div>
</div>
<!-- Form End -->

<?php require_once('include/footer.php') ?>