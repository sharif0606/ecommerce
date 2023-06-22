<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4 shadow p-3 mb-5 bg-body-tertiary rounded">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Order List</h6>
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">Customer</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Shipping</th>
                                <th scope="col">Grand Total</th>
                                <th scope="col">Address</th>
                                <th scope="col">City</th>
                                <th scope="col">Message</th>
                                <th scope="col">Order Date</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select_query("SELECT orders.*, customers.first_name,customers.last_name, customers.phone,
                            shipping_city.city_name FROM `orders`
                            join shipping_city on shipping_city.id=orders.city
                            join customers on customers.id=orders.customer_id");
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                
                                <th class="table-info"><?= $d->first_name ?> <?= $d->last_name ?></th>
                                <th class="table-info"><?= $d->phone ?></th>
                                
                                <th class="table-danger"><?= $d->discount ?></th>
                                <th class="table-warning"><?= $d->shipping ?></th>
                                <th class="table-success"><?= $d->grand_total ?></th>
                                <th class="table-info"><?= $d->address?></th>
                                <th class="table-warning"><?= $d->city_name ?></th>
                                <th class="table-info"><?= $d->message ?></th>
                                <th class="table-success"><?= $d->order_date ?></th>
                                <th class="table-primary"><?= $d->status?></th>
                                <th>
                                    <a href="order_edit.php?id=<?= $d->id ?>"><i class="fa fa-edit"></i></a>
                                    <a href="invoice.php?id=<?= $d->id ?>"><i class="fa regular fa-file-invoice"></i></a>
                                    <a href="order_delete.php?id=<?= $d->id ?>"><i class="fa fa-trash text-danger"></i></a>

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