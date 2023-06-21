<?php require_once('include/header.php') ?>
<?php require_once('include/sidebar.php') ?>

<div class="container-fluid pt-4 px-4 shadow p-3 mb-5 bg-body-tertiary rounded">
    <div class="row g-4">
        <div class="col-sm-12 col-xl-12">
            <div class="bg-light rounded h-100 p-4">
                <h6 class="mb-4">Subcatgegory List</h6>
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Category</th>
                                <th scope="col">Sub Category</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            $data=$mysqli->common_select_query('SELECT category_tbl.name as category, subcategory_tbl.* FROM `subcategory_tbl`
                            join category_tbl on category_tbl.id=subcategory_tbl.category_id
                            WHERE subcategory_tbl.deleted_at is null');
                            if(!$data['error']){
                                foreach($data['data'] as $d){
                        ?>
                            <tr>
                                <th class="table-info"><?= $d->id ?></th>
                                <th class="table-success"><?= $d->category ?></th>
                                <th class="table-primary"><?= $d->name ?></th>
                                <th>
                                    <a href="subcategory_edit.php?id=<?= $d->id ?>"><i class="fa fa-edit"></i></a>
                                    <a href="subcategory_delete.php?id=<?= $d->id ?>"><i class="fa fa-trash text-danger"></i></a>

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