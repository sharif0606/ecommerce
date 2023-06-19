<?php require_once('include/header.php') ?>

<?php require_once('include/sidebar.php') ?>
<div class="container">
  <div class="row">
    <div class="col-sm-3 py-5">
      <nav class="navbar bg-light">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Order History</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Wishlist</a>
          </li>
        </ul>
      </nav>
    </div>
    <div class="col-sm-9 py-5">
      <h2>Personal Information</h2>
      <form>
        <div class="form-group">
          <label for="firstName">First Name</label>
          <input type="text" class="form-control" id="firstName" value="" readonly>
        </div>
        <div class="form-group">
          <label for="lastName">Last Name</label>
          <input type="text" class="form-control" id="lastName" value=" " readonly>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" class="form-control" id="email" value=" " readonly>
        </div>
        <div class="form-group">
          <label for="address">Address</label>
          <textarea class="form-control" id="address" rows="3" readonly> </textarea>
        </div>
        <a href="" class="btn btn-primary">Edit Profile</a>
      </form>
    </div>
  </div>
</div>  
 
  <?php require_once('include/footer.php') ?>
