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
                        <li class="nav-item dropdown">
                           <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"> <span class="nav-label">Pages <span class="caret"></span></a>
                           <ul class="dropdown-menu">
                              <li><a href="about.php">About</a></li>
                              <li><a href="testimonial.php">Testimonial</a></li>
                           </ul>
                        </li>
                        <li class="nav-item active">
                           <a class="nav-link" href="product.php">Products</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="blog_list.php">Blog</a>
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
                              <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                           </button>
                        </form>            
                        <form class="form-inline">
                           <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                           <i class="fa fa-search" aria-hidden="true"></i>
                           </button>
                        </form>
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