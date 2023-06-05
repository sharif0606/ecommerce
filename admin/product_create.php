<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Product Add</h6>
                <form method="post" action=""> 
                    <div class="mb-3">
                        <label for="name" class="form-label">Title:</label>
                        <select class="form-control" id="title" name="title">
                            <?php
                                $data=$mysqli->common_select('product_tbl');
                                if(!$data['error']){
                                    foreach($data['data'] as $dt){
                            ?>
                                <option value="<?= $dt->id ?>"><?= $dt->name ?></option>
                            <?php } } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Price:</label>
                        <input type="number" class="form-control" id="price" name="price">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Date</label>
                    
                        <input type="date" name="date" class="form-control" id="date">
                    </div>
                    
                    <div class="mb-3">
                        <label for="name" class="form-label">Catagory_Id</label>
                        <input type="text" class="form-control" id="category_id" name="category_id">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Sub Catagory_ID</label>
                        <input type="text" class="form-control" id="subcategory_id" name="subcategory_id">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Vat</label>
                        <input type="text" class="form-control" id="vat" name="vat">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Discount</label>
                        <input type="text" class="form-control" id="discount" name="discount">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Picture</label>
                        <input type="file" class="form-control" id="picture" name="picture">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Stock</label>
                        <input type="text" class="form-control" id="stock" name="stock">
                    </div>

                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
                <?php
                    if($_POST){
                        $rs=$mysqli->common_create('product_tbl',$_POST);
                        if(!$rs['error']){
                        echo "<script>window.location='product_list.php'</script>";
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