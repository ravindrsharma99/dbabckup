-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2018 at 05:33 PM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testAudition_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_availability`
--

CREATE TABLE IF NOT EXISTS `tbl_availability` (
  `availability_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `hour_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`availability_id`),
  KEY `hour_id` (`hour_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_availability`
--

INSERT INTO `tbl_availability` (`availability_id`, `date`, `hour_id`, `date_created`) VALUES
(1, '2018-03-14', 1, '2018-03-14 06:34:12'),
(2, '2018-03-14', 2, '2018-03-14 06:34:21'),
(3, '2018-03-15', 2, '2018-03-14 06:34:31'),
(4, '2018-03-14', 9, '2018-03-15 11:17:12'),
(5, '2018-03-16', 9, '2018-03-15 11:17:12'),
(6, '2018-03-16', 7, '2018-03-15 11:17:12'),
(7, '2018-03-16', 2, '2018-03-15 11:17:12'),
(8, '2018-03-16', 4, '2018-03-15 11:17:12'),
(9, '2018-03-16', 3, '2018-03-15 11:17:12'),
(10, '2018-03-17', 3, '2018-03-15 11:17:12'),
(11, '2018-03-17', 4, '2018-03-15 11:17:12'),
(12, '2018-03-17', 5, '2018-03-15 11:17:12'),
(13, '2018-03-17', 12, '2018-03-15 11:17:12'),
(14, '2018-03-17', 10, '2018-03-15 11:17:12'),
(15, '2018-03-17', 8, '2018-03-15 11:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `no_of_hours` varchar(500) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `payment_id` (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `customer_id`, `employee_id`, `booking_date`, `booking_time`, `no_of_hours`, `payment_id`, `date_created`) VALUES
(11, 6, 1, '2018-03-14', '12:00:00', '2', 11, '2018-03-15 12:51:04'),
(12, 9, 4, '2018-03-15', '12:00:00', '1', 12, '2018-03-15 13:36:10'),
(13, 10, 5, '2018-03-14', '12:00:00', '4', 13, '2018-03-16 10:16:05'),
(14, 18, 2, '2018-03-14', '12:00:00', '4', 14, '2018-03-20 08:59:02'),
(15, 18, 3, '2018-03-15', '12:00:00', '4', 15, '2018-03-20 08:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(500) NOT NULL,
  `country_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`, `country_id`, `date_created`) VALUES
(1, 'Chandigarh', 1, '2018-03-14 06:31:42'),
(2, 'Mumbai', 1, '2018-03-14 06:32:02'),
(3, 'Sydney', 2, '2018-03-14 06:32:51'),
(4, 'Melbourne', 2, '2018-03-14 06:33:05'),
(5, 'Delhi', 1, '2018-03-19 12:01:07'),
(6, 'Shimla', 3, '2018-03-19 13:23:06'),
(7, 'Panchkula', 1, '2018-03-19 12:15:20'),
(8, '', 5, '2018-03-20 08:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`, `date_created`) VALUES
(1, 'India', '2018-03-14 06:30:36'),
(2, 'Australia', '2018-03-14 06:31:00'),
(3, 'UK', '2018-03-19 12:52:35'),
(4, 'UA', '2018-03-19 12:52:51'),
(5, '', '2018-03-20 08:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone_no` varchar(500) NOT NULL,
  `location_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `name`, `email`, `password`, `phone_no`, `location_id`, `date_created`) VALUES
(6, 'Mandeep Singh', 'm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9034446032', 8, '2018-03-15 07:13:52'),
(7, 'Jiten', 'k@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9034446032', 9, '2018-03-15 07:40:19'),
(8, 'Rajat Verma', 'rajat.debut2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '9034446032', 10, '2018-03-15 09:25:20'),
(9, 'osvin websolutions', 'osvinandroid@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '90655566666', 11, '2018-03-15 13:35:54'),
(10, 'Demo Test', 'testuser@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '9991234560', 12, '2018-03-16 10:14:45'),
(11, 'testuser', 'user24512f3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4545544554', 13, '2018-03-19 11:59:04'),
(12, 'testuser', 'user24512fdsd3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4545544554', 14, '2018-03-19 12:01:15'),
(13, 'Test1', 'test1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9034446039', 15, '2018-03-19 12:07:26'),
(14, 'testuser', 'user24512fdddsd3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4545544554', 16, '2018-03-19 12:10:27'),
(15, 'testuser', 'user24512fddfddsd3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4545544554', 17, '2018-03-19 12:10:59'),
(16, 'testuser', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4545544554', 18, '2018-03-19 12:15:20'),
(17, 'testuser', 'dd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4545544554', 19, '2018-03-19 12:52:51'),
(18, 'Testnew', 'testnew@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '9034443032', 20, '2018-03-20 08:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `location_id` int(11) NOT NULL,
  `availability_id` int(11) NOT NULL,
  `price_per_hour` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`),
  KEY `location_id` (`location_id`),
  KEY `availability_id` (`availability_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`employee_id`, `name`, `email`, `location_id`, `availability_id`, `price_per_hour`, `date_created`) VALUES
(1, 'john', 'john@outlook.com', 1, 1, '50', '2018-03-19 13:20:40'),
(2, 'michel', 'michel@gmail.com', 1, 2, '30', '2018-03-14 06:42:39'),
(3, 'william', 'william@gmail.com', 2, 3, '30', '2018-03-19 13:20:47'),
(4, 'jeffery', 'jeffery@gmail.com', 2, 4, '50', '2018-03-19 13:20:51'),
(5, 'smith', 'smith@yahoo.com', 3, 5, '15', '2018-03-19 13:20:54'),
(6, 'bendiesel', 'bendiesel@yahoo.com', 3, 6, '10', '2018-03-19 13:20:59'),
(7, 'nathan walker', 'nathanwalker@yahoo.com', 3, 7, '70', '2018-03-19 13:21:06'),
(8, 'rusall jones', 'russaljones@yahoo.com', 3, 8, '60', '2018-03-19 13:21:10'),
(9, 'Don martin', 'donmartin@yahoo.com', 3, 9, '60', '2018-03-19 13:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hour`
--

CREATE TABLE IF NOT EXISTS `tbl_hour` (
  `hour_id` int(11) NOT NULL AUTO_INCREMENT,
  `time` time NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hour_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_hour`
--

INSERT INTO `tbl_hour` (`hour_id`, `time`, `date_created`) VALUES
(1, '09:00:00', '2018-03-14 07:07:14'),
(2, '12:00:00', '2018-03-14 07:07:19'),
(3, '01:00:00', '2018-03-14 07:07:19'),
(4, '02:00:00', '2018-03-14 07:07:19'),
(5, '03:00:00', '2018-03-14 07:07:19'),
(6, '04:00:00', '2018-03-14 07:07:19'),
(7, '05:00:00', '2018-03-14 07:07:19'),
(8, '06:00:00', '2018-03-14 07:07:19'),
(9, '07:00:00', '2018-03-14 07:07:19'),
(10, '08:00:00', '2018-03-14 07:07:19'),
(12, '10:00:00', '2018-03-14 07:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE IF NOT EXISTS `tbl_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `postal_code` varchar(500) NOT NULL,
  `street_name` varchar(500) NOT NULL,
  `street_number` varchar(500) NOT NULL,
  `lat` varchar(500) NOT NULL,
  `lng` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`location_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`location_id`, `city_id`, `postal_code`, `street_name`, `street_number`, `lat`, `lng`, `date_created`) VALUES
(1, 1, '160101', 'IT Park Rd', '0444', '30.7333', '76.7794', '2018-03-14 06:36:26'),
(2, 1, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-14 07:24:26'),
(3, 1, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-14 07:24:54'),
(4, 1, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-14 07:28:27'),
(5, 1, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-14 07:29:22'),
(6, 1, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-14 07:29:38'),
(7, 1, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-14 07:30:01'),
(8, 2, 'sadasdasdas', 'fdfasdasdas)', 'dsadasdasd', '30.454', '75.1212', '2018-03-19 13:14:01'),
(9, 4, '132001', 'hdhdhdh)', 'bzbsbb', '30.7235728507152', '76.847650759915', '2018-03-15 07:40:19'),
(10, 3, '132001', 'hdhdhdh)', 'hdhdhd', '30.7236017657701', '76.8475965719499', '2018-03-15 09:25:20'),
(11, 2, '132001', 'bsbsb)', 'bsbsb', '30.7236237983138', '76.8475510627304', '2018-03-15 13:35:54'),
(12, 4, '1111111', 'test street name)', 'test street number', '30.7235726489319', '76.8477075806899', '2018-03-16 10:14:45'),
(13, 5, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-19 11:59:04'),
(14, 5, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-19 12:01:15'),
(15, 6, '160101', 'Saketri Village)', '', '30.7234219601664', '76.8477764447004', '2018-03-19 12:07:26'),
(16, 5, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-19 12:10:27'),
(17, 5, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-19 12:10:59'),
(18, 7, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-19 12:15:20'),
(19, 7, '160101', 'subhashnagar', '402', '30.454', '75.1212', '2018-03-19 12:52:51'),
(20, 8, '160101', 'Saketri Village', '', '30.7236698968622', '76.8474769593001', '2018-03-20 08:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `netprice` varchar(500) NOT NULL,
  `vat` varchar(500) NOT NULL,
  `total` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `netprice`, `vat`, `total`, `date_created`) VALUES
(2, '20', '5', '30', '2018-03-14 07:53:16'),
(3, '20', '5', '30', '2018-03-14 09:04:28'),
(4, '20', '5', '30', '2018-03-14 09:04:39'),
(5, '20', '5', '30', '2018-03-14 09:06:04'),
(6, '20', '5', '30', '2018-03-14 09:06:18'),
(7, '20', '5', '30', '2018-03-14 09:06:51'),
(8, '20', '5', '30', '2018-03-14 09:07:03'),
(9, '20', '5', '30', '2018-03-14 09:07:52'),
(10, '20', '5', '30', '2018-03-14 09:08:05'),
(11, '100', '8', '8', '2018-03-15 12:51:04'),
(12, '50', '8', '50', '2018-03-15 13:36:10'),
(13, '60', '8', '60', '2018-03-16 10:16:05'),
(14, '120', '8', '129.6', '2018-03-20 08:59:02'),
(15, '120', '8', '129.6', '2018-03-20 08:59:30');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_availability`
--
ALTER TABLE `tbl_availability`
  ADD CONSTRAINT `tbl_availability_ibfk_1` FOREIGN KEY (`hour_id`) REFERENCES `tbl_hour` (`hour_id`);

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `tbl_booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`),
  ADD CONSTRAINT `tbl_booking_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `tbl_employee` (`employee_id`),
  ADD CONSTRAINT `tbl_booking_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `tbl_payment` (`payment_id`);

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `tbl_country` (`country_id`);

--
-- Constraints for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD CONSTRAINT `tbl_customer_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`location_id`),
  ADD CONSTRAINT `tbl_customer_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`location_id`);

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`location_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`location_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`availability_id`) REFERENCES `tbl_availability` (`availability_id`);

--
-- Constraints for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD CONSTRAINT `tbl_location_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
