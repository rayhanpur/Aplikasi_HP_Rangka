-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 03:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinjam_hp_rangka`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman_hp`
--

CREATE TABLE `data_peminjaman_hp` (
  `id` int(4) NOT NULL,
  `nama_santri` varchar(50) NOT NULL,
  `kelas_santri` varchar(30) NOT NULL,
  `hp_dipakai` varchar(10) NOT NULL,
  `jam_peminjaman` timestamp NULL DEFAULT NULL,
  `batas_peminjaman` timestamp NULL DEFAULT NULL,
  `waktu_pengembalian` timestamp NULL DEFAULT NULL,
  `status_peminjaman` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_peminjaman_hp`
--

INSERT INTO `data_peminjaman_hp` (`id`, `nama_santri`, `kelas_santri`, `hp_dipakai`, `jam_peminjaman`, `batas_peminjaman`, `waktu_pengembalian`, `status_peminjaman`) VALUES
(1, 'Purnomo', '9', 'HP 2', '2022-02-28 14:26:53', '2022-02-28 14:41:53', '2022-02-28 14:28:15', 'Batal Telpon'),
(2, 'Rayhan', '8', 'HP 2', '2022-02-28 14:28:25', '2022-02-28 14:43:25', '2022-02-28 14:28:30', 'TEPAT WAKTU'),
(3, 'Rayhan', '8', 'HP 1', '2022-02-28 14:28:38', '2022-02-28 14:43:38', NULL, 'Sedang Meminjam');

-- --------------------------------------------------------

--
-- Table structure for table `data_santri`
--

CREATE TABLE `data_santri` (
  `nama_santri` varchar(50) NOT NULL,
  `kelas_santri` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_santri`
--

INSERT INTO `data_santri` (`nama_santri`, `kelas_santri`) VALUES
('Achmad', '7'),
('Rayhan', '8'),
('Purnomo', '9'),
('Budi', '10'),
('Faras', '11'),
('Rafi', '12');

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
