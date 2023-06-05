<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Category Edit</h6>
                <?php
                  $where['id']=$_GET['id'];
                  $data=$mysqli->common_select_single('category_tbl','*',$where);
                 
                  if(!$data['error'])
                    $d=$data['data'];
                  else{
                    echo "<h2 class='text-danger text-center'>This url is not correct</h2>";
                    
                  }
                ?>
               <form method="post" action="">
                    <div class="mb-3">
                        <label for="title" class="form-label">Title:</label>
                        <select class="form-control" id="title" name="title">
                            <?php
                                $data=$mysqli->common_select('product_tbl');
                                if(!$data['error']){
                                    foreach($data['data'] as $dt){
                            ?>
                                <option value="<?= $dt->id ?>" <?= $d->title==$dt->id?"selected":"" ?>><?= $dt->name ?></option>
                            <?php } } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="price" class="form-label">Price:</label>
                        <input type="text" value="<?= $d->name ?>" class="form-control" id="price" name="price">
                    </div>
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </form>
                <?php
                    if($_POST){
                        $rs=$mysqli->common_update('product_tbl',$_POST,$where);
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