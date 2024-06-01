-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 01, 2024 at 08:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `package`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `id` int(11) NOT NULL,
  `Tglditerima` date NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `kontak` text NOT NULL,
  `berat` text NOT NULL,
  `detail` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar`
--

INSERT INTO `daftar` (`id`, `Tglditerima`, `penerima`, `kontak`, `berat`, `detail`, `status`) VALUES
(283501, '2023-07-19', 'Elin Fitria (Banjarnegara Madukara)', '0851387432184', '2', 'Kerupuk mentah dan kue bawang', 'Diambil');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan`
--

CREATE TABLE `penerimaan` (
  `id` int(11) NOT NULL,
  `wilayah_agen` varchar(255) NOT NULL,
  `nama_agen` varchar(255) NOT NULL,
  `lokasi` text NOT NULL,
  `alamat_jalan` text NOT NULL,
  `kontak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerimaan`
--

INSERT INTO `penerimaan` (`id`, `wilayah_agen`, `nama_agen`, `lokasi`, `alamat_jalan`, `kontak`) VALUES
(1, 'Banjarnegara Madukara', 'Septi Aji', 'Banjarnegara, Jawa Tengah', 'Dukuh Pagerayu RT/RW 01/04 Desa Blitar Kecamatan Madukara', '78744633218'),
(2, 'Banjarnegara Bawang', 'Novi Pancasari', 'Banjarnegara, Jawa Tengah', 'Desa Pucang RT/RW 01/02 Kecamatan Bawang Kab Banjarnegara', '654813456721'),
(3, 'Brebes Jatibarang', 'Juli Tahier', 'Brebes, Jawa Tengah', 'Perum Griya Satria Pesona, Jl Pemaron Blok A No 30', '763132186423'),
(4, 'Cilacap Adipala', 'Setiawan Agus', 'Cilacap, Jawa Tengah', 'Jalan Laut Adipala Blok 12 RT05 RW03, Adipala Cilacap', '783134456843'),
(5, 'Cilacap Tengah', 'Siti Ngaisah', 'Cilacap, Jawa Tengah', 'Jalan Madura RT/RW 02/04 Kel Gunung Simping Kec Cilacap Tengah', '214568775463'),
(6, 'Cilacap Binangun', 'Fitri Lestari', 'Cilacap, Jawa Tengah', 'Jalan Sembolang RT 24 RW 6, Binangun 53281', '7789564213578'),
(7, 'Cilacap Binangun', 'Nuryani', 'Cilacap, Jawa Tengah', 'Jalan Diponegoro RT 04/01 Widara Payung Wetan Binangun Cilacap', '7539514862852'),
(8, 'Cilacap Adipala', 'Lass Alfarizqi', 'Cilacap, Jawa Tengah', 'Jalan Kopek RT 04 RW 08 Grubul jati Kandang Desa Glempang Pasir Kecamatan Adipala', '7896321457412');

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE `pengambilan` (
  `id` int(11) NOT NULL,
  `wilayah_agen` varchar(255) NOT NULL,
  `nama_agen` varchar(255) NOT NULL,
  `lokasi` text NOT NULL,
  `alamat_jalan` text NOT NULL,
  `kontak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id`, `wilayah_agen`, `nama_agen`, `lokasi`, `alamat_jalan`, `kontak`) VALUES
(33, 'Jombang 1', 'Erik', 'Jombang, Jawa Timur', 'Jl. Kertanegara No.17', '123456789'),
(34, 'Jombang 2', 'Erik', 'Jombang, Jawa Timur', 'Jl. Jelakombo No.52', '123456789'),
(35, 'Banyuwangi Genteng', 'Ibu Uliya Azizah', 'Banyuwangi, Jawa Timur', 'Dusun Krajan RT/RW 01/11 Desa Genteng Wetan Kecamatan Genteng', '212132184123'),
(36, 'Banyuwangi Muncar', 'Ibu Rika Sulistiowati', 'Banyuwangi, Jawa Timur', 'Desa Kumendung RT/RW 02/04 Dusun Sumberjoyo Muncar', '2121321841232'),
(37, 'Banyuwangi Siliragung', 'Bapak Rizal Maulana', 'Banyuwangi, Jawa Timur', 'Dusun Krajan RT/RW 02/04 Desa Siliragung Kecamatan Siliragung', '2121321841232'),
(38, 'Malang Wagir', 'Bpk Mat Kusaeri / Rully', 'Malang, Jawa Timur', 'Gang Flamboyan RT/RW 09/02', '2121321841232'),
(39, 'Malang Wajak 1', 'Ibu Itak', 'Malang, Jawa Timur', 'Jalan Kawi No 03 RT/RW 01/11', '2121321841232'),
(40, 'Malang Wajak 2', 'Ibu Titin', 'Malang Jawa Timur', 'Sukolilo RT/RW 09/03 Kecamatan Wajak', '2121321841232');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar`
--
ALTER TABLE `daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengambilan`
--
ALTER TABLE `pengambilan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar`
--
ALTER TABLE `daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283502;

--
-- AUTO_INCREMENT for table `penerimaan`
--
ALTER TABLE `penerimaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
