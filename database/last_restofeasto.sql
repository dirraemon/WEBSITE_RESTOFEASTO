-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2026 at 03:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `last_restofeasto`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `reservasi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_menu`
--

INSERT INTO `kategori_menu` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', '2026-06-01 19:49:50', '2026-06-01 19:49:50'),
(2, 'Minuman', '2026-06-01 19:49:50', '2026-06-01 19:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `meja_id` bigint(20) UNSIGNED NOT NULL,
  `nomor_meja` varchar(20) NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `status` enum('tersedia','dipesan') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`meja_id`, `nomor_meja`, `kapasitas`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Meja 01', 2, 'tersedia', '2026-06-01 19:49:50', '2026-06-01 19:49:50'),
(2, 'Meja 02', 2, 'tersedia', '2026-06-01 19:49:51', '2026-06-01 19:49:51'),
(3, 'Meja 03', 4, 'tersedia', '2026-06-01 19:49:51', '2026-06-01 19:49:51'),
(4, 'Meja 04', 4, 'tersedia', '2026-06-01 19:49:51', '2026-06-01 19:49:51'),
(5, 'Meja 05', 6, 'tersedia', '2026-06-01 19:49:51', '2026-06-01 19:49:51'),
(6, 'Meja 06', 8, 'tersedia', '2026-06-01 19:49:51', '2026-06-01 19:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_menu` varchar(150) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `id_kategori`, `nama_menu`, `harga`, `stok`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nasi Goreng Rendang', 35000.00, 48, 'Perpaduan nasi goreng gurih dengan potongan daging rendang autentik.', NULL, '2026-06-01 19:49:50', '2026-06-01 20:45:25'),
(2, 1, 'Sate Ayam Madura', 28000.00, 40, '10 tusuk sate ayam empuk dengan bumbu kacang kental yang menggoda.', NULL, '2026-06-01 19:49:50', '2026-06-01 19:49:50'),
(3, 1, 'Rendang Daging Sapi', 45000.00, 30, 'Daging sapi pilihan yang dimasak lambat dengan rempah-rempah tradisional khas Minang.', NULL, '2026-06-01 19:49:50', '2026-06-01 19:49:50'),
(4, 1, 'Ayam Goreng Kalasan', 32000.00, 34, 'Ayam goreng khas Sleman dengan rasa manis gurih yang meresap hingga ke dalam.', NULL, '2026-06-01 19:49:50', '2026-06-01 20:39:02'),
(5, 2, 'Es Dawet Ayu', 15000.00, 100, 'Minuman segar dengan santan murni dan gula merah asli pilihan.', NULL, '2026-06-01 19:49:50', '2026-06-01 19:49:50'),
(6, 2, 'Es Teh Manis', 6000.00, 194, 'Teh melati seduh segar disajikan dingin dengan gula tebu cair.', NULL, '2026-06-01 19:49:50', '2026-06-02 03:52:16'),
(7, 2, 'Kopi Tubruk', 12000.00, 150, 'Kopi hitam murni robusta dengan seduhan tradisional yang pekat dan mantap.', NULL, '2026-06-01 19:49:50', '2026-06-01 19:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_05_20_023230_create_kategori_menu_table', 1),
(5, '2026_05_20_023922_create_menu_table', 1),
(6, '2026_05_20_024140_create_meja_table', 1),
(7, '2026_05_20_024427_create_reservasi_table', 1),
(8, '2026_05_20_024659_create_order_items_table', 1),
(9, '2026_05_20_024934_create_pembayaran_table', 1),
(10, '2026_05_20_025158_create_feedback_table', 1),
(11, '2026_05_29_063909_create_personal_access_tokens_table', 1),
(12, '2026_06_02_000000_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `reservasi_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `reservasi_id`, `menu_id`, `jumlah`, `harga`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 32000.00, 32000.00, '2026-06-01 20:39:02', '2026-06-01 20:39:02'),
(2, 2, 1, 1, 35000.00, 35000.00, '2026-06-01 20:44:04', '2026-06-01 20:44:04'),
(3, 3, 1, 1, 35000.00, 35000.00, '2026-06-01 20:45:25', '2026-06-01 20:45:25'),
(4, 4, 6, 1, 6000.00, 6000.00, '2026-06-01 23:39:08', '2026-06-01 23:39:08'),
(5, 5, 6, 1, 6000.00, 6000.00, '2026-06-01 23:47:50', '2026-06-01 23:47:50'),
(6, 6, 6, 1, 6000.00, 6000.00, '2026-06-01 23:55:57', '2026-06-01 23:55:57'),
(7, 7, 6, 1, 6000.00, 6000.00, '2026-06-02 00:01:09', '2026-06-02 00:01:09'),
(8, 8, 6, 1, 6000.00, 6000.00, '2026-06-02 01:06:16', '2026-06-02 01:06:16'),
(9, 9, 6, 1, 6000.00, 6000.00, '2026-06-02 03:52:16', '2026-06-02 03:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaran_id` bigint(20) UNSIGNED NOT NULL,
  `reservasi_id` bigint(20) UNSIGNED NOT NULL,
  `metode` enum('tunai','qris') NOT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `status` enum('pending','diterima','ditolak') NOT NULL DEFAULT 'pending',
  `tanggal_bayar` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`pembayaran_id`, `reservasi_id`, `metode`, `bukti_bayar`, `status`, `tanggal_bayar`, `created_at`, `updated_at`) VALUES
(1, 1, 'qris', 'bukti_bayar/1780371579_1.png', 'diterima', '2026-06-02 03:39:39', '2026-06-01 20:39:39', '2026-06-01 20:40:59'),
(2, 2, 'tunai', NULL, 'diterima', '2026-06-02 03:44:08', '2026-06-01 20:44:08', '2026-06-01 20:44:27'),
(3, 6, 'qris', 'bukti_bayar/1780383462_6.jpg', 'ditolak', '2026-06-02 06:57:42', '2026-06-01 23:57:42', '2026-06-02 01:09:31'),
(4, 5, 'qris', 'bukti_bayar/1780383481_5.jpg', 'ditolak', '2026-06-02 06:58:01', '2026-06-01 23:58:01', '2026-06-02 01:09:28'),
(5, 7, 'qris', 'bukti_bayar/1780383707_7.jpg', 'ditolak', '2026-06-02 07:01:47', '2026-06-02 00:01:47', '2026-06-02 01:09:35'),
(6, 8, 'qris', 'bukti_bayar/1780387590_8.jpg', 'ditolak', '2026-06-02 08:06:31', '2026-06-02 01:06:31', '2026-06-02 01:10:02'),
(7, 9, 'qris', 'bukti_bayar/1780397666_9.jpg', 'diterima', '2026-06-02 10:54:27', '2026-06-02 03:54:27', '2026-06-02 03:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `reservasi_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `meja_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_reservasi` datetime NOT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `status` enum('pending','confirmed','cancelled','completed') NOT NULL DEFAULT 'pending',
  `total_harga` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`reservasi_id`, `user_id`, `meja_id`, `tanggal_reservasi`, `jumlah_orang`, `status`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2026-06-02 00:00:00', 2, 'completed', 32000.00, '2026-06-01 20:39:02', '2026-06-01 20:42:03'),
(2, 5, 1, '2026-06-02 00:00:00', 2, 'completed', 35000.00, '2026-06-01 20:44:04', '2026-06-01 20:44:37'),
(3, 5, 1, '2026-06-02 00:00:00', 2, 'pending', 35000.00, '2026-06-01 20:45:25', '2026-06-01 20:45:25'),
(4, 3, 2, '2026-06-02 00:00:00', 2, 'pending', 6000.00, '2026-06-01 23:39:08', '2026-06-01 23:39:08'),
(5, 6, 3, '2026-06-02 00:00:00', 2, 'pending', 6000.00, '2026-06-01 23:47:50', '2026-06-01 23:47:50'),
(6, 6, 4, '2026-06-02 00:00:00', 2, 'confirmed', 6000.00, '2026-06-01 23:55:57', '2026-06-02 04:05:52'),
(7, 6, 5, '2026-06-02 00:00:00', 2, 'cancelled', 6000.00, '2026-06-02 00:01:09', '2026-06-02 01:07:11'),
(8, 6, 6, '2026-06-02 00:00:00', 2, 'completed', 6000.00, '2026-06-02 01:06:16', '2026-06-02 01:11:26'),
(9, 6, 5, '2026-06-02 00:00:00', 2, 'completed', 6000.00, '2026-06-02 03:52:16', '2026-06-02 03:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1IboA362ZxpjV1Q5Lvg6DoOLwa0qW2v0yFTtWlK6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVBLQmFaeFMyM0ZaemRsVDI5d0o2UEJnS3dZU1R6RjlkUEpVQ2t0MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbi9rYXNpciI7czo1OiJyb3V0ZSI7czoxMToibG9naW4ua2FzaXIiO319', 1780399313),
('4RKXxxNM8FMZBT85azKUyMeQFA6X0CVl3qjnFDd4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT1Bwc1J6T1k4VnR2QkhjNUZPVHVTQ3ZsMUpqbVhmSERHMkZZTUlYRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo1OiJpbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780447700),
('GqWTAQFqCBuFUlIl1cQ2RpjR0ddGABgjGUmTHezc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFNHUE1xZ1dvbDNxNU9vblVld01ycWxiSFhKNFpxUHROUFZUaXoxYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo1OiJpbmRleCI7fX0=', 1780449055),
('Kb7OxaPvBjIjVhA9xiJw131LFcXfnc86g18hvJnJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEhHNGZScVEwZG81bDFVS0VvQnhCeWp1UEdJUUFzMVhyV3ViUWNiWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo1OiJpbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780448015),
('kIvVMna9KhtdZEa8bDS6chbccm8i62kpeqcjWV7p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2YxbEJFcTdBdlhCbGo2d0pmeWVXN2lKRDBsS041aXpLVTJ3VGVFbiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWdpc3RlciI7czo1OiJyb3V0ZSI7czo4OiJyZWdpc3RlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780382455),
('p8Cj5o5b9FOXCdXsZnN6H2OwtoonIOrgQ6NjSFXo', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOElHcUZuUXFhN3VxMWtlZHZNZnM0Q3YyUkoyRUtRYWI4bWVUb2drYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYXNpci9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTU6Imthc2lyLmRhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1780388171),
('USj6Ga3PNqzbnPsf64bFAtJ0RO4CwGJCqdxVdOLd', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYU5HN3RFYlp6Rm1OUDB4S2kyOFgzQWJJaTY0UzNaejF0aHhHR0djYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW1iYXlhcmFuIjtzOjU6InJvdXRlIjtzOjEwOiJwZW1iYXlhcmFuIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1780397935),
('vudT9tfhbhkEd0ExUVzOP6C1MCPEquQD9auXXyVK', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXlGTjlVYndsTTNtRFdZQXVJMmhwQThsU1Fka2o3NkVrQjJvQVQ4MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYXNpci9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6MTU6Imthc2lyLmRhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1780383715);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `created_at`, `updated_at`) VALUES
('qris_image', 'qris/qris_1780371505.jpeg', '2026-06-01 19:49:42', '2026-06-01 20:38:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','kasir','pelanggan') NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nama`, `email`, `email_verified_at`, `password`, `role`, `no_hp`, `otp_code`, `is_verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@restofeasto.com', NULL, '$2y$12$KzIdK43M6o9ecBS0rlR5E.VxwZwShidR/mUOFIvRmGkfLK2eYT5ZO', 'admin', '081234567890', NULL, 1, NULL, '2026-06-01 19:49:49', '2026-06-01 19:49:49'),
(2, 'Kasir Resto', 'kasir@restofeasto.com', NULL, '$2y$12$4mcBDX3pRocfwntaSwlGhOP38930gLl/2fuFnhLmaLt3XlAIp4uIq', 'kasir', '081234567891', NULL, 1, NULL, '2026-06-01 19:49:49', '2026-06-02 01:15:40'),
(3, 'Test Pelanggan', 'test@example.com', NULL, '$2y$12$KbhB39DKGQkwsMmTzxRLmeXV/TC9cbybPKMwkdFsUS5iqMVwApxMa', 'pelanggan', '081234567892', NULL, 1, NULL, '2026-06-01 19:49:50', '2026-06-01 19:49:50'),
(4, 'Louvrei', 'nopalhraid150504@gmail.com', NULL, '$2y$12$opex6EmnoYHBRuOKeeDyLOi8MVjMvmVOoHkv9/fqf4HU5otUuBGFu', 'pelanggan', '08172736281', '803647', 0, NULL, '2026-06-01 20:08:02', '2026-06-01 20:08:02'),
(5, 'Louvrei', 'naufalhawari19@gmail.com', NULL, '$2y$12$tdczZsyjWDbi8am3Qx7OCO/IpjIuCTN2U31F5tuitxfMYgLd.c336', 'pelanggan', '082210982210', NULL, 1, NULL, '2026-06-01 20:30:51', '2026-06-01 20:35:15'),
(6, 'Dira Fitri Annisa', 'dirafitriannisa@gmail.com', NULL, '$2y$12$0DmCahzeWSMQScZ2.7iqf.BhNfxE1nt4XOsUmr8H9Az9YNuMUC64.', 'pelanggan', '085215263605', NULL, 1, NULL, '2026-06-01 23:42:00', '2026-06-01 23:54:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `feedback_reservasi_id_foreign` (`reservasi_id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_items_reservasi_id_foreign` (`reservasi_id`),
  ADD KEY `order_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaran_id`),
  ADD KEY `pembayaran_reservasi_id_foreign` (`reservasi_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`reservasi_id`),
  ADD KEY `reservasi_user_id_foreign` (`user_id`),
  ADD KEY `reservasi_meja_id_foreign` (`meja_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
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
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_menu`
--
ALTER TABLE `kategori_menu`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `meja_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `pembayaran_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `reservasi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_reservasi_id_foreign` FOREIGN KEY (`reservasi_id`) REFERENCES `reservasi` (`reservasi_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_menu` (`id_kategori`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_reservasi_id_foreign` FOREIGN KEY (`reservasi_id`) REFERENCES `reservasi` (`reservasi_id`) ON DELETE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_reservasi_id_foreign` FOREIGN KEY (`reservasi_id`) REFERENCES `reservasi` (`reservasi_id`) ON DELETE CASCADE;

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_meja_id_foreign` FOREIGN KEY (`meja_id`) REFERENCES `meja` (`meja_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservasi_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
