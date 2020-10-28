-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2020 at 06:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reseller`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `status`) VALUES
(1, 'anaconda', 'bcf3ec2503663c18fc3f693b73aac49600d577bf27959ffe2758afe943c79e87', 1),
(2, 'ccc', '0aa3c90ae4d73556cdf189f6186bba9f7b2c953c9368a1671b28812b3746a27b', 1),
(3, 'fsgf', 'b2d991978dc70fcbe427cb4ad8c38a93d305b182f9ddc7316ad83465b9709db8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `fdate` varchar(50) NOT NULL,
  `tdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `date`, `product_id`, `userid`, `quantity`, `amount`, `status`, `fdate`, `tdate`) VALUES
(8, '2018-11-17', 56, 2, 1, 45000, 1, '2018-11-20', '2018-11-22'),
(9, '2018-11-18', 56, 2, 1, 45000, 0, '2018-11-25', '2018-11-26'),
(10, '2018-11-20', 56, 2, 1, 45000, 0, '2018-11-26', '2018-11-28'),
(11, '2019-01-10', 57, 2, 1, 35000, 0, '2019-01-10', '2019-01-12'),
(12, '2019-01-10', 58, 2, 1, 45000, 0, '2019-01-13', '2019-01-18'),
(13, '2019-01-12', 58, 2, 1, 900, 0, '2019-01-18', '2019-01-20'),
(14, '2019-04-01', 55, 45, 1, 600, 1, '2019-02-01', '2019-02-02'),
(15, '2019-04-01', 55, 45, 1, 600, 1, '2019-01-01', '2019-02-01'),
(16, '2019-04-01', 57, 2, 2, 3200, 1, '2019-04-02', '2019-04-04'),
(17, '2020-09-17', 55, 2, 1, 390000, 0, '2020-09-17', '2020-09-30'),
(18, '2020-09-17', 56, 2, 2, 2800, 0, '2020-09-24', '2020-09-26'),
(19, '2020-10-14', 57, 4, 2, 24000, 0, '2020-10-16', '2020-10-31'),
(20, '2020-10-14', 61, 2, 1, 5000, 1, '2020-10-14', '2020-10-24'),
(21, '2020-10-25', 1, 2, 3, 3600, 1, '2020-10-26', '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `status`) VALUES
(1, 'Tv', 1),
(2, 'Fridge', 1),
(3, 'Washing Machine', 1),
(4, 'Air Conditioner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `status`) VALUES
(1, 'INDIA', 1),
(2, 'JAPAN', 1),
(3, 'CANADA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `mobile_number` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `place_id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `userid`, `first_name`, `last_name`, `mobile_number`, `email`, `place_id`, `username`, `password`, `status`) VALUES
(1, 2, 'sachin', 'geo', '9495574128', 'sachin@gmail.com', 3, 'sachin', 'sachin', 1),
(2, 9, 'reniz', 'nazar', '8558236442', 'reniz@gmail.com', 3, 'reniz', 'reniz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `debitid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `ctype` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `cardno` int(255) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`debitid`, `userid`, `ctype`, `bank`, `cardno`, `status`) VALUES
(1, 2, 'debitcard', 'SBI', 1231425369, 1),
(2, 2, 'creditcard', 'canara bank', 2147483647, 1),
(3, 2, 'debitcard', 'SBI', 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `district_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `state_id`, `district_name`, `status`) VALUES
(1, 1, 'KOTTAYAM', 1),
(2, 1, 'IDUKKI', 1),
(3, 1, 'KOLLAM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `role_id`, `status`) VALUES
(1, 'admin', 'admin', 1, 1),
(2, 'sachin', 'sachin', 3, 1),
(3, 'don', 'don', 2, 1),
(4, 'hanna', 'hanna', 3, 1),
(5, 'jeswin', 'jeswin', 2, 1),
(6, 'kama', 'kamal', 2, 1),
(7, 'aby', 'aby', 2, 1),
(9, 'reniz', 'reniz', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `place_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `district_id`, `place_name`, `status`) VALUES
(1, 1, 'pala', 1),
(2, 1, 'kuruppunthara', 1),
(3, 2, 'narasipuram', 1),
(4, 5, 'Vyttila', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(65) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `status1` int(10) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `description`, `quantity`, `rent`, `image`, `status`, `status1`, `image1`, `image2`, `image3`, `seller_id`, `company`, `size`, `color`) VALUES
(1, 1, 'gl553', 'this got the award for the best selling television in the year 2020', -3, 300, 'tv1.jpg', 1, 1, 'tv1.jpg', 'tv1.jpg', 'tv1.jpg', 2, 'LG', 'LARGE', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `rid` int(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `userid` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `seller_id` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `fdate` varchar(50) NOT NULL,
  `tdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`rid`, `date`, `userid`, `product_id`, `seller_id`, `quantity`, `company`, `size`, `color`, `price`, `fdate`, `tdate`) VALUES
(3, '2018-11-20', 2, 56, 2, 1, 'LG', 'Large', 'Silver', 45000, '2018-11-20', '2018-11-22'),
(4, '2019-04-01', 45, 55, 1, 1, 'Samsung', 'Medium', 'Black', 600, '2019-02-01', '2019-02-02'),
(5, '2019-04-01', 45, 55, 1, 1, 'Samsung', 'Medium', 'Black', 600, '2019-01-01', '2019-02-01'),
(6, '2019-04-02', 2, 57, 3, 2, 'Hair', 'Large', 'White', 3200, '2019-04-02', '2019-04-04'),
(7, '2020-10-14', 2, 61, 16, 1, 'onida', 'medium', 'red', 5000, '2020-10-14', '2020-10-24'),
(8, '2020-10-25', 2, 1, 2, 3, 'LG', 'LARGE', 'red', 3600, '2020-10-26', '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `status`) VALUES
(1, 'admin', 1),
(2, 'seller', 1),
(3, 'buyer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `store_name` varchar(65) NOT NULL,
  `mobile_number` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `place_id` int(11) NOT NULL,
  `gst_no` varchar(65) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lon` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `userid`, `first_name`, `last_name`, `store_name`, `mobile_number`, `email`, `place_id`, `gst_no`, `username`, `password`, `lat`, `lon`, `status`) VALUES
(1, 6, 'Kamal', 'EJ', 'Lucistore', '949568248', 'luci@gmail.com', 2, '775544', 'kamal', 'kamal', '9.591441', '76.522171', 1),
(2, 7, 'Aby', 'Thomas', 'oxygen', '8854632158', 'aby@gmail.com', 1, '666546', 'aby', 'aby', '9.708380', '76.684914', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state_name`, `status`) VALUES
(1, 1, 'KERALA', 1),
(2, 1, 'DELHI', 1),
(3, 1, 'MUMBAI', 1),
(5, -1, 'BANGALORE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `seller_id`, `quantity`, `status`) VALUES
(1, 55, 1, 0, 1),
(2, 56, 2, 1, 1),
(3, 57, 3, 2, 1),
(4, 58, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `total` int(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wid`, `userid`, `product_id`, `count`, `total`, `status`) VALUES
(2, 2, 56, 1, 0, 0),
(12, 2, 57, 1, 0, 0),
(13, 2, 56, 1, 0, 0),
(14, 2, 58, 1, 0, 0),
(18, 2, 55, 1, 30000, 0),
(19, 2, 58, 1, 900, 0),
(20, 45, 55, 1, 600, 0),
(21, 45, 55, 1, 600, 0),
(23, 2, 57, 2, 1600, 0),
(24, 2, 56, 2, 1400, 0),
(25, 4, 57, 2, 1600, 0),
(26, 4, 59, 1, 200, 1),
(27, 2, 61, 1, 500, 0),
(28, 2, 1, 3, 900, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`debitid`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`),
  ADD UNIQUE KEY `district_name` (`district_name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `gst_no` (`gst_no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `state_name` (`state_name`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `debitid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `rid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
