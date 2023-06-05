-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 08:09 AM
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
(3, 'Infinity', NULL, NULL, NULL, NULL, NULL),
(4, 'Puma', NULL, NULL, NULL, NULL, NULL),
(5, 'Gucci', NULL, NULL, NULL, NULL, NULL),
(6, 'Tom Ford', NULL, NULL, NULL, NULL, NULL),
(7, 'Yellow', NULL, NULL, NULL, NULL, NULL),
(8, 'Richman', NULL, NULL, NULL, NULL, NULL),
(9, 'Sailor', NULL, NULL, NULL, NULL, NULL),
(10, 'Rise', NULL, NULL, NULL, NULL, NULL);

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
(1, 'Sports and Outdoor', NULL, NULL, NULL, NULL, NULL),
(2, 'Mothers & Baby', NULL, NULL, NULL, NULL, NULL),
(3, 'Mens Fashion', NULL, NULL, NULL, NULL, NULL),
(4, 'Kids', NULL, NULL, NULL, NULL, NULL),
(5, 'Womens Fashion', NULL, NULL, NULL, NULL, NULL),
(6, 'Health', NULL, NULL, NULL, NULL, NULL),
(7, 'Electronics', NULL, NULL, NULL, NULL, NULL),
(8, 'Home Appliances', NULL, NULL, NULL, NULL, NULL),
(9, 'Home & Lifestyle', NULL, NULL, NULL, NULL, NULL),
(10, 'Groceries', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tbl`
--

CREATE TABLE `product_tbl` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
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
  `user_id` int(11) NOT NULL,
  `shipping_id` smallint(5) NOT NULL,
  `coupon_discount` float(4,2) NOT NULL,
  `full_name` varchar(255) NOT NULL,
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
(1, 'Glass', 3, NULL, NULL, NULL, NULL, NULL),
(2, 'Clothing', 3, NULL, NULL, NULL, NULL, NULL),
(3, 'Shoes', 3, NULL, NULL, NULL, NULL, NULL),
(4, 'Watches', 3, NULL, NULL, NULL, NULL, NULL),
(5, 'Bags', 3, NULL, NULL, NULL, NULL, NULL),
(6, 'Traditional Wear', 5, NULL, NULL, NULL, NULL, NULL),
(7, 'Shoes', 5, NULL, NULL, NULL, NULL, NULL),
(8, 'Watches', 5, NULL, NULL, NULL, NULL, NULL),
(9, 'Bags', 5, NULL, NULL, NULL, NULL, NULL),
(10, 'Western Wear', 5, NULL, NULL, NULL, NULL, NULL),
(11, 'Feeding', 2, NULL, NULL, NULL, NULL, NULL),
(12, 'Kids Toys', 2, NULL, NULL, NULL, NULL, NULL),
(13, 'Nursery', 2, NULL, NULL, NULL, NULL, NULL),
(14, 'Baby Care', 2, NULL, NULL, NULL, NULL, NULL),
(15, 'Sports & Outdoor play', 2, NULL, NULL, NULL, NULL, NULL),
(16, 'Skin Care', 6, NULL, NULL, NULL, NULL, NULL),
(17, 'Hair Care', 6, NULL, NULL, NULL, NULL, NULL),
(18, 'Makeup', 6, NULL, NULL, NULL, NULL, NULL),
(19, 'Fragrance', 6, NULL, NULL, NULL, NULL, NULL),
(20, 'Personal Care', 6, NULL, NULL, NULL, NULL, NULL),
(21, 'Computer', 7, NULL, NULL, NULL, NULL, NULL),
(22, 'Software', 7, NULL, NULL, NULL, NULL, NULL),
(23, 'Computer Accessories', 7, NULL, NULL, NULL, NULL, NULL),
(24, 'Gadgets', 7, NULL, NULL, NULL, NULL, NULL),
(25, 'Printer', 7, NULL, NULL, NULL, NULL, NULL),
(26, 'Bath', 9, NULL, NULL, NULL, NULL, NULL),
(27, 'Furniture', 9, NULL, NULL, NULL, NULL, NULL),
(28, 'Bedding', 9, NULL, NULL, NULL, NULL, NULL),
(29, 'Cleaning', 9, NULL, NULL, NULL, NULL, NULL),
(30, 'Laundry', 9, NULL, NULL, NULL, NULL, NULL),
(31, 'Breakfast', 10, NULL, NULL, NULL, NULL, NULL),
(32, 'Dairy & Eggs', 10, NULL, NULL, NULL, NULL, NULL),
(33, 'Chocolates & Candy', 10, NULL, NULL, NULL, NULL, NULL),
(34, 'Fruits, Meat & Frozen', 10, NULL, NULL, NULL, NULL, NULL),
(35, 'Herbs, Spices & Sauces', 10, NULL, NULL, NULL, NULL, NULL),
(36, 'TV', 8, NULL, NULL, NULL, NULL, NULL),
(37, 'Fans', 8, NULL, NULL, NULL, NULL, NULL),
(38, 'Freezer', 8, NULL, NULL, NULL, NULL, NULL),
(39, 'Cooling & Heating', 8, NULL, NULL, NULL, NULL, NULL),
(40, 'Water Purifiers', 8, NULL, NULL, NULL, NULL, NULL),
(41, 'Cycling', 1, NULL, NULL, NULL, NULL, NULL),
(42, 'Fan Shop', 1, NULL, NULL, NULL, NULL, NULL),
(43, 'Shoes & Clothing', 1, NULL, NULL, NULL, NULL, NULL),
(44, 'Dumbbelis', 1, NULL, NULL, NULL, NULL, NULL),
(45, 'Exercise & Fitness', 1, NULL, NULL, NULL, NULL, NULL),
(46, 'Toys', 4, NULL, NULL, NULL, NULL, NULL),
(47, 'Shoes & Clothing', 4, NULL, NULL, NULL, NULL, NULL),
(48, 'Foods', 4, NULL, NULL, NULL, NULL, NULL),
(49, 'Study Metrials', 4, NULL, NULL, NULL, NULL, NULL),
(50, 'Arts and & Crafts', 4, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_subcategory`
--

CREATE TABLE `sub_subcategory` (
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
-- Dumping data for table `sub_subcategory`
--

INSERT INTO `sub_subcategory` (`id`, `name`, `category_id`, `subcategory_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'sdf', 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'HP', 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Sunglass', 3, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Eye Glasses', 3, 1, NULL, NULL, NULL, NULL, NULL),
(5, 'T-Shirt', 3, 2, NULL, NULL, NULL, NULL, NULL),
(6, 'Jeans', 3, 2, NULL, NULL, NULL, NULL, NULL),
(7, 'Sneakers', 3, 3, NULL, NULL, NULL, NULL, NULL),
(8, 'Sandals', 3, 3, NULL, NULL, NULL, NULL, NULL),
(9, 'Casual', 3, 4, NULL, NULL, NULL, NULL, NULL),
(10, 'Fashion', 3, 4, NULL, NULL, NULL, NULL, NULL),
(11, 'Backpacks', 3, 5, NULL, NULL, NULL, NULL, NULL),
(12, 'Business Bags', 3, 5, NULL, NULL, NULL, NULL, NULL),
(13, 'Sarees', 5, 6, NULL, NULL, NULL, NULL, NULL),
(14, 'Shalwar Kameez', 5, 6, NULL, NULL, NULL, NULL, NULL),
(15, 'Heels', 5, 7, NULL, NULL, NULL, NULL, NULL),
(16, 'Pump Shoes', 5, 7, NULL, NULL, NULL, NULL, NULL),
(17, 'Casual', 5, 8, NULL, NULL, NULL, NULL, NULL),
(18, 'Fashion', 5, 8, NULL, NULL, NULL, NULL, NULL),
(19, 'Backpacks', 5, 9, NULL, NULL, NULL, NULL, NULL),
(20, 'Wallets', 5, 9, NULL, NULL, NULL, NULL, NULL),
(21, 'Tops', 5, 10, NULL, NULL, NULL, NULL, NULL),
(22, 'Skirts', 5, 10, NULL, NULL, NULL, NULL, NULL),
(23, 'Bottle Feeding', 2, 11, NULL, NULL, NULL, NULL, NULL),
(24, 'Nan', 2, 11, NULL, NULL, NULL, NULL, NULL),
(25, 'Puzzle', 2, 12, NULL, NULL, NULL, NULL, NULL),
(26, 'Soft Toys', 2, 12, NULL, NULL, NULL, NULL, NULL),
(27, 'Wall Touch', 2, 13, NULL, NULL, NULL, NULL, NULL),
(28, 'Cribs & Cradles', 2, 13, NULL, NULL, NULL, NULL, NULL),
(29, 'Nail Care', 2, 14, NULL, NULL, NULL, NULL, NULL),
(30, 'Keepsakes', 2, 14, NULL, NULL, NULL, NULL, NULL),
(31, 'Play Sets', 2, 15, NULL, NULL, NULL, NULL, NULL),
(32, 'Boxing', 2, 15, NULL, NULL, NULL, NULL, NULL),
(33, 'Simple', 6, 16, NULL, NULL, NULL, NULL, NULL),
(34, 'Lip Balm', 6, 16, NULL, NULL, NULL, NULL, NULL),
(35, 'Hair Oils', 6, 17, NULL, NULL, NULL, NULL, NULL),
(36, 'Shampoo', 6, 17, NULL, NULL, NULL, NULL, NULL),
(37, 'Face', 6, 18, NULL, NULL, NULL, NULL, NULL),
(38, 'Lips', 6, 18, NULL, NULL, NULL, NULL, NULL),
(39, 'Attar', 6, 19, NULL, NULL, NULL, NULL, NULL),
(40, 'Perfume', 6, 19, NULL, NULL, NULL, NULL, NULL),
(41, 'Toothpaste', 6, 20, NULL, NULL, NULL, NULL, NULL),
(42, 'Ear Care', 6, 20, NULL, NULL, NULL, NULL, NULL),
(43, 'RAM', 7, 21, NULL, NULL, NULL, NULL, NULL),
(44, 'Motherboard', 7, 21, NULL, NULL, NULL, NULL, NULL),
(45, 'PC Games', 7, 22, NULL, NULL, NULL, NULL, NULL),
(46, 'Monitors', 7, 23, NULL, NULL, NULL, NULL, NULL),
(47, 'Laser Pointers', 7, 24, NULL, NULL, NULL, NULL, NULL),
(48, 'Ink', 7, 25, NULL, NULL, NULL, NULL, NULL),
(49, 'Bath Towels', 9, 26, NULL, NULL, NULL, NULL, NULL),
(50, 'Bedroom Furniture', 9, 27, NULL, NULL, NULL, NULL, NULL),
(51, 'Bed Sheets', 9, 28, NULL, NULL, NULL, NULL, NULL),
(52, 'Cleaning Products', 9, 29, NULL, NULL, NULL, NULL, NULL),
(53, 'Ironing Boards', 9, 30, NULL, NULL, NULL, NULL, NULL),
(54, 'Bread', 10, 31, NULL, NULL, NULL, NULL, NULL),
(55, 'Milk Powder', 10, 32, NULL, NULL, NULL, NULL, NULL),
(56, 'Chocolates', 10, 33, NULL, NULL, NULL, NULL, NULL),
(57, 'Fruits', 10, 34, NULL, NULL, NULL, NULL, NULL),
(58, 'Herbs', 10, 35, NULL, NULL, NULL, NULL, NULL),
(59, 'Cables', 8, 36, NULL, NULL, NULL, NULL, NULL),
(60, 'Ceiling Fans', 8, 37, NULL, NULL, NULL, NULL, NULL),
(61, 'Walton', 8, 38, NULL, NULL, NULL, NULL, NULL),
(62, 'Heaters', 8, 39, NULL, NULL, NULL, NULL, NULL),
(63, 'Pureit', 8, 40, NULL, NULL, NULL, NULL, NULL),
(64, 'Gear Cycles', 1, 41, NULL, NULL, NULL, NULL, NULL),
(65, 'XYZ', 1, 42, NULL, NULL, NULL, NULL, NULL),
(66, 'Lotto', 1, 43, NULL, NULL, NULL, NULL, NULL),
(67, 'Fitness Mart', 1, 44, NULL, NULL, NULL, NULL, NULL),
(68, 'Treadmills', 1, 45, NULL, NULL, NULL, NULL, NULL),
(69, 'Puzzle', 4, 46, NULL, NULL, NULL, NULL, NULL),
(70, 'Clothing', 4, 47, NULL, NULL, NULL, NULL, NULL),
(71, 'Chocolates', 4, 48, NULL, NULL, NULL, NULL, NULL),
(72, 'Book', 4, 49, NULL, NULL, NULL, NULL, NULL),
(73, 'Cartoon', 4, 50, NULL, NULL, NULL, NULL, NULL);

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
(1, 'Kamal Uddin', 'kamal@yahoo.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(2, 'Kaiser', 'isdbstudent@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL);

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
-- Indexes for table `sub_subcategory`
--
ALTER TABLE `sub_subcategory`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sub_subcategory`
--
ALTER TABLE `sub_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist_tbl`
--
ALTER TABLE `wishlist_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
