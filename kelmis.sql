-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 05:36 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelmis`
--

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
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penerimabantuan_id` bigint(20) UNSIGNED NOT NULL,
  `puskesos_id` bigint(20) UNSIGNED NOT NULL,
  `pengaduanasyarakat_id` bigint(20) UNSIGNED NOT NULL,
  `periode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sta_kesejahteran` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2021_08_17_110653_create_pengaduanmasyarakat_table', 1),
(5, '2021_08_17_110742_create_penerimabantuan_table', 1),
(6, '2021_08_17_110751_create_puskesos_table', 1),
(7, '2021_08_17_110758_create_info_table', 1);

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
-- Table structure for table `penerimabantuan`
--

CREATE TABLE `penerimabantuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_keluargamiskin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penerimabantuan`
--

INSERT INTO `penerimabantuan` (`id`, `nama_keluargamiskin`, `alamat`, `rt`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SUBANDI', 'fgsdjg', '11', 'Miskin', '2021-08-17 01:32:36', '2021-08-17 01:41:37', NULL),
(2, 'apayaaa', 'diwitu', '29', 'miskin-pkh', '2021-08-17 02:15:12', '2021-08-17 02:15:12', NULL),
(3, 'SUWITO', 'JL.ABDI PRAJA 2 NO.12', '29', 'Miskin-PKH', '2021-08-17 19:16:39', '2021-08-17 19:16:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduanmasyarakat`
--

CREATE TABLE `pengaduanmasyarakat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tlp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_idpelanggan` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pengaduan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduanmasyarakat`
--

INSERT INTO `pengaduanmasyarakat` (`id`, `nama`, `alamat`, `no_tlp`, `no_idpelanggan`, `jenis_pengaduan`, `catatan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SUDARTIK', 'JL.PRAJA MUDA NO.25', '081234567890', '1029384756', 'MEMBUTUHKAN BPJS', 'Menyewa rumah', '2021-08-17 01:15:16', '2021-08-17 01:15:16', NULL),
(2, 'SUDARTIK', 'JL.PRAJA MUDA NO.25', '081234567890', '1029384756', 'MEMBUTUHKAN BPJS', 'Menyewa rumah', '2021-08-17 01:15:34', '2021-08-17 01:15:34', NULL),
(3, 'SUDARTIK', 'JL.PRAJA MUDA NO.25', '081234567890', '1029384756', 'MEMBUTUHKAN BPJS', 'Menyewa rumah', '2021-08-17 01:18:06', '2021-08-17 01:18:06', NULL),
(5, 'zara', 'Jl. Abdi Praja', '089800990909', '32456754367', 'butuh kartu BPJS', 'butuh aja karna mau berobat', '2021-08-17 02:04:33', '2021-08-17 02:04:33', NULL),
(6, 'Bebas', 'bebas', '08733', '2422422', 'saya miskin', 'mo lulus', '2021-08-17 02:05:37', '2021-08-17 02:05:37', NULL),
(7, 'Bebas', 'bebas', '08733', '2422422', 'saya miskin', 'mo lulus', '2021-08-17 02:06:08', '2021-08-17 02:06:08', NULL),
(8, 'tasdad', 'dsdf', 'sdfdfsdf', '3243242', '342423', '23423423', '2021-08-17 02:09:35', '2021-08-17 02:09:35', NULL),
(9, 'tes', 'tes', '23242342342', '231311', 'tes', 'tes', '2021-08-17 02:11:12', '2021-08-17 02:11:12', NULL),
(10, 'tes1', 'tes', '23242342342', '231311', 'tes', 'tes', '2021-08-17 02:11:34', '2021-08-17 02:11:34', NULL),
(11, 'tes1', 'tes3232', '23242342342', '231311', 'tes', 'tes', '2021-08-17 02:12:07', '2021-08-17 02:12:07', NULL),
(12, 'tes1', 'tes3232', '23242342342', '231311', 'tes', 'tes', '2021-08-17 02:12:38', '2021-08-17 02:12:38', NULL),
(13, 'apaya', 'disitu', '089900990090', '3211111122', 'butuh bpjs', 'butuh aja karna mau berobat', '2021-08-17 02:13:22', '2021-08-17 02:13:22', NULL),
(14, 'SUWITO', 'JL.PRAJA MUDA 2 NO.12', '081287654345', '12309876543', 'MEMBUTUHKAN BPJS', 'MENGONTRAK RUMAH', '2021-08-17 18:55:23', '2021-08-17 18:55:23', NULL),
(17, 'sdas', 'dasdas', '323', '13231413', 'fsfds', 'fdsfds', '2021-08-29 15:32:42', '2021-08-29 15:32:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `puskesos`
--

CREATE TABLE `puskesos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengaduanmasyarakat_id` bigint(20) UNSIGNED NOT NULL,
  `Alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_lantai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_dinding` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_atap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `makan_sehari_berapakali` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bahan_bakar_masak` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mampu_membayar_pengobatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_air_minum` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_penerangan_utama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daya_listrik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_penghasilan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_penghasilan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_tertinggi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tidak_memiliki_tabungan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas_mck` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `puskesos`
--

INSERT INTO `puskesos` (`id`, `nik`, `pengaduanmasyarakat_id`, `Alamat`, `jenis_lantai`, `jenis_dinding`, `jenis_atap`, `makan_sehari_berapakali`, `bahan_bakar_masak`, `mampu_membayar_pengobatan`, `sumber_air_minum`, `sumber_penerangan_utama`, `daya_listrik`, `sumber_penghasilan`, `jumlah_penghasilan`, `pendidikan_tertinggi`, `tidak_memiliki_tabungan`, `fasilitas_mck`, `created_at`, `updated_at`) VALUES
(2, '648888888888', 1, 'JL. PRAJA MUDA', 'Bambu', 'Bambu', 'Seng', '2', 'Kayu bakar', 'Tidak', 'Air Hujan', 'Bukan listrik', 'Tanpa meteran', 'Pemulung', '20.000', 'SD/sederajat', 'Tidak', 'Bersama', '2021-08-17 01:43:52', '2021-08-17 01:43:52'),
(3, '6471051234560001', 14, 'JL. ABDI PRAJA 2 NO.12', 'Parket/vinil/permadani', 'Kayu', 'Genteng tanah liat', '2', 'Gas 3 kg', 'Tidak', 'Air isi ulang', 'Listrik non PLN', '450 watt', 'Lainnya', '100.000', 'Tidak memiliki ijazah', 'Ya', 'Sendiri', '2021-08-17 19:03:11', '2021-08-17 19:03:11');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'adminpuskesos', 'adminpuskesos@gmail.com', NULL, '$2y$10$fo.l0btCymeZc/PvoL8sPe/PcirXxH/scZGvSZflYCcxDyD9V4mzq', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `info_puskesos_id_foreign` (`puskesos_id`),
  ADD KEY `info_penerimabantuan_id_foreign` (`penerimabantuan_id`);

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
-- Indexes for table `penerimabantuan`
--
ALTER TABLE `penerimabantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduanmasyarakat`
--
ALTER TABLE `pengaduanmasyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `puskesos`
--
ALTER TABLE `puskesos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `puskesos_pengaduanmasyarakat_id_foreign` (`pengaduanmasyarakat_id`);

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
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penerimabantuan`
--
ALTER TABLE `penerimabantuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengaduanmasyarakat`
--
ALTER TABLE `pengaduanmasyarakat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `puskesos`
--
ALTER TABLE `puskesos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `info`
--
ALTER TABLE `info`
  ADD CONSTRAINT `info_penerimabantuan_id_foreign` FOREIGN KEY (`penerimabantuan_id`) REFERENCES `penerimabantuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `info_puskesos_id_foreign` FOREIGN KEY (`puskesos_id`) REFERENCES `puskesos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `puskesos`
--
ALTER TABLE `puskesos`
  ADD CONSTRAINT `puskesos_pengaduanmasyarakat_id_foreign` FOREIGN KEY (`pengaduanmasyarakat_id`) REFERENCES `pengaduanmasyarakat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
