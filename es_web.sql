-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 05:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `es_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `kd_gejala` int(100) NOT NULL,
  `no` varchar(100) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`kd_gejala`, `no`, `nama_gejala`) VALUES
(1, 'G1', 'Sulit Tidur'),
(2, 'G2', 'Mendengar Suara Aneh'),
(3, 'G3', 'Sering/Mudah Menangis'),
(4, 'G4', 'Kehilangan Minat untuk Melakukan Aktivitas'),
(5, 'G5', 'Emosi Menjadi Datar'),
(6, 'G6', 'Ingatan Terganggu'),
(7, 'G7', 'Menjauhdari Lingkungan Sosial'),
(8, 'G8', 'Pikiran dan Berbicara Kacau'),
(9, 'G9', 'Rasa Takut dan Khawatir Berlebihan'),
(10, 'G10', 'Mimpi Buruk'),
(11, 'G11', 'Sering Merasa Sedih'),
(12, 'G12', 'Mempercayai Sesuatu yang Tidak Nyata'),
(13, 'G13', 'Sulit Mengendalikan Emosi'),
(14, 'G14', 'Diliputi Perasaan Bersalah Berlebihan'),
(15, 'G15', 'Perasaan Bermusuhan'),
(16, 'G16', 'Menghindari Sebuah Tempat/Objek'),
(17, 'G17', 'Kehilangan Motivasi'),
(18, 'G18', 'Sering Cemas'),
(19, 'G19', 'Moody'),
(20, 'G20', 'Perasaan Putus Asa'),
(21, 'G21', 'Kurangnya Daya Ingat'),
(22, 'G22', 'Bicara Terlalu Cepat'),
(23, 'G23', 'Gangguan Pernafasan'),
(24, 'G24', 'Gerakan Tubuh dan Pikiran Yang Lambat'),
(25, 'G25', 'Mudah Tersinggung'),
(26, 'G26', 'Halusinasi'),
(27, 'G27', 'Kebingungan'),
(28, 'G28', 'Berbicara Sendiri Saat Tidur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interpretasi_cf`
--

CREATE TABLE `tbl_interpretasi_cf` (
  `Kd_Certainty_Term` int(100) NOT NULL,
  `no` varchar(100) NOT NULL,
  `Certainty_Term` varchar(100) NOT NULL,
  `CF_Akhir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_interpretasi_cf`
--

INSERT INTO `tbl_interpretasi_cf` (`Kd_Certainty_Term`, `no`, `Certainty_Term`, `CF_Akhir`) VALUES
(1, '1', 'Pasti Tidak', '-1.0'),
(2, '2', 'Hampir Pasti Tidak', '-0.8'),
(3, '3', 'Kemungkinan Besar Tidak', '-0.6'),
(4, '4', 'Mungkin Tidak', '-0.4'),
(5, '5', 'Tidak Tahu/Tidak Yakin', '-0.2 s/d 0.2'),
(6, '6', 'Mungkin', '0.4'),
(7, '7', 'Kemungkinan Besar', '0.6'),
(8, '8', 'Hampir Pasti', '0.8'),
(9, '9', 'Pasti', '1.0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_kepastian`
--

CREATE TABLE `tbl_nilai_kepastian` (
  `kd_nilai_kepastian` int(100) NOT NULL,
  `no` varchar(100) NOT NULL,
  `Keterangan` varchar(100) NOT NULL,
  `Nilai_kepastian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nilai_kepastian`
--

INSERT INTO `tbl_nilai_kepastian` (`kd_nilai_kepastian`, `no`, `Keterangan`, `Nilai_kepastian`) VALUES
(1, '1', 'Sangat Yakin', '1.0'),
(2, '2', 'Yakin', '0.8'),
(3, '3', 'Cukup Yakin', '0.6'),
(4, '4', 'Kurang Yakin', '0.4'),
(5, '5', 'Tidak Yakin', '0.2'),
(6, '6', 'Tidak', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_kepastian_pakar`
--

CREATE TABLE `tbl_nilai_kepastian_pakar` (
  `no` int(100) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `nilaicf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nilai_kepastian_pakar`
--

INSERT INTO `tbl_nilai_kepastian_pakar` (`no`, `nama_gejala`, `nilaicf`) VALUES
(1, 'Sulit Tidur', '1.0'),
(2, 'Mendengar Suara Aneh', '0.2'),
(3, 'Sering/Mudah Menangis', '0.4'),
(4, 'Kehilangan Minat untuk Melakukan Aktivitas', '0.6'),
(5, 'Emosi Menjadi Datar', '0.4'),
(6, 'Ingatan Terganggu', '0.8'),
(7, 'Menjauh dari Lingkungan Sosial', '1.0'),
(8, 'Pikiran dan Berbicara Kacau', '0.4'),
(9, 'Rasa Takut dan Khawatir Berlebihan', '0.8'),
(10, 'Mimpi Buruk', '0.2'),
(11, 'Sering Merasa Sedih', '0.4'),
(12, 'Mempercayai Sesuatu Yang Tidak Nyata', '0.2'),
(13, 'Sulit Mengendalikan Emosi', '0.8'),
(14, 'Diliputi Perasaan Bersalah Berlebihan', '0.6'),
(15, 'Perasaan Bermusuhan', '0.4'),
(16, 'Menghindari Sebuah Tempat/Objek', '0.4'),
(17, 'Kehilangan Motivasi', '1.0'),
(18, 'Sering Cemas', '1.0'),
(19, 'Moody', '0.6'),
(20, 'Perasaan Putus Asa', '0.6'),
(21, 'Kurangya Daya Ingat', '0.2'),
(22, 'Bicara Terlalu Cepat', '0.2'),
(23, 'Gangguan Pernafasan', '0.2'),
(24, 'Gerakan Tubuh dan Pikiran Yang Lambat', '0.2'),
(25, 'Mudah Tersinggung', '0.8'),
(26, 'Halusinasi', '1.0'),
(27, 'Kebingungan', '1.0'),
(28, 'Berbicara Sendiri Saat Tidur', '0.4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `kd_penyakit` int(100) NOT NULL,
  `no` varchar(100) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`kd_penyakit`, `no`, `nama_penyakit`) VALUES
(1, 'P1', 'Skizofrenia'),
(2, 'P2', 'Post Traumatic Stress Disorder(PTSD) '),
(3, 'P3', 'Depresi'),
(4, 'P4', 'Bipolar'),
(5, 'P5', 'Paranoid'),
(6, 'P6', 'Alzheimer'),
(7, 'P7', 'Paransomnia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rule`
--

CREATE TABLE `tbl_rule` (
  `kd_rule` int(100) NOT NULL,
  `gejala` varchar(1000) NOT NULL,
  `penyakit` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rule`
--

INSERT INTO `tbl_rule` (`kd_rule`, `gejala`, `penyakit`) VALUES
(1, 'sulit tidur & mendengar suara aneh & emosi menjadi datar & menjauh dari lingkungan sosial & pikiran berbicara kacau & mempercayai sesuatu yang tidak nyata', 'skizofrenia'),
(2, 'sulit tidur & kehilangan minat untuk melakukan aktivitas & ingatan terganggu & rasa takut dan khawatir berlebihan & mimpi buruk ', 'post traumatic stress disorder (PTSD)'),
(3, 'sulit tidur & kehilangan minat untuk melakukan aktivitas & sering merasa sedih & diliputi perasaan bersalah berlebihan & menghindari sebuah tempat atau objek & perasaan putus asa', 'depresi'),
(4, 'sering atau mudah menangis & mempercayai sesuatu yang tidak nyata & diliputi perasaan bersalah berlebihan & kehilangan motivasi & moody & kurangnya daya ingat & bicara terlalu cepat ', 'bipolar'),
(5, 'menjauh dari lingkungan sosial & rasa takut dan khawatir berlebihan & perasaan bermusuhan & sering cemas & gangguan pernafasan & gerakan tubuh dan pikiran yang lambat ', 'paranoid'),
(6, 'sulit tidur & ingatan terganggu & menjauh dari lingkungan sosial & gerakan tubuh dan pikiran yang lambat & mudah tersinggung', 'alzaimer'),
(7, 'Sering cemas & gangguan pernafasan & gerakan tubuhdan pikiran yang lambat & halusinasi & kebingungan & berbicara sendiri saat tidur ', 'paransomnia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `kd_user` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `umur` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`kd_user`, `nim`, `nama_mahasiswa`, `umur`, `jenis_kelamin`, `email`, `password`) VALUES
(1, '211111', 'Nama Mahasiswa', '22', 'Laki-Laki', 'Mahasiswa@gmail.com', '$2y$10$CahwLMUQy9bBKASSEmDv4./HxUMS2SIyS6F.5I0Ifz41qSLPMFVNi'),
(2, '211112', 'Moch Rizal Herdiansyah', '23', 'Laki-Laki', 'rizal@gmail.com', '$2y$10$FB2sHZlVXYqhUI4WRkF5G.QKKnwD6AcPe4i0HsbxOmkhOV2k92BGy'),
(3, '211113', 'Ujang Harahap', '22', 'Laki-Laki', 'ujang@gmail.com', '$2y$10$wrL6vlG2NDQXLQ1GszswXuG/ROIncoc/Rc.OkYf.lVNXyy.YSXCpe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`kd_gejala`);

--
-- Indexes for table `tbl_interpretasi_cf`
--
ALTER TABLE `tbl_interpretasi_cf`
  ADD PRIMARY KEY (`Kd_Certainty_Term`);

--
-- Indexes for table `tbl_nilai_kepastian`
--
ALTER TABLE `tbl_nilai_kepastian`
  ADD PRIMARY KEY (`kd_nilai_kepastian`);

--
-- Indexes for table `tbl_nilai_kepastian_pakar`
--
ALTER TABLE `tbl_nilai_kepastian_pakar`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`kd_penyakit`);

--
-- Indexes for table `tbl_rule`
--
ALTER TABLE `tbl_rule`
  ADD PRIMARY KEY (`kd_rule`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`kd_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `kd_gejala` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_interpretasi_cf`
--
ALTER TABLE `tbl_interpretasi_cf`
  MODIFY `Kd_Certainty_Term` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_nilai_kepastian`
--
ALTER TABLE `tbl_nilai_kepastian`
  MODIFY `kd_nilai_kepastian` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_nilai_kepastian_pakar`
--
ALTER TABLE `tbl_nilai_kepastian_pakar`
  MODIFY `no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  MODIFY `kd_penyakit` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_rule`
--
ALTER TABLE `tbl_rule`
  MODIFY `kd_rule` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `kd_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
