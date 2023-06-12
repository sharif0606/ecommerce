<!-- header section strats -->
<header class="header_section">
            <div class="container">
               <nav class="navbar navbar-expand-lg custom_nav-container">
                  <a class="navbar-brand" href="index.php"><img width="60" src="assets/images/logo2.jpeg" alt="#" /></a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class=""> </span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav">
                        <li class="nav-item">
                           <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                        </li>
                       
                        <li class="nav-item active">
                           <a class="nav-link" href="product.php">Products</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="contact.php">Contact</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="register.php">Registar</a>
                        </li>
                        
                        <form class="d-flex">
                           <button class="btn btn-outline-dark" type="submit">
                              <a href="cart.php"><i class="bi-cart-fill me-1"></i>
                              Cart</a>
                              <span class="badge bg-dark text-white ms-1 rounded-pill">
                              <?= $cart->total_items(); ?>
                              </span>
                           </button>
                        </form>            
                        <form class="form-inline">
                           <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                           <i class="fa fa-search" aria-hidden="true"></i>
                           </button>
                        </form>
                        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
               
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <span class="d-none d-lg-inline-flex"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="my_profile.php" class="dropdown-item">My Profile</a>
                            <a href=" setting.php" class="dropdown-item">Settings</a>
                            <a href="logout.php" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->

                     </ul>
                  </div>
               </nav>
            </div>
         </header>
         <!-- end header section -->


         

         <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Add the following JavaScript code -->
<script>
$(document).ready(function() {
  $('.dropdown-toggle').click(function(e) {
    e.preventDefault();
    $(this).parent().find('.dropdown-menu').toggle();
  });
});
</script>