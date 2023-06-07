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
          <p class="item-price">Price: $39.99</p>
          <p class="item-quantity">Quantity: 1</p>
          <p class="item-total">Total: $39.99</p>
        </div>
      </div>
    </div>

    <div class="cart-item">
      <div class="row">
        <div class="col-md-3">
          <img src="product3.jpg" alt="Product 3" class="item-image">
        </div>
        <div class="col-md-9 item-details">
          <h4 class="item-title">Product 3</h4>
          <p class="item-price">Price: $29.99</p>
          <p class="item-quantity">Quantity: 3</p>
          <p class="item-total">Total: $89.97</p>
        </div>
      </div
