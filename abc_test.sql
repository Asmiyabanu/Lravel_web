-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 08:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `category`) VALUES
(1, NULL, NULL, 'Electronics'),
(2, NULL, NULL, 'Ladies Wears'),
(3, NULL, NULL, 'Mens Wear'),
(4, NULL, NULL, 'Kids Wear'),
(5, NULL, NULL, 'Furnitures'),
(6, NULL, NULL, 'Home Appliances'),
(7, NULL, NULL, 'Electronics Gadgets');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_21_155423_add_role_column_to_users_table', 1),
(6, '2022_07_21_171308_create_products_table', 1),
(7, '2022_07_21_203612_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `price`, `category`, `description`) VALUES
(1, '2022-07-21 23:11:39', '2022-07-21 23:11:39', 'Samsung galaxy s7 edge', '20000', 'Electronics', 'samsung mobile'),
(2, '2022-07-21 23:12:21', '2022-07-21 23:12:21', 'iPhone 5s', '15000', 'Electronics', 'Apple mobile'),
(3, '2022-07-21 23:13:01', '2022-07-21 23:13:01', 'iPad air 2', '30000', 'Electronics', 'apple ipad tablet'),
(4, '2022-07-21 23:13:43', '2022-07-21 23:13:43', 'iPhone 6s', '30000', 'Electronics', 'Apple mobile'),
(5, '2022-07-21 23:17:13', '2022-07-21 23:17:13', 'iPad 2', '11000', 'Electronics', 'apple ipad'),
(6, '2022-07-21 23:17:46', '2022-07-21 23:17:46', 'samsung Laptop r series', '50000', 'Electronics', 'samsung Black combination Laptop'),
(7, '2022-07-21 23:18:17', '2022-07-21 23:18:17', 'Laptop Pavillion', '100000', 'Electronics', 'hp Laptop'),
(8, '2022-07-21 23:18:57', '2022-07-21 23:18:57', 'Sony', '30000', 'Electronics', 'Sony Mobile xpriya'),
(9, '2022-07-21 23:19:32', '2022-07-21 23:19:32', 'Red Ladies dress', '12000', 'Ladies Wears', 'new arrival'),
(10, '2022-07-21 23:21:02', '2022-07-21 23:21:02', 'green Ladies dress', '30000', 'Ladies Wears', 'dress for girls'),
(11, NULL, '2022-07-21 23:52:41', 'Samsung galaxy s7 edge', '5000', 'Electronics', 'Samsung galaxy s7 edge'),
(12, NULL, '2022-07-21 23:54:12', 'iPhone 5s', '25000', 'Electronics', 'iphone 5s'),
(13, NULL, '2022-07-21 23:54:22', 'iPad air 2', '30000', 'Electronics', 'ipad apple brand'),
(14, NULL, '2022-07-21 23:54:30', 'iPhone 6s', '32000', 'Electronics', 'Apple iPhone'),
(15, NULL, '2022-07-21 23:54:37', 'iPad 2', '10000', 'Electronics', 'samsung ipad'),
(16, NULL, '2022-07-21 23:54:44', 'samsung Laptop r series', '35000', 'Electronics', 'samsung Black combination Laptop'),
(17, NULL, '2022-07-21 23:54:52', 'Laptop Pavillion', '50000', 'Electronics', 'Laptop Hp Pavillion'),
(18, NULL, '2022-07-21 23:55:03', 'Sony', '40000', 'Electronics', 'Sony Mobile'),
(19, NULL, '2022-07-21 23:55:10', 'iPhone New', '12000', 'Electronics', 'iphone'),
(20, NULL, '2022-07-21 23:56:11', 'Red Ladies dress', '1000', 'Ladies Wears', 'red dress for girls'),
(21, NULL, '2022-07-21 23:56:30', 'Blue Heave dress', '1200', 'Kids Wear', 'Blue dress'),
(22, NULL, '2022-07-21 23:56:43', 'Ladies Casual Cloths', '1500', 'Ladies Wears', 'ladies casual summer two colors pleted'),
(23, NULL, '2022-07-21 23:59:11', 'SpringAutumnDress', '1200', 'Ladies Wears', 'girls dress'),
(24, NULL, '2022-07-21 23:59:19', 'Casual Dress', '1400', 'Ladies Wears', 'girl dress'),
(25, NULL, '2022-07-21 23:59:27', 'Formal Look', '1500', 'Ladies Wears', 'girl dress'),
(26, NULL, '2022-07-22 00:13:39', 'Sweter for men', '600', 'Mens Wear', 'Sweater-for-Men-for-better-outlook'),
(27, NULL, '2022-07-21 23:59:52', 'Gents formal', '1000', 'Ladies Wears', 'gents formal look'),
(28, NULL, '2022-07-21 23:58:39', 'Formal Coat', '3000', 'Mens Wear', 'ad'),
(29, NULL, '2022-07-22 00:01:06', 'Mens Sweeter', '1600', 'Mens Wear', 'jg'),
(30, NULL, '2022-07-21 23:59:01', 'T shirt', '800', 'Mens Wear', 'ssds'),
(31, NULL, '2022-07-22 00:00:35', 'Yellow T shirt', '1300', 'Mens Wear', 'yello t shirt with pant'),
(32, NULL, '2022-07-21 23:58:48', 'Girls cloths', '1900', 'Ladies Wears', 'sadsf'),
(33, NULL, '2022-07-21 23:58:32', 'Blue T shirt', '700', 'Mens Wear', 'g'),
(34, NULL, '2022-07-22 00:01:24', 'Yellow girls dress', '750', 'Ladies Wears', 'as'),
(35, NULL, '2022-07-22 00:01:34', 'Formal look', '690', 'Ladies Wears', 'sd'),
(36, NULL, '2022-07-22 00:01:45', 'Book Shelf', '2500', 'Home Appliances', 'book shelf'),
(37, NULL, '2022-07-22 00:01:56', 'Refrigerator', '35000', 'Electronics Gadgets', 'Refrigerator'),
(38, NULL, '2022-07-22 00:02:11', 'Emergency Light', '1000', 'Home Appliances', 'Emergency Light'),
(39, NULL, '2022-07-22 00:02:21', 'Vaccum Cleaner', '6000', 'Home Appliances', 'Vaccum Cleaner'),
(40, NULL, '2022-07-22 00:02:29', 'Iron', '1500', 'Electronics Gadgets', 'gj'),
(41, NULL, '2022-07-22 00:02:40', 'LED TV', '20000', 'Electronics', 'LED TV'),
(42, NULL, '2022-07-22 00:02:48', 'Microwave Oven', '3500', 'Home Appliances', 'Microwave Oven'),
(43, NULL, '2022-07-22 00:02:57', 'Mixer Grinder', '2500', 'Electronics Gadgets', 'Mixer Grinder'),
(44, NULL, '2022-07-22 00:03:06', 'Formal girls dress', '3000', 'Ladies Wears', 'Formal girls dress'),
(45, NULL, '2022-07-22 00:03:51', 'Samsung Galaxy Note 3', '10000', 'Electronics', 'Galaxy Note'),
(46, NULL, '2022-07-22 00:04:00', 'Samsung Galaxy Note 3', '10000', 'Electronics', 'Galaxy Note'),
(47, NULL, '2022-07-22 00:04:18', 'Laptop', '650', 'Electronics', 'Dell Laptop'),
(48, NULL, '2022-07-22 00:04:28', 'Headphones', '250', 'Electronics', 'Headphones Sony'),
(49, NULL, '2022-07-22 00:04:37', 'Headphones', '250', 'Electronics', 'Headphones Sony'),
(50, NULL, '2022-07-22 00:04:55', 'boys shirts', '350', 'Mens Wear', 'suit boys shirts'),
(51, NULL, '2022-07-22 00:05:06', 'boys shirts', '270', 'Mens Wear', 'suit boys shirts'),
(52, NULL, '2022-07-22 00:05:16', 'boys Jeans Pant', '550', 'Mens Wear', 'boys Jeans Pant'),
(53, NULL, '2022-07-22 00:05:30', 'boys Jeans Pant', '460', 'Mens Wear', 'boys Jeans Pant'),
(54, NULL, '2022-07-22 00:05:47', 'boys Jeans Pant', '470', 'Mens Wear', 'boys Jeans Pant'),
(55, NULL, '2022-07-22 00:05:39', 'Samsung galaxy s7', '5000', 'Electronics', 'Samsung galaxy s7'),
(56, NULL, '2022-07-22 00:06:01', 'sony Headphones', '3500', 'Electronics', 'sony Headphones electronics gadgets'),
(57, NULL, '2022-07-22 00:06:11', 'samsung Headphones', '3500', 'Electronics', 'samsung Headphones electronics gadgets'),
(58, NULL, '2022-07-22 00:06:21', 'HP i5 laptop', '5500', 'Electronics', 'HP i5 laptop'),
(59, NULL, '2022-07-22 00:06:39', 'HP i7 laptop 8gb ram', '5500', 'Electronics', 'HP i7 laptop 8gb ram'),
(60, NULL, '2022-07-22 00:06:51', 'sony note 6gb ram', '4500', 'Electronics', 'sony note 6gb ram'),
(61, NULL, '2022-07-22 00:07:43', 'MSV laptop 16gb ram NVIDEA Graphics', '5499', 'Electronics', 'MSV laptop 16gb ram'),
(62, NULL, '2022-07-22 00:08:33', 'dell laptop 8gb ram intel integerated Graphics', '4579', 'Electronics', 'dell laptop 8gb ram intel integerated Graphics'),
(63, NULL, '2022-07-22 00:08:44', 'camera with 3D pixels', '2569', 'Electronics', 'camera with 3D pixels'),
(64, NULL, '2022-07-22 00:09:15', 'samsung Laptop r series', '123433', 'Electronics', 'sdfhgh'),
(65, NULL, '2022-07-22 00:09:27', 'Kids blue dress', '300', 'Kids Wear', 'blue dress'),
(66, NULL, '2022-07-22 00:03:41', 'Samsung galaxy s7 edge', '5000', 'Electronics', 'Samsung galaxy s7 edge'),
(67, NULL, '2022-07-22 00:09:40', 'iPhone 5s', '25000', 'Electronics', 'iphone 5s'),
(68, NULL, '2022-07-22 00:09:51', 'iPad air 2', '30000', 'Electronics', 'ipad apple brand'),
(69, NULL, '2022-07-22 00:10:02', 'iPhone 6s', '32000', 'Electronics', 'Apple iPhone'),
(70, NULL, '2022-07-22 00:10:14', 'iPad 2', '10000', 'Electronics', 'samsung ipad'),
(71, NULL, '2022-07-22 00:10:28', 'samsung Laptop r series', '35000', 'Electronics', 'samsung Black combination Laptop'),
(72, NULL, '2022-07-22 00:10:45', 'Laptop Pavillion', '50000', 'Electronics', 'Laptop Hp Pavillion'),
(73, NULL, '2022-07-22 00:11:02', 'Sony', '40000', 'Electronics', 'Sony Mobile'),
(74, NULL, '2022-07-22 00:10:54', 'iPhone New', '12000', 'Electronics', 'iphone'),
(75, NULL, '2022-07-22 00:12:06', 'Red Ladies dress', '1000', 'Ladies Wears', 'red dress for girls'),
(76, NULL, '2022-07-22 00:12:20', 'Blue Heave dress', '1200', 'Mens Wear', 'Blue dress'),
(77, NULL, '2022-07-22 00:12:33', 'Ladies Casual Cloths', '1500', 'Ladies Wears', 'ladies casual summer two colors pleted'),
(78, NULL, '2022-07-22 00:12:50', 'SpringAutumnDress', '1200', 'Ladies Wears', 'girls dress'),
(79, NULL, '2022-07-22 00:13:02', 'Casual Dress', '1400', 'Ladies Wears', 'girl dress'),
(80, NULL, '2022-07-22 00:13:13', 'Formal Look', '1500', 'Ladies Wears', 'girl dress'),
(81, NULL, '2022-07-22 00:13:56', 'Sweter for men', '600', 'Mens Wear', 'weater-for-Men-for-better-outlook'),
(82, NULL, '2022-07-22 00:11:54', 'Gents formal', '1000', 'Mens Wear', 'gents formal look'),
(83, NULL, '2022-07-22 00:11:43', 'Formal Coat', '3000', 'Mens Wear', 'ad'),
(84, NULL, '2022-07-22 00:14:12', 'Mens Sweeter', '1600', 'Mens Wear', 'jg'),
(85, NULL, '2022-07-22 00:14:24', 'T shirt', '800', 'Mens Wear', 'ssds'),
(86, NULL, '2022-07-22 00:14:39', 'Yellow T shirt', '1300', 'Mens Wear', 'yello t shirt with pant'),
(87, NULL, '2022-07-22 00:14:53', 'Girls cloths', '1900', 'Ladies Wears', 'sadsf'),
(88, NULL, '2022-07-22 00:15:17', 'Blue T shirt', '700', 'Mens Wear', 'g'),
(89, NULL, '2022-07-22 00:15:56', 'Yellow girls dress', '750', 'Ladies Wears', 'as'),
(90, NULL, '2022-07-22 00:11:29', 'Formal look', '690', 'Ladies Wears', 'sd'),
(91, NULL, '2022-07-22 00:16:10', 'Book Shelf', '2500', 'Home Appliances', 'book shelf'),
(92, NULL, '2022-07-22 00:15:44', 'Refrigerator', '35000', 'Electronics', 'Refrigerator'),
(93, NULL, '2022-07-22 00:15:29', 'Emergency Light', '1000', 'Electronics Gadgets', 'Emergency Light'),
(94, NULL, '2022-07-22 00:11:15', 'Vaccum Cleaner', '6000', 'Home Appliances', 'Vaccum Cleaner'),
(95, NULL, '2022-07-22 00:03:30', 'Iron', '1500', 'Electronics', 'gj'),
(96, NULL, '2022-07-22 00:03:19', 'LED TV', '20000', 'Electronics', 'LED TV'),
(97, NULL, '2022-07-21 23:58:20', 'Microwave Oven', '3500', 'Electronics Gadgets', 'Microwave Oven'),
(98, NULL, '2022-07-21 23:58:08', 'Mixer Grinder', '2500', 'Electronics Gadgets', 'Mixer Grinder'),
(99, NULL, '2022-07-21 23:57:53', 'Formal girls dress', '3000', 'Ladies Wears', 'Formal girls dress'),
(100, NULL, '2022-07-21 23:57:00', 'Samsung Galaxy Note 3', '10000', 'Electronics', 'Galaxy Note');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','author','editor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'asmi', 'asmi@123.com', NULL, '$2y$10$j3cBE23Xqrog1n7Oz/q1rO5DoOjlsGF3SZQkjfiHVifiVhc516Vvi', NULL, '2022-07-21 21:27:33', '2022-07-21 21:27:33', 'admin'),
(2, 'Asmi', 'asmi@gmail.com', NULL, '$2y$10$Lvng7DxNEJd27aZX4Ae0r.L1ICIx1INz6ykJpWyLbT1e180FLolFe', NULL, '2022-07-21 23:09:20', '2022-07-21 23:09:20', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
