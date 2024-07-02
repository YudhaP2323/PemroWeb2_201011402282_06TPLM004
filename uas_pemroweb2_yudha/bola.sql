-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 08:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bola`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL DEFAULT 0,
  `country_name` varchar(50) DEFAULT NULL,
  `group_id` char(1) DEFAULT NULL,
  `wins` int(11) DEFAULT 0,
  `draws` int(11) DEFAULT 0,
  `losses` int(11) DEFAULT 0,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `group_id`, `wins`, `draws`, `losses`, `points`) VALUES
(1, 'Inggris', '3', 1, 2, 0, 5),
(2, 'Denmark', '3', 1, 0, 2, 3),
(3, 'Slovenia', '3', 1, 0, 2, 3),
(4, 'Serbia', '3', 0, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` char(1) NOT NULL,
  `group_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`) VALUES
('A', 'Group A'),
('B', 'Group B'),
('C', 'Group C'),
('D', 'Group D');

-- --------------------------------------------------------

--
-- Table structure for table `klasemen_uefa`
--

CREATE TABLE `klasemen_uefa` (
  `id` int(11) NOT NULL DEFAULT 0,
  `nama_group` varchar(10) NOT NULL,
  `nama_negara` varchar(100) NOT NULL,
  `jumlah_menang` int(11) NOT NULL,
  `jumlah_seri` int(11) NOT NULL,
  `jumlah_kalah` int(11) NOT NULL,
  `jumlah_poin` int(11) NOT NULL,
  `nama_operator` varchar(100) NOT NULL,
  `nim_mahasiswa` varchar(50) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klasemen_uefa`
--

INSERT INTO `klasemen_uefa` (`id`, `nama_group`, `nama_negara`, `jumlah_menang`, `jumlah_seri`, `jumlah_kalah`, `jumlah_poin`, `nama_operator`, `nim_mahasiswa`, `tanggal_input`) VALUES
(7, 'A', 'Jerman', 1, 1, 0, 4, 'Yudha Putra Hernanda', '201011402282', '2024-07-02 17:24:11'),
(8, 'A', 'Swiss', 1, 2, 0, 5, 'Yudha Putra Hernanda', '201011402282', '2024-07-02 17:25:17'),
(0, 'A', 'Skotlandia', 1, 0, 2, 3, 'Yudha Putra Hernanda', '201011402282', '2024-07-02 17:42:44'),
(0, 'A', 'Hongaria', 0, 1, 2, 1, 'Yudha Putra Hernanda', '201011402282', '2024-07-02 17:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL DEFAULT 0,
  `nim` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nim`, `password`) VALUES
(1, '201011401432', 'dinda123'),
(0, '201011402282', 'yudha2323');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
