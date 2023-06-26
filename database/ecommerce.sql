-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2023 at 03:26 AM
-- Server version: 10.5.21-MariaDB-cll-lve-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdpfradr_ecom`
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
(2, 'Yellow', NULL, NULL, NULL, NULL, NULL),
(3, 'Richman', NULL, NULL, NULL, NULL, NULL),
(4, 'Sailor', NULL, NULL, NULL, NULL, NULL),
(5, 'Cats Eye', NULL, NULL, NULL, NULL, NULL),
(6, 'Ecstasy', NULL, NULL, NULL, NULL, NULL),
(7, 'Dorjibari', NULL, NULL, NULL, NULL, NULL),
(8, 'Smartex', NULL, NULL, NULL, NULL, NULL),
(9, 'KayKraft', NULL, NULL, NULL, NULL, NULL),
(10, 'Le Reve', NULL, NULL, NULL, NULL, NULL),
(11, 'Easy Fashion', NULL, NULL, NULL, NULL, NULL),
(12, 'Clean & Clean', NULL, NULL, NULL, NULL, NULL),
(13, 'Samsang', NULL, NULL, NULL, NULL, NULL),
(14, 'LG', NULL, NULL, NULL, NULL, NULL),
(15, 'Sony', NULL, NULL, NULL, NULL, NULL),
(16, 'DELL', NULL, NULL, NULL, NULL, NULL),
(17, 'HP', NULL, NULL, NULL, NULL, NULL),
(18, 'Walton', NULL, NULL, NULL, NULL, NULL),
(19, 'Gree', NULL, NULL, NULL, NULL, NULL),
(20, 'Bata', NULL, NULL, NULL, NULL, NULL),
(21, 'Apex', NULL, NULL, NULL, NULL, NULL),
(22, 'Rain Force', NULL, NULL, NULL, NULL, NULL),
(23, 'Xaomi', NULL, NULL, NULL, NULL, NULL),
(24, 'JOHNSON\'S', NULL, NULL, NULL, NULL, NULL),
(25, 'Meril', NULL, NULL, NULL, NULL, NULL),
(26, 'ACI', NULL, NULL, NULL, NULL, NULL),
(27, 'Apple', NULL, NULL, NULL, NULL, NULL),
(28, 'Regal', NULL, NULL, NULL, NULL, NULL),
(29, 'Hatim', NULL, NULL, NULL, NULL, NULL),
(30, 'Vision', NULL, NULL, NULL, NULL, NULL);

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
(3, 'Gadget', NULL, NULL, NULL, NULL, NULL),
(4, 'Men\'s & Boys\' Fashion', NULL, NULL, NULL, NULL, NULL),
(5, 'Mother & Baby', NULL, NULL, NULL, NULL, NULL),
(6, 'Electronics Devices', NULL, NULL, NULL, NULL, NULL),
(7, 'Computer Accessories', NULL, NULL, NULL, NULL, NULL),
(8, 'TV & Home Appliances', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `discount_type` int(11) NOT NULL COMMENT '0 fixed 1 percent',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `no_of_coupon` int(11) NOT NULL DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon_code`, `discount_type`, `discount_amount`, `description`, `start_date`, `end_date`, `no_of_coupon`, `deleted_at`) VALUES
(1, 'K-105', 0, '500.00', 'Hello', '2023-06-23', '2023-06-30', 10, NULL),
(2, 'K-110', 1, '5.00', 'Hello', '2023-06-23', '2023-06-30', 10, NULL),
(3, 'K-120', 0, '500.00', 'Hello', '2023-06-23', '2023-06-25', 10, NULL),
(4, 'K-150', 1, '5.00', 'Hello', '2023-06-23', '2023-06-30', 1, NULL);

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
  `status` tinyint(1) DEFAULT 1 COMMENT '1=Active | 0=Inactive',
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `address`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(1, 'Fuad Vai', 'Done', 'Xyz@Gmail.com', '01735061377', 'adcd7048512e64b48da55b027577886ee5a36350', 'Wasa', NULL, NULL, 1, NULL),
(2, 'Kamal', 'Khan', 'abc@gmail.com', '01735061377', 'adcd7048512e64b48da55b027577886ee5a36350', 'Newmarket', NULL, NULL, 1, NULL),
(3, 'korim', 'khan', 'karim@yahoo.com', '', 'adcd7048512e64b48da55b027577886ee5a36350', 'Oshkain, Village+Post- Oshkain', NULL, NULL, 1, NULL),
(4, 'jamal', 'khan', 'jamal@yahoo.com', '85888', 'adcd7048512e64b48da55b027577886ee5a36350', 'Oshkain, Village+Post- Oshkain', NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT 0.00,
  `shipping` decimal(10,2) DEFAULT 0.00,
  `grand_total` float(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `status` enum('Pending','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `sub_total`, `discount`, `shipping`, `grand_total`, `coupon_code`, `address`, `city`, `message`, `order_date`, `delivery_date`, `status`, `deleted_at`) VALUES
(1, 0, '3000.00', '0.00', '300.00', 3300.00, '', '(H-333) 1st Floor, Road-14, Black-B, Chandgaon R/A, Chandgaon, Chattogram.', 1, 'ddd', '2023-06-24 04:23:03', NULL, 'Pending', NULL),
(2, 0, '10000.00', '500.00', '200.00', 9700.00, 'K-110', 'Nasirabad', 2, 'Hello', '2023-06-24 12:48:14', NULL, 'Pending', NULL),
(3, 0, '5000.00', '0.00', '350.00', 5350.00, '', 'Nasirabad', 3, 'Hello', '2023-06-24 12:50:22', NULL, 'Pending', NULL),
(4, 0, '800.00', '500.00', '200.00', 500.00, 'K-120', '(H-333) 1st Floor, Road-14, Black-B, Chandgaon R/A, Chandgaon, Chattogram.', 2, 'Hello', '2023-06-25 03:39:42', NULL, 'Pending', NULL),
(5, 0, '2400.00', '120.00', '200.00', 2480.00, 'k-150', '2no Gate', 2, 'hi', '2023-06-25 23:45:42', NULL, 'Pending', NULL),
(6, 0, '7000.00', '0.00', '350.00', 7350.00, '', '2no Gate', 3, 'hi', '2023-06-26 00:58:44', NULL, 'Pending', NULL),
(7, 0, '42500.00', '0.00', '350.00', 42850.00, '', '2no Gate', 4, 'hi', '2023-06-26 01:14:14', NULL, 'Pending', NULL),
(8, 0, '800.00', '500.00', '200.00', 500.00, 'K-105', 'Wasa', 2, 'y', '2023-06-26 01:52:27', NULL, 'Pending', NULL),
(9, 1, '800.00', '40.00', '350.00', 1110.00, 'K-150', 'Wasa', 3, 'I want', '2023-06-26 02:11:46', '0000-00-00', 'Cancelled', NULL),
(10, 2, '6000.00', '500.00', '200.00', 5700.00, 'K-105', 'NewMarket', 2, '', '2023-06-26 02:23:33', '2023-06-26', 'Completed', NULL),
(11, 4, '2000.00', '0.00', '350.00', 2350.00, '', '(H-333) 1st Floor, Road-14, Black-B, Chandgaon R/A, Chandgaon, Chattogram.', 4, 'hhh', '2023-06-26 02:38:13', '2023-06-26', 'Completed', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(5) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `deleted_at`) VALUES
(1, 1, 113, '2000.00', 1, NULL),
(2, 1, 114, '1000.00', 1, NULL),
(3, 2, 2, '5000.00', 2, NULL),
(4, 3, 3, '2500.00', 2, NULL),
(5, 4, 43, '400.00', 2, NULL),
(6, 5, 107, '800.00', 3, NULL),
(7, 6, 114, '1000.00', 1, NULL),
(8, 6, 113, '2000.00', 1, NULL),
(9, 6, 9, '500.00', 1, NULL),
(10, 6, 6, '3500.00', 1, NULL),
(11, 7, 3, '2500.00', 1, NULL),
(12, 7, 59, '20000.00', 2, NULL),
(13, 8, 11, '800.00', 1, NULL),
(14, 9, 11, '800.00', 1, NULL),
(15, 10, 41, '2000.00', 1, NULL),
(16, 10, 40, '2000.00', 2, NULL),
(17, 11, 114, '1000.00', 2, NULL);

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
(1, 'Jamdani Shari', 'IT\'S FOR YOU MISS.', 4500, 1, 1, 1, 1, '10.00', '15.00', 0x31363837343139303833343332342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(2, 'Shalwar Kameez', 'The shalwar are loose pajama-like trousers. The legs are wide at the top, and narrow at the ankle. The kameez is a long shirt or tunic, often seen with a Western-style collar; however, for female apparel, the term is now loosely applied to collarless or mandarin-collared kurtas.', 5000, 1, 1, 2, 1, '10.00', '450.00', 0x31363837343230303733313738342e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(3, 'Shalwar Kameez', '', 2500, 1, 1, 2, 1, '5.00', '450.00', 0x31363837343230333238343434382e6a7067, '6', NULL, NULL, NULL, NULL, NULL),
(4, 'T-Shirt', '', 500, 1, 1, 3, 1, '5.00', '10.00', 0x31363837343230343538343630382e6a7067, '6', NULL, NULL, NULL, NULL, NULL),
(5, 'T-Shirt', '', 450, 1, 1, 3, 1, '10.00', '10.00', 0x31363837343230353634343832342e6a706567, '7', NULL, NULL, NULL, NULL, NULL),
(6, 'Hils', '', 3500, 1, 4, 4, 5, '10.00', '450.00', 0x31363837343230363531373232372e6a706567, '4', NULL, NULL, NULL, NULL, NULL),
(7, 'Hils', '', 5000, 1, 2, 4, 8, '10.00', '734.00', 0x31363837343230373132323934332e6a7067, '2', NULL, NULL, NULL, NULL, NULL),
(8, 'Foot Ware', '', 3500, 1, 1, 5, 6, '10.00', '256.00', 0x31363837343231303635323739382e6a7067, '2', NULL, NULL, NULL, NULL, NULL),
(9, 'Foot Ware', '', 500, 1, 1, 5, 7, '5.00', '50.00', 0x31363837343231313237343938302e6a7067, '6', NULL, NULL, NULL, NULL, NULL),
(10, 'Himalaya Face Wash', '', 700, 2, 7, 10, 3, '10.00', '15.00', 0x31363837343431373639323831332e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(11, 'Clean and Clear Face wash', '', 800, 2, 7, 10, 3, '10.00', '10.00', 0x31363837343431383538333232332e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(12, 'Pimple Clearing Facewash', '', 500, 2, 7, 10, 3, '0.00', '0.00', 0x31363837343431393134313839342e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(13, 'Face Wash', '', 400, 2, 7, 10, 3, '0.00', '0.00', 0x31363837343431393637383334342e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(14, 'Hair Care Shampoo', '', 400, 2, 8, 12, 12, '10.00', '15.00', 0x31363837343432333839363133362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(15, 'Hari Shampoo', '', 500, 2, 8, 12, 12, '10.00', '15.00', 0x31363837343432343732363835382e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(16, 'Conditionar', '', 400, 2, 9, 13, 12, '10.00', '15.00', 0x31363837343432373334353630322e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(17, 'Men\'s Conditionar', '', 500, 2, 9, 13, 12, '10.00', '15.00', 0x31363837343432383330313836382e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(18, 'Makeup Tools', '', 1000, 2, 10, 15, 12, '10.00', '15.00', 0x31363837343433323131373230302e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(19, 'Hair Dryer', '', 800, 2, 10, 14, 12, '10.00', '15.00', 0x31363837343433323737343337322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(20, 'Hire Straightner', '', 400, 2, 10, 49, 12, '10.00', '15.00', 0x31363837343433363239383436332e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(21, 'Hair Brush', '', 500, 2, 10, 14, 12, '10.00', '15.00', 0x31363837343433363935383035322e6a706567, '10', NULL, NULL, NULL, NULL, NULL),
(22, 'Smart Watch', '', 800, 3, 14, 50, 1, '10.00', '15.00', 0x31363837343434373734353331362e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(23, 'Fashion Watch', '', 1000, 3, 14, 9, 1, '10.00', '15.00', 0x31363837343434383732353436352e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(24, 'Sunglass', '', 500, 3, 35, 52, 1, '10.00', '10.00', 0x31363837343434393338323036332e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(25, 'Stylish Glass', '', 400, 3, 35, 51, 1, '10.00', '10.00', 0x31363837343434393937333939302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(26, 'Women Bangles', '', 400, 3, 35, 53, 1, '10.00', '10.00', 0x31363837343435313235323436332e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(27, 'Earring', '', 500, 3, 35, 54, 1, '10.00', '10.00', 0x31363837343435323331333336302e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(28, 'Nacekless', '', 1000, 3, 35, 55, 1, '10.00', '10.00', 0x31363837343435323930393832362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(29, 'Gold Plate Nacekless', '', 800, 3, 35, 55, 1, '10.00', '10.00', 0x31363837343435333531313930382e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(30, 'Fashion Watch', '', 800, 3, 12, 9, 1, '10.00', '15.00', 0x31363837343435363834333634312e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(31, 'Smart Watch', '', 800, 3, 12, 8, 2, '10.00', '15.00', 0x31363837343435373533313930352e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(32, 'Sport Watch', '', 700, 3, 11, 8, 4, '10.00', '15.00', 0x31363837353039363838323434312e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(33, 'Kids Watch', '', 400, 3, 13, 8, 1, '10.00', '15.00', 0x31363837343435383535383732392e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(34, 'Casual Shirts', '', 800, 4, 15, 23, 4, '10.00', '15.00', 0x31363837343436303534383131342e706e67, '20', NULL, NULL, NULL, NULL, NULL),
(35, 'Formal Shirt', '', 1000, 4, 15, 24, 5, '10.00', '10.00', 0x31363837343436313233363634362e706e67, '20', NULL, NULL, NULL, NULL, NULL),
(36, 'Stylish Shirts', '', 800, 4, 15, 24, 8, '10.00', '15.00', 0x31363837343436313839333939332e706e67, '20', NULL, NULL, NULL, NULL, NULL),
(37, 'Casual T-Shirts', '', 500, 4, 17, 28, 3, '10.00', '15.00', 0x31363837343436353131393939382e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(38, 'Polo T-Shirt', '', 600, 4, 17, 27, 3, '10.00', '15.00', 0x31363837343436353832373039322e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(39, 'Stylish T-Shirt', '', 500, 4, 17, 28, 9, '10.00', '15.00', 0x31363837343436363538333532342e6a706567, '20', NULL, NULL, NULL, NULL, NULL),
(40, 'Fashion Panjabi', '', 2000, 4, 16, 25, 1, '10.00', '15.00', 0x31363837343436383037363738332e706e67, '13', NULL, NULL, NULL, NULL, NULL),
(41, 'Hand Made Panjabi', '', 2000, 4, 16, 26, 7, '10.00', '15.00', 0x31363837343436383636323635352e6a7067, '19', NULL, NULL, NULL, NULL, NULL),
(42, 'Panjabi', '', 2500, 4, 16, 25, 11, '10.00', '10.00', 0x31363837343436393231363532372e6a706567, '20', NULL, NULL, NULL, NULL, NULL),
(43, 'Baby Lotion', '', 400, 5, 19, 11, 12, '10.00', '15.00', 0x31363837343533393832393432352e6a706567, '20', NULL, NULL, NULL, NULL, NULL),
(44, 'Baby Powder', '', 400, 5, 19, 30, 24, '10.00', '15.00', 0x31363837343534313238353931322e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(45, 'Baby Shampoo', '', 400, 5, 19, 31, 24, '10.00', '15.00', 0x31363837343534323539343735342e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(46, 'Baby Hair Oil', '', 400, 5, 19, 32, 24, '10.00', '15.00', 0x31363837343534333333353536352e6a7067, '15', NULL, NULL, NULL, NULL, NULL),
(47, 'Oil', '', 400, 5, 19, 32, 24, '10.00', '15.00', 0x31363837343534343533393939382e6a706567, '20', NULL, NULL, NULL, NULL, NULL),
(48, 'Pampas', '', 500, 5, 20, 35, 26, '10.00', '15.00', 0x31363837343534353238363437342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(49, 'Baby Care', '', 400, 5, 19, 35, 25, '10.00', '15.00', 0x31363837343534353839353536322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(50, 'Baby Towel', '', 500, 5, 20, 36, 24, '10.00', '15.00', 0x31363837343534363536363438322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(51, 'Mother kits', '', 1000, 5, 20, 36, 1, '10.00', '15.00', 0x31363837343534373137323937342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(52, 'Savlon', '', 500, 5, 19, 29, 1, '10.00', '15.00', 0x31363837343534373636363132392e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(53, 'Baby cleaner', '', 400, 5, 19, 29, 12, '10.00', '15.00', 0x31363837343534383234323633312e706e67, '20', NULL, NULL, NULL, NULL, NULL),
(54, 'Baby Cycle', '', 5000, 5, 18, 34, 14, '10.00', '15.00', 0x31363837343534393736313838352e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(55, 'Baby Walker', '', 4500, 5, 18, 33, 13, '10.00', '15.00', 0x31363837343535303239313631382e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(56, 'Comfort Baby Bed ', '', 3500, 5, 18, 57, 4, '10.00', '15.00', 0x31363837343535323930363835352e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(57, 'Baby Toy', '', 2000, 5, 18, 56, 5, '10.00', '10.00', 0x31363837343535333430393331372e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(58, 'Nokia Phone', '', 2000, 6, 22, 37, 14, '10.00', '15.00', 0x31363837343535393532353932362e6a7067, '10', NULL, NULL, NULL, NULL, NULL),
(59, 'Smart Phone', '', 20000, 6, 22, 38, 23, '10.00', '15.00', 0x31363837343536303435323632372e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(60, 'Iphone 12 pro Max', '', 600000, 6, 22, 38, 27, '10.00', '15.00', 0x31363837343536313231373132322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(61, 'DSLR Camere', '', 50000, 6, 23, 39, 14, '10.00', '15.00', 0x31363837343536313939393332302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(62, 'Gaming Desktop', '', 90000, 6, 24, 48, 16, '10.00', '15.00', 0x31363837343536323830343935342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(63, 'Desktop', '', 80000, 6, 24, 48, 17, '10.00', '15.00', 0x31363837343536333338383235312e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(64, 'Gaming Laptop', '', 70000, 6, 25, 42, 16, '10.00', '15.00', 0x31363837343536343133343130362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(65, 'Tablet', '', 7000, 6, 27, 44, 15, '10.00', '15.00', 0x31363837343536343731333937382e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(66, 'Projector Screen', '', 15000, 6, 26, 43, 13, '10.00', '15.00', 0x31363837343536353334363733342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(67, 'Mother Board', '', 1000, 7, 28, 45, 1, '10.00', '15.00', 0x31363837343938393333373034342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(68, 'KeyBoard', '', 500, 7, 28, 46, 13, '10.00', '15.00', 0x31363837343939303232343635352e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(69, 'Mouse', '', 0, 7, 28, 46, 15, '10.00', '15.00', 0x31363837343939313639373232332e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(70, 'Speaker', '', 1000, 7, 30, 46, 13, '10.00', '15.00', 0x31363837343939323231343136342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(71, 'Mouse Pad', '', 0, 7, 28, 46, 13, '10.00', '15.00', 0x31363837343939323639363439392e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(72, 'HeadPhone', '', 800, 7, 30, 47, 15, '10.00', '15.00', 0x31363837343939333332343135302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(73, 'Router', '', 2000, 7, 28, 46, 13, '10.00', '15.00', 0x31363837343939333931333334382e706e67, '20', NULL, NULL, NULL, NULL, NULL),
(74, 'Mutiplag', '', 500, 7, 28, 46, 13, '10.00', '15.00', 0x31363837343939343433393730302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(75, 'Gaming Desktop', '', 90000, 7, 29, 48, 16, '10.00', '15.00', 0x31363837343939353035353633362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(76, 'Gaming Laptop', '', 80000, 7, 29, 48, 17, '10.00', '15.00', 0x31363837343939353535373735302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(77, 'Computer Table', '', 40000, 7, 36, 58, 11, '10.00', '15.00', 0x31363837343939373130343339372e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(78, 'Computer Chair', '', 20000, 7, 36, 58, 28, '10.00', '15.00', 0x31363837343939373837313938322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(79, 'Fridge', '', 35000, 8, 32, 59, 14, '10.00', '15.00', 0x31363837353030323437363230322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(80, 'Fridge', '', 45000, 8, 32, 59, 13, '10.00', '15.00', 0x31363837353030323938393530362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(81, 'Deep Fridge', '', 50000, 8, 32, 59, 18, '10.00', '15.00', 0x31363837353030333337343738332e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(82, 'Drining Table', '', 25000, 8, 37, 61, 28, '10.00', '15.00', 0x31363837353030353030313932302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(83, 'Water Filter', '', 2000, 8, 32, 62, 14, '10.00', '15.00', 0x31363837353032343138393336312e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(84, 'Filter', '', 2000, 8, 32, 62, 14, '10.00', '15.00', 0x31363837353032343637343532352e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(85, 'AC', '', 20000, 8, 32, 60, 14, '10.00', '15.00', 0x31363837353032353138383232342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(86, 'Heater', '', 3500, 8, 31, 64, 14, '10.00', '15.00', 0x31363837353038343331383635362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(87, 'Oven', '', 4000, 8, 38, 63, 1, '10.00', '15.00', 0x31363837353033313337393237322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(88, 'Gas Stove', '', 5000, 8, 38, 63, 18, '10.00', '15.00', 0x31363837353033313839383231332e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(89, 'Vlender', '', 3000, 8, 38, 63, 30, '10.00', '15.00', 0x31363837353033323434363630302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(90, 'ketly', '', 20000, 8, 38, 63, 13, '10.00', '15.00', 0x31363837353033323937363536302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(91, 'Sink', '', 2000, 8, 38, 63, 30, '10.00', '15.00', 0x31363837353033333639373736342e6a706567, '20', NULL, NULL, NULL, NULL, NULL),
(92, 'Rak', '', 2000, 8, 38, 63, 28, '10.00', '15.00', 0x31363837353033343136393633392e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(93, '', '', 600000, 8, 37, 65, 28, '10.00', '15.00', 0x31363837353037363833363437302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(94, 'Drining', '', 45000, 8, 37, 65, 28, '10.00', '15.00', 0x31363837353037373736373636382e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(95, 'Sofa', '', 80000, 8, 37, 65, 28, '10.00', '10.00', 0x31363837353037383730363336392e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(96, 'Bed Room Furniture', '', 95000, 8, 37, 65, 29, '10.00', '10.00', 0x31363837353037393339353832362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(97, 'Showcase', '', 50000, 8, 37, 65, 28, '10.00', '10.00', 0x31363837353038303138333738372e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(98, 'Celling Fan', '', 5000, 8, 34, 66, 30, '10.00', '10.00', 0x31363837353038323639333136302e706e67, '20', NULL, NULL, NULL, NULL, NULL),
(99, 'Table Fan', '', 4000, 8, 34, 66, 18, '10.00', '10.00', 0x31363837353038333430313932312e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(100, 'LED TV', '', 20000, 8, 33, 67, 30, '10.00', '10.00', 0x31363837353038393733313733302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(101, 'WereDrove', '', 8000, 8, 37, 65, 28, '10.00', '10.00', 0x31363837353039333135373930322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(102, 'Stylish Dolna', '', 7000, 8, 37, 68, 29, '10.00', '10.00', 0x31363837353039313339323036382e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(103, 'Comfortable Dolna', '', 9000, 8, 37, 68, 29, '10.00', '10.00', 0x31363837353039333635363038372e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(104, 'Dolna', '', 5000, 8, 37, 68, 29, '10.00', '10.00', 0x31363837353039343237393633342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(105, 'Light', '', 1000, 8, 37, 65, 17, '10.00', '10.00', 0x31363837353039343833353239322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(106, 'Party Bag', '', 800, 1, 3, 6, 3, '10.00', '15.00', 0x31363837353130343235373237312e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(107, 'Travel Bag', '', 800, 1, 3, 7, 2, '10.00', '10.00', 0x31363837353130343636313739332e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(108, 'Small Bag', '', 800, 1, 3, 6, 1, '10.00', '10.00', 0x31363837353130353038313838322e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(109, 'Bag', '', 2000, 4, 39, 71, 4, '10.00', '15.00', 0x31363837353131303830393438362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(110, 'Laptop Bag', '', 1000, 4, 39, 7, 3, '10.00', '10.00', 0x31363837353131313336333631342e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(111, 'Stylish Bag', '', 1000, 4, 39, 7, 5, '10.00', '10.00', 0x31363837353131323030333532352e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(112, '', '', 2000, 4, 40, 72, 21, '10.00', '10.00', 0x31363837353131323534353636362e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(113, 'Formal Shoe', '', 2000, 4, 40, 74, 20, '10.00', '10.00', 0x31363837353131323936373836302e6a7067, '20', NULL, NULL, NULL, NULL, NULL),
(114, 'Footware', '', 1000, 4, 40, 73, 20, '10.00', '10.00', 0x31363837353131333336343539372e6a7067, '18', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_city`
--

CREATE TABLE `shipping_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `shipping_charge` int(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_city`
--

INSERT INTO `shipping_city` (`id`, `city_name`, `shipping_charge`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 'Dhaka', 300, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 'Chittagong', 200, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 'Rajshahi', 350, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 'Khulna', 350, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 'Barishal', 350, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 'Rangpur', 400, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 'Sylhet', 400, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 'Mymensingh', 350, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

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
(2, 'Shoes', 1, NULL, NULL, NULL, NULL, NULL),
(3, 'Bags', 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Shoes', 1, NULL, NULL, NULL, NULL, NULL),
(5, 'Watches', 1, NULL, NULL, NULL, NULL, NULL),
(7, 'Skin care', 2, NULL, NULL, NULL, NULL, NULL),
(8, 'Hair care', 2, NULL, NULL, NULL, NULL, NULL),
(9, 'Man`s Care', 2, NULL, NULL, NULL, NULL, NULL),
(10, 'Beauty Tools', 2, NULL, NULL, NULL, NULL, NULL),
(11, 'Watch', 3, NULL, NULL, NULL, NULL, NULL),
(12, 'Men`s Watch', 3, NULL, NULL, NULL, NULL, NULL),
(13, 'Kids Watch', 3, NULL, NULL, NULL, NULL, NULL),
(14, 'Women`s Watch', 3, NULL, NULL, NULL, NULL, NULL),
(15, 'Shirts', 4, NULL, NULL, NULL, NULL, NULL),
(16, 'Panjabi', 4, NULL, NULL, NULL, NULL, NULL),
(17, 'T-Shirts', 4, NULL, NULL, NULL, NULL, NULL),
(18, 'Baby Toys', 5, NULL, NULL, NULL, NULL, NULL),
(19, 'Baby Care', 5, NULL, NULL, NULL, NULL, NULL),
(20, 'Baby Ware', 5, NULL, NULL, NULL, NULL, NULL),
(22, 'Smartphones', 6, NULL, NULL, NULL, NULL, NULL),
(23, 'Camera', 6, NULL, NULL, NULL, NULL, NULL),
(24, 'Desktop', 6, NULL, NULL, NULL, NULL, NULL),
(25, 'Laptop', 6, NULL, NULL, NULL, NULL, NULL),
(26, 'Projectors', 6, NULL, NULL, NULL, NULL, NULL),
(27, 'Tablet', 6, NULL, NULL, NULL, NULL, NULL),
(28, 'Hard Disk', 7, NULL, NULL, NULL, NULL, NULL),
(29, 'Monitor', 7, NULL, NULL, NULL, NULL, NULL),
(30, 'Speaker', 7, NULL, NULL, NULL, NULL, NULL),
(31, 'Heater', 8, NULL, NULL, NULL, NULL, NULL),
(32, 'Cooler', 8, NULL, NULL, NULL, NULL, NULL),
(33, 'TV', 8, NULL, NULL, NULL, NULL, NULL),
(34, 'Fans', 8, NULL, NULL, NULL, NULL, NULL),
(35, 'Women Ornaments', 3, NULL, NULL, NULL, NULL, NULL),
(36, 'Computer Table', 7, NULL, NULL, NULL, NULL, NULL),
(37, 'Home Furniture', 8, NULL, NULL, NULL, NULL, NULL),
(38, 'Kitchen Kits', 8, NULL, NULL, NULL, NULL, NULL),
(39, 'Bags', 4, NULL, NULL, NULL, NULL, NULL),
(40, 'Shoes', 4, NULL, NULL, NULL, NULL, NULL);

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
(1, 'Sarees', 1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Shalwar Kameez', 1, 1, NULL, NULL, NULL, NULL, NULL),
(3, 'T-Shirts', 1, 1, NULL, NULL, NULL, NULL, NULL),
(4, 'Hils', 1, 2, NULL, NULL, NULL, NULL, NULL),
(5, 'Foot Ware', 1, 1, NULL, NULL, NULL, NULL, NULL),
(6, 'Party Bags', 1, 3, NULL, NULL, NULL, NULL, NULL),
(7, 'Travel Bags', 1, 3, NULL, NULL, NULL, NULL, NULL),
(8, 'Casual Watch', 1, 5, NULL, NULL, NULL, NULL, NULL),
(9, 'Fashion Watch', 1, 5, NULL, NULL, NULL, NULL, NULL),
(10, 'Face Wash', 2, 7, NULL, NULL, NULL, NULL, NULL),
(11, 'Body Lotion', 2, 7, NULL, NULL, NULL, NULL, NULL),
(12, 'Shampoo', 2, 8, NULL, NULL, NULL, NULL, NULL),
(13, 'Conditionar', 2, 8, NULL, NULL, NULL, NULL, NULL),
(14, 'Hair Dryer', 2, 10, NULL, NULL, NULL, NULL, NULL),
(15, 'Makeup', 2, 10, NULL, NULL, NULL, NULL, NULL),
(16, 'Chain', 3, 35, NULL, NULL, NULL, NULL, NULL),
(17, 'Bangles', 3, 14, NULL, NULL, NULL, NULL, NULL),
(18, 'Baslet', 3, 14, NULL, NULL, NULL, NULL, NULL),
(19, 'Fashion Watch', 3, 12, NULL, NULL, NULL, NULL, NULL),
(20, 'Sports Watch', 3, 12, NULL, NULL, NULL, NULL, NULL),
(21, 'Casual Watch', 3, 13, NULL, NULL, NULL, NULL, NULL),
(22, 'Sports Watch', 3, 13, NULL, NULL, NULL, NULL, NULL),
(23, 'Casual Shirts', 4, 15, NULL, NULL, NULL, NULL, NULL),
(24, 'Formal Shirts', 4, 15, NULL, NULL, NULL, NULL, NULL),
(25, 'Fashion Panjabi', 4, 16, NULL, NULL, NULL, NULL, NULL),
(26, 'Hand Made Panjabi', 4, 16, NULL, NULL, NULL, NULL, NULL),
(27, 'Polo T-Shirts', 4, 17, NULL, NULL, NULL, NULL, NULL),
(28, 'Casual T-Shirts', 4, 17, NULL, NULL, NULL, NULL, NULL),
(29, 'Baby Lotion', 5, 19, NULL, NULL, NULL, NULL, NULL),
(30, 'Baby Pawder', 5, 19, NULL, NULL, NULL, NULL, NULL),
(31, 'Hair Shampoo', 5, 19, NULL, NULL, NULL, NULL, NULL),
(32, 'Hair Oil', 5, 19, NULL, NULL, NULL, NULL, NULL),
(33, 'Walker', 5, 18, NULL, NULL, NULL, NULL, NULL),
(34, 'Cycle', 5, 18, NULL, NULL, NULL, NULL, NULL),
(35, 'Pampas', 5, 20, NULL, NULL, NULL, NULL, NULL),
(36, 'Towel', 5, 20, NULL, NULL, NULL, NULL, NULL),
(37, 'Button Phone', 6, 22, NULL, NULL, NULL, NULL, NULL),
(38, 'Android Phone', 6, 22, NULL, NULL, NULL, NULL, NULL),
(39, 'DSLR', 6, 23, NULL, NULL, NULL, NULL, NULL),
(40, 'LCD Desktop', 6, 24, NULL, NULL, NULL, NULL, NULL),
(41, 'LED Desktop', 6, 24, NULL, NULL, NULL, NULL, NULL),
(42, 'Gaming Laptop', 6, 25, NULL, NULL, NULL, NULL, NULL),
(43, 'Projector Screens', 6, 26, NULL, NULL, NULL, NULL, NULL),
(44, 'Tablet', 6, 27, NULL, NULL, NULL, NULL, NULL),
(45, 'Mother Board', 7, 28, NULL, NULL, NULL, NULL, NULL),
(46, 'PC kits', 7, 28, NULL, NULL, NULL, NULL, NULL),
(47, 'Speaker', 7, 30, NULL, NULL, NULL, NULL, NULL),
(48, 'LCD Monitor', 7, 29, NULL, NULL, NULL, NULL, NULL),
(49, 'Hair Straightener', 2, 10, NULL, NULL, NULL, NULL, NULL),
(50, 'Smart Watch', 3, 14, NULL, NULL, NULL, NULL, NULL),
(51, 'Glass', 3, 35, NULL, NULL, NULL, NULL, NULL),
(52, 'Sunglass', 3, 35, NULL, NULL, NULL, NULL, NULL),
(53, 'Bangles', 3, 35, NULL, NULL, NULL, NULL, NULL),
(54, 'Earring', 3, 35, NULL, NULL, NULL, NULL, NULL),
(55, 'Nacekless', 3, 35, NULL, NULL, NULL, NULL, NULL),
(56, 'Baby Toy', 5, 18, NULL, NULL, NULL, NULL, NULL),
(57, 'Baby Bed', 5, 18, NULL, NULL, NULL, NULL, NULL),
(58, 'Computer Table', 7, 36, NULL, NULL, NULL, NULL, NULL),
(59, 'Fridge', 8, 32, NULL, NULL, NULL, NULL, NULL),
(60, 'AC', 8, 32, NULL, NULL, NULL, NULL, NULL),
(61, 'Drining', 8, 37, NULL, NULL, NULL, NULL, NULL),
(62, 'Filter', 8, 32, NULL, NULL, NULL, NULL, NULL),
(63, 'Kitchen Kits', 8, 38, NULL, NULL, NULL, NULL, NULL),
(64, 'Heater', 8, 31, NULL, NULL, NULL, NULL, NULL),
(65, 'Furniture', 8, 37, NULL, NULL, NULL, NULL, NULL),
(66, 'Fans', 8, 34, NULL, NULL, NULL, NULL, NULL),
(67, 'TV', 8, 33, NULL, NULL, NULL, NULL, NULL),
(68, 'Dolna', 8, 37, NULL, NULL, NULL, NULL, NULL),
(69, 'Travel Bag', 4, 39, NULL, NULL, NULL, NULL, NULL),
(70, 'Laptop Bag', 4, 39, NULL, NULL, NULL, NULL, NULL),
(71, 'Bags', 4, 39, NULL, NULL, NULL, NULL, NULL),
(72, 'Footware', 4, 40, NULL, NULL, NULL, NULL, NULL),
(73, 'Sandle', 4, 40, NULL, NULL, NULL, NULL, NULL),
(74, 'Lofer', 4, 40, NULL, NULL, NULL, NULL, NULL);

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
(1, 'Safayet', 'admin@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(2, 'Amir', 'abcd@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(3, 'Amir', 'abc@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(4, 'mojahid', 'mojahidjouel95@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(5, 'Safayet', 'safayat@yahoo.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(6, 'Kaiser', 'isdbstudent@gmail.com', 'adcd7048512e64b48da55b027577886ee5a36350', '', '', '', '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL);

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
-- Dumping data for table `wishlist_tbl`
--

INSERT INTO `wishlist_tbl` (`id`, `product_id`, `user_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(1, 5, 0, NULL, NULL, NULL, NULL, NULL),
(2, 2, 0, NULL, NULL, NULL, NULL, NULL),
(3, 10, 0, NULL, NULL, NULL, NULL, NULL),
(4, 11, 0, NULL, NULL, NULL, NULL, NULL),
(5, 23, 0, NULL, NULL, NULL, NULL, NULL),
(6, 24, 0, NULL, NULL, NULL, NULL, NULL),
(7, 40, 0, NULL, NULL, NULL, NULL, NULL),
(8, 109, 0, NULL, NULL, NULL, NULL, NULL),
(9, 57, 0, NULL, NULL, NULL, NULL, NULL),
(10, 54, 0, NULL, NULL, NULL, NULL, NULL),
(11, 62, 0, NULL, NULL, NULL, NULL, NULL),
(12, 60, 0, NULL, NULL, NULL, NULL, NULL),
(13, 77, 0, NULL, NULL, NULL, NULL, NULL),
(14, 78, 0, NULL, NULL, NULL, NULL, NULL),
(15, 82, 0, NULL, NULL, NULL, NULL, NULL),
(16, 92, 0, NULL, NULL, NULL, NULL, NULL),
(17, 93, 0, NULL, NULL, NULL, NULL, NULL),
(18, 95, 0, NULL, NULL, NULL, NULL, NULL),
(19, 97, 0, NULL, NULL, NULL, NULL, NULL),
(20, 103, 0, NULL, NULL, NULL, NULL, NULL),
(21, 2, 1, NULL, NULL, NULL, NULL, NULL),
(22, 3, 1, NULL, NULL, NULL, NULL, NULL),
(23, 108, 1, NULL, NULL, NULL, NULL, NULL),
(24, 111, 0, NULL, NULL, NULL, NULL, NULL),
(25, 107, 0, NULL, NULL, NULL, NULL, NULL),
(26, 105, 0, NULL, NULL, NULL, NULL, NULL),
(27, 112, 0, NULL, NULL, NULL, NULL, NULL),
(28, 104, 0, NULL, NULL, NULL, NULL, NULL),
(29, 110, 4, NULL, NULL, NULL, NULL, NULL),
(30, 106, 4, NULL, NULL, NULL, NULL, NULL),
(31, 108, 4, NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `couponecode` (`coupon_code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_city`
--
ALTER TABLE `shipping_city`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `shipping_city`
--
ALTER TABLE `shipping_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategory_tbl`
--
ALTER TABLE `subcategory_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `sub_subcategory`
--
ALTER TABLE `sub_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist_tbl`
--
ALTER TABLE `wishlist_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
