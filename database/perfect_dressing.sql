-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2019 at 09:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfect_dressing`
--

-- --------------------------------------------------------

--
-- Table structure for table `dress_brands`
--

CREATE TABLE `dress_brands` (
  `brands_Id` int(100) NOT NULL,
  `brands_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dress_brands`
--

INSERT INTO `dress_brands` (`brands_Id`, `brands_title`) VALUES
(1, 'Levi\'s'),
(2, 'Nike'),
(3, 'Zara Noor'),
(4, 'Outfitter'),
(5, 'Ultra-club'),
(6, 'Tommy Hilfiger'),
(7, 'Corbani'),
(8, 'Fox\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `dress_categories`
--

CREATE TABLE `dress_categories` (
  `cat_Id` int(50) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dress_categories`
--

INSERT INTO `dress_categories` (`cat_Id`, `cat_title`) VALUES
(1, 'T-Shirt'),
(2, 'Dress pent'),
(3, 'Sweater'),
(4, 'Jacket'),
(5, 'Jeans'),
(6, 'Pent Coat'),
(7, 'Shirt'),
(8, ''),
(9, 'Hoodies');

-- --------------------------------------------------------

--
-- Table structure for table `dress_product`
--

CREATE TABLE `dress_product` (
  `dress_Id` int(255) NOT NULL,
  `dress_cat` int(50) NOT NULL,
  `dress_brand` int(25) NOT NULL,
  `dress_price` int(50) NOT NULL,
  `dress_image` varchar(200) NOT NULL,
  `dress_keyword` varchar(300) NOT NULL,
  `dress_title` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dress_product`
--

INSERT INTO `dress_product` (`dress_Id`, `dress_cat`, `dress_brand`, `dress_price`, `dress_image`, `dress_keyword`, `dress_title`) VALUES
(31, 7, 6, 2500, 'luxury.jpg', 'pent jeans luxury', 'luxury jean'),
(32, 7, 1, 1500, 'levis.jpg', 'shirt levis', 'Levi Shirt'),
(33, 7, 4, 2200, 'denim shirt.jpg', 'denim ', 'Denim Shirt'),
(34, 7, 5, 1000, 'shirt.jpg', 'simple', 'Simple Shirt'),
(35, 7, 4, 1500, 'des.jpg', 'style cool', 'Style Shirt'),
(36, 4, 7, 9000, 'jacket.jpg', 'jacket', 'Men Jacket'),
(37, 4, 7, 15000, 'cor.jpg', 'woman jacket ', 'Women Jacket'),
(38, 4, 7, 6000, 'women.jpg', 'Jacket', 'Simple jacket Ladies'),
(39, 4, 8, 20000, 'moto.jpg', 'Moto Bike', 'Motorbike jacket '),
(40, 9, 2, 1700, 'hood.jpg', 'Hoodie ', 'Men Hoodie'),
(41, 9, 2, 3300, 'girl.jpg', 'Girls Hoodies', 'Girl Hoodie'),
(42, 5, 6, 6000, 'gJeans.jpg', 'Girl Jeans', 'Girl Jeans'),
(43, 1, 6, 800, 't.jpeg', 'T Shirt', 'Men T Shirt');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `L_id` int(255) NOT NULL,
  `L_email` varchar(300) NOT NULL,
  `L_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`L_id`, `L_email`, `L_password`) VALUES
(1, 'za97544@gmail.com', 'Ali12345');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `U_id` int(255) NOT NULL,
  `Uname` varchar(50) NOT NULL,
  `Uemail` varchar(50) NOT NULL,
  `Upass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`U_id`, `Uname`, `Uemail`, `Upass`) VALUES
(2, 'Zain Ali', 'za97544@gmail.com', 'Ali12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dress_brands`
--
ALTER TABLE `dress_brands`
  ADD PRIMARY KEY (`brands_Id`);

--
-- Indexes for table `dress_categories`
--
ALTER TABLE `dress_categories`
  ADD PRIMARY KEY (`cat_Id`);

--
-- Indexes for table `dress_product`
--
ALTER TABLE `dress_product`
  ADD PRIMARY KEY (`dress_Id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`L_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`U_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dress_brands`
--
ALTER TABLE `dress_brands`
  MODIFY `brands_Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dress_categories`
--
ALTER TABLE `dress_categories`
  MODIFY `cat_Id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dress_product`
--
ALTER TABLE `dress_product`
  MODIFY `dress_Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `L_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `U_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
