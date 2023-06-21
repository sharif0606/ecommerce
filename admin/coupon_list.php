<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4 shadow p-3 mb-5 bg-body-tertiary rounded">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Coupon List</h6>
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                            <tr>
                                
                         
                                <th scope="col">ID</th>
                                <th scope="col">Coupon Code</th>
                                <th scope="col">Discount Type</th>
                                <th scope="col">Discount Amount</th>
                                <th scope="col">Description</th>
                                <th scope="col">Start Date</th>
                                <th scope="col">End Date</th>
                                <th scope="col">Number Of Coupon</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select('coupon');
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                <th class="table-info"><?= $d->id ?></th>
                                <th class="table-info"><?= $d-> coupon_code?></th>
                                <th class="table-info"><?= $d->discount_type?></th>
                                <th class="table-info"><?= $d->discount_amount?></th>
                                <th class="table-info"><?= $d->description?></th>
                                <th class="table-info"><?= $d->start_date?></th>
                                <th class="table-info"><?= $d->end_date?></th>
                                <th class="table-info"><?= $d->no_of_coupon?></th>

                                <th>
                                    <a href="coupon_edit.php?id=<?= $d->id ?>"><i class="fa fa-edit"></i></a>
                                    <a href="coupon_delete.php?id=<?= $d->id ?>"><i class="fa fa-trash text-danger"></i></a>

                            </th>
                               
                            </tr>
                            
                        <?php } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Form End -->

<?php require_once('include/footer.php') ?>