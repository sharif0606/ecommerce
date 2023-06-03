-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 06:18 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `catagory_tbl`
--

CREATE TABLE `catagory_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tbt`
--

CREATE TABLE `product_tbt` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `united` tinyint(3) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `subcategory_id` smallint(5) DEFAULT NULL,
  `brandid` tinyint(3) DEFAULT NULL,
  `vat` float(5,2) DEFAULT NULL,
  `discount` float(4,2) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `stock` smallint(5) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
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
-- Table structure for table `shipping_tbl`
--

CREATE TABLE `shipping_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city_id` tinyint(3) NOT NULL,
  `amount` float(8,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size_tbl`
--

CREATE TABLE `size_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `catagory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_subcatagory`
--

CREATE TABLE `sub_subcatagory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `catagory_id` int(11) DEFAULT NULL,
  `Subcategory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(32) NOT NULL,
  `type` char(32) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `gender` varchar(4) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_tbl`
--

CREATE TABLE `wishlist_tbl` (
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
-- Indexes for table `catagory_tbl`
--
ALTER TABLE `catagory_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tbt`
--
ALTER TABLE `product_tbt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_subcatagory`
--
ALTER TABLE `sub_subcatagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_tbl`
--
ALTER TABLE `wishlist_tbl`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_tbl`
--
ALTER TABLE `brand_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catagory_tbl`
--
ALTER TABLE `catagory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tbt`
--
ALTER TABLE `product_tbt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_subcatagory`
--
ALTER TABLE `sub_subcatagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist_tbl`
--
ALTER TABLE `wishlist_tbl`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
