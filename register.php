<?php require_once('include/header.php') ?>

   <body class="sub_page">
      <div class="hero_area">
         <!-- header section strats -->
         <?php require_once('include/sidebar.php') ?>
         <!-- end header section -->
      </div>
      


<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sign Up Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h3>Sign Up</h3>
                        </div>
                    <form method="post" action="">
                        <div class="form-floating mb-3">
                            <label for="floatingText"><h5>First Name :</h5></label>
                            <input type="text" class="form-control" name="first_name" placeholder="jhon">                          
                        </div>

                        <div class="form-floating mb-3">
                            <label for="floatingText"><h5>Last Name :</h5></label>
                            <input type="text" class="form-control" name="last_name" placeholder="Doe">                          
                        </div>

                        <div class="form-floating mb-3">
                            <label for="email"><h5>Email address :</h5></label>
                            <input type="email" class="form-control" name="email" placeholder="name@example.com">
                        </div>

                        <div class="form-group">
                            <label for="phone"><h5>Phone Number</h5></label>
                            <input type="tel" class="form-control" id="phone" name="phone"placeholder="Enter your phone number">
                        </div>

                        <div class="form-floating mb-4">
                            <label for="password"><h5>Password :</h5></label>
                            <input type="password" class="form-control" name="password" placeholder="Password">
                        </div>

                        <div class="form-group">
                            <label for="address"><h5>Address</h5></label>
                            <input type="text" class="form-control" id="address" name="address"placeholder="Enter your address">
                        </div>
                        <button type="submit" class="btn btn-primary py-3 w-100 mb-4">Sign Up</button>
                        <p class="text-center mb-0">Already have an Account? <a href="login.php">Sign In</a></p>
                    </form>
                    <?php
                        if($_POST){
                            $pass=trim($_POST['password']);
                            $_POST['password']=sha1(md5($_POST['password']));
                            
                            $rs=$mysqli->common_create('customers',$_POST);
                            if(!$rs['error']){
                                echo "<script>window.location='login.php'</script>";
                            }else{
                                echo $rs['error'];
                            }
                        }

                    ?>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign Up End -->
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
