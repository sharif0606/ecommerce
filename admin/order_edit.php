<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Order Edit</h6>
                <?php
                  $where['id']=$_GET['id'];
                  $data=$mysqli->common_select_single('orders','*',$where);
                 
                  if(!$data['error'])
                    $d=$data['data'];
                  else{
                    echo "<h2 class='text-danger text-center'>This url is not correct</h2>";
                    
                  }
                ?>
                <form method="post" action="">
                    <div class="mb-3">
                        <label for="name" class="form-label">Order</label>
                        <input type="text" value="<?= $d->name ?>"class="form-control" id="name" name="name">
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                </form>
                <?php
                    if($_POST){
                        $rs=$mysqli->common_update('orders',$_POST,$where);
                        if(!$rs['error']){
                        echo "<script>window.location='order_list.php'</script>";
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