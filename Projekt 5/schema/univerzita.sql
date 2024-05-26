-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: May 26, 2024 at 02:24 PM
-- Server version: 8.4.0
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `univerzita`
--

-- --------------------------------------------------------

--
-- Table structure for table `Katedra`
--

CREATE TABLE `Katedra` (
  `id` int UNSIGNED NOT NULL,
  `id_fakulty` int UNSIGNED DEFAULT NULL,
  `nazev` varchar(50) DEFAULT NULL,
  `zkratka katedry` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Katedra`
--

INSERT INTO `Katedra` (`id`, `id_fakulty`, `nazev`, `zkratka katedry`) VALUES
(1, 1, 'Informatika', ''),
(2, 2, 'Matematika', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Katedra`
--
ALTER TABLE `Katedra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fakulty` (`id_fakulty`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Katedra`
--
ALTER TABLE `Katedra`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Katedra`
--
ALTER TABLE `Katedra`
  ADD CONSTRAINT `katedra_ibfk_1` FOREIGN KEY (`id_fakulty`) REFERENCES `Fakulta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
