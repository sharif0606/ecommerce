<?php require_once('include/header.php') ?>
<style>
    .cart-container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }
    
    .cart-header {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 20px;
    }
    
    .cart-item {
      border-bottom: 1px solid #ddd;
      padding: 10px 0;
    }
    
    .cart-item:last-child {
      border-bottom: none;
    }
    
    .item-image {
      max-width: 100px;
      height: auto;
      margin-right: 20px;
    }
    
    .item-details {
      flex-grow: 1;
    }
    
    .item-title {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 5px;
    }
    
    .item-price {
      font-size: 16px;
      margin-bottom: 5px;
    }
    
    .item-quantity {
      margin-bottom: 5px;
    }
    
    .item-total {
      font-size: 16px;
      font-weight: bold;
    }
    
    .checkout-btn {
      margin-top: 20px;
    }
    
    /* Added styles for pop-up */
    .popup {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      overflow: auto;
      background-color: rgba(0,0,0,0.5);
    }
    
    .popup-content {
      background-color: #fefefe;
      margin: 10% auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
    }
    
    .close-btn {
      color: #888;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }
    
    .close-btn:hover,
    .close-btn:focus {
      color: #000;
      text-decoration: none;
      cursor: pointer;
    }
  </style>
   <body class="sub_page">
      <div class="hero_area">
         <?php require_once('include/sidebar.php') ?>
      </div>



  <div class="cart-container">
    <h1 class="cart-header">Shopping Cart</h1>
    <?php 
      if($cart->total_items() > 0){ 
        foreach($cart->contents() as $item){ 
    ?>
    <form action="update_cart.php" method="post">
      <input type="hidden" name="rowid" value="<?= $item['rowid'] ?>">
      <div class="cart-item">
        <div class="row">
          <div class="col-md-3">
            <img src="<?= $base_url?>upload/product/<?= $item['image'] ?>" alt="Product 1" class="item-image">
          </div>
          <div class="col-md-6 item-details">
            <h4 class="item-title"><?= $item['name'] ?></h4>
            <p class="item-price">Price: BDT <?= $item['price'] ?></p>
            <p class="item-quantity">Quantity: <input type="number" class="w-25" name="qty" id="" value="<?= $item['qty'] ?>"></p>
            <p class="item-total">Total: BDT <?= $item['subtotal'] ?></p>
          </div>
          <div class="col-md-3">
            <button type="submit" class="btn btn-primary"><i class="fa fa-edit"></i></button>
            <a href="remove_from_cart.php?rowid=<?= $item['rowid']?>" class="btn btn-danger"><i class="fa fa-trash"></i></a>
          </div>
        </div>
      </div>
    </form>
<?php }?>
<a class="btn btn-success" href="checkout.php">Checkout</a>
<?php } ?>
  </div>

  

<?php require_once('include/footer.php') ?>