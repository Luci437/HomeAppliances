-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 11:54 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reseller1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `fdate` varchar(50) NOT NULL,
  `tdate` varchar(50) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

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
(16, '2019-04-01', 57, 2, 2, 3200, 1, '2019-04-02', '2019-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`country_id`),
  UNIQUE KEY `country_name` (`country_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `status`) VALUES
(1, 'India', 1),
(2, 'america', 1),
(3, 'germany', 1),
(4, 'France', 1),
(5, 'UAE', 1),
(6, 'UAQ', 1),
(7, 'Africa', 1),
(8, 'Egypt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `mobile_number` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `place_id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `userid`, `first_name`, `last_name`, `mobile_number`, `email`, `place_id`, `username`, `password`, `status`) VALUES
(1, 1, 'Sruthi', 'Dev', '9061251516', 'sruthidevthomas@mca.ajce.in', 1, 'sruthi', '123', 1),
(2, 2, 'Anna', 'Mathew', '8289809240', 'annamathew1@gmail.com', 1, 'anna', '123', 1),
(3, 12, 'Surya', 'Sunder', '9847874808', 'suryasunder@gmail.com', 1, 'surya', '123', 1),
(4, 15, 'Chippy', 'A', '9447564808', 'mailtosree3@gmail.com', 1, 'chippy', '123', 1),
(5, 17, 'Ammu', 'Chandy', '9656897576', 'ammuandrews06@gmail.com', 1, 'ammus', '123', 1),
(6, 23, 'Surya', 'A', '9847874808', 'surya@gmail.com', 1, 'qqq', '123', 0),
(15, 32, 'Sam', 'A', '9847874808', 'sam@gmail.com', 1, 'sam', '123', 1),
(16, 45, 'neha', 'elsa', '9496321963', 'jeswinjames555@gmail.com', 1, 'neha', 'neha', 1);

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE IF NOT EXISTS `debit` (
  `debitid` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `ctype` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `cardno` int(255) NOT NULL,
  `status` int(20) NOT NULL,
  PRIMARY KEY (`debitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`debitid`, `userid`, `ctype`, `bank`, `cardno`, `status`) VALUES
(1, 2, 'debitcard', 'SBI', 1231425369, 1),
(2, 2, 'creditcard', 'canara bank', 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `district_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`district_id`),
  UNIQUE KEY `district_name` (`district_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `state_id`, `district_name`, `status`) VALUES
(1, 1, 'kottayam', 1),
(2, 2, 'coimbatore', 1),
(3, 4, 'Yonkers', 1),
(5, 1, 'Ernakulam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `username`, `password`, `role_id`, `status`) VALUES
(1, 'sruthi', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(2, 'anna', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(3, 'silla', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(4, 'rini', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(5, 'admin', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 1, 1),
(6, 'bainu', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(7, 'linta', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(8, 'muhsina', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 0),
(9, 'thushara', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 0),
(10, 'alfia', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(11, 'anupa', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(12, 'surya', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(14, 'Bhagya', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(15, 'chippy', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(16, 'ammu', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(17, 'ammus', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(19, 'ammuzz', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(20, 'sneha', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(22, 'sur', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(23, 'qqq', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 0),
(25, 'maya', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(27, 'qwerty', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(31, 'qwe', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(32, 'sam', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 3, 1),
(34, 'timin', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(35, 'reshma', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(36, 'err', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(37, 'wer', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(40, 'lll', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(41, 'ser', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(44, 'achu', 'BQ/YpjF+0/kqA8x/XeqSUhW2ww5HuS0yist8X8x3DyM=', 2, 1),
(45, 'neha', '0pCuRzPXgNnFGv6PzxbHIlmwlZSSrkIjPGUOyS3JSGk=', 3, 1),
(46, 'megha', '14KCdpTs34jsoRZaxDgjXzDH9vUAz3C+lmNlLiCwxzs=', 2, 1),
(48, 'appu', 'r40tXLqSv9m/peVnAhDM+o7JSqE0qbz7S04PNk3qTi4=', 2, 1),
(49, 'saru', 'XlQ+zMKdPTGVky3VYtJTYVNi/mg2fDZaquha98za9Rc=', 2, 1),
(51, 'www', 'YVNmXp0kFc35fFNBZ/QybO5Y5VWEoRP88Hbs3C8WDMk=', 2, 1),
(52, 'merilll', 'tI7plp9USHQUItni2aIptzfrqLBpS0BMXZCw+h9Rbow=', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `place_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`place_id`),
  UNIQUE KEY `place_name` (`place_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `description`, `quantity`, `rent`, `image`, `status`, `status1`, `image1`, `image2`, `image3`, `seller_id`, `company`, `size`, `color`) VALUES
(55, 1, 'Smart LED', 'The IPS Panel used by LG is the reason why LG LED TVs have clearer, more consistent, and sturdy screens. Life-like Color: IPS offers a color impression that is most identical to that of the original image. The colors are truly closest to nature and most comfortable for the eyes. Wide Viewing Angle: Among LCD panels, it is visibly clear that IPS shows the most consistent color and contrast from all angles. Free from color wash and contrast loss, it is the ideal panel for all purposes.', 1, 600, 'tv1.jpg', 1, 1, 'tv2.jpg', 'tv3.jpg', 'tv4.jpg', 1, 'Samsung', 'Medium', 'Black'),
(56, 2, 'Cool Freeze', '1 Hour Icing Technology brings down freezer temperature to -5 degree.Haier 195 refrigerator having excellent look and features for this price such as bigger cool pack, 1 hours icing technology, 9 years compressor warranty.... will got cool pack and vitamin C fresheness.', 3, 700, 'fridge1.jpg', 1, 1, 'fridge2.jpg', 'fridge3.jpg', 'fridge4.jpg', 2, 'LG', 'Large', 'Silver'),
(57, 4, 'Fresh Cool', 'comes with variable tonnage, which gives you Faster Cooling and Energy Saving. It also comes with 5 years warranty on inverter compressor. Mitashi Air Conditioners with the unique Turbo Cool Function promise to cool you as soon as you switch on the air conditioner, you will feel like you have been transported to the Himalayas with the touch of a button. As compared to the normal dehumidification modes in other air conditioners, the comfort technology helps prevents overcooling and saves energy.', 4, 800, 'ac1.jpg', 1, 1, 'ac2.jpg', 'ac3.jpg', 'ac4.jpg', 3, 'Hair', 'Large', 'White'),
(58, 3, 'Top Clean', 'comes with wobble technology provides gentle care of fabrics without compromising washing performance. Wobble pulsators generate a dynamic, multi-directional washing flow that prevents tangles and increases washing power. The diamond drum features a unique soft curl design with smooth, diamond-shaped ridges that''s gentle on your clothes. Its small water exit holes also mean fabric is less likely to be trapped and damaged.', 2, 900, 'wm1.jpg', 1, 1, 'wm2.jpg', 'wm3.jpg', 'wm4.jpg', 4, 'Godreg', 'Medium', 'White'),
(59, 1, 'ggggg', 'gttgtgtgt', 5, 200, 'Screenshot (49).png', 1, 1, 'Screenshot (49).png', 'Screenshot (51).png', 'Screenshot (52).png', 5, 'whirlpool', 'large', 'yellow'),
(60, 1, 'ggggg', 'gttgtgtgt', 5, 200, 'Screenshot (49).png', 0, 0, 'Screenshot (49).png', 'Screenshot (51).png', 'Screenshot (52).png', 5, 'whirlpool', 'large', 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE IF NOT EXISTS `receipt` (
  `rid` int(50) NOT NULL AUTO_INCREMENT,
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
  `tdate` varchar(50) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`rid`, `date`, `userid`, `product_id`, `seller_id`, `quantity`, `company`, `size`, `color`, `price`, `fdate`, `tdate`) VALUES
(3, '2018-11-20', 2, 56, 2, 1, 'LG', 'Large', 'Silver', 45000, '2018-11-20', '2018-11-22'),
(4, '2019-04-01', 45, 55, 1, 1, 'Samsung', 'Medium', 'Black', 600, '2019-02-01', '2019-02-02'),
(5, '2019-04-01', 45, 55, 1, 1, 'Samsung', 'Medium', 'Black', 600, '2019-01-01', '2019-02-01'),
(6, '2019-04-02', 2, 57, 3, 2, 'Hair', 'Large', 'White', 3200, '2019-04-02', '2019-04-04');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

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

CREATE TABLE IF NOT EXISTS `seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) NOT NULL,
  PRIMARY KEY (`seller_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `gst_no` (`gst_no`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `userid`, `first_name`, `last_name`, `store_name`, `mobile_number`, `email`, `place_id`, `gst_no`, `username`, `password`, `lat`, `lon`, `status`) VALUES
(1, 3, 'Silla', 'Mol', 'Foster', '9744191663', 'sillamoljohn@mca.ajce.in', 1, '9347655678', 'silla', '123', '9.556527', '76.790380', 1),
(2, 4, 'Rini', 'Kurian', 'PepperMint', '9207570099', 'rini@gmail.com', 2, '87349956', 'rini', '123', '9.596319', '76.585525', 1),
(3, 6, 'Bainu', 'Nushiya', 'Z-Store', '9526665268', 'bainu@gmail.com', 1, '859745652', 'bainu', '123', '9.447070', '76.539478', 1),
(4, 7, 'Linta', 'Maria', 'L-Mobile', '9495557559', 'linta@gmail.com', 1, '866957', 'linta', '123', '9.556527', '76.790380', 1),
(7, 44, 'achu', 'jos', 'achuz', '8215809241', 'achu@gmail.com', 1, '123448', 'achu', 'achu', '9.968301', '76.355389', 1),
(14, 52, 'meril', 'johny', 'mmr', '9045862302', 'meriljohny20@gmail.com', 4, '866959', 'merilll', 'meril', '9.966771', ' 76.316812', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(65) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_name` (`state_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state_name`, `status`) VALUES
(1, 1, 'kerala', 1),
(2, 1, 'Tamil Nadu', 1),
(3, 1, 'karnataka', 1),
(4, 2, 'NewYork', 1),
(5, 1, 'Banglore', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `seller_id`, `quantity`, `status`) VALUES
(1, 55, 1, 1, 1),
(2, 56, 2, 3, 1),
(3, 57, 3, 4, 1),
(4, 58, 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `total` int(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wid`, `userid`, `product_id`, `count`, `total`, `status`) VALUES
(2, 2, 56, 1, 0, 0),
(12, 2, 57, 1, 0, 0),
(13, 2, 56, 1, 0, 0),
(14, 2, 58, 1, 0, 0),
(18, 2, 55, 1, 30000, 1),
(19, 2, 58, 1, 900, 0),
(20, 45, 55, 1, 600, 0),
(21, 45, 55, 1, 600, 0),
(23, 2, 57, 2, 1600, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
