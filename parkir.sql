-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 12:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `parkir_keluar`
--

CREATE TABLE `parkir_keluar` (
  `no_tiket` varchar(30) NOT NULL,
  `no_polisi` varchar(30) NOT NULL,
  `jenis_kendaraan` varchar(30) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `tgl_keluar` date NOT NULL,
  `jam_keluar` time NOT NULL,
  `durasi_hari` varchar(30) NOT NULL,
  `durasi_jam` varchar(30) NOT NULL,
  `biaya_parkir` varchar(30) NOT NULL,
  `biaya_total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parkir_keluar`
--

INSERT INTO `parkir_keluar` (`no_tiket`, `no_polisi`, `jenis_kendaraan`, `tgl_masuk`, `jam_masuk`, `tgl_keluar`, `jam_keluar`, `durasi_hari`, `durasi_jam`, `biaya_parkir`, `biaya_total`) VALUES
('NT001', 'C', 'Motor', '2020-06-24', '21:19:19', '2020-06-24', '21:19:33', '0 hari', '0 jam', 'Rp 2.000,00', 'Rp 2.000,00'),
('NT002', 'D', 'Mobil', '2020-06-24', '21:19:24', '2020-06-24', '21:56:22', '0 hari', '0 jam', 'Rp 5.000,00', 'Rp 5.000,00'),
('NT003', 'A', 'Motor', '2020-06-24', '22:01:36', '2020-06-24', '22:01:58', '0 hari', '0 jam', 'Rp 2.000,00', 'Rp 2.000,00'),
('NT004', 'A', 'Motor', '2020-06-24', '22:01:36', '2020-06-24', '22:03:17', '0 hari', '0 jam', 'Rp 2.000,00', 'Rp 2.000,00'),
('NT005', 'ADAD', 'Mobil', '2020-06-24', '22:46:55', '2020-06-24', '22:47:13', '0 hari', '0 jam', 'Rp 5.000,00', 'Rp 5.000,00');

-- --------------------------------------------------------

--
-- Table structure for table `parkir_masuk`
--

CREATE TABLE `parkir_masuk` (
  `no_tiket` varchar(15) NOT NULL,
  `no_pol` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jam_masuk` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parkir_masuk`
--

INSERT INTO `parkir_masuk` (`no_tiket`, `no_pol`, `jenis`, `tgl_masuk`, `jam_masuk`) VALUES
('NT001', 'ABAB', 'Mobil', '2020-06-24', '22:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_admin` varchar(10) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_admin`, `nama_petugas`, `jenis_kelamin`, `no_telp`, `alamat`, `Username`, `password`) VALUES
('AD001', 'WAWAHIDIN', 'Laki-Laki', '08891819199', 'SOLO', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parkir_keluar`
--
ALTER TABLE `parkir_keluar`
  ADD PRIMARY KEY (`no_tiket`);

--
-- Indexes for table `parkir_masuk`
--
ALTER TABLE `parkir_masuk`
  ADD PRIMARY KEY (`no_tiket`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
