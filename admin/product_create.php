<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 ">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Product Add</h6>
                <form enctype="multipart/form-data" action="" method="post">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name:</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Catagory</label>
                                <select class="form-control" onchange="select_sub_cat(this.value)" id="category_id" name="category_id">
                                    <?php
                                        $data=$mysqli->common_select('category_tbl');
                                        if(!$data['error']){
                                            foreach($data['data'] as $dt){
                                    ?>
                                        <option value="<?= $dt->id ?>"><?= $dt->name ?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Sub Catagory</label>
                                <select class="form-control" onchange="select_subsub_cat(this.value)" id="subcategory_id" name="subcategory_id">
                                    <?php
                                        $data=$mysqli->common_select('subcategory_tbl');
                                        if(!$data['error']){
                                            foreach($data['data'] as $dt){
                                    ?>
                                        <option class="sub sub<?= $dt->category_id ?>" value="<?= $dt->id ?>"><?= $dt->name ?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Sub Sub Catagory</label>
                                <select class="form-control" id="sub_subcategory_id" name="sub_subcategory_id">
                                    <?php
                                        $data=$mysqli->common_select('sub_subcategory');
                                        if(!$data['error']){
                                            foreach($data['data'] as $dt){
                                    ?>
                                        <option class="subsub subsub<?= $dt->category_id ?>" value="<?= $dt->id ?>"><?= $dt->name ?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Brand</label>
                                <select class="form-control" id="brand_id" name="brand_id">
                                    <?php
                                        $data=$mysqli->common_select('brand_tbl');
                                        if(!$data['error']){
                                            foreach($data['data'] as $dt){
                                    ?>
                                        <option value="<?= $dt->id ?>"><?= $dt->name ?></option>
                                    <?php } } ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="price" class="form-label">Price:</label>
                                <input type="text" class="form-control" id="price" name="price">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Vat</label>
                                <input type="text" class="form-control" id="vat" name="vat">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Discount</label>
                                <input type="text" class="form-control" id="discount" name="discount">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Picture</label>
                                <input type="file" class="form-control" id="picture" name="picture">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="name" class="form-label">Stock</label>
                                <input type="text" class="form-control" id="stock" name="stock">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="mb-3">
                                <label for="name" class="form-label">Description</label>
                                <textarea class="form-control" id="details" name="details"></textarea>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
                <?php
                    if($_POST){
                        if($_FILES['picture']['name']){
                            $imgname=time().rand(1111,9999).'.'.pathinfo($_FILES['picture']['name'], PATHINFO_EXTENSION);
                            $rs=move_uploaded_file($_FILES['picture']['tmp_name'],"../upload/product/$imgname");
                            if($rs)
                              $_POST['picture']=$imgname;
                          }
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
<script>
    function select_sub_cat(e){
        $('.sub').hide();
        $('.sub'+e).show();
    }
    function select_subsub_cat(e){
        $('.subsub').hide();
        $('.subsub'+e).show();
    }
</script>