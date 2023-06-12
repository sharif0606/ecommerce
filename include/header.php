<?php
    $base_url="http://localhost/ecommerce/";
    require_once('class/crud.php');
    require_once('class/cart.php');
    $mysqli=new crud;
    $cart=new Cart;
?>
<!DOCTYPE html>
<html>
   <head>
      <!-- Basic -->
      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <!-- Mobile Metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <!-- Site Metas -->
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <!-- <link rel="shortcut icon" href="<?= $base_url ?>assets/images/favicon.png" type=""> -->
      <title>Famms - Fashion HTML Template</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="<?= $base_url ?>assets/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="<?= $base_url ?>assets/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="<?= $base_url ?>assets/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="<?= $base_url ?>assets/css/responsive.css" rel="stylesheet" />
   </head>
   