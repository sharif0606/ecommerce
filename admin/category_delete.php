<?php
    session_start();
    if(!isset($_SESSION['userid'])){
        echo "<script>window.location='login.php'</script>";
        exit;
    }
    
    require_once('../class/crud.php');
    $mysqli=new crud;
    ?>
<?php 
$where['id']=$_GET['id'];
$rs=$mysqli->common_delete("category_tbl",$where);
if($rs){
    header('location: category_list.php');
}else{
    echo $mysqli->error;
}