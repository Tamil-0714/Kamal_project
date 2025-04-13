-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2025 at 12:22 PM
-- Server version: 8.0.41-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `optical_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int NOT NULL,
  `bid` varchar(40) NOT NULL,
  `user` varchar(40) NOT NULL,
  `qty` varchar(40) NOT NULL,
  `oprice` varchar(40) NOT NULL,
  `tprice` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `rdate` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `bid`, `user`, `qty`, `oprice`, `tprice`, `status`, `rdate`) VALUES
(1, '1', 'jebin', '2', '1000', '2000', '2', '01-02-2025');

-- --------------------------------------------------------

--
-- Table structure for table `contactlens_book`
--

CREATE TABLE `contactlens_book` (
  `id` int NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_email` varchar(60) NOT NULL,
  `customer_phone` varchar(60) NOT NULL,
  `customer_address` varchar(120) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `power_category` varchar(60) NOT NULL,
  `lcolor` varchar(60) NOT NULL,
  `fvalue` varchar(60) NOT NULL,
  `tvalue` varchar(60) NOT NULL,
  `ousage` varchar(60) NOT NULL,
  `ofile` varchar(60) NOT NULL,
  `create_date` varchar(60) NOT NULL,
  `oprice` varchar(60) NOT NULL,
  `qty` varchar(60) NOT NULL,
  `fprice` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactlens_book`
--

INSERT INTO `contactlens_book` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `brand`, `power_category`, `lcolor`, `fvalue`, `tvalue`, `ousage`, `ofile`, `create_date`, `oprice`, `qty`, `fprice`) VALUES
(1, 'selva', 'jebinp08@gmail.com', '09894918800', 'trichy', 'Alcon', 'Normal', 'Blue', 'No Power', 'No Power', 'normal-life', 'uploads/OIP.jpeg', '18-02-2025', '1000', '1', '1000'),
(2, 'gg', 'konsia2002@gmail.com', '08056705320', 'trichy\r\ntrichy', 'Waldo', 'Power', 'Red', '0.75', '1.75', 'bifocal', 'uploads/OIP.jpeg', '18-02-2025', '1000', '1', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `coolers_book`
--

CREATE TABLE `coolers_book` (
  `id` int NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_email` varchar(60) NOT NULL,
  `customer_phone` varchar(60) NOT NULL,
  `customer_address` varchar(60) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `ousage` varchar(60) NOT NULL,
  `ofile` varchar(60) NOT NULL,
  `create_date` varchar(60) NOT NULL,
  `oprice` varchar(60) NOT NULL,
  `qty` varchar(60) NOT NULL,
  `fprice` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coolers_book`
--

INSERT INTO `coolers_book` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `brand`, `ousage`, `ofile`, `create_date`, `oprice`, `qty`, `fprice`) VALUES
(1, 'jebin', 'jebinp08@gmail.com', '09894918800', 'trichy\r\ntrichy', 'Ray-Ban', 'reading-glass', 'uploads/OIP.jpeg', '18-02-2025', '1000', '1', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_email` varchar(60) NOT NULL,
  `customer_phone` varchar(60) NOT NULL,
  `customer_address` varchar(60) NOT NULL,
  `create_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `create_date`) VALUES
(1, 'Nice ', 'ok@mail.com', '99343143853', 'Trichy', '08-03-2025 12:54:06'),
(2, 'barani', 'barani@gmail.com', '234568765', 'trichy', '10-03-2025 13:19:23'),
(3, 'Kamal', 'Kamal@mail.com', '978437582', 'Trichy', '16-03-2025 20:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `opticals`
--

CREATE TABLE `opticals` (
  `id` int NOT NULL,
  `brand` varchar(40) NOT NULL,
  `power_category` varchar(40) NOT NULL,
  `fvalue` varchar(40) NOT NULL,
  `tvalue` varchar(100) NOT NULL,
  `ousage` varchar(40) NOT NULL,
  `ofile` varchar(200) NOT NULL,
  `create_date` varchar(40) NOT NULL,
  `oprice` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opticals`
--

INSERT INTO `opticals` (`id`, `brand`, `power_category`, `fvalue`, `tvalue`, `ousage`, `ofile`, `create_date`, `oprice`) VALUES
(1, 'Ray-Ban', 'spherical', '-0.25', '2.25', 'normal-life', 'uploads/OIP.jpeg', '01-02-2025', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `opticals_book`
--

CREATE TABLE `opticals_book` (
  `id` int NOT NULL,
  `customer_name` varchar(60) NOT NULL,
  `customer_email` varchar(60) NOT NULL,
  `customer_phone` varchar(60) NOT NULL,
  `customer_address` varchar(200) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `power_category` varchar(60) NOT NULL,
  `fvalue` varchar(60) NOT NULL,
  `tvalue` varchar(60) NOT NULL,
  `ousage` varchar(60) NOT NULL,
  `ofile` varchar(60) NOT NULL,
  `create_date` varchar(60) NOT NULL,
  `oprice` varchar(60) NOT NULL,
  `qty` varchar(60) NOT NULL,
  `fprice` varchar(60) NOT NULL,
  `stock_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opticals_book`
--

INSERT INTO `opticals_book` (`id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `brand`, `power_category`, `fvalue`, `tvalue`, `ousage`, `ofile`, `create_date`, `oprice`, `qty`, `fprice`, `stock_id`) VALUES
(1, 'barani', 'barani@gmail.com', '234568765', 'trichy', 'Ray-Ban', 'spherical', '0', '1', 'normal-life', '', '11-03-2025', '2500', '2', '5000', 1),
(2, 'barani', 'barani@gmail.com', '234568765', 'trichy', 'Ray-Ban', 'spherical', '1', '3', 'single-vision', '', '12-03-2025', '3000', '3', '9000', 2),
(3, 'barani', 'barani@gmail.com', '234568765', 'trichy', 'Ray-Ban', 'spherical', '0', '1', 'normal-life', '', '16-03-2025', '3000', '3', '9000', 1),
(4, 'Kamal', 'Kamal@mail.com', '978437582', 'Trichy', 'Ray-Ban', 'spherical', '0', '-0.25', 'normal-life', '', '16-03-2025', '4000', '3', '12000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int NOT NULL,
  `power_value_from` int NOT NULL,
  `power_value_to` float NOT NULL,
  `power_category` varchar(255) NOT NULL,
  `usuage_type` varchar(255) NOT NULL,
  `stock_count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `power_value_from`, `power_value_to`, `power_category`, `usuage_type`, `stock_count`) VALUES
(1, 0, -0.25, 'spherical', 'normal-life', 7),
(2, 0, -0.5, 'spherical', 'single-vision', 6),
(3, 0, -0.75, 'spherical', 'bifocal', 17),
(4, 0, 1, 'spherical', 'progressive', 7),
(5, 0, -6, 'cylinder', 'reading-glass', 11),
(6, 0, 0.25, 'cylinder', 'blue-light-protection', 9),
(7, 0, 0.5, 'cylinder', 'single-vision', 6),
(8, 0, 0.75, 'cylinder', 'bifocal', 7),
(9, 0, 0.25, 'radius', 'progressive', 0),
(10, 0, -0.5, 'radius', 'reading-glass', 20),
(11, 0, 1, 'radius', 'normal-life', 16),
(12, 0, -1, 'radius', 'blue-light-protection', 11),
(13, 0, -0.75, 'spherical', 'single-vision', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `create_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile`, `email`, `address`, `username`, `password`, `create_date`) VALUES
(1, 'Jebin Prakash', '08056705320', 'konsia2002@gmail.com', 'trichy', 'jebin', 'jebin', '01-02-2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opticals_book`
--
ALTER TABLE `opticals_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `opticals_book`
--
ALTER TABLE `opticals_book`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
