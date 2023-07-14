-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 12:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `0434_db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET latin1 NOT NULL,
  `genre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `image` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `resume` text CHARACTER SET latin1 DEFAULT NULL,
  `rating` float NOT NULL,
  `length` int(11) NOT NULL,
  `premiere` date DEFAULT NULL,
  `directors` varchar(50) CHARACTER SET latin1 NOT NULL,
  `writers` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `stars` varchar(50) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `genre`, `image`, `resume`, `rating`, `length`, `premiere`, `directors`, `writers`, `stars`) VALUES
(1, 'Ajisaka: The King and The Flower of Life', 'Animation, Action, Comedy', '1-big.jpg', 'A sacred kid fulfills an old prophecy by fighting against an immortal evil king who rules the world by absorbing magic flowers energy.', 80, 98, '2021-01-13', 'Aryanto Yuniawan', 'M. Suyanto', '-'),
(2, 'November 10th, Battle of Surabaya', 'Animation, Action, Adventure', '2-big.jpg', 'Musa, a thirteen-year-old shoe shiner, with Yumna, undergoes destiny through their adventure of waging war during the war time. Will they manage to bring peace among the troops keeping on fighting for nothing?', 72, 100, '2015-08-20', 'Aryanto Yuniawan', 'M. Suyanto (Story), Aryanto Yuniawan (Screenplay)', 'Reza Rahadian, Maudy Ayunda'),
(3, 'Petualangan Abdan', 'Animation, Drama', '', 'Perjuangan seorang anak mencari kebenaran akan kedua orang tuanya', 77, 74, NULL, 'M. Suyanto', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
