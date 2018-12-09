-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2018 at 05:22 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emeeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_master_t`
--

CREATE TABLE `user_master_t` (
  `id` int(5) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `umobile` varchar(10) NOT NULL,
  `ucity` varchar(20) NOT NULL,
  `upassword` varchar(20) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master_t`
--

INSERT INTO `user_master_t` (`id`, `uname`, `uemail`, `umobile`, `ucity`, `upassword`, `createdDate`) VALUES
(6, 'Alkesh', 'alkesh@gmail.com', '9702741255', 'Mumbai', 'alkesh', '2018-12-08 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_master_t`
--
ALTER TABLE `user_master_t`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `uemail` (`uemail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_master_t`
--
ALTER TABLE `user_master_t`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
