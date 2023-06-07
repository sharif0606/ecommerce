-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 05:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_tbl`
--

CREATE TABLE `brand_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_tbl`
--

INSERT INTO `brand_tbl` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Aarong', NULL, NULL, NULL, NULL, NULL),
(2, 'Shoilpic', NULL, NULL, NULL, NULL, NULL),
(3, 'Spark Pretty', NULL, NULL, NULL, NULL, NULL),
(4, 'Puma', NULL, NULL, NULL, NULL, NULL),
(5, 'Dream Boutique', NULL, NULL, NULL, NULL, NULL),
(6, 'Pepe Jeans', NULL, NULL, NULL, NULL, NULL),
(7, 'Yellow', NULL, NULL, NULL, NULL, NULL),
(8, 'Richman', NULL, NULL, NULL, NULL, NULL),
(9, 'Designer Promise', NULL, NULL, NULL, NULL, NULL),
(10, 'Rise', NULL, NULL, NULL, NULL, NULL),
(11, 'Amazon', NULL, NULL, NULL, NULL, NULL),
(12, ' Apple', NULL, NULL, NULL, NULL, NULL),
(13, 'Samsung', NULL, NULL, NULL, NULL, NULL),
(14, 'Lenovo', NULL, NULL, NULL, NULL, NULL),
(15, 'Express Clothes', NULL, NULL, NULL, NULL, NULL),
(16, 'Panasonic', NULL, NULL, NULL, NULL, NULL),
(17, 'Vision', NULL, NULL, NULL, NULL, NULL),
(18, 'LG Butterfly', NULL, NULL, NULL, NULL, NULL),
(19, 'Venus Jewellers Bangladesh', NULL, NULL, NULL, NULL, NULL),
(20, 'Diamond World', NULL, NULL, NULL, NULL, NULL),
(21, ' Amin Jewellers for Gold & Diamond', NULL, NULL, NULL, NULL, NULL),
(22, 'Al-Amin Jewellers', NULL, NULL, NULL, NULL, NULL),
(23, 'Sultana Jewellers Ltd', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE `category_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Women\'s & Girls\' Fashion', NULL, NULL, NULL, NULL, NULL),
(2, 'Health & Beauty', NULL, NULL, NULL, NULL, NULL),
(3, 'Watches, Bags, Jewellery', NULL, NULL, NULL, NULL, NULL),
(4, 'Men\'s & Boys\' Fashion', NULL, NULL, NULL, NULL, NULL),
(5, 'Mother & Baby', NULL, NULL, NULL, NULL, NULL),
(6, 'Electronics Devices', NULL, NULL, NULL, NULL, NULL),
(7, 'Electronic Accessories', NULL, NULL, NULL, NULL, NULL),
(8, 'TV & Home Appliances', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `sub_subcategory_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `vat` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `picture` blob DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_tbl`
--

CREATE TABLE `sales_tbl` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_id` smallint(5) NOT NULL,
  `coupon_discount` float(4,2) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `post_code` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `payment` varchar(20) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_tbl`
--

INSERT INTO `sales_tbl` (`id`, `full_name`, `user_id`, `shipping_id`, `coupon_discount`, `contact`, `address`, `post_code`, `date`, `payment`, `transaction_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(0, 'jjjj', 0, 0, 0.00, '', '', '', '0000-00-00', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(0, 'jjjj', 0, 0, 0.00, '', '', '', '0000-00-00', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(0, '', 0, 0, 0.00, '', '', '', '0000-00-00', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(0, 'jjjj', 0, 0, 0.00, '', '', '', '0000-00-00', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0),
(0, 'jjjj', 0, 0, 0.00, '', '', '', '0000-00-00', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_tbl`
--

CREATE TABLE `subcategory_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory_tbl`
--

INSERT INTO `subcategory_tbl` (`id`, `name`, `category_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Traditional Wear', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Muslim Wear', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Wester Wear', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Shoes', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'Bags', 1, NULL, NULL, NULL, NULL, NULL),
(6, 'Watches', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'Skin care', 2, NULL, NULL, NULL, NULL, NULL),
(8, 'Hair care', 2, NULL, NULL, NULL, NULL, NULL),
(9, 'Man`s Care', 2, NULL, NULL, NULL, NULL, NULL),
(10, 'Beauty Tools', 2, NULL, NULL, NULL, NULL, NULL),
(11, 'Women`s Bags', 3, NULL, NULL, NULL, NULL, NULL),
(12, 'Men`s Bags', 3, NULL, NULL, NULL, NULL, NULL),
(13, 'Men`s Watches', 3, NULL, NULL, NULL, NULL, NULL),
(14, 'women`s Watches', 3, NULL, NULL, NULL, NULL, NULL),
(15, 'Clothing', 4, NULL, NULL, NULL, NULL, NULL),
(16, 'Shoes', 4, NULL, NULL, NULL, NULL, NULL),
(17, 'Jewellery', 4, NULL, NULL, NULL, NULL, NULL),
(18, 'Accessories', 4, NULL, NULL, NULL, NULL, NULL),
(19, 'Maternity Care', 5, NULL, NULL, NULL, NULL, NULL),
(20, 'Baby & Personal Care', 5, NULL, NULL, NULL, NULL, NULL),
(21, 'Baby Care & Gifts', 5, NULL, NULL, NULL, NULL, NULL),
(22, 'Kids & Toys', 5, NULL, NULL, NULL, NULL, NULL),
(23, 'Smartphones', 6, NULL, NULL, NULL, NULL, NULL),
(24, 'Projectors', 6, NULL, NULL, NULL, NULL, NULL),
(25, 'Cameras', 6, NULL, NULL, NULL, NULL, NULL),
(26, 'Audio', 6, NULL, NULL, NULL, NULL, NULL),
(27, 'Headphones', 6, NULL, NULL, NULL, NULL, NULL),
(28, 'Computer Accessories', 7, NULL, NULL, NULL, NULL, NULL),
(29, 'Computer Components', 7, NULL, NULL, NULL, NULL, NULL),
(30, 'Network', 7, NULL, NULL, NULL, NULL, NULL),
(31, 'Camera Accessories', 7, NULL, NULL, NULL, NULL, NULL),
(32, 'Telivision', 8, NULL, NULL, NULL, NULL, NULL),
(33, 'Air Condition', 8, NULL, NULL, NULL, NULL, NULL),
(34, 'Fans', 8, NULL, NULL, NULL, NULL, NULL),
(35, 'Cooling & Heating', 8, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_subcategory_tbl`
--

CREATE TABLE `sub_subcategory_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_subcategory_tbl`
--

INSERT INTO `sub_subcategory_tbl` (`id`, `name`, `category_id`, `subcategory_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Shalwar Kameez', 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Sarees', 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Party Kameez & Gowns', 1, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Plazzo Pants & Culottes', 1, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'Pants, Palazzoa & Capris', 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'Hijabs', 1, 2, NULL, NULL, NULL, NULL, NULL),
(7, 'T-Shirts', 1, 3, NULL, NULL, NULL, NULL, NULL),
(8, 'Face Wash & Cleansers', 2, 7, NULL, NULL, NULL, NULL, NULL),
(9, 'Casual Shirts', 4, 15, NULL, NULL, NULL, NULL, NULL),
(10, 'Casual Shirts', 4, 15, NULL, NULL, NULL, NULL, NULL),
(11, 'Shirts', 1, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(255) NOT NULL,
  `type` char(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `name`, `email`, `password`, `type`, `address`, `contact`, `gender`, `picture`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Kamal Uddin', 'kamal@yahoo.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_tbl`
--

CREATE TABLE `wishlist_tbl` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_tbl`
--
ALTER TABLE `brand_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_subcategory_tbl`
--
ALTER TABLE `sub_subcategory_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_tbl`
--
ALTER TABLE `wishlist_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_tbl`
--
ALTER TABLE `brand_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sub_subcategory_tbl`
--
ALTER TABLE `sub_subcategory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist_tbl`
--
ALTER TABLE `wishlist_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
