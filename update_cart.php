<?php
    $base_url="http://localhost/ecommerce/";
    require_once('class/cart.php');
    $cart=new Cart;
    $itemData = array( 
        'rowid' => $_POST['rowid'], 
        'qty' => $_POST['qty'] 
    ); 
    
    $updateItem = $cart->update($itemData); 
    header("location: ".$base_url."cart.php");

