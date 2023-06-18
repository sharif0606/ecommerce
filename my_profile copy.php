<?php require_once('include/header.php') ?>

<?php require_once('include/sidebar.php') ?>

 
    <title>Profile</title>
   </head>
   <body>

    <div class="container">
   
        
      <div class="row">
        <div class="col-sm-3 py-5">
          <ul>
            <li>
            <a href="#">Home</a>
            </li>
            <li>
            <a href="#">Home</a>
            </li>
            <li>
            <a href="#">Home</a>
            </li>
          </ul>
         
         
        </div>
        <div class="col-sm-9 py-5">
        <h2>Personal Information</h2>
    <form>
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" class="form-control" id="firstName" value=" " readonly>
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
    <h2>Order History</h2>
    <table class="table">
      <thead>
        <tr>
          <th>Order Number</th>
          <th>Product</th>
          <th>Price</th>
        </tr>
      </thead>
      <tbody>
      <tr>
            <td>Order</td>
            <td>Order</td>
            <td>Order</td>
          
          </tr>
</table>
    
    
         
 
  <?php require_once('include/footer.php') ?>
