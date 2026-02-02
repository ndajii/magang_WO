-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 04:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `dbtanggal` date NOT NULL,
  `dbkodeksm` varchar(8) NOT NULL,
  `dbnamaksm` varchar(30) NOT NULL,
  `dbharga` int(100) NOT NULL,
  `dbbayar` int(100) NOT NULL,
  `dbket` varchar(15) NOT NULL,
  `dbsisa` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bayar`
--

INSERT INTO `tb_bayar` (`dbtanggal`, `dbkodeksm`, `dbnamaksm`, `dbharga`, `dbbayar`, `dbket`, `dbsisa`) VALUES
('2023-07-22', 'K0001', 'Dina', 40000000, 40000000, 'LUNAS', 0),
('2023-11-26', 'K0002', 'Panca', 25000000, 12500000, 'DP 50 %', 12500000),
('2022-03-27', 'K0003', 'Nurdyansah', 37000000, 37000000, 'LUNAS', 0),
('2024-12-08', 'K0004', 'Diana', 45000000, 45000000, 'LUNAS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_cathering`
--

CREATE TABLE `tb_cathering` (
  `dbkodeksm` varchar(8) NOT NULL,
  `dbnamaksm` varchar(30) NOT NULL,
  `dbpaketcath` varchar(20) NOT NULL,
  `dbhargacath` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_cathering`
--

INSERT INTO `tb_cathering` (`dbkodeksm`, `dbnamaksm`, `dbpaketcath`, `dbhargacath`) VALUES
('K0001', 'Dina', 'Paket 3', '20000000'),
('K0002', 'Panca', 'Kosong', '0'),
('K0003', 'Nurdyansah', 'Paket 3', '20000000'),
('K0004', 'Diana', 'Paket 3', '20000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dekorasi`
--

CREATE TABLE `tb_dekorasi` (
  `dbkodeksm` varchar(8) NOT NULL,
  `dbnamaksm` varchar(30) NOT NULL,
  `dbpaketdekor` varchar(20) NOT NULL,
  `dbhargadekor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dekorasi`
--

INSERT INTO `tb_dekorasi` (`dbkodeksm`, `dbnamaksm`, `dbpaketdekor`, `dbhargadekor`) VALUES
('K0001', 'Dina', 'Paket 1', 10000000),
('K0002', 'Panca', 'Paket 2', 15000000),
('K0003', 'Nurdyansah', 'Kosong', 0),
('K0004', 'Diana', 'Paket 2', 15000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `dbkodekar` varchar(8) NOT NULL,
  `dbnamakar` varchar(30) NOT NULL,
  `dbjeniskelkar` varchar(15) NOT NULL,
  `dbagamakar` varchar(15) NOT NULL,
  `dbalamatkar` varchar(50) NOT NULL,
  `dbtelpkar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`dbkodekar`, `dbnamakar`, `dbjeniskelkar`, `dbagamakar`, `dbalamatkar`, `dbtelpkar`) VALUES
('F0001', 'Friska', 'Perempuan', 'Islam', 'Jakarta', '0895555'),
('F0002', 'Farhan', 'Laki-Laki', 'Islam', 'Citayem', '0812222'),
('F0003', 'Ndaru', 'Laki-Laki', 'Islam', 'Depok', '0877860'),
('F0004', 'Budi', 'Laki-Laki', 'Islam', 'Bogor', '021893198');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `dbtanggal` date DEFAULT NULL,
  `dbkodeksm` varchar(8) NOT NULL,
  `dbnamaksm` varchar(30) NOT NULL,
  `dbjk` varchar(15) NOT NULL,
  `dbagama` varchar(15) NOT NULL,
  `dbalamatksm` varchar(50) NOT NULL,
  `dbtelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`dbtanggal`, `dbkodeksm`, `dbnamaksm`, `dbjk`, `dbagama`, `dbalamatksm`, `dbtelp`) VALUES
('2023-07-22', 'K0001', 'Dina', 'Perempuan', 'Islam', 'Jakarta', '0851234'),
('2023-11-26', 'K0002', 'Panca', 'Laki-Laki', 'Islam', 'Citayem', '0894343'),
('2022-03-27', 'K0003', 'Nurdyansah', 'Laki-Laki', 'Islam', 'Depok', '0896777'),
('2024-12-08', 'K0004', 'Diana', 'Perempuan', 'Islam', 'Pondok Ranggon', '08956216');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mua`
--

CREATE TABLE `tb_mua` (
  `dbkodeksm` varchar(8) NOT NULL,
  `dbnamaksm` varchar(20) NOT NULL,
  `dbpaketmua` varchar(20) NOT NULL,
  `dbhargamua` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mua`
--

INSERT INTO `tb_mua` (`dbkodeksm`, `dbnamaksm`, `dbpaketmua`, `dbhargamua`) VALUES
('K0001', 'Dina', 'Paket 1', 10000000),
('K0002', 'Panca', 'Paket 1', 10000000),
('K0003', 'Nurdyansah', 'Paket 2', 17000000),
('K0004', 'Diana', 'Paket 1', 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `dbtanggal` date NOT NULL,
  `dbkodeksm` varchar(8) NOT NULL,
  `dbnamaksm` varchar(30) NOT NULL,
  `dbcath` varchar(20) NOT NULL,
  `dbdekor` varchar(20) NOT NULL,
  `dbmua` varchar(20) NOT NULL,
  `dbjumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`dbtanggal`, `dbkodeksm`, `dbnamaksm`, `dbcath`, `dbdekor`, `dbmua`, `dbjumlah`) VALUES
('2023-07-22', 'K0001', 'Dina', 'Paket 3', 'Paket 1', 'Paket 1', 40000000),
('2023-11-26', 'K0002', 'Panca', 'Kosong', 'Paket 2', 'Paket 1', 25000000),
('2022-03-27', 'K0003', 'Nurdyansah', 'Paket 3', 'Kosong', 'Paket 2', 37000000),
('2024-12-08', 'K0004', 'Diana', 'Paket 3', 'Paket 2', 'Paket 1', 45000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bayar`
--
ALTER TABLE `tb_bayar`
  ADD PRIMARY KEY (`dbkodeksm`);

--
-- Indexes for table `tb_cathering`
--
ALTER TABLE `tb_cathering`
  ADD PRIMARY KEY (`dbkodeksm`);

--
-- Indexes for table `tb_dekorasi`
--
ALTER TABLE `tb_dekorasi`
  ADD PRIMARY KEY (`dbkodeksm`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`dbkodekar`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`dbkodeksm`);

--
-- Indexes for table `tb_mua`
--
ALTER TABLE `tb_mua`
  ADD PRIMARY KEY (`dbkodeksm`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`dbkodeksm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
