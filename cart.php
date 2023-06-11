<!DOCTYPE html>
<html>
<head>
  <title>Shopping Cart </title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
</head>
<body>

  <div class="cart-container">
    <h1 class="cart-header">Shopping Cart</h1>

    <div class="cart-item">
      <div class="row">
        <div class="col-md-3">
          <img src="product1.jpg" alt="Product 1" class="item-image">
        </div>
        <div class="col-md-9 item-details">
          <h4 class="item-title">Product 1</h4>
          <p class="item-price">Price: $49.99</p>
          <p class="item-quantity">Quantity: 2</p>
          <p class="item-total">Total: $99.98</p>
        </div>
      </div>
    </div>

    <div class="cart-item">
      <div class="row">
        <div class="col-md-3">
          <img src="product2.jpg" alt="Product 2" class="item-image">
        </div>
        <div class="col-md-9 item-details">
          <h4 class="item-title">Product 2</h4>
          <p class="item-price">Price: $ 39.99</p>
          <p class="item-quantity">Quantity: 1</p>
          <p class="item-total">Total: $39.99</p>
        </div>
      </div>
    </div>

    <div class="cart-item">
      <div class="row">
        <div class="col-md-3">
          <img src="assets/images/p1.png" alt="Product 3" class="item-image">
        </div>
        <div class="col-md-9 item-details">
          <h4 class="item-title">Product 3</h4>
          <p class="item-price">Price: $29.99</p>
          <p class="item-quantity">Quantity: 3</p>
          <p class="item-total">Total: $89.97</p>
        </div>
      </div>
    </div>

    <!-- Add checkout button to trigger pop-up -->
    <button class="checkout-btn" onclick="openPopup()">Checkout</button>
  </div>

  <!-- Pop-up -->
  <div id="popup" class="popup">
    <div class="popup-content">
      <span class="close-btn" onclick="closePopup()">&times;</span>
      <!-- <h2><a href="Check_Out.php">Checkout</a></h2> -->
      <!-- Add your checkout form here -->
      <p>This is the pop-up content.</p>
    </div>
  </div>

  <script>
    // Open the pop-up
    function openPopup() {
      document.getElementById("popup").style.display = "block";
    }

    // Close the pop-up
    function closePopup() {
      document.getElementById("popup").style.display = "none";
    }
  </script>
</body>
</html>


