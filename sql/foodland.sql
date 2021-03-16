-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 07:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodland`
--

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `nama`, `jenis_menu`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Appetizers', 'Hidangan Pembuka', 'appetizer.png', NULL, NULL),
(2, 'Main Course', 'Inggris', 'maincourse.png', NULL, NULL),
(3, 'Side Dishes', 'Makanan Pendamping', 'dishes.png', NULL, NULL),
(4, 'Dessert', 'Makanan Penutup', 'dessert.png', NULL, NULL),
(5, 'Beverages', 'Minuman', 'beverage.png', NULL, NULL);

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
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2014_10_12_100000_create_password_resets_table', 1),
(44, '2019_08_19_000000_create_failed_jobs_table', 1),
(45, '2021_03_13_224644_create_menus_table', 1),
(46, '2021_03_13_225257_create_products_table', 1),
(47, '2021_03_13_225352_create_pesanans_table', 1),
(48, '2021_03_13_225424_create_pesanan_details_table', 1),
(49, '2021_03_16_021407_add_role_to_users_table', 2);

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
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pemesanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_harga` int(11) NOT NULL,
  `kodeunik` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `kode_pemesanan`, `status`, `total_harga`, `kodeunik`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'FL-7', '1', 150000, 100, 1, '2021-03-15 14:27:03', '2021-03-15 14:49:39'),
(8, 'FL-8', '1', 200000, 100, 1, '2021-03-15 14:52:58', '2021-03-15 14:54:03'),
(10, 'FL-10', '1', 250000, 99, 1, '2021-03-15 14:54:34', '2021-03-15 14:55:03'),
(12, 'FL-12', '1', 350000, 99, 1, '2021-03-15 15:36:11', '2021-03-15 15:36:20'),
(13, 'FL-13', '1', 150000, 100, 1, '2021-03-15 15:37:13', '2021-03-15 15:37:20'),
(14, 'FL-14', '1', 350000, 99, 1, '2021-03-15 15:57:37', '2021-03-15 15:57:43'),
(15, 'FL-15', '1', 200000, 99, 1, '2021-03-15 16:18:52', '2021-03-15 16:19:02'),
(16, 'FL-16', '1', 300000, 99, 1, '2021-03-15 20:23:29', '2021-03-15 20:23:35'),
(17, 'FL-17', '0', 300000, 100, 1, '2021-03-15 21:28:17', '2021-03-15 21:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `jumlah_pesanan`, `total_harga`, `product_id`, `pesanan_id`, `created_at`, `updated_at`) VALUES
(12, 3, 150000, 1, 7, '2021-03-15 14:27:03', '2021-03-15 14:27:03'),
(13, 4, 200000, 4, 8, '2021-03-15 14:52:59', '2021-03-15 14:52:59'),
(15, 5, 250000, 4, 10, '2021-03-15 14:54:34', '2021-03-15 14:54:34'),
(18, 7, 350000, 3, 12, '2021-03-15 15:36:11', '2021-03-15 15:36:11'),
(19, 3, 150000, 4, 13, '2021-03-15 15:37:14', '2021-03-15 15:37:14'),
(20, 7, 350000, 3, 14, '2021-03-15 15:57:39', '2021-03-15 15:57:39'),
(21, 2, 100000, 3, 15, '2021-03-15 16:18:52', '2021-03-15 16:18:52'),
(22, 2, 100000, 4, 15, '2021-03-15 16:18:59', '2021-03-15 16:18:59'),
(23, 6, 300000, 7, 16, '2021-03-15 20:23:29', '2021-03-15 20:23:29'),
(24, 6, 300000, 1, 17, '2021-03-15 21:28:17', '2021-03-15 21:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL DEFAULT 50000,
  `is_ready` tinyint(1) NOT NULL DEFAULT 1,
  `jenis_makanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama`, `harga`, `is_ready`, `jenis_makanan`, `deskripsi`, `gambar`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Brownie', 50000, 1, NULL, NULL, 'brownie.png', 1, NULL, NULL),
(2, 'French Fries', 50000, 1, NULL, NULL, 'frenchfries.png', 1, NULL, NULL),
(3, 'Beef Steak', 50000, 1, NULL, NULL, 'steak.png', 2, NULL, NULL),
(4, 'Curry', 50000, 1, NULL, NULL, 'curry.png', 2, NULL, NULL),
(5, 'Burger', 50000, 1, NULL, NULL, 'hamburger.png', 2, NULL, NULL),
(6, 'Spicy Fried Chicken', 50000, 1, NULL, NULL, 'spicyfriedchicken.png', 3, NULL, NULL),
(7, 'Nugget', 50000, 1, NULL, NULL, 'nugget.png', 3, NULL, NULL),
(8, 'Chocolate Milk', 50000, 1, NULL, NULL, 'susucoklat.png', 4, NULL, NULL),
(9, 'Rasberry Pie', 50000, 1, NULL, NULL, 'pie.png', 4, NULL, NULL),
(10, 'Tuna Spaghetti', 50000, 1, NULL, NULL, 'pasta.png', 4, NULL, NULL),
(11, 'Espresso', 50000, 1, NULL, NULL, 'espresso.png', 5, NULL, NULL),
(12, 'Lemon Tea', 50000, 1, NULL, NULL, 'lemontea.png', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `birth_date`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'zhikri', NULL, NULL, 'zheeext@gmail.com', NULL, '$2y$10$Bkd5d4XQfKk7buXqpe1ScuLivCE2WVYKxR5.ELZE9YzciZ9naTI/S', NULL, NULL, NULL, '2021-03-15 08:56:10', '2021-03-15 08:56:10', 'admin'),
(2, 'zhik', NULL, NULL, 'zhitop12@gmail.com', NULL, '$2y$10$IU1BXC5ZK.xAYPREH126sOIdXI8Rm4hhtu6QSLSTb9OQ1GtpeXtgS', NULL, NULL, NULL, '2021-03-15 19:44:29', '2021-03-15 19:44:29', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
