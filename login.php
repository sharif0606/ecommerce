<?php require_once('include/header.php') ?>

   <body class="sub_page">
      <div class="hero_area">
         <!-- header section strats -->
         <?php require_once('include/sidebar.php') ?>
         <!-- end header section -->
      </div>
      
    <div class="container-xxl position-relative bg-white d-flex p-0">
        
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h3>Sign In</h3>
                        </div>
                    <form method="post" action="">
                        <div class="form-floating mb-3">
                            <label for="floatingInput"><h5>Email address :</h5></label>
                                <input type="email" class="form-control" name="email" placeholder="name@example.com">                   
                        </div>
                        <div class="form-floating mb-4">
                            <label for="floatingPassword"><h5>Password :</h5></label>
                            <input type="password" class="form-control" name="password" placeholder="Password">
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
                                echo "<script>window.location='checkout.php'</script>";
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

    
    <?php require_once('include/footer.php') ?>