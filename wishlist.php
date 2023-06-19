<?php require_once('include/header.php') ?>

   <body class="sub_page">
      <div class="hero_area">
         <!-- header section strats -->
         <?php require_once('include/sidebar.php') ?>
         <!-- end header section -->
      </div>

      <div class="container">
  <div class="row">
    <div class="col-sm-3 py-5">
      <?php require_once('include/user_navbar.php') ?>
    </div>
    <div class="col-sm-9 py-5">
      
      <div class="card">
        <div class="card-header">
          <h2>Wish-List</h2>
        </div>
        <div class="card-body">
        <section class="product_section layout_padding pt-0">
          <div class="container">
     
      <div class="row">
      <?php
        $customer_id=$_SESSION['user']->id;
         $data=$mysqli->common_select_query("SELECT product_tbl.* FROM product_tbl join `wishlist_tbl` on wishlist_tbl.product_id=product_tbl.id where `user_id`=$customer_id");
         if(!$data['error']){
            foreach($data['data'] as $d){
      ?>
      
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box mt-0 pt-0 px-1">
               <div class="option_container">
                  <div class="options">
                     
                     <a href="javascript:void(0)" onclick="removewhshlist(<?= $d->id ?>)" class="option1">
                        <i class="fa fa-times"></i>
                     </a>
                     <a href="product_details.php?id=<?= $d->id ?>" class="option2">
                        Buy Now
                     </a>
                  </div>
               </div>
               <div class="img-box">
                  <img src="<?= $base_url?>upload/product/<?= $d->picture ?>" alt="">
               </div>
               <div class="detail-box">
                  <h5><?= $d->name ?></h5> <br>
                  <h6>BDT <?= $d->price ?></h6>
               </div>
            </div>
         </div>
      <?php } } ?>
      </div>
   </div>
</section>
        
             
          </div>
        </div>
      </div>
    </div>
  </div>
</div>  

  <?php require_once('include/footer.php') ?>
  <script>
         function removewhshlist(product_id){
            $.ajax({
              dataType: "json",
              url: "remove_wishlist.php",
              data: {product_id:product_id},
              success: function(d){
                window.location.reload();
              },error:function(e){
               
              }
            });
         }
      </script>