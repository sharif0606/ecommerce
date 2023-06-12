<?php require_once('include/header.php') ?>

   <body class="sub_page">
      <div class="hero_area">
         <!-- header section strats -->
         <?php require_once('include/sidebar.php') ?>
         <!-- end header section -->
      </div>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <title>My Profile</title>
</head>

<body>
  <div class="container">
    <h1 class="mt-4">My Profile</h1>

    <?php
    // Simulating user data retrieval from database
    $firstName = "John";
    $lastName = "Doe";
    $email = "johndoe@example.com";
    $address = "123 Street, City, Country";
    $orders = array(
      array("Order #1234", "Product A", "$50.00"),
      array("Order #5678", "Product B", "$30.00"),
      array("Order #9012", "Product C", "$20.00")
    );
    ?>

    <h2>Personal Information</h2>
    <form>
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" class="form-control" id="firstName" value="<?php echo $firs_tName; ?>" readonly>
      </div>
      <div class="form-group">
        <label for="lastName">Last Name</label>
        <input type="text" class="form-control" id="lastName" value="<?php echo $lastName; ?>" readonly>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" value="<?php echo $email; ?>" readonly>
      </div>
      <div class="form-group">
        <label for="address">Address</label>
        <textarea class="form-control" id="address" rows="3" readonly><?php echo $address; ?></textarea>
      </div>
      <a href="edit_profile.php" class="btn btn-primary">Edit Profile</a>
    </form>

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
        <?php foreach ($orders as $order) : ?>
          <tr>
            <td><?php echo $order[0]; ?></td>
            <td><?php echo $order[1]; ?></td>
            <td><?php echo $order[2]; ?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <?php require_once('include/footer.php') ?>
</body>

</html>
