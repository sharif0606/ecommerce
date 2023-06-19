<?php
  $base_url="http://localhost/ecommerce/";
   session_start();
   require_once('class/crud.php');
   $mysqli=new crud;
  $msg="";
  $type=0;
  if(!isset($_SESSION['user'])){
    $msg="You have to login first";
    $type=0;
  }else{
    $data['product_id']=$_GET['product_id'];
    $data['user_id']=$_SESSION['user']->id;
    $crs=$mysqli->common_select_single('wishlist_tbl','*',$data);
    if(!$crs['error']){
      if($crs['data']!=""){
        $msg="This product already in your wishlist";
      }else{
        $rs=$mysqli->common_create('wishlist_tbl',$data);
        if(!$rs['error']){
          if($rs['data']!=""){
            $msg="Product Add to wish list";
            $type=1;
          }else{
            $msg="Something is wrong. Please try again";
          }
        }
      }
    }
  }

  $return=array("message"=>$msg,"type"=>$type);
  echo json_encode($return);
?>