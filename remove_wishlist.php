<?php
  $base_url="http://localhost/ecommerce/";
   session_start();
   require_once('class/crud.php');
   $mysqli=new crud;
  $msg="";
  $type=0;

    $data['product_id']=$_GET['product_id'];
    $data['user_id']=$_SESSION['user']->id;
    $crs=$mysqli->common_delete('wishlist_tbl',$data);
    if(!$crs['error']){
      $msg="Product deleted from wishlist";
      $type=1;
    }else{
      $msg="Something is wrong. Please try again";
    }
    
  

  $return=array("message"=>$msg,"type"=>$type);
  echo json_encode($return);
?>