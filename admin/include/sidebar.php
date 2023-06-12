 <!-- Sidebar Start -->
 <div class="sidebar pe-4 pb-3">
    <nav class="navbar bg-light navbar-light">
        <a href="index.html" class="navbar-brand mx-4 mb-3">
            <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>AZEEMAH</h3>
        </a>
        <div class="d-flex align-items-center ms-4 mb-4">

            <div class="ms-3">
                <h6 class="mb-0"><?= $_SESSION['username'] ?></h6>
            </div>
        </div>
        <div class="navbar-nav w-100">
            <a href="<?= $base_url?>dashboard.php" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
           
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Category</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="category_list.php" class="dropdown-item">List</a>
                    <a href="category_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Subcatecory</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="subcategory_list.php" class="dropdown-item">List</a>
                    <a href="subcategory_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Sub Sub Catecory</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="sub_subcategory_list.php" class="dropdown-item">List</a>
                    <a href="sub_subcategory_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Brand</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="brand_list.php" class="dropdown-item">List</a>
                    <a href="brand_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Product</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="product_list.php" class="dropdown-item">List</a>
                    <a href="product_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Sales</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="sales_list.php" class="dropdown-item">List</a>
                    <a href="sales_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Shipping</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="shipping_list.php" class="dropdown-item">List</a>
                    <a href="shipping_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Size</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="size_list.php" class="dropdown-item">List</a>
                    <a href="size_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Shipping</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="shipping_list.php" class="dropdown-item">List</a>
                    <a href="shipping_create.php" class="dropdown-item">Add New</a>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>Orders</a>
                <div class="dropdown-menu bg-transparent border-0">
                    <a href="order_list.php" class="dropdown-item">List</a>
                    <!-- <a href="order_edit.php" class="dropdown-item">Edit</a> -->
                </div>
            </div>
            
        </div>
    </nav>
</div>
<!-- Sidebar End -->
<!-- Content Start -->
<div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
               
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <span class="d-none d-lg-inline-flex"><?= $_SESSION['username'] ?></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="logout.php" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->