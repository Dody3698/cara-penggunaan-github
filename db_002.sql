-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2024 at 06:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_002`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `NIM` varchar(12) NOT NULL,
  `KODE_MK` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambil_mk`
--

INSERT INTO `ambil_mk` (`NIM`, `KODE_MK`) VALUES
('23001', 'TIK 112'),
('23001', 'TIK 433');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(12) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `JENIS_KELAMIN` varchar(1) NOT NULL,
  `ALAMAT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `NAMA`, `JENIS_KELAMIN`, `ALAMAT`) VALUES
('23001', 'Amin Luthfi', 'L', 'Jalan Kutilang 15, Surabaya'),
('230010', 'Natsir Abdullah', 'L', 'Jalan Kelana 37, Kediri'),
('23004', 'Mohammad Natsir', 'L', 'Jalan Lamongan, 23 Malang'),
('23005', 'Sri Wulandari', 'P', 'Jalan Mawar 25, Batu'),
('23007', 'Amin', 'L', 'Jalan Kelana 34, Kediri'),
('23009', 'Wulandari Artis', 'P', 'Jalan Mawar 27, Batu');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `KODE_MK` varchar(7) NOT NULL,
  `NAMA_MK` varchar(50) NOT NULL,
  `SKS` int(1) NOT NULL,
  `SEMESTER` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`KODE_MK`, `NAMA_MK`, `SKS`, `SEMESTER`) VALUES
('TIK 112', 'Multimedia', 3, 1),
('TIK 342', 'Basis Data', 3, 2),
('TIK 433', 'Data Science', 3, 3),
('TIK 442', 'Pemrograman Web', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD PRIMARY KEY (`KODE_MK`),
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`KODE_MK`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD CONSTRAINT `ambil_mk_ibfk_1` FOREIGN KEY (`KODE_MK`) REFERENCES `mata_kuliah` (`KODE_MK`),
  ADD CONSTRAINT `ambil_mk_ibfk_2` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
