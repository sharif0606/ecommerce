<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Coupon Add</h6>
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="name" class="form-label">Coupon_code</label>
                        <input type="text" class="form-control" id="name" name="coupon_code">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Discount Type:</label> <br>
                        <select name="discount_type" id="">
                            <option value="0">Fixed Amount</option>
                            <option value="1">Percent</option>
                        </select>
                        
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Discount Amount</label>
                        <input type="text" class="form-control" id="name" name="discount_amount">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Description:</label> <br>
                        <textarea name="description" id="" cols="30" rows="2"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Start Date</label>
                        <input type="date" class="form-control" id="name" name="start_date">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">End Date</label>
                        <input type="date" class="form-control" id="name" name="end_date">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Number of Coupon</label>
                        <input type="number" class="form-control" id="name" name="no_of_coupon">
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
                <?php
                    if($_POST){
                        $rs=$mysqli->common_create('coupon',$_POST);
                        if(!$rs['error']){
                        echo "<script>window.location='coupon_list.php'</script>";
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