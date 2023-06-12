<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4"> 
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Sub_subcategory Add</h6>
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="category_id" class="form-label">Category:</label>
                        <select onchange="select_sub_cat(this.value)" class="form-control" id="category_id" name="category_id">
                            <?php
                                $data=$mysqli->common_select('category_tbl');
                                if(!$data['error']){
                                    foreach($data['data'] as $dt){
                            ?>
                                <option value="<?= $dt->id ?>"><?= $dt->name ?></option>
                            <?php } } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="subcategory_id" class="form-label">Sub Category:</label>
                        <select class="form-control" id="subcategory_id" name="subcategory_id">
                            <?php
                                $data=$mysqli->common_select('subcategory_tbl');
                                if(!$data['error']){
                                    foreach($data['data'] as $dt){
                            ?>
                                <option class="sub sub<?= $dt->category_id?>" value="<?= $dt->id ?>"><?= $dt->name ?></option>
                            <?php } } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">Sub Sub Category</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
                <?php
                    if($_POST){
                        $rs=$mysqli->common_create('sub_subcategory',$_POST);
                        if(!$rs['error']){
                        echo "<script>window.location='sub_subcategory_list.php'</script>";
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
</script>