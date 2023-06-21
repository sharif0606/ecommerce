<?php require_once('include/header.php') ?>

   <body class="sub_page">
      <div class="hero_area">
         <!-- header section strats -->
         <?php require_once('include/sidebar.php') ?>
         <!-- end header section -->
      </div>

      <div class="container">
  <div class="row">
    <div class="col-sm-3 py-5">
      <?php require_once('include/user_navbar.php') ?>
    </div>
    <div class="col-sm-9 py-5">
      
      <div class="card">
        <div class="card-header">
          <h2>Order History</h2>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                <tr>
                  <th scope="col">Order Number</th>
                  <th scope="col">Sub Amount</th>
                  <th scope="col">Discount</th>
                  <th scope="col">Shipping</th>
                  <th scope="col">Grand_total</th>
                  <th scope="col">Address</th>
                  <th scope="col">City</th>
          
                  <th scope="col">Message</th>
                  <th scope="col">Order Date</th>
                  <th scope="col">Status</th>
                  <th scope="col">Invoice</th>
                </tr>
              </thead>
              <tbody>
              <?php
                $where['customer_id']=$_SESSION['user']->id;
                $data=$mysqli->common_select('orders','*',$where);
                if(!$data['error']){
                  foreach($data['data'] as $d){
              
              ?>
                  <tr>
                    <td class="table-info">INV-<?= date("y") ?><?= str_pad($d->id, 5, "0", STR_PAD_LEFT); ?></td>
                    <td class="table-primary"><?= $d->sub_total; ?></td>
                    <td class="table-success"><?= $d->discount; ?></td>
                    <td class="table-danger"><?= $d->shipping;?></td>
                    <td class="table-warning"><?= $d->grand_total;?></td>
                    <td class="table-info"><?= $d->address;?></td>
                    <td class="table-success"><?= $d->city;?></td>
                    
                    <td class="table-success"><?= $d->message;?></td>
                    <td class="table-danger"><?= $d->order_date;?></td>
                    <td class="table-primary"><?= $d->status;?></td>
                    <td class="">
                    <a href="invoice.php?id=<?= $d->id ?>"><i class="fa regular fa-file-invoice">Invoice</i></a>
                    </td>
                   
                  </tr>
                <?php  }  } ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>  

  <?php require_once('include/footer.php') ?>