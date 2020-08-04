-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 07:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katring`
--
CREATE DATABASE IF NOT EXISTS `katring` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `katring`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(255) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `userName`, `passWord`) VALUES
(1, 'af', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id_cust` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_cust`, `nama`, `contact`, `alamat`) VALUES
(2, 'Rizki', '13213245', 'Tebet Union'),
(3, 'Fauzi', '021321654', 'Jakarta'),
(4, 'Rizki', '132465798', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `pesanmakan`
--

DROP TABLE IF EXISTS `pesanmakan`;
CREATE TABLE `pesanmakan` (
  `id_pemb` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenisPaket` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pesanmakan`
--

INSERT INTO `pesanmakan` (`id_pemb`, `nama`, `jenisPaket`, `detail`, `harga`) VALUES
(3, 'Fauzi', 'Paket 3', 'Nasi + Telor + Tempe + Minum', 'Rp 20.000,-'),
(4, 'Rizki', 'Paket 2', 'Nasi + Ayam + Tahu + Minum', 'Rp 25.000,-');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id_pemb` int(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenisPaket` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_pemb`, `nama`, `jenisPaket`, `harga`, `status`) VALUES
(3, 'Fauzi', 'Paket 3', 'Rp 20.000,-', 'Sudah Lunas'),
(4, 'Rizki', 'Paket 2', 'Rp 25.000,-', 'Sudah Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `trx`
--

DROP TABLE IF EXISTS `trx`;
CREATE TABLE `trx` (
  `id_trx` int(255) NOT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenisPaket` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trx`
--

INSERT INTO `trx` (`id_trx`, `tanggal`, `nama`, `jenisPaket`, `harga`) VALUES
(2, '29/6/2019', 'Fauzi', 'Paket 1', 'Rp 30.000,-'),
(3, '29/6/2019', 'Fauzi', 'Paket 3', 'Rp 20.000,-'),
(4, '29/6/2019', 'Rizki', 'Paket 2', 'Rp 25.000,-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_cust`);

--
-- Indexes for table `pesanmakan`
--
ALTER TABLE `pesanmakan`
  ADD PRIMARY KEY (`id_pemb`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_pemb`);

--
-- Indexes for table `trx`
--
ALTER TABLE `trx`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_cust` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanmakan`
--
ALTER TABLE `pesanmakan`
  MODIFY `id_pemb` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_pemb` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trx`
--
ALTER TABLE `trx`
  MODIFY `id_trx` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
