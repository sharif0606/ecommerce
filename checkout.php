<?php require_once('include/header.php') ?>
   <body class="sub_page">
      <div class="hero_area">
         <!-- header section strats -->
         <?php require_once('include/sidebar.php') ?>
         <!-- end header section -->
      </div>

      <section class="bg-light py-5">
        <div class="container">
          
      <form action="" method="post">
          <div class="row">
            <div class="col-xl-8 col-lg-8 mb-4">
              <!-- <div class="card mb-4 border shadow-0">
                <div class="p-4 d-flex justify-content-between">
                  <div class="">
                    <h5>Have an account?</h5>
                    <p class="mb-0 text-wrap ">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                  </div>
                  <div class="d-flex align-items-center justify-content-center flex-column flex-md-row">
                    <a href="register.php" class="btn btn-outline-primary me-0 me-md-2 mb-2 mb-md-0 w-100">Register</a>
                    <a href="login.php" class="btn btn-primary shadow-0 text-nowrap w-100">Sign in</a>
                  </div>
                </div>
              </div> -->
              <!-- Checkout -->
              <div class="card shadow-0 border">
                <div class="p-4">
                  <div class="row">
                    <div class="col-6 mb-3">
                      <p class="mb-0">First name</p>
                      <div class="form-outline">
                        <input type="text" name="first_name" id="typeText" placeholder="Type here" class="form-control" />
                      </div>
                    </div>
      
                    <div class="col-6">
                      <p class="mb-0">Last name</p>
                      <div class="form-outline">
                        <input type="text" name="last_name" id="typeText" placeholder="Type here" class="form-control" />
                      </div>
                    </div>
      
                    <div class="col-6 mb-3">
                      <p class="mb-0">Phone</p>
                      <div class="form-outline">
                        <input type="tel" name="phone" id="typePhone" value="+88 " class="form-control" />
                      </div>
                    </div>
      
                    <div class="col-6 mb-3">
                      <p class="mb-0">Email</p>
                      <div class="form-outline">
                        <input type="email" name="email" id="typeEmail" placeholder="example@gmail.com" class="form-control" />
                      </div>
                    </div>
                  </div>

      
                  <hr class="my-4" />
      
                  <h5 class="card-title mb-3">Shipping info</h5>
      
      
                  <div class="row">
                    <div class="col-sm-8 mb-3">
                      <p class="mb-0">Address</p>
                      <div class="form-outline">
                        <input type="text" name="address" id="typeText" placeholder="Type here" class="form-control" />
                      </div>
                    </div>
      
                    <div class="col-sm-4 mb-3">
                      <p class="mb-0">City</p>
                      <select name="city" required class="form-control" onchange="shipping_cost(this.value)">
                        <option value="">Select City</option>
                        <option value="1">Chattogram</option>
                        <option value="2">Dhaka</option>
                        <option value="3">Cumilla</option>
                        <option value="3">Rajshahi</option>
                        <option value="3">Sylet</option>
                        <option value="3">Borishal</option>
                        <option value="3">Rongpur</option>
                      </select>
                    </div>
      
                    <div class="col-sm-4 col-6 mb-3">
                      <p class="mb-0">Postal code</p>
                      <div class="form-outline">
                        <input name="postal" type="text" id="typeText" class="form-control" />
                      </div>
                    </div>
                  </div>
      
                  <div class="mb-3">
                    <p class="mb-0">Message to seller</p>
                    <div class="form-outline">
                      <textarea name="message" class="form-control" id="textAreaExample1" rows="2"></textarea>
                    </div>
                  </div>
      
                  <div class="float-end">
                    <button type="submit" class="btn btn-success shadow-0 border">Confirm Order</button>
                  </div>
                </div>
              </div>
              <!-- Checkout -->
            </div>
            <div class="col-xl-4 col-lg-4 d-flex justify-content-center justify-content-lg-end">
              <div class="ms-lg-4 mt-4 mt-lg-0" style="max-width: 320px;">
                <h6 class="mb-3">Summary</h6>
                <div class="d-flex justify-content-between">
                  <p class="mb-2">Total price:</p>
                  <p class="mb-2">BDT <?= $cart->total() ?></p>
                </div>
                <!-- <div class="d-flex justify-content-between">
                  <p class="mb-2">Discount:</p>
                  <p class="mb-2 text-danger">- BDT 0</p>
                </div> -->
                <div class="d-flex justify-content-between">
                  <p class="mb-2">Shipping cost:</p>
                  <p class="mb-2 shippingcost">+ BDT 0.00</p>
                </div>
                <hr />
                <div class="d-flex justify-content-between">
                  <p class="mb-2">Total price:</p>
                  <p class="mb-2 fw-bold ptotal"><?= $cart->total() ?></p>
                </div>
                <!--       
                <div class="input-group mt-3 mb-4">
                  <input type="text" class="form-control border" name="" placeholder="Promo code" />
                  <button class="btn btn-light text-primary border">Apply</button>
                </div> -->
      
                <hr />
                <h6 class="text-dark my-4">Items in cart</h6>
                <?php 
                  if($cart->total_items() > 0){ 
                    foreach($cart->contents() as $item){ 
                ?>
                    <div class="d-flex align-items-center mb-4">
                      <div class="me-3 position-relative">
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill badge-secondary">
                        <?= $item['qty'] ?>
                        </span>
                        <img src="<?= $base_url?>upload/product/<?= $item['image'] ?>" style="height: 96px; width: 96x;" class="img-sm rounded border" />
                      </div>
                      <div class="">
                        <a href="product_details.php?id=<?= $item['id'] ?>" class="nav-link">
                          <?= $item['name'] ?>
                        </a>
                        <div class="price text-muted">Total: BDT <?= $item['subtotal'] ?></div>
                      </div>
                    </div>
                <?php } } ?>
              </div>
            </div>

            <input type="hidden" name="discount" id="discount" value="0">
            <input type="hidden" name="shipping" id="shipping" value="0">
            <input type="hidden" name="grand_total" id="grand_total" value="0">
          </div>
</form>
<?php
 if($_POST){
  $customer['first_name']=$_POST['first_name'];
  $customer['last_name']=$_POST['last_name'];
  $customer['email']=$_POST['email'];
  $customer['phone']=$_POST['phone'];
  $customer['address']=$_POST['address'];
  $custsave=$mysqli->common_create('customers',$customer);
  if(!$custsave['error']){
    $orders['customer_id']=$custsave['data'];
    $orders['discount']=$_POST['discount'];
    $orders['shipping']=$_POST['shipping'];
    $orders['grand_total']=$_POST['grand_total'];
    $orders['address']=$_POST['address'];
    $orders['city']=$_POST['city'];
    $orders['postal']=$_POST['postal'];
    $orders['message']=$_POST['message'];
    $orders['created_at']=date("Y-m-d H:i:s");
    $ordersave=$mysqli->common_create('orders',$orders);
    if(!$custsave['error']){
      if($cart->total_items() > 0){ 
        foreach($cart->contents() as $item){ 
          $cartdata['order_id']=$ordersave['data'];
          $cartdata['product_id']=$item['id'];
          $cartdata['price']=$item['price'];
          $cartdata['quantity']=$item['qty'];
          $orderdet=$mysqli->common_create('order_items',$cartdata);
        }
        $cart->destroy();
        echo "<script>window.location='index.php'</script>";
      }
    }
  }
 }

?>
        </div>
      </section>
      <?php require_once('include/footer.php') ?>
      <script>
        function shipping_cost(e){
          if(e=="1")
            ship=100;
          else
            ship=150;
            $("#shipping").val(ship);
            $("#grand_total").val((ship+<?= $cart->total() ?>));
            $(".shippingcost").html("+ BDT "+ship);
            $(".ptotal").html("BDT "+(ship+<?= $cart->total() ?>))
        }
      </script>