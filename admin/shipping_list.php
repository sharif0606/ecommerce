<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Shipping List</h6>
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">SL</th>
                                <th scope="col">City Name</th>
                                <th scope="col">Shipping Chare</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select('shipping_city');
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                <th class="table-info"><?= $d->id ?></th>
                                <th class="table-success"><?= $d->city_name?></th>
                                <th class="table-primary"><?= $d->shipping_charge ?></th>
                                <th>
                                    <a href="shipping_edit.php?id=<?= $d->id ?>"><i class="fa fa-edit"></i></a>
                                    <a href="shipping_edit.php?id=<?= $d->id ?>"><i class="fa fa-trash text-danger"></i></a>

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