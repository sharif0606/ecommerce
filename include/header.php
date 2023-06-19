<?php
$protocol = isset($_SERVER['HTTPS']) ? 'https' : 'http';
$base_url="$protocol://".$_SERVER['SERVER_NAME']."/".explode('/',$_SERVER['SCRIPT_NAME'])[1]."/";

   session_start();
   if(isset($_SERVER['HTTP_REFERER'])) {
      if($_SERVER['HTTP_REFERER']==$base_url."login.php" || $_SERVER['HTTP_REFERER']==$base_url."logout.php" || $_SERVER['HTTP_REFERER']==$base_url."register.php"){
         
      }else{
            $_SESSION['last_visited'] = $_SERVER['HTTP_REFERER'];
      }
   }
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
    
      <title>Azeemah</title>
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="<?= $base_url ?>assets/css/bootstrap.css" />
      <!-- font awesome style -->
      <link href="<?= $base_url ?>assets/css/font-awesome.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="<?= $base_url ?>assets/css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="<?= $base_url ?>assets/css/responsive.css" rel="stylesheet" />
       
   </head>