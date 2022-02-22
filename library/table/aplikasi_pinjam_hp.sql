-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 04:11 AM
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
(1, 'Jakun', '12', 'Advan 2', '2021-10-16 15:45:11', '2021-10-16 16:00:11', '2021-10-19 00:46:15', 'TERLAMBAT'),
(2, 's', '9C', 'Advan 3', '2021-10-19 00:44:54', '2021-10-19 00:59:54', '2021-10-19 01:07:47', 'TERLAMBAT'),
(3, 'ddgd', '12 Agama', 'Advan 1', '2021-10-19 01:14:14', '2021-10-19 01:29:14', '2021-10-19 01:24:28', 'TEPAT WAKTU'),
(4, 'Ibun', '9A', 'Xiaomi', '2021-10-19 04:37:44', '2021-10-19 04:52:44', '2021-10-19 14:40:29', 'TERLAMBAT'),
(5, 'Jakun', '8D', 'Xiaomi', '2021-10-19 04:37:53', '2021-10-19 04:52:53', '2021-10-19 14:40:31', 'TERLAMBAT'),
(6, 'Jakun', '11 IPA 2', 'Xiaomi', '2021-10-19 14:05:45', '2021-10-19 14:20:45', '2021-10-19 14:40:32', 'TERLAMBAT'),
(7, 'Dzakwaan Haniif', '9B', 'Xiaomi', '2021-10-19 14:23:03', '2021-10-19 14:38:03', '2021-10-19 14:40:34', 'TERLAMBAT'),
(8, 'Dzakwaan Haniif', '9B', 'Xiaomi', '2021-10-19 14:24:43', '2021-10-19 14:39:43', '2021-10-19 14:40:35', 'TERLAMBAT'),
(9, 'Dzakwaan Haniif', '9B', 'Xiaomi', '2021-10-19 14:25:24', '2021-10-19 14:40:24', '2021-10-19 14:47:17', 'TERLAMBAT'),
(10, 'Dzakwaan Haniif', '9B', 'Xiaomi', '2021-10-19 14:37:29', '2021-10-19 14:52:29', '2021-10-19 14:40:28', 'TEPAT WAKTU'),
(11, 'Jakun', '11 IPA 1', 'Advan 3', '2021-10-19 14:49:16', '2021-10-19 15:04:16', '2021-10-19 14:50:00', 'TEPAT WAKTU'),
(12, 'Ibun', '11 IPA 1', 'Advan 3', '2021-10-21 07:46:21', '2021-10-21 08:01:21', '2021-10-21 09:28:07', 'TERLAMBAT'),
(13, 'Jeki', '9A', 'Xiaomi', '2021-10-21 13:40:59', '2021-10-21 13:55:59', '2021-10-21 14:13:32', 'TERLAMBAT'),
(14, 'Jakun', '8C', 'Advan 3', '2021-10-31 06:39:53', '2021-10-31 06:59:53', '2021-10-31 09:58:06', 'TERLAMBAT'),
(15, 'Ibun', '8C', 'Advan 2', '2021-10-31 08:49:07', '2021-10-31 09:09:07', '2021-10-31 09:58:02', 'Batal Telpon');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_peminjaman_hp`
--
ALTER TABLE `data_peminjaman_hp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_peminjaman_hp`
--
ALTER TABLE `data_peminjaman_hp`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
