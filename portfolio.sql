-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 05:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_tbl`
--

CREATE TABLE `contact_tbl` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_tbl`
--

INSERT INTO `contact_tbl` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Priyanshi ', 'pandyapriyanshi16@gmail.com', 'greetings', 'Hello World!!'),
(7, 'Piyu', 'pandyapriyanshi16@gmail.com', 'BirthDay', 'Everyone is invited to come in the party'),
(8, 'sneha', 'sneha256@gmail.com', 'BirthDay', 'Everyone is invited in the party.'),
(9, 'disha', 'pandyapriyanshi16@gmail.com', 'Anniversary', 'Hello There!! You are invited!'),
(14, 'disha', 'pandyapriyanshi16@gmail.com', 'Anniversary', 'Hello There!! You are invited!'),
(15, 'disha', 'pandyapriyanshi16@gmail.com', 'Anniversary', 'Hello There!! You are invited!'),
(17, 'PRIYANSHI RAJESHKUMAR PANDYA', 'pandyapriyanshi16@gmail.com', 'dhtymuymd', 'rfg h y,yrkre');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
