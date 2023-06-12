<?php
    $base_url="http://localhost/ecommerce/";
    require_once('class/cart.php');
    $cart=new Cart;
    
    $insertItem = $cart->remove($_GET['rowid']); 
    header("location: ".$base_url."cart.php");

