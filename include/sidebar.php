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
               
               <li class="nav-item">
                  <a class="nav-link" href="product.php">Products</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" href="contact.php">Contact</a>
               </li>
               <li>
                  <!-- cart icon -->
                  <form class="d-flex">
                     <button class="btn " type="button">
                        <a href="cart.php"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 576 512"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M0 24C0 10.7 10.7 0 24 0H69.5c22 0 41.5 12.8 50.6 32h411c26.3 0 45.5 25 38.6 50.4l-41 152.3c-8.5 31.4-37 53.3-69.5 53.3H170.7l5.4 28.5c2.2 11.3 12.1 19.5 23.6 19.5H488c13.3 0 24 10.7 24 24s-10.7 24-24 24H199.7c-34.6 0-64.3-24.6-70.7-58.5L77.4 54.5c-.7-3.8-4-6.5-7.9-6.5H24C10.7 48 0 37.3 0 24zM128 464a48 48 0 1 1 96 0 48 48 0 1 1 -96 0zm336-48a48 48 0 1 1 0 96 48 48 0 1 1 0-96z"/></svg>
                        </a>
                        <span class="badge bg-dark text-white ms-1 rounded-pill">
                        <?= $cart->total_items(); ?>
                        </span>
                     </button>
                  </form>
               </li>
               <li>
                  <!-- Wishlist Icon  -->
                  <form class="d-flex">
                     <button class="btn " type="button">
                        <a href="wishlist.php"><i class="fa fa-heart"></i></a>
                     </button>
                  </form>    
               </li>
               <li>
                  <div class="content">
                     <!-- Navbar Start -->
                     <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                        <div class="navbar-nav align-items-center ms-auto">
                           <div class="nav-item dropdown">
                              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                                 <i class="fa fa-bars"></i> <span class="d-none d-lg-inline-flex"></span>
                              </a>
                              <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                                 <?php if(!isset($_SESSION['user'])){ ?>
                                    <a href="register.php" class="dropdown-item">Registar</a>
                                    <a href="login.php" class="dropdown-item">Login</a>
                                 <?php }else{ ?>
                                    <a href="profile.php" class="dropdown-item">My Profile</a>
                                    <a href="logout.php" class="dropdown-item">Log Out</a>
                                 <?php } ?>
                              </div>
                           </div>
                        </div>
                     </nav>
                     <!-- Navbar End -->
                  </div>   
               </li>
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