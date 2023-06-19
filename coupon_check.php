<?php
  $base_url="http://localhost/ecommerce/";
   session_start();
   require_once('class/crud.php');
   require_once('class/cart.php');
   $mysqli=new crud;
   $cart=new Cart;
  $msg="Congratulation! Your coupon successfully applied";
  $discount=0;
  $discounttype="- BDT 0.00";
  $where['coupon_code']=$_GET['code'];
  $where['customer_id']=$_SESSION['user']->id;
  $crs=$mysqli->common_select_single('orders','*',$where);
  if(!$crs['error']){
    if($crs['data']!=""){
      $msg="You have already used this coupon";
    }else{
      $wherec['coupon_code']=$_GET['code'];
      $rs=$mysqli->common_select_single('coupon','*',$wherec);
        if(!$rs['error']){
          if($rs['data']){
            if($rs['data']->start_date){
              if(strtotime($rs['data']->start_date) < time() && strtotime($rs['data']->end_date." 23:59:59") > time()){
                if($rs['data']->no_of_coupon > 0){
                  if($rs['data']->discount_type == "0"){ // fixed amount
                    if($rs['data']->discount_amount > $cart->total()){
                      $discount=$cart->total();
                    }else{
                      $discount=$rs['data']->discount_amount;
                    }
                    $discounttype="- BDT";
                  }else{
                    $discount=($cart->total() * ($rs['data']->discount_amount/100));
                    $discounttype=$rs['data']->discount_amount."% - BDT";
                  }
                }else{ // if number of coupon is 0
                  $msg="Coupon limit finished";
                }
              }else{ // date expired 
                $msg="Coupon date is already expired";
              }
            }else{ // coupon date is not set
              if($rs['data']->no_of_coupon > 0){
                if($rs['data']->discount_type == "0"){ // fixed amount
                  if($rs['data']->discount_amount > $cart->total()){
                    $discount=$cart->total();
                  }else{
                    $discount=$rs['data']->discount_amount;
                  }
                  $discounttype="- BDT";
                }else{
                  $discount=($cart->total() * ($rs['data']->discount_amount/100));
                  $discounttype=$rs['data']->discount_amount."% - BDT";
                }
              }else{ // if number of coupon is 0
                $msg="Coupon limit finished";
              }
            }
          }else{
            $msg="Coupon code is invalied";
          }
        }else{
            echo $rs['error'];
        }
    }
  }

  $return=array("discount"=>$discount,"discounttype"=>$discounttype,"message"=>$msg);
  echo json_encode($return);
?>