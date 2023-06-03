<?php
    session_start();
    $base_url="http://localhost/ecommerce/admin/";
    require_once('../class/crud.php');
    $mysqli=new crud;
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>AZEEMAH - Login</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="<?= $base_url?>assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="<?= $base_url?>assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="<?= $base_url?>assets/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<?= $base_url?>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<?= $base_url?>assets/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div> -->
        <!-- Spinner End -->


        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <a href="index.html" class="">
                                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>AZEEMAH</h3>
                            </a>
                            <h3>Sign In</h3>
                        </div>
                    <form method="post" action="">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="email" placeholder="name@example.com">
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" name="password" placeholder="Password">
                            <label for="floatingPassword">Password</label>
                        </div>
                        
                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">Sign In</button>
                        <p class="text-center mb-0">Don't have an Account? <a href="register.php">Sign Up</a></p>
                    </form>
                    <?php
                        if($_POST){
                            $where['email']=$_POST['email'];
                            $where['password']=sha1(md5($_POST['password']));
                            
                            $rs=$mysqli->common_select_single('users_tbl','*',$where);
                          
                            if(!$rs['error']){
                                
                                if(isset($rs['data'])){
                                    $_SESSION['userid']=$rs['data']->id;
                                    $_SESSION['email']=$rs['data']->email;
                                    $_SESSION['username']=$rs['data']->name;
                                    $_SESSION['contact']=$rs['data']->contact;
                                    $_SESSION['gender']=$rs['data']->gender;
                                }
                                echo "<script>window.location='dashboard.php'</script>";
                            }else{
                                echo $rs['error'];
                            }
                        }

                    ?>



                    </div>
                </div>
            </div>
        </div>
        <!-- Sign In End -->
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<?= $base_url?>assets/lib/chart/chart.min.js"></script>
    <script src="<?= $base_url?>assets/lib/easing/easing.min.js"></script>
    <script src="<?= $base_url?>assets/lib/waypoints/waypoints.min.js"></script>
    <script src="<?= $base_url?>assets/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="<?= $base_url?>assets/lib/tempusdominus/js/moment.min.js"></script>
    <script src="<?= $base_url?>assets/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="<?= $base_url?>assets/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="<?= $base_url?>assets/js/main.js"></script>
</body>

</html>