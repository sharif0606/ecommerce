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
                        <select name="status" class="form-control" id="">
                            <option <?= $d->status=="Pending"?"selected":"" ?> value="Pending">Pending</option>
                            <option <?= $d->status=="Completed"?"selected":"" ?> value="Completed">Completed</option>
                            <option <?= $d->status=="Cancelled"?"selected":"" ?> value="Cancelled">Cancelled</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
                <?php
                    if($_POST){
                        if($_POST['status']=="Completed"){
                            $whereitm['order_id']=$_GET['id'];
                            $dataitm=$mysqli->common_select('order_items','*',$whereitm);
                            if(!$dataitm['error']){
                                foreach($dataitm['data'] as $itm){
                                    $query=$mysqli->common_query("update product_tbl set stock=stock - ".$itm->quantity." where id='".$itm->product_id."' ");
                                    
                                }
                            }
                        }
                        $rs=$mysqli->common_update('order_items',$_POST,$where);
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