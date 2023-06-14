<?php require_once('include/header.php') ?>
   <body class="sub_page">
      <div class="hero_area">
         <?php require_once('include/sidebar.php') ?>
      </div>
      <!-- inner page section -->
      <section class="inner_page_head">
         <div class="container_fuild">
            <div class="row">
               <div class="col-md-12">
                  <div class="full">
                     <h3 > Product Grid</h3>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end inner page section -->
      <!-- product section -->
      <section class="product_section layout_padding">
   <div class="container">
      <div class="heading_container heading_center">
         <h2>
            Our <span>products</span>
         </h2>
      </div>
      <div class="row">
      <?php
         $data=$mysqli->common_select_query("SELECT * FROM `product_tbl` WHERE deleted_at is null");
         if(!$data['error']){
            foreach($data['data'] as $d){
      ?>
      
         <div class="col-sm-6 col-md-4 col-lg-4">
            <div class="box">
               <div class="option_container">
                  <div class="options">
                     
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
      <div class="btn-box">
         <a href="product.php">
         View All products
         </a>
      </div>
   </div>
</section>
      
      <!-- end product section -->
      <!-- footer section -->
<?php require_once('include/footer.php') ?>