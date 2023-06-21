<?php require_once('include/header.php') ?>

<?php require_once('include/sidebar.php') ?>
<?php
  if(!isset($_SESSION['user'])){
    echo "<script>window.location='index.php'</script>";
    exit;
  }
?>
<div class="container">
  <div class="row">
    <div class="col-sm-3 py-5">
      <?php require_once('include/user_navbar.php') ?>
    </div>
    <div class="col-sm-9 py-5">
      
      <div class="card">
        <div class="card-header">
          <h2 class="text-center text-info">Personal Information</h2>
        </div>
        <div class="card-body">
          <b>Name: </b> <?= $_SESSION['user']->first_name ?> <?= $_SESSION['user']->last_name ?><br>
          <b>Email: </b> <?= $_SESSION['user']->email ?><br>
          <b>Phone: </b> <?= $_SESSION['user']->phone ?><br>
          <b>Address: </b> <?= $_SESSION['user']->address ?>
        </div>
      </div>
    </div>
  </div>
</div>  
 
  <?php require_once('include/footer.php') ?>
