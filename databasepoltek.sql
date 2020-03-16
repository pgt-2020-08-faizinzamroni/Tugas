-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 08:17 AM
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
-- Database: `databasepoltek`
--

-- --------------------------------------------------------

--
-- Table structure for table `aritnatika`
--

CREATE TABLE `aritnatika` (
  `id` int(11) NOT NULL,
  `a` double NOT NULL,
  `b` double NOT NULL,
  `c` double NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kd_dosen` varchar(10) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kd_dosen`, `nama_dosen`, `alamat`, `email`, `hp`) VALUES
('DS001', 'Jhoniward', 'Perum Dasana Indah, Kelapa Dua, Kota Tangerang, Banten', 'jhoniward@gmail.com', '082123456789'),
('DS002', 'Hasbulloh', 'Perumahan Dasana Indah, Kelapa Dua, Kota Tangerang, Banten', 'hasbulloh123@gmail.com', '089098765432'),
('DS003', 'Diki Kusuma', 'Perum Dasana Indah, Kelapa Dua, Kota Tangerang, Banten', 'dikun000@gmail.com', '088907865456');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(5) NOT NULL,
  `nim` int(7) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `jurusan`) VALUES
(1, 1702018, 'Faizin Zamroni', 'Laki-Laki', 'Teknik Elektronika'),
(2, 1702029, 'Jeffrey Nursalim', 'Laki-Laki', 'Teknik Elektronika'),
(3, 1702053, 'Sultan Raki Muhamad', 'Laki-Laki', 'Teknik ELektronika'),
(4, 1702054, 'Taufiq Yusuf Maulana', 'Laki-Laki', 'Teknik Elektronika'),
(5, 1702058, 'Yarishunal Khafiyan Ardiyanto', 'Laki-Laki', 'Teknik Elektronika');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_mk` varchar(20) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kd_mk`, `nama_mk`, `sks`) VALUES
('PL01', 'WEB PROGRAMMING', 3),
('PL02', 'DATABASE', 3),
('PL03', 'STRUKTUR DATA', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `kd_mk` varchar(20) NOT NULL,
  `kd_dosen` varchar(10) NOT NULL,
  `nim` int(7) NOT NULL,
  `absensi` int(3) NOT NULL,
  `kuis` int(3) NOT NULL,
  `tugas` int(3) NOT NULL,
  `uts` int(3) NOT NULL,
  `uas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`kd_mk`, `kd_dosen`, `nim`, `absensi`, `kuis`, `tugas`, `uts`, `uas`) VALUES
('PL01', 'DS001', 1702018, 80, 80, 80, 80, 80),
('PL02', 'DS002', 1702029, 80, 80, 80, 80, 80),
('PL03', 'DS001', 1702029, 90, 90, 90, 90, 90),
('PL04', 'DS001', 1702018, 100, 100, 100, 100, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aritnatika`
--
ALTER TABLE `aritnatika`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kd_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_mk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aritnatika`
--
ALTER TABLE `aritnatika`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
