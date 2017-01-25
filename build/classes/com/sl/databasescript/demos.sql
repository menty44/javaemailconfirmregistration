-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 25, 2017 at 07:53 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demos`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo_user`
--

CREATE TABLE `demo_user` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_verification_hash` varchar(245) DEFAULT NULL,
  `email_verification_attempts` int(11) DEFAULT NULL,
  `status` varchar(15) DEFAULT 'new',
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User Table';

--
-- Dumping data for table `demo_user`
--

INSERT INTO `demo_user` (`user_id`, `email`, `first_name`, `last_name`, `email_verification_hash`, `email_verification_attempts`, `status`, `created_time`, `password`) VALUES
(1, 'menty44@gmail.com', 'menty', 'oluoch', NULL, NULL, 'new', '2017-01-24 00:08:11', 'aaaaaa'),
(9, 'fred.oluoch@blaqueyard.com', 'fred', 'oluoch', '$2a$10$DOWSDz/CyKaJ40hslrk5fea3Jj1bclvEEXQdp0RXrvWvJ78HSZiSS', NULL, 'active', '2017-01-25 06:24:12', '$2a$10$DOWSDz/CyKaJ40hslrk5fea7KdmnOjfPMGB0wuSUdUKMgP50xNuxe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo_user`
--
ALTER TABLE `demo_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo_user`
--
ALTER TABLE `demo_user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
