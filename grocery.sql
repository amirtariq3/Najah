-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2021 at 05:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin@admin.com', '03045569873', '$2y$10$n0apKzJSJMqpZ1YVt/O9jOootRTcX9Zp37V2qzLWKH1IAb59gNrEO', '2021-08-23 10:31:50', '2021-08-23 10:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', '1', '2021-08-23 11:39:37', '2021-08-23 11:39:37'),
(2, 'Soup', '1', '2021-08-23 11:41:23', '2021-08-23 11:41:23'),
(3, 'Soup', '1', '2021-08-23 11:41:23', '2021-08-23 11:41:23'),
(4, 'Surf', '1', '2021-08-23 11:41:35', '2021-08-23 11:41:35'),
(6, 'Shampo', '1', '2021-08-23 11:41:58', '2021-08-23 11:41:58'),
(7, 'Cooking Oil', '1', '2021-08-23 11:42:04', '2021-08-24 11:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `user_id`, `complaint`, `created_at`, `updated_at`) VALUES
(1, '1', 'i recieved wrong items', NULL, NULL),
(2, '5', 'I recieved Damage Product', '2021-08-27 06:55:31', '2021-08-27 06:55:31'),
(3, '5', 'I recieved Damage Product', '2021-08-27 09:41:31', '2021-08-27 09:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(255) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `name`, `category_id`, `detail`, `old_price`, `deal_price`, `quantity`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nesfruta Mango Mega Deal', '1', 'Nesfruta Mango Mega Deal', '1040', '1000', 2, '6126456bb428b.jpg', '1', '2021-08-25 08:13:03', '2021-08-27 06:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, '5', '2', '2021-08-27 09:50:01', '2021-08-27 09:50:01'),
(6, '5', '3', '2021-08-27 09:50:10', '2021-08-27 09:50:10'),
(7, '1', '1', '2021-08-27 09:50:40', '2021-08-27 09:50:40');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_08_23_133503_create_categories_table', 1),
(4, '2021_08_23_133553_create_admins_table', 1),
(5, '2021_08_23_141838_create_products_table', 2),
(6, '2021_08_23_142216_create_orders_table', 2),
(7, '2021_08_23_142258_create_order_products_table', 2),
(8, '2021_08_25_105859_create_favourites_table', 3),
(9, '2021_08_25_112356_create_complaints_table', 4),
(10, '2021_08_25_113252_create_deals_table', 5),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 6),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 6),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 6),
(14, '2016_06_01_000004_create_oauth_clients_table', 6),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1c424e7b175366671b7d80d9c34d9c7b96784fa296d2e1ea788b73ae4f85e4c2dae4904fc5637dbb', 5, 1, 'MyApp', '[]', 0, '2021-08-27 06:41:21', '2021-08-27 06:41:21', '2022-08-27 11:41:21'),
('4e742b42896e9f5474452f3325889dca501962145bfc877f7e99f06b94cdb0be31a73089728b70db', 5, 1, 'MyApp', '[]', 1, '2021-08-26 09:25:42', '2021-08-26 09:25:42', '2022-08-26 14:25:42'),
('873a5b6583f17807871c07b5e0a9dcabad7d5cbcaf6a893bc7d9dc136659640aebbfd94724652d81', 6, 1, 'MyApp', '[]', 1, '2021-08-26 08:34:36', '2021-08-26 08:34:36', '2022-08-26 13:34:36'),
('9cfbd842a3a864815f6861de610a5d46540dac695ea3124d952079c88fa90e611f281a3ec0d0e7d4', 1, 1, 'MyApp', '[]', 1, '2021-08-26 09:53:01', '2021-08-26 09:53:01', '2022-08-26 14:53:01'),
('d6c3cfe4b4fefdee0e212f7cadaf3c0b4740051eb7eae4c29852540af898ad1a549db86624b25c0e', 5, 1, 'MyApp', '[]', 0, '2021-08-26 10:15:06', '2021-08-26 10:15:06', '2022-08-26 15:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'e5tDQLiUe5QuGCdwnT48IaNNp5oicY35uBXTxX7E', NULL, 'http://localhost', 1, 0, 0, '2021-08-26 07:57:05', '2021-08-26 07:57:05'),
(2, NULL, 'Laravel Password Grant Client', 'LcVxsjjRLS0pFIDI7DUkkYAMmOsffCLHEPuA5Pm6', 'users', 'http://localhost', 0, 1, 0, '2021-08-26 07:57:05', '2021-08-26 07:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-26 07:57:05', '2021-08-26 07:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `detail`, `price`, `image`, `image_1`, `image_2`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'SURF EXCEL 1 KG', 'I am very satisfied I have sent a very good thing of Surf Excel Good Fragrance and good packing Thank you very much. You have done a great job.Plz  keep working honestly, you will be sending me good things.Packing is very good and fresh products and very good Cleaning cloth cleaner surf excel I m happy delivery on time thank you very much. God bless you and give you growth in your business.Thanks Seller and Thanks Daraz', '999', '6124edac14a12.jpg', '6124edac14db9.jpg', '6124edac1504b.webp', 1, '2021-08-24 08:01:32', '2021-08-24 08:01:32'),
(2, '3', 'LUX VELVET GLOW SOAP 100GM', 'Product details of LUX VELVET GLOW SOAP 100GM\r\nLUX VELVET GLOW SOAP 100GM\r\nLUX VELVET GLOW SOAP 100GM\r\nSpecifications of LUX VELVET GLOW SOAP 100GM\r\nBrandLUXSKU183758416_PK-1366864575Ideal UsageNot SpecifiedFragrancedNot Specified', '150', '6124f1f16d1a8.jpg', '6124f1f16d558.jpg', '6124f1f16d88c.jpg', 1, '2021-08-24 08:19:45', '2021-08-24 08:19:45'),
(3, '7', 'Seasons Canola 5 Liter Pouch Dispenser', 'Naturally rich in Omega-3\r\n100% Pure Canola Oil\r\nLowers Cholesterol\r\nBuilds Immunity\r\nThe Market Leader Canola Oil in Pakistan that is the best choice for all the daily cooking needs of the household\r\nSpecifications of Seasons Canola 5 Liter Pouch Dispenser\r\nBrandSEASONS CANOLASKU185042667_PK-1369912780\r\nWhat’s in the box	Seasons Canola 5 Liter Pouch Dispenser', '60', '6124f26fe1804.jpg', '6124f26fe2017.jpg', '6124f26fe262d.jpg', 1, '2021-08-24 08:21:51', '2021-08-25 07:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `shop_name`, `email`, `phone`, `city`, `address`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adnan', 'Genral Store', 'adnan3@gmail.com', '03035767874', 'Lahore', 'House # 1 , Main Road, Karachi', NULL, '$2y$10$.KwFdK/zYmGv7nDqnA.8bucywT1CnNn/G46SKWJPmoV8bx9DcBqz.', '1', NULL, '2021-08-25 04:57:20', '2021-08-25 05:27:17'),
(2, 'Farhan', 'AAA Grocery', 'farhan3@gmail.com', '0303-5678784', 'Islamabad', 'House # 1 , Main Road, Karachi', NULL, '$2y$10$Ky8/RlKh1EJEDcDERFFDbOxF40PYstC9o1Kx5zMe1wUPQN1yueoGC', '1', NULL, '2021-08-25 04:59:10', '2021-08-25 04:59:10'),
(3, 'Aamir', 'Aeron General Store.', 'amirtariq3@gmail.com', '03045569873', 'Multan', 'House # 1 , Main Road, Multan', NULL, '$2y$10$yxvqhhljYEMeovNax3PS1e0RmLqOM2TjchXikGi/BHMdZfjS6W2WG', '1', NULL, '2021-08-25 04:59:51', '2021-08-25 04:59:51'),
(4, 'Umair', 'All Natural Grocer.', 'umair3@gmail.com', '0304-5569873', 'Karachi', 'House # 1 , Main Road, Karachi', NULL, '$2y$10$pxARjS5auRi5t9tTxD4WRe5Ep0Im7G1Bg3AXVBWmExqg6ZRrvfZSG', '1', NULL, '2021-08-25 05:00:18', '2021-08-25 05:00:18'),
(5, 'Ali', 'Arbor General Store.', 'ali3@gmail.com', '03057592700', 'Lahore', 'House No 1, Anwer Street, Gulshan Abbas Scheem No 2, Mansoorah Multan Road, Lahore', NULL, '$2y$10$haUR.5g7OdyjDG4iD44zUOl9S6CKr4EI8Q2Ts3xmVbKAbgrY7h3RK', '1', NULL, '2021-08-25 05:00:52', '2021-08-25 05:27:54'),
(6, 'Asim', 'Asim Genral Store', 'asim34@gmail.com', '03024125578', 'Lahore', 'Multan Road Lahore', NULL, '$2y$10$961ons4ZGdcHo7r6Yw4P1uiKcVzbgY1LNsd1zvpOztfsnTdYzHZ3G', '1', NULL, '2021-08-26 08:23:47', '2021-08-26 08:23:47'),
(9, 'Aslam', 'Aslam Genral Store', 'aslam34@gmail.com', '03024125579', 'Lahore', 'Multan Road Lahore', NULL, '$2y$10$WTf73DitkWVKtbwrJawLMOPyZd.ZkB/l5DNcGLKNRqJVRWRO.v9E.', '1', NULL, '2021-08-26 08:24:40', '2021-08-26 08:24:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
