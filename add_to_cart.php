<?php
    $base_url="http://localhost/ecommerce/";
    require_once('class/cart.php');
    $cart=new Cart;
    $itemData = array( 
        'id' => $_POST['id'], 
        'image' => $_POST['image'], 
        'name' => $_POST['name'], 
        'price' => $_POST['price'],
        'qty' => $_POST['qty'] 
    ); 
        
    // Insert item to cart 
    $insertItem = $cart->insert($itemData); 
    header("location: ".$base_url."product_details.php?id=".$_POST['id']);

