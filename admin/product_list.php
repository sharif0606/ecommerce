<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4 shadow p-3 mb-5 bg-body-tertiary rounded">
    <div class="row g-4">
        <div class="col-sm-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Product List</h6>
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">SL</th>
                                <th scope="col">Name</th>
                                <th scope="col">Brand</th>
                                <th scope="col">Category</th>
                                <th scope="col">Sub Category</th>
                                <th scope="col">Sub Sub Category</th>
                                <th scope="col">Price</th>
                                <th scope="col">Vat</th>
                                <th scope="col">Discount</th>
                                <th scope="col">Picture</th>
                                <th scope="col">Stock</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select_query("SELECT product_tbl.*, category_tbl.name as category, sub_subcategory.name as subsubcategory, subcategory_tbl.name as subcategory,brand_tbl.name as brand FROM `product_tbl`
                            join brand_tbl on brand_tbl.id=product_tbl.brand_id
                            join category_tbl on category_tbl.id=product_tbl.category_id
                            JOIN subcategory_tbl on subcategory_tbl.id=product_tbl.subcategory_id
                            join sub_subcategory on sub_subcategory.id=product_tbl.sub_subcategory_id
                            WHERE product_tbl.deleted_at is null");
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                <td class="table-info"><?= $d->id ?></td>
                                <td class="table-success"><?= $d->name ?></td>
                                <td class="table-warning"><?= $d->brand ?></td>
                                <td class="table-danger"><?= $d->category ?></td>
                                <td class="table-primary"><?= $d->subcategory ?></td>
                                <td class="table-info"><?= $d->subsubcategory ?></td>
                                <td class="table-light"><?= $d->price ?></td>
                                <td class="table-gray"><?= $d->vat ?></td>
                                <td class="table-success"><?= $d->discount ?></td>
                                <td class="table-info"><?= $d->picture ?></td>
                                <td class="table-primary"><?= $d->stock ?></td>
                                <td>
                                    <a href="product_edit.php?id=<?= $d->id ?>">
                                        <i class="fa fa-edit"></i>
                                    <a href="product_delete.php?id=<?= $d->id ?>">
                                        <i class="fa fa-trash text-danger"></i>
                                    </a>
                                </td>
                               
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