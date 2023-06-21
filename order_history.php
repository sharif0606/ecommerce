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
            <table class="table">
              <thead>
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
                    <td>INV-<?= date("y") ?><?= str_pad($d->id, 5, "0", STR_PAD_LEFT); ?></td>
                    <td><?= $d->sub_total; ?></td>
                    <td><?= $d->discount; ?></td>
                    <td><?= $d->shipping;?></td>
                    <td><?= $d->grand_total;?></td>
                    <td><?= $d->address;?></td>
                    <td><?= $d->city;?></td>
                    
                    <td><?= $d->message;?></td>
                    <td><?= $d->order_date;?></td>
                    <td><?= $d->status;?></td>
                    <td>
                      <a href="invoice.php"><i class="fas fa-file-invoice"></i></a>
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