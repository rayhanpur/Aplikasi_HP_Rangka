-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 02:56 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_pinjam_hp`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman_hp`
--

CREATE TABLE `data_peminjaman_hp` (
  `id` int(4) NOT NULL,
  `nama_santri` text NOT NULL,
  `kelas_santri` varchar(15) NOT NULL,
  `hp_dipakai` varchar(10) NOT NULL,
  `jam_peminjaman` timestamp NULL DEFAULT NULL,
  `batas_peminjaman` timestamp NULL DEFAULT NULL,
  `jam_pengembalian` timestamp NULL DEFAULT NULL,
  `status_peminjaman` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_peminjaman_hp`
--

INSERT INTO `data_peminjaman_hp` (`id`, `nama_santri`, `kelas_santri`, `hp_dipakai`, `jam_peminjaman`, `batas_peminjaman`, `jam_pengembalian`, `status_peminjaman`) VALUES
(1, 'Ibun', '12 IPA', 'Advan 1', '2021-10-12 15:58:50', '2021-10-12 16:13:50', '2021-10-12 15:58:52', 'TEPAT WAKTU'),
(2, 'Mirel', '12 IPA', 'Advan 2', '2021-10-14 14:13:02', '2021-10-14 14:28:02', '2021-10-14 14:35:58', 'TERLAMBAT'),
(3, 'Hime', '12 Agama', 'Advan 2', '2021-10-14 14:13:19', '2021-10-14 14:28:19', '2021-10-14 14:36:01', 'TERLAMBAT'),
(4, 'Byan', '12 IPA', 'Advan 1', '2021-10-14 14:27:11', '2021-10-14 14:42:11', '2021-10-14 14:36:06', 'TEPAT WAKTU'),
(5, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:27:30', '2021-10-14 14:42:30', '2021-10-14 14:36:08', 'TEPAT WAKTU'),
(6, 'Sapiq', '12 IPA', 'Advan 1', '2021-10-14 14:27:55', '2021-10-14 14:42:55', '2021-10-14 14:36:19', 'TEPAT WAKTU'),
(7, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:37', '2021-10-14 14:51:37', '2021-10-14 14:39:45', 'TEPAT WAKTU'),
(8, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:48', '2021-10-14 14:51:48', '2021-10-14 14:38:28', 'TEPAT WAKTU'),
(9, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:54', '2021-10-14 14:51:54', '2021-10-14 14:38:19', 'TEPAT WAKTU'),
(10, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:55', '2021-10-14 14:51:55', '2021-10-14 14:38:14', 'TEPAT WAKTU'),
(11, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:56', '2021-10-14 14:51:56', '2021-10-14 14:38:05', 'TEPAT WAKTU'),
(12, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:58', '2021-10-14 14:51:58', '2021-10-14 14:38:04', 'TEPAT WAKTU'),
(13, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:36:59', '2021-10-14 14:51:59', '2021-10-14 14:38:03', 'TEPAT WAKTU'),
(14, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:37:00', '2021-10-14 14:52:00', '2021-10-14 14:38:02', 'TEPAT WAKTU'),
(15, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:37:01', '2021-10-14 14:52:01', '2021-10-14 14:38:00', 'TEPAT WAKTU'),
(16, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:37:02', '2021-10-14 14:52:02', '2021-10-14 14:37:59', 'TEPAT WAKTU'),
(17, 'Rapli', '11 Agama', 'Advan 1', '2021-10-14 14:37:08', '2021-10-14 14:52:08', '2021-10-14 14:37:57', 'TEPAT WAKTU'),
(18, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:32', '2021-10-14 15:05:32', '2021-10-14 14:52:32', 'TEPAT WAKTU'),
(19, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:37', '2021-10-14 15:05:37', '2021-10-14 14:50:56', 'TEPAT WAKTU'),
(20, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:38', '2021-10-14 15:05:38', '2021-10-14 14:50:53', 'TEPAT WAKTU'),
(21, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:39', '2021-10-14 15:05:39', '2021-10-14 14:50:52', 'TEPAT WAKTU'),
(22, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:41', '2021-10-14 15:05:41', '2021-10-14 14:50:51', 'TEPAT WAKTU'),
(23, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:42', '2021-10-14 15:05:42', '2021-10-14 14:50:49', 'TEPAT WAKTU'),
(24, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:43', '2021-10-14 15:05:43', '2021-10-14 14:50:47', 'TEPAT WAKTU'),
(25, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-14 14:50:44', '2021-10-14 15:05:44', '2021-10-14 14:50:46', 'TEPAT WAKTU'),
(26, 'Jakun', '12 IPA', 'Xiaomi', '2021-10-15 00:30:50', '2021-10-15 00:45:50', NULL, 'Sedang Meminjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_peminjaman_hp`
--
ALTER TABLE `data_peminjaman_hp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_peminjaman_hp`
--
ALTER TABLE `data_peminjaman_hp`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
