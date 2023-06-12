<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Order List</h6>
                <div class="table-responsive">
                    <table class="table" border="2">
                        <thead>
                            <tr>
                                <th scope="col">Customer_id</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Shipping</th>
                                <th scope="col">Grand_total</th>
                                <th scope="col">Address</th>
                                <th scope="col">City</th>
                                <th scope="col">Postal</th>
                                <th scope="col">Message</th>
                                <th scope="col">Created_at</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select('orders');
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                
                                <th><?= $d->customer_id ?></th>
                                <th><?= $d->discount ?></th>
                                <th><?= $d->shipping ?></th>
                                <th><?= $d->grand_total ?></th>
                                <th><?= $d->address?></th>
                                <th><?= $d->city ?></th>
                                <th><?= $d->postal?></th>
                                <th><?= $d->message ?></th>
                                <th><?= $d->created_at?></th>
                                <th><?= $d->status?></th>
                                <th>
                                    <a href="order_edit.php?id=<?= $d->id ?>"><i class="fa fa-edit"></i></a>

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