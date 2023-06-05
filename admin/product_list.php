<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Product List</h6>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Title</th>
                                <th scope="col">Price</th>
                                <th scope="col">Date</th>
                                <th scope="col">Category_id</th>
                                <th scope="col">Sub_Category_id</th>
                                <th scope="col">Vat</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Picture</th>
                                <th scope="col">Stock</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select('product_tbl');
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                <th><?= $d->id ?></th>
                                <th><?= $d->title ?></th>
                                <th><?= $d->price ?></th>
                                <th><?= $d->date ?></th>
                                <th><?= $d->category_id ?></th>
                                <th><?= $d->subcategory_id ?></th>
                                <th><?= $d->vat ?></th>
                                <th><?= $d->discount ?></th>
                                <th><?= $d->picture ?></th>
                                <th><?= $d->stock ?></th>
                                <th>
                                    <a href="product_list.php?id=<?= $d->id ?>"><i class="fa fa-edit"></i></a>

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