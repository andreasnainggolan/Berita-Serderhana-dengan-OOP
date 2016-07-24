-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2016 at 10:01 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `navbar_title`
--

CREATE TABLE `navbar_title` (
  `id_navbar` tinyint(4) NOT NULL DEFAULT '1',
  `navbar_header` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navbar_title`
--

INSERT INTO `navbar_title` (`id_navbar`, `navbar_header`) VALUES
(1, 'BlogKu');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `judul_berita` varchar(50) NOT NULL,
  `news` text NOT NULL,
  `date` datetime NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `judul_berita`, `news`, `date`, `author`) VALUES
(1, 'Mayat Tewas', 'Sesosok mayat tewas meninggal di tabrak oleh bus yang melintas di daerah banyak mayat di dekat kuburan', '2016-07-24 09:24:33', 'andreas'),
(2, 'Demam Pokemon Go di Seluruh Du', 'Pokemon GO sedang mendunia di mana saja dan kapan saja hanya saja kita saja di saja kan', '2016-07-24 09:47:15', 'andreas');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `alamat`, `role`) VALUES
(12, 'andreas', '$2y$10$m8s.mk/ro11SrxUTztNBlesefWG0gmc9VFmKVr35V.P/lEkQ//Keu', 'Andreas Putra Wijaya', 'Jalan Tangkul No.112-A', 1),
(13, 'wijaya', '$2y$10$Rzs9zEx4B8.EHiTv1wOc0uNOqIVrQD1eUJKXNvda5vnl2A9ZShZDC', 'Wijaya Michael', 'Jalan Pelita 4 Medan', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
