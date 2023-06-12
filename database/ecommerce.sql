-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 08:28 AM
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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `address`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Noman', 'Hossain', 'noman@gmail.com', '+885241545', NULL, 'sadfj', NULL, NULL, 1),
(2, 'Noman', 'Hossain', 'kamal@yahoo.com', '+88 4234', NULL, 'kasjdk', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `shipping` decimal(10,2) DEFAULT 0.00,
  `grand_total` float(10,2) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('Pending','Completed','Cancelled') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `discount`, `shipping`, `grand_total`, `address`, `city`, `postal`, `message`, `created_at`, `status`) VALUES
(1, 1, '0.00', '100.00', 65100.00, 'sadfj', 1, 'sadf', 'sadhifi', '2023-06-12 08:22:53', 'Pending'),
(2, 2, '0.00', '150.00', 65150.00, 'kasjdk', 3, 'asdf', 'asdf', '2023-06-12 08:23:42', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
(1, 2, 2, '4500.00', 2),
(2, 2, 3, '25000.00', 2),
(3, 2, 1, '1500.00', 4);

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

--
-- Dumping data for table `product_tbl`
--

INSERT INTO `product_tbl` (`id`, `name`, `details`, `price`, `category_id`, `subcategory_id`, `sub_subcategory_id`, `brand_id`, `vat`, `discount`, `picture`, `stock`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'DESIGNER SHALWAR KAMEEZ', '', 1500, 1, 1, 1, 1, '10.00', '15.00', 0x31363836313230383739313338322e6a7067, '7', NULL, NULL, NULL, NULL, NULL),
(2, 'Rayon Cotton embroidery Kameez', '', 4500, 1, 1, 1, 1, '0.00', '0.00', 0x31363836313231303139333739312e6a7067, '6', NULL, NULL, NULL, NULL, NULL),
(3, 'South Indian Saree', '', 25000, 1, 1, 2, 7, '0.00', '0.00', 0x31363836313231313831313237322e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(4, 'Bangladeshi Sarees', '', 4500, 1, 1, 2, 1, '0.00', '0.00', 0x31363836313231323137323936332e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(5, 'Hizab', '', 1000, 1, 1, 6, 1, '0.00', '0.00', 0x31363836313231343139383237352e6a706567, '10', NULL, NULL, NULL, NULL, NULL),
(6, 'Stylish Hijab', '', 1500, 1, 1, 6, 1, '0.00', '0.00', 0x31363836313231343534363835362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(7, 'T-Shirt', '', 500, 1, 3, 7, 4, '0.00', '0.00', 0x31363836313231383530333136332e6a706567, '10', NULL, NULL, NULL, NULL, NULL),
(8, 'Stylish T-shirt', '', 600, 1, 1, 7, 1, '0.00', '0.00', 0x31363836313231393337373732332e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(9, 'Shoe', '', 4500, 1, 4, 9, 10, '0.00', '0.00', 0x31363836313232313732353330362e6a706567, '', NULL, NULL, NULL, NULL, NULL),
(10, 'Party Shoe', '', 5000, 1, 4, 9, 7, '0.00', '0.00', 0x31363836313232323230393336392e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(11, 'Fashion Bags', '', 4500, 1, 5, 1, 1, '0.00', '0.00', 0x31363836313232363030393130382e6a7067, '30', NULL, NULL, NULL, NULL, NULL),
(12, 'Casual bag', '', 5000, 1, 5, 1, 1, '0.00', '0.00', 0x31363836313232363239393736322e6a7067, '40', NULL, NULL, NULL, NULL, NULL),
(13, 'Women Watach', '', 2000, 1, 6, 1, 10, '0.00', '0.00', 0x31363836313233303837353633392e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(14, 'Fashionable Women Watch', '', 2500, 1, 6, 1, 10, '0.00', '0.00', 0x31363836313233313232363039352e6a7067, '30', NULL, NULL, NULL, NULL, NULL),
(15, 'Casual Watch', '', 1500, 3, 13, 1, 10, '0.00', '0.00', 0x31363836333735393639313237362e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(16, 'Fashionable Watch', '', 5000, 4, 18, 1, 1, '0.00', '0.00', 0x31363836333736303334363239302e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(17, 'Fashionable Shoe', '', 4500, 4, 16, 1, 7, '0.00', '0.00', 0x31363836333736303835333730352e706e67, '', NULL, NULL, NULL, NULL, NULL),
(18, 'Footware', '', 500, 4, 16, 1, 1, '0.00', '0.00', 0x31363836333736313232313435382e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(19, 'Fashion Bags', '', 0, 4, 15, 1, 10, '0.00', '0.00', 0x31363836333739353132393331372e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(20, 'Casual bag', '', 4500, 4, 15, 1, 4, '0.00', '0.00', 0x31363836333739353437323432322e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(21, 'Travel Bag', '', 1500, 4, 15, 1, 1, '0.00', '0.00', 0x31363836333739363335393233312e706e67, '', NULL, NULL, NULL, NULL, NULL),
(22, 'Fashionable Shirt', '', 1500, 4, 15, 1, 7, '0.00', '0.00', 0x31363836333739373330373737362e706e67, '', NULL, NULL, NULL, NULL, NULL),
(23, 'Stylish Shirt', '', 5000, 4, 15, 1, 8, '0.00', '0.00', 0x31363836333739373635333735302e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(24, 'T-Shirt', '', 1500, 4, 15, 1, 10, '0.00', '0.00', 0x31363836333739383230323531302e706e67, '', NULL, NULL, NULL, NULL, NULL),
(25, 'Face Wash', '', 500, 2, 7, 1, 1, '0.00', '0.00', 0x31363836343730303532353935352e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(26, 'Skin Cleaner', '', 700, 2, 10, 1, 1, '0.00', '0.00', 0x31363836343730303839373534382e6a7067, '', NULL, NULL, NULL, NULL, NULL),
(27, 'Hair Shampo', '', 800, 2, 8, 1, 2, '0.00', '0.00', 0x31363836343730313839363438372e6a7067, '', NULL, NULL, NULL, NULL, NULL);

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
(18, 'Health', 4, NULL, NULL, NULL, NULL, NULL),
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
(35, 'Cooling & Heating', 8, NULL, NULL, NULL, NULL, NULL),
(36, 'Baby Care', 5, NULL, NULL, NULL, NULL, NULL);

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
(11, 'Sarees', 1, 1, NULL, NULL, NULL, NULL, NULL),
(12, 'DELL', 8, 32, NULL, NULL, NULL, NULL, NULL),
(13, 'Shampoo', 2, 10, NULL, NULL, NULL, NULL, NULL),
(14, 'Gree', 8, 33, NULL, NULL, NULL, NULL, NULL),
(15, 'LED', 8, 32, NULL, NULL, NULL, NULL, NULL),
(16, 'Ceiling Fans', 8, 34, NULL, NULL, NULL, NULL, NULL),
(17, 'Table Fan', 8, 34, NULL, NULL, NULL, NULL, NULL),
(18, 'Heater', 8, 35, NULL, NULL, NULL, NULL, NULL),
(19, 'Cooler', 8, 35, NULL, NULL, NULL, NULL, NULL),
(20, 'Desktop', 7, 28, NULL, NULL, NULL, NULL, NULL),
(21, 'Speaker', 7, 29, NULL, NULL, NULL, NULL, NULL),
(22, 'Router', 7, 30, NULL, NULL, NULL, NULL, NULL),
(23, 'Camera', 7, 31, NULL, NULL, NULL, NULL, NULL);

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
(1, 'Safayet', 'admin@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL);

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sub_subcategory`
--
ALTER TABLE `sub_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
