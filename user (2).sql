-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 10:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants_form`
--

CREATE TABLE `applicants_form` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` int(250) NOT NULL,
  `date_birth` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `father` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` int(50) NOT NULL,
  `date_birth` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `father` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `name`, `mobile`, `date_birth`, `address`, `father`, `district`, `gender`, `state`) VALUES
(23, 'Arifur rahaman', 0, '1992-07-02', 'lujymun@mailinator.com', 'cyjy@mailinator.com', 'bepyj@mailinator.com', 'gender', 'state'),
(24, 'Marufa Aktar', 0, '1985-01-14', 'xaratygur@mailinator.com', 'cuxyme@mailinator.com', 'nyzuxopy@mailinator.com', 'gender', 'state');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'jack', 'jacky@fountainit.com.bd', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'facufobavo', 'jaducy@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3'),
(3, 'jack', 'ukhaimi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'siflu', 'siflu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'jycapo', 'koholenes@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants_form`
--
ALTER TABLE `applicants_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants_form`
--
ALTER TABLE `applicants_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
