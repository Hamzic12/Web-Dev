-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database
-- Generation Time: May 26, 2024 at 01:11 AM
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
-- Table structure for table `PrF`
--

CREATE TABLE `PrF` (
  `Jmeno` text NOT NULL,
  `Prijmeni` text NOT NULL,
  `StId` int NOT NULL,
  `Forma` text NOT NULL,
  `Tel.Cislo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PrF`
--

INSERT INTO `PrF` (`Jmeno`, `Prijmeni`, `StId`, `Forma`, `Tel.Cislo`) VALUES
('Hamza', 'Nussir', 1237891, 'prezencni', '775224336'),
('Hamza', 'Nussir', 1237891, 'prezencni', '775224336');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
