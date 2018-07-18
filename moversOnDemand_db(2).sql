-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2018 at 05:32 PM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `moversOnDemand_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(500) COLLATE utf8_bin NOT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `password` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `fullname`, `email`, `password`, `date_created`) VALUES
(1, 'admin', 'admin@gmail.com', '3e7bf1383bcdd338f3d837f3dc948f80', '2017-08-01 09:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankDetail`
--

CREATE TABLE IF NOT EXISTS `tbl_bankDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `bank_name` varchar(500) COLLATE utf8_bin NOT NULL,
  `account_name` varchar(500) COLLATE utf8_bin NOT NULL,
  `account_number` varchar(500) COLLATE utf8_bin NOT NULL,
  `account_bsb` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_bankDetail`
--

INSERT INTO `tbl_bankDetail` (`id`, `user_id`, `bank_name`, `account_name`, `account_number`, `account_bsb`, `date_created`) VALUES
(1, '145', 'ghgf', 'hhgdhg', '2311233122311231231323321', 'hhgffdhghgfhgfghghgfhgdgh', '2018-01-02 06:41:19'),
(2, '146', 'rtgfhhgg', 'hghgf', '65654564654456', 'hgfgfghdfdhg', '2018-01-04 06:13:31'),
(3, '147', 'hgdhgfhg', 'ffgdhg', '6545464566556445654665465', 'ghghghfhggd', '2018-01-04 06:15:16'),
(4, '149', 'Testbank', 'Test', '4111111111111111', 'Test', '2018-01-08 06:03:41'),
(5, '151', 'Testbank', 'Rajat', '4111111111111111', 'Test', '2018-01-11 05:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) NOT NULL,
  `vehicle_id` varchar(500) NOT NULL,
  `driver_id` varchar(500) NOT NULL,
  `moveType_id` varchar(500) DEFAULT NULL,
  `receipt_number` varchar(500) NOT NULL,
  `pickup_loc` varchar(500) NOT NULL,
  `destination_loc` varchar(500) NOT NULL,
  `booking_date` date NOT NULL,
  `slot_starttime` time NOT NULL,
  `slot_endtime` time NOT NULL,
  `pickup_latitude` double NOT NULL,
  `pickup_longitude` double NOT NULL,
  `destination_latitude` double NOT NULL,
  `destination_longitude` double NOT NULL,
  `receipt_image` varchar(500) NOT NULL,
  `item_image` varchar(5000) NOT NULL,
  `path_polyline` text NOT NULL,
  `description` varchar(500) DEFAULT '0',
  `card_id` varchar(500) NOT NULL,
  `promoid` varchar(500) DEFAULT NULL,
  `admin_percentage` varchar(500) NOT NULL,
  `pickupcity_id` varchar(500) NOT NULL,
  `destinationcity_id` varchar(500) NOT NULL,
  `discount_amount` varchar(500) NOT NULL,
  `is_accepted` int(11) NOT NULL COMMENT '0 for no, 1 for yes 	',
  `is_started` int(11) NOT NULL COMMENT '0 for no, 1 for yes',
  `is_completed` int(11) NOT NULL COMMENT '0 for no, 1 for yes',
  `is_cancelled` int(11) NOT NULL COMMENT '0 for no, 1 for yes',
  `signature_file` varchar(500) NOT NULL,
  `time_zone_start` varchar(500) NOT NULL,
  `time_zone_end` varchar(500) NOT NULL,
  `extracharge_image` varchar(500) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `user_id`, `vehicle_id`, `driver_id`, `moveType_id`, `receipt_number`, `pickup_loc`, `destination_loc`, `booking_date`, `slot_starttime`, `slot_endtime`, `pickup_latitude`, `pickup_longitude`, `destination_latitude`, `destination_longitude`, `receipt_image`, `item_image`, `path_polyline`, `description`, `card_id`, `promoid`, `admin_percentage`, `pickupcity_id`, `destinationcity_id`, `discount_amount`, `is_accepted`, `is_started`, `is_completed`, `is_cancelled`, `signature_file`, `time_zone_start`, `time_zone_end`, `extracharge_image`, `date_created`) VALUES
(1, '143', '22', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'C-25, Ishanagar, New Indira Colony, Manimajra, Chandigarh, 160101, India', '2018-01-09', '12:30:00', '13:00:00', 30.722846218627, 76.847785077989, 30.723374812039, 76.841023899615, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'ZXFvekRfaWB0TXFEeEF1SXBEYENySWJAekF2QWdAREFEQmJAZkB2QG5AZElmRXNCckZTZEBpQV1r\nQHJCQUI/QEBC\n', 'hii', '6', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 07:59:24'),
(3, '28', '17', '31', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'New MDC Sector-4 Rd, Mansa Devi Complex, Phase - I, Manimajra, Sukteri, Haryana 134114, India', '2018-01-09', '12:30:00', '13:00:00', 30.723454071979, 76.847801506519, 30.723638243007, 76.849943250418, '', 'a:4:{i:0;s:63:"http://movers.com.au/Admin/public/item_image/file1187473000.jpg";i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBZkhoQg==\n', '', '6', '', '30', '95', '18', '', 1, 1, 1, 0, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 08:47:05'),
(4, '143', '17', '', '72', '', 'Sector, 16/10, Madhya Marg, 16B, Sector 16, Chandigarh, 160016, India', 'Track, 16B, Sector 16, Chandigarh, 160015, India', '2018-01-09', '12:30:00', '13:00:00', 30.747503714926, 76.784240864217, 30.746408177902, 76.782954409718, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'cWx0ekRhfnNzTT9HR09bVHVIcEY/RkVQS1ZFSFZgQHhCdERiRnJKREZsQXtARkNIQlZcfER8SGRC\nfENAP0A/QkFAP0ZCQEBsRmNFYEd3RXVFZUpxRWtJeUB7QQ==\n', 'jdud', '6', '', '30', '95', '95', '', 1, 0, 0, 0, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 09:20:50'),
(5, '148', '17', '31', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-09', '10:30:00', '13:00:00', 30.723333308627, 76.847455501556, 30.724116394313, 76.848829127848, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'e3NvekR1Z2B0TXFMYEZjT2BHYUV6QWdBUFdtRGFAX0NlQGNCZUF9QmdBc0JRY0BuQFtyTmtJbkVt\nQ1JPUE9GQWZIfEFqS2pDQj8/VklKa0RqQQ==\n', 'usee', '6', '', '30', '95', '95', '', 1, 0, 0, 1, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 09:24:32'),
(6, '148', '17', '147', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-09', '12:30:00', '13:00:00', 30.723311692259, 76.847475282848, 30.723762464581, 76.849025599658, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'dXNvekR3Z2B0TXdMYkZjT2BHYUV6QWdBUFdtRGFAX0NlQGNCZUF9QmdBc0JRY0BuQFtyTmtJbkVt\nQ1JPUE9GQWZIfEFqS2pDQj8/VklKY0JqQA==\n', 'udui', '6', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 09:27:38'),
(7, '148', '17', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'New MDC Sector-4 Rd, Mansa Devi Complex, Phase - I, Manimajra, Sukteri, Haryana 134114, India', '2018-01-10', '18:30:00', '19:00:00', 30.7234527, 76.847815, 30.724087284506, 76.84967905283, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBYEZwQQ==\n', 'bxhx', '6', '', '30', '95', '18', '', 0, 0, 0, 1, '', '2018-01-10 18:30:00', '2018-01-10 19:00:00', NULL, '2018-01-09 09:28:13'),
(8, '148', '17', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'New MDC Sector-4 Rd, Mansa Devi Complex, Phase - I, Manimajra, Sukteri, Haryana 134114, India', '2018-01-13', '19:00:00', '19:30:00', 30.723418044742, 76.847810223699, 30.724061633283, 76.849840320647, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBfEVuQQ==\n', 'bzhzh', '6', '', '30', '95', '18', '', 0, 0, 0, 1, '', '2018-01-13 19:00:00', '2018-01-13 19:30:00', NULL, '2018-01-09 09:30:53'),
(9, '148', '17', '31', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-09', '08:30:00', '23:30:00', 30.723455513069, 76.847818940878, 30.723392969777, 76.848970279098, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBZEtqQ0g/P1ZFRElIX0BM\n', 'jxhz', '6', '', '30', '95', '95', '', 1, 1, 1, 0, 'http://movers.com.au/Admin/public/signature_file/file2010236500.jpg', '2018-01-11 22:30:00', '2018-01-11 23:30:00', 'http://movers.com.au/Admin/public/signature_file/file20102365001.jpg', '2018-01-09 09:34:00'),
(10, '148', '17', '31', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-09', '11:14:00', '14:00:00', 30.723456089504, 76.847819276154, 30.723215715527, 76.848844885826, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFB\nRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU05LUENQQkxKYkZxQ3JCbUFURHRIZEJySX5Cakhk\nQlhEbkBDUGJIQlp+RHREQk5HUD9WQH5BQWRAY0FqQVdIS0lRZUBVSU9Fd0J7RQ==\n', 'jzhx', '6', '', '30', '95', '95', '', 1, 0, 0, 1, '', '2018-01-09 13:30:00', '2018-01-09 14:00:00', NULL, '2018-01-09 09:35:27'),
(11, '148', '22', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '& 24, Rajiv Gandhi, Technology Park, Plot No.20, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-09', '12:30:00', '13:00:00', 30.723454, 76.8478178, 30.730679134378, 76.841430924833, '', 'a:4:{i:0;s:67:"http://movers.com.au/Admin/public/item_image/14820180109_151459.jpg";i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXdDbEFxR25DYkB8QWBDcEljS35ESUpzQXBGdUN0S3NNX0FPQUxzQHtAU1RrQj9z\nQENRRUdFP0lIQ0w=\n', 'Test', '6', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 09:45:08'),
(12, '148', '22', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-11', '20:30:00', '21:00:00', 30.723047107523, 76.847481653094, 30.724407491898, 76.846907660365, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'aXJvekRtaGB0TWdHZkM=\n', 'jcj', '6', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-11 20:30:00', '2018-01-11 21:00:00', NULL, '2018-01-09 09:50:22'),
(13, '148', '22', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'New MDC Sector-4 Rd, Mansa Devi Complex, Phase - I, Manimajra, Sukteri, Haryana 134114, India', '2018-01-09', '12:30:00', '13:00:00', 30.723454360197, 76.847818940878, 30.72408987845, 76.849701851606, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBfkVuQQ==\n', 'ysys', '6', '', '30', '95', '18', '', 0, 0, 0, 1, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 09:53:00'),
(14, '148', '22', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-09', '12:30:00', '13:00:00', 30.7234041, 76.8478197, 30.723575699834, 76.849459782243, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBZEtqQ0g/P1ZpQVs=\n', '4exx', '6', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-09 12:30:00', '2018-01-09 13:00:00', NULL, '2018-01-09 09:54:34'),
(18, '143', '17', '', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'Saketri Road, Mansa Devi Complex, MDC Sector 4\nSukteri, Haryana 134114', '2018-01-10', '07:30:00', '08:30:00', 30.7235362140304, 76.847658008337, 30.7307794266189, 76.8564103916287, '', 'a:4:{i:0;s:63:"http://movers.com.au/Admin/public/item_image/file1236929727.jpg";i:1;N;i:2;N;i:3;N;}', 'b3RvekRrZ2B0TW1NbkZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU3FCb0ZfRmlNcEBzQHJEeUI=', 'Ivbi', '4', '', '30', '95', '18', '', 0, 0, 0, 1, '', '2018-01-10 07:30:00', '2018-01-10 08:30:00', NULL, '2018-01-10 04:21:10'),
(19, '143', '17', '', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'Saketri Road, Mansa Devi Complex, MDC Sector 4\nSukteri, Haryana 134114', '2018-01-10', '07:30:00', '08:30:00', 30.723514597708, 76.8476637080312, 30.7301730604468, 76.8566719070077, '', 'a:4:{i:0;s:63:"http://movers.com.au/Admin/public/item_image/file3265213982.jpg";i:1;s:63:"http://movers.com.au/Admin/public/item_image/file1395092675.jpg";i:2;N;i:3;N;}', 'a3RvekRtZ2B0TXFNcEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU3FCb0ZfRmlNcEBzQGBIYUU=', 'Lovely people', '4', '', '30', '95', '18', '', 0, 0, 0, 1, '', '2018-01-10 07:30:00', '2018-01-10 08:30:00', NULL, '2018-01-10 04:34:16'),
(20, '28', '15', '', '73', 'bbzbzbz', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-17', '04:30:00', '06:30:00', 30.723369912332, 76.84782397002, 30.721330459506, 76.847405210137, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'a3NvekR9Z2B0TWFNaEZgQ3JJYkB6QXZBZ0BEQURCYkBmQHZAbkBkSWZFZkV+Qk5PUE1KRWZAYEBI\nUHpAaEZEWGZAc0JsQHFBakF7QHhDdUJ2QnVBYUB7QmdEZ0hJU0NLQ0FJRWlHYUpNT3dAdkBRUg==\n', 'nsnxnxxn', '3', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-17 04:30:00', '2018-01-17 06:30:00', NULL, '2018-01-10 05:10:26'),
(21, '144', '17', '', '73', '2132132', '6, Ishanagar, Old Indira Colony, Manimajra, Chandigarh, 160101, India', 'Rail Bridge, Mansa Devi Complex, Nava Vadaj, Panchkula, Haryana 134114, India', '2018-01-10', '16:00:00', '17:00:00', 30.7228307, 76.840658, 30.7195032, 76.8509418, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'dXBvekRjfX5zTXJAd0N0QFJyQWBAcEJ+QGZGfkFOcEBIYEFAbEBJckBdfERFYkA/YEBCXEJUQj9CQEZCbEBRXEN6Q2tBZERhQX5AR3ZER3JBR2BAT1pXYEBnQHxCeURgQXtBaEBbb0FtRFdfQFl1QHNDcUhrQ2FIYUJfRmVBZUR9QG1DWWFBS3NAcUBvRl9Ac0FnQGtBY0BfQWFAb0BXXWFAWw==', '                                                                            wsws', '5', '', '30', '95', '95', '', 0, 0, 0, 1, '', '2018-01-10 16:00:00', '2018-01-10 17:00:00', NULL, '2018-01-10 05:50:00'),
(22, '143', '17', '147', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'MDC Sector 4\nPanchkula, Haryana', '2018-01-10', '10:30:00', '11:30:00', 30.7235142274733, 76.8476664026152, 30.7306016095579, 76.854833252728, '', 'a:4:{i:0;s:62:"http://movers.com.au/Admin/public/item_image/file639616014.jpg";i:1;N;i:2;N;i:3;N;}', 'a3RvekRtZ2B0TXFNcEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU3FCb0ZOSXZDX0JlQWFDeUB3Qg==', 'Kill', '4', '', '45', '95', '95', '', 1, 0, 0, 1, '', '2018-01-10 10:30:00', '2018-01-10 11:30:00', NULL, '2018-01-10 09:49:50'),
(23, '143', '17', '147', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', '258, Sector 4, Mansa Devi Complex, MDC Sector 4\nPanchkula, Haryana 134114', '2018-01-10', '13:30:00', '14:30:00', 30.7234915402921, 76.8476694077253, 30.7275187225619, 76.8543521314859, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Z3RvekRvZ2B0TXVNckZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU05LUENQQkxKYkZxQ3JCbUFURHRIZEJFT2tBc0NjQWFDa0B9QQ==', 'Killler', '4', '', '45', '95', '95', '', 1, 0, 0, 1, '', '2018-01-10 13:30:00', '2018-01-10 14:30:00', NULL, '2018-01-10 10:16:13'),
(24, '148', '17', '', '72', '', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'New MDC Sector-4 Rd, Mansa Devi Complex, Phase - I, Manimajra, Sukteri, Haryana 134114, India', '2018-01-10', '13:30:00', '14:30:00', 30.7234003, 76.8478248, 30.724448706633, 76.849751137197, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFSVVQSWhD\neUFyT2FKdkF9QExNTkViSHxBZEtqQ0g/P1Z3RnlB\n', 'hjx', '6', '', '45', '95', '18', '', 0, 0, 0, 1, '', '2018-01-10 13:30:00', '2018-01-10 14:30:00', NULL, '2018-01-10 12:44:44'),
(25, '144', '22', '', '73', '12q12q', 'MDC Sector 4, Panchkula, Haryana, India', '& 24, Rajiv Gandhi, Technology Park, Plot No.20, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-10', '16:00:00', '17:00:00', 30.7286345, 76.8525684, 30.7279136, 76.8393059, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'fXRwekRxZ2F0TWdGdENATD9SR1BNSlFEUUFNSUNDS0ZTTk9WRVR1QHBKR2ZBQnhBSGRBSm5ASFhYbkB8QXhDWHJAdEB4Q15wQ0xmQkBqQEl+QUVmQU9yQWtDcFByTX5ATXhC', '                                                                            1q12q21q21', '5', '', '45', '18', '14', '', 0, 0, 0, 1, '', '2018-01-10 16:00:00', '2018-01-10 17:00:00', NULL, '2018-01-10 13:39:23'),
(26, '143', '17', '', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'New MDC Sector-4 Road, Mansa Devi Complex, Phase - I, Manimajra\nSukteri, Haryana 134114', '2018-01-10', '14:30:00', '15:30:00', 30.7235362140304, 76.8477153405547, 30.7242896118925, 76.8516323715448, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'bXRvekRtZ2B0TW9NcEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU05LUENQQkxKYkZxQ3JCbUFURHRIZEJySX5CfEFe', 'Gg', '4', '', '45', '95', '18', '', 0, 0, 0, 1, '', '2018-01-10 14:30:00', '2018-01-10 15:30:00', NULL, '2018-01-10 14:01:49'),
(27, '143', '17', '', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', '2018-01-10', '17:00:00', '17:30:00', 30.7234656006925, 76.847681812942, 30.7225556927695, 76.8475530669093, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU05LUENQQkxKYkZxQ3JCbUFURHRIZEJySX5CakhkQlhEbkBDUGJIQlp+RHREQk5HUD9WQH5BQWRAY0FqQVdIS0lRZUBRSQ==', 'Gy', '4', '', '45', '95', '95', '', 0, 0, 0, 1, '', '2018-01-10 17:00:00', '2018-01-10 17:30:00', NULL, '2018-01-10 14:42:04'),
(28, '143', '17', '', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'Mansa Devi Temple Complex\nPanchkula, Haryana', '2018-01-10', '17:00:00', '17:30:00', 30.7234511898009, 76.8480167537928, 30.7189796743235, 76.8558685854077, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU05LUENQQkxKYkZxQ3JCbUFURHRIZEJySX5CakhkQlhEbkBDfkBXdEhlRmBAUVBJe0BnQ2dAdUF5QHFDWVljQGNAR0NUUWBAX0BSdEBeQlBDekBrQFxbZEBbckBVTkt8QEBKQ0RPQHdATEl8QT8=', 'Sgdbh', '4', '', '45', '95', '14', '', 0, 0, 0, 1, '', '2018-01-10 17:00:00', '2018-01-10 17:30:00', NULL, '2018-01-10 14:44:36'),
(29, '143', '17', '', '72', '', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', 'IT Park Road, Phase - I, Manimajra\nChandigarh, 160101', '2018-01-10', '17:00:00', '17:30:00', 30.7234454254437, 76.8479651212692, 30.7227505296517, 76.8477575853467, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'Y3RvekRxZ2B0TXlNdEZ9TnxGaUJyQH1AWGVARFFEQ2tATX1BT3VBZ0B9QmlAeUFhQ3lFVXlATXFBRWFCQnNAZkB9R1ZnQ1JfQFZVTks/Qz9JQElIU05LUENQQkxKYkZxQ3JCbUFURHRIZEJySX5CakhkQlhEbkBDUGJIQlp+RHREQk5HUD9WQH5BQWRAY0FqQVdIS0lRZUBVSU9FR0k=', 'Svdhehei', '4', '', '45', '95', '95', '', 0, 0, 0, 1, '', '2018-01-10 17:00:00', '2018-01-10 17:30:00', NULL, '2018-01-10 14:46:09'),
(30, '144', '22', '', '73', 'gvh', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park, Rajiv Gandhi, Technology Park, Plot No. 10, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-11', '05:30:00', '06:30:00', 30.723510562661, 76.84732105583, 30.723824719416, 76.846199892461, '', 'a:4:{i:0;N;i:1;N;i:2;N;i:3;N;}', 'YXVvekRhZ2B0TXlCfEBqQWJE\n', 'bbh', '5', '', '45', '95', '95', '', 0, 0, 0, 1, '', '2018-01-11 05:30:00', '2018-01-11 06:30:00', NULL, '2018-01-11 04:36:38'),
(31, '144', '22', '', '72', '1222', 'Department of Information Technology Chandigarh, Phase - I, Manimajra, Chandigarh, 160101, India', 'IT Park Rd, Phase - I, Manimajra, Panchkula, Chandigarh 160101, India', '2018-01-11', '11:00:00', '12:00:00', 30.7296066, 76.8414969, 30.7280736, 76.8447797, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'YXtwekRrYl90TU12QF9BZkBjQHpDck1+QHRDdUtyQXFGSEtiS19FYUNxSWNAfUFvQFZhQFBObkBrQWJAbUh0Q2NBYkA=', '                                                                            212', '5', '', '45', '95', '14', '', 0, 0, 0, 1, '', '2018-01-11 11:00:00', '2018-01-11 12:00:00', NULL, '2018-01-11 05:14:54'),
(32, '144', '22', '', '73', 'rfr', 'IT Park, Rajiv Gandhi, Technology Park, Plot No. 10, Phase - I, Manimajra, Chandigarh, 160101, India', 'Rajiv Gandhi, Technology Park, Plot No.14, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-11', '11:00:00', '12:00:00', 30.723188, 76.8469983, 30.7275224, 76.8407861, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'fXJvekR3ZGB0TWVAeUFzQWpAdUlwRGBDckliQHpBbUliRHlAXENERUhlRHJN', '                                                                            ffferferfewffew', '5', '', '45', '95', '14', '', 0, 0, 0, 1, '', '2018-01-11 11:00:00', '2018-01-11 12:00:00', NULL, '2018-01-11 05:41:12'),
(33, '144', '22', '', '73', 'rfr', 'IT Park, Rajiv Gandhi, Technology Park, Plot No. 10, Phase - I, Manimajra, Chandigarh, 160101, India', 'Rajiv Gandhi, Technology Park, Plot No.14, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-11', '11:00:00', '12:00:00', 30.723188, 76.8469983, 30.7275224, 76.8407861, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'fXJvekR3ZGB0TWVAeUFzQWpAdUlwRGBDckliQHpBbUliRHlAXENERUhlRHJN', '                                                                            ffferferfewffew', '5', '', '45', '95', '14', '', 0, 0, 0, 1, '', '2018-01-11 11:00:00', '2018-01-11 12:00:00', NULL, '2018-01-11 05:44:21'),
(34, '150', '22', '151', '72', '', '1-3, Jan Marg, 17D, Sector 17\nChandigarh, 160017', 'S.C.O.\n2905, Dakshin Marg, Sub. City Center, 22C, Sector 22, Chandigarh, 160022', '2018-01-11', '07:30:00', '08:30:00', 30.74556245629, 76.7852158471942, 30.7267051144568, 76.7671350762248, '', 'a:4:{i:0;s:63:"http://movers.com.au/Admin/public/item_image/file1248399717.jpg";i:1;N;i:2;N;i:3;N;}', 'aXxzekRfZXRzTX1Ba0NbVElCSUBHQ1NSY0B+QEJUR2pAS1BMYkBKXGJAckB8QWBEdkVwSXxKaFJ8QGJCeEtsU3JBYkNYRlZMUlhIWkFwQEdSQWxAP3xAVHBAakpmUXZIZk5+QnRFZEpmUV5yQGBASHBATnhARUo/UkR4QG9Ael1fWGZAY0B+QHNBQWFARl9AVF1cT14/XkxSWEheQGBAS15RWFlMY0BAX0BPYUBQcUFiQT9SQ04=', 'Hello', '7', '', '45', '95', '95', '', 1, 0, 0, 0, '', '2018-01-11 07:30:00', '2018-01-11 08:30:00', NULL, '2018-01-11 05:59:19'),
(35, '144', '22', '', '73', '56489', 'Phase - I, Manimajra, Chandigarh, India', 'Rajiv Gandhi, Technology Park, Plot No.14, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-11', '13:00:00', '14:00:00', 30.7235866, 76.8495288, 30.7273908, 76.8411446, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'bXVvekRxdGB0TWZBVkI/P1ZzS29DX0hfQl1AYUduRGlKbkZpQ3hBSFhYbkB8QXhDWHJAdEB4Q15wQ0xmQkBqQEl+QUVmQU9yQWtDcFByTX5AeEFzRg==', '                                                                            4456', '5', '', '45', '14', '14', '', 0, 0, 0, 0, '', '2018-01-11 13:00:00', '2018-01-11 14:00:00', NULL, '2018-01-11 07:24:49'),
(36, '144', '22', '', '73', '56489', 'Phase - I, Manimajra, Chandigarh, India', 'Rajiv Gandhi, Technology Park, Plot No.14, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-11', '13:00:00', '14:00:00', 30.7235866, 76.8495288, 30.7273908, 76.8411446, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'bXVvekRxdGB0TWZBVkI/P1ZzS29DX0hfQl1AYUduRGlKbkZpQ3hBSFhYbkB8QXhDWHJAdEB4Q15wQ0xmQkBqQEl+QUVmQU9yQWtDcFByTX5AeEFzRg==', '                                                                            4456', '5', '', '45', '14', '14', '', 0, 0, 0, 1, '', '2018-01-11 13:00:00', '2018-01-11 14:00:00', NULL, '2018-01-11 07:31:23'),
(37, '144', '22', '', '75', '4234234324', 'Phase - I, Manimajra, Chandigarh, India', 'Rajiv Gandhi, Technology Park, Plot No.14, MDC Sector 6 Rd, Phase - I, Manimajra, Chandigarh, 160101, India', '2018-01-12', '02:00:00', '02:30:00', 30.7262777, 76.8503569, 30.7276736, 76.840375, '', 'a:4:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}', 'Z2ZwekR3eWB0TXVBWVVAU0xvRWxDX0RoQnNJYEZdUEJKTFxqQXhCdEBiQk5mQFpmQV5yQlhqQ0ZoQUt4Q0lkQXFCaE1jQHhDZEBEbEx4QGBAeUE=', '                                                                            21321321321321', '5', '', '45', '18', '14', '', 0, 0, 0, 0, '', '2018-01-12 02:00:00', '2018-01-12 02:30:00', NULL, '2018-01-11 07:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_braintreeUsersDetail`
--

CREATE TABLE IF NOT EXISTS `tbl_braintreeUsersDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `card_no` varchar(500) COLLATE utf8_bin NOT NULL,
  `customer_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `is_default` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_braintreeUsersDetail`
--

INSERT INTO `tbl_braintreeUsersDetail` (`id`, `user_id`, `card_no`, `customer_id`, `is_default`, `date_created`) VALUES
(4, '28', '4242', '864370901', 0, '2018-01-03 09:04:15'),
(5, '33', '0004', '158567339', 1, '2017-12-28 23:51:56'),
(6, '33', '4444', '531680339', 0, '2017-12-28 23:54:41'),
(7, '141', '0050', '604080594', 0, '2017-12-29 09:24:20'),
(8, '141', '7878', '646053869', 0, '2017-12-29 09:25:28'),
(9, '141', '378282246310005', '888556939', 0, '2017-12-29 10:18:47'),
(10, '142', '7777', '871388419', 1, '2017-12-29 10:26:11'),
(11, '141', '0061', '117781639', 0, '2018-01-03 09:03:33'),
(13, '87', '1111', '591882196', 0, '2018-01-02 06:10:00'),
(15, '142', '1111', '540413134', 0, '2018-01-02 10:48:08'),
(17, '143', '0061', '509628339', 0, '2018-01-03 12:29:43'),
(19, '28', '4242', '296220271', 0, '2018-01-04 06:30:14'),
(20, '28', '0042', '105319996', 0, '2018-01-04 06:39:09'),
(21, '28', '7878', '608940769', 0, '2018-01-05 13:15:02'),
(22, '144', '1111', '897547099', 0, '2018-01-05 10:37:55'),
(24, '28', '4242', '536398871', 0, '2018-01-05 13:22:03'),
(25, '28', '7878', '600101883', 1, '2018-01-05 13:22:05'),
(26, '143', '7777', '873926003', 1, '2018-01-05 13:35:14'),
(27, '144', '1111', '121857619', 0, '2018-01-06 06:29:26'),
(28, '148', '1111', '105895666', 0, '2018-01-08 05:06:20'),
(29, '150', '1111', '148666646', 0, '2018-01-11 05:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cancelBooking`
--

CREATE TABLE IF NOT EXISTS `tbl_cancelBooking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '1 for driver cancel and 2 for customer cancel',
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `driver_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `reason` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=50 ;

--
-- Dumping data for table `tbl_cancelBooking`
--

INSERT INTO `tbl_cancelBooking` (`id`, `status`, `user_id`, `driver_id`, `reason`, `date_created`) VALUES
(1, '2', '143', '143', '', '2018-01-03 12:30:45'),
(2, '1', '28', '31', 'yudfliufgoippoiojghs;ojig', '2018-01-03 12:33:32'),
(3, '2', '143', '143', '', '2018-01-03 12:37:09'),
(4, '2', '143', '143', '', '2018-01-03 12:51:37'),
(5, '2', '143', '143', '', '2018-01-03 12:54:09'),
(6, '2', '143', '143', '', '2018-01-03 15:03:24'),
(7, '2', '143', '143', '', '2018-01-03 15:07:37'),
(8, '1', '28', '31', 'yudfliufgoippoiojghs;ojig', '2018-01-04 05:11:34'),
(9, '2', '28', '28', 'hshs', '2018-01-04 10:35:34'),
(10, '2', '28', '28', 'hi', '2018-01-04 13:13:03'),
(11, '2', '143', '143', '', '2018-01-04 17:37:58'),
(12, '2', '143', '143', '', '2018-01-05 06:58:07'),
(13, '2', '143', '143', 'Ghj', '2018-01-05 11:26:31'),
(14, '2', '143', '143', '', '2018-01-05 14:37:44'),
(15, '2', '143', '143', '', '2018-01-05 16:27:23'),
(16, '1', '143', '31', 'egfr3', '2018-01-05 17:06:37'),
(17, '1', '143', '31', 'yy', '2018-01-05 17:12:57'),
(18, '2', '143', '143', 'Fg', '2018-01-05 17:43:28'),
(19, '2', '143', '143', '', '2018-01-07 02:58:44'),
(20, '1', '143', '143', '', '2018-01-07 03:13:56'),
(21, '2', '143', '143', '', '2018-01-07 03:13:56'),
(22, '2', '143', '143', 'Ffdfdfd', '2018-01-07 03:22:01'),
(23, '2', '143', '143', 'Jjjj', '2018-01-07 03:29:50'),
(24, '2', '143', '143', 'Assess', '2018-01-07 04:25:34'),
(25, '2', '148', '148', '', '2018-01-08 05:23:59'),
(26, '2', '148', '148', '', '2018-01-08 06:41:23'),
(27, '2', '148', '148', '', '2018-01-08 06:46:39'),
(28, '2', '148', '148', '', '2018-01-08 06:49:48'),
(29, '2', '148', '148', 'Yes', '2018-01-08 07:50:57'),
(30, '2', '148', '148', '', '2018-01-08 08:47:00'),
(31, '2', '148', '148', '', '2018-01-08 08:49:28'),
(32, '2', '148', '148', '', '2018-01-08 09:04:52'),
(33, '2', '143', '143', 'jkk', '2018-01-08 09:31:13'),
(34, '2', '148', '148', 'vsgh', '2018-01-09 05:54:33'),
(35, '2', '148', '148', 'no', '2018-01-09 06:24:17'),
(36, '2', '148', '148', 'yes', '2018-01-09 07:21:19'),
(37, '2', '148', '148', 'yes', '2018-01-09 07:43:04'),
(38, '1', '148', '143', 'This game was fun', '2018-01-09 09:41:54'),
(39, '2', '148', '143', 'This game was fun', '2018-01-09 09:41:54'),
(40, '1', '148', '143', 'ggg', '2018-01-09 09:42:15'),
(41, '2', '148', '143', 'ggg', '2018-01-09 09:42:15'),
(42, '2', '148', '148', 'bhshs', '2018-01-09 09:58:17'),
(43, '1', '28', '28', 'bzbz', '2018-01-10 05:12:25'),
(44, '2', '28', '28', 'bzbz', '2018-01-10 05:12:25'),
(45, '2', '144', '144', 'eded', '2018-01-10 13:39:32'),
(46, '2', '143', '143', '', '2018-01-10 14:43:29'),
(47, '2', '144', '144', 'hhj', '2018-01-11 04:36:47'),
(48, '2', '144', '144', 'vfv', '2018-01-11 05:18:11'),
(49, '2', '144', '144', 'csdacs', '2018-01-11 07:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cardDetail`
--

CREATE TABLE IF NOT EXISTS `tbl_cardDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `card_no` varchar(500) COLLATE utf8_bin NOT NULL,
  `nounce` varchar(500) COLLATE utf8_bin NOT NULL,
  `nameoncard` varchar(500) COLLATE utf8_bin NOT NULL,
  `expiry_month` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `expiry_year` varchar(500) COLLATE utf8_bin NOT NULL,
  `is_default` int(11) NOT NULL COMMENT '0 for no, 1 for yes',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_cardDetail`
--

INSERT INTO `tbl_cardDetail` (`id`, `user_id`, `card_no`, `nounce`, `nameoncard`, `expiry_month`, `expiry_year`, `is_default`, `date_created`) VALUES
(2, '28', '4242', '551d545f-1c97-0c42-262e-dc27cb9f9345', 'HHS', '12', '25', 0, '2018-01-05 13:22:03'),
(3, '28', '7878', '4e10edb1-641b-0238-6070-b396bf536120', 'dsfs', '12', '21', 1, '2018-01-05 13:22:05'),
(4, '143', '7777', '74e979cd-e707-0c19-570b-9341dd2b8d34', 'Anil', '12', '20', 1, '2018-01-05 13:35:14'),
(5, '144', '1111', 'b07131d6-ede1-0dbf-5839-35cb2dfb1b23', 'fedfer', '02', '24', 0, '2018-01-11 05:39:02'),
(6, '148', '1111', 'e6787ae1-76c2-04fc-6202-39f29a2e4fc5', 'DEBIT', '2', '25', 0, '2018-01-08 05:06:20'),
(7, '150', '1111', '7e6b5635-eac7-0714-663d-00ce50346293', 'Rajat', '2', '25', 0, '2018-01-11 05:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE IF NOT EXISTS `tbl_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `move_id` varchar(500) NOT NULL,
  `from_id` varchar(500) NOT NULL,
  `to_id` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `fromUser_type` varchar(500) DEFAULT NULL,
  `toUser_type` varchar(500) DEFAULT NULL,
  `status` varchar(500) NOT NULL COMMENT '1 for read,2 for unread',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id`, `move_id`, `from_id`, `to_id`, `message`, `fromUser_type`, `toUser_type`, `status`, `date_created`) VALUES
(26, '9', '31', '28', 'Ffyshd', '2', '1', '1', '2018-01-09 13:17:53'),
(27, '9', '28', '31', 'Thgfgh', '1', '2', '1', '2018-01-09 13:17:53'),
(28, '9', '28', '31', 'Thhh', '1', '2', '1', '2018-01-09 13:17:53'),
(29, '9', '28', '31', 'Tjgoljj', '1', '2', '1', '2018-01-09 13:17:53'),
(30, '9', '28', '31', 'Uhh', '1', '2', '1', '2018-01-09 13:17:53'),
(31, '9', '31', '28', 'Iik', '2', '1', '1', '2018-01-09 13:17:53'),
(32, '9', '28', '31', 'Uuj', '1', '2', '1', '2018-01-09 13:17:53'),
(33, '9', '31', '28', 'Killer', '2', '1', '1', '2018-01-09 13:17:53'),
(34, '9', '31', '28', 'Edg', '2', '1', '1', '2018-01-09 13:17:53'),
(35, '9', '31', '28', 'Djdh', '2', '1', '1', '2018-01-09 13:17:53'),
(36, '9', '31', '28', 'Svs', '2', '1', '1', '2018-01-09 13:17:53'),
(37, '9', '28', '31', 'Avb', '1', '2', '1', '2018-01-09 13:17:53'),
(38, '9', '28', '31', 'Gnh', '1', '2', '1', '2018-01-09 13:17:53'),
(39, '9', '28', '31', 'Cxhch', '1', '2', '1', '2018-01-09 13:17:53'),
(40, '9', '28', '31', 'Rh', '1', '2', '1', '2018-01-09 13:17:53'),
(41, '9', '28', '31', 'Fbj', '1', '2', '1', '2018-01-09 13:17:53'),
(42, '9', '31', '28', 'Dbb', '2', '1', '1', '2018-01-09 13:17:53'),
(43, '9', '31', '28', 'Fhj', '2', '1', '1', '2018-01-09 13:17:53'),
(44, '9', '31', '28', 'Uwdbd', '2', '1', '1', '2018-01-09 13:17:53'),
(45, '9', '28', '31', 'Killkii', '1', '2', '1', '2018-01-09 13:17:53'),
(46, '9', '31', '28', 'Gjh', '2', '1', '1', '2018-01-09 13:17:53'),
(47, '9', '31', '28', 'Thy', '2', '1', '1', '2018-01-09 13:17:53'),
(48, '9', '28', '31', 'Wdv', '1', '2', '1', '2018-01-09 13:17:53'),
(49, '9', '31', '28', 'Sbvavsca ac', '2', '1', '1', '2018-01-09 13:17:53'),
(50, '9', '31', '28', 'Dndn', '2', '1', '1', '2018-01-09 13:17:53'),
(51, '9', '31', '28', 'Dxd', '2', '1', '1', '2018-01-09 13:17:53'),
(52, '9', '28', '31', 'Fvbb', '1', '2', '1', '2018-01-09 13:17:53'),
(53, '9', '31', '28', 'Sxch', '2', '1', '1', '2018-01-09 13:17:53'),
(54, '9', '31', '28', 'Gavsv', '2', '1', '1', '2018-01-09 13:17:53'),
(55, '9', '31', '28', 'Ax a a', '2', '1', '1', '2018-01-09 13:17:53'),
(56, '9', '31', '28', 'Befb', '2', '1', '1', '2018-01-09 13:17:53'),
(57, '9', '31', '28', 'Fbdbdb', '2', '1', '1', '2018-01-09 13:17:53'),
(58, '9', '31', '28', 'Sv d', '2', '1', '1', '2018-01-09 13:17:53'),
(59, '9', '31', '28', 'Rbdj', '2', '1', '1', '2018-01-09 13:17:53'),
(60, '9', '31', '28', 'Cacwvgg fcgvv', '2', '1', '1', '2018-01-09 13:17:53'),
(61, '9', '28', '31', 'Fgbg', '1', '2', '1', '2018-01-09 13:17:53'),
(62, '9', '28', '31', 'Uf j', '1', '2', '1', '2018-01-09 13:17:53'),
(63, '10', '28', '31', 'Thfg', '1', '2', '1', '2018-01-09 10:46:46'),
(64, '9', '31', '28', 'Dvvvh', '2', '1', '1', '2018-01-09 13:17:53'),
(65, '9', '31', '28', 'Dec', '2', '1', '1', '2018-01-09 13:17:53'),
(66, '9', '31', '28', 'Fccc', '2', '1', '1', '2018-01-09 13:17:53'),
(67, '9', '31', '28', 'Cas v', '2', '1', '1', '2018-01-09 13:17:53'),
(68, '9', '31', '28', 'Uh', '2', '1', '1', '2018-01-09 13:17:53'),
(69, '9', '31', '28', 'Hjhjb j jbjk j', '2', '1', '1', '2018-01-09 13:17:53'),
(70, '30', '31', '28', 'Kikkjjkn', '2', '1', '2', '2018-01-04 10:00:10'),
(71, '30', '31', '28', 'Jkik', '2', '1', '2', '2018-01-04 10:00:25'),
(72, '5', '147', '143', 'Kill', '2', '1', '2', '2018-01-05 14:53:15'),
(73, '5', '147', '143', 'Hkk', '2', '1', '2', '2018-01-05 14:53:15'),
(74, '5', '143', '147', 'Jj', '1', '2', '2', '2018-01-05 14:53:45'),
(75, '5', '147', '143', 'Jkkdxdnxn', '2', '1', '2', '2018-01-05 14:53:45'),
(76, '10', '28', '147', 'Ghjj', '1', '2', '2', '2018-01-09 10:46:21'),
(77, '15', '148', '149', 'hii', '1', '2', '2', '2018-01-09 11:39:26'),
(78, '15', '148', '149', 'hi+hi+hi', '1', '2', '2', '2018-01-09 11:39:37'),
(79, '9', '31', '148', 'Killl', '2', '1', '1', '2018-01-09 13:17:53'),
(80, '9', '31', '148', 'Bbzbz', '2', '1', '1', '2018-01-09 13:17:53'),
(81, '9', '148', '31', 'munda+main+ae%2C+Diamond+chain+ae.', '1', '2', '1', '2018-01-09 13:17:53'),
(82, '9', '148', '31', '%F0%9F%98%8E', '1', '2', '1', '2018-01-09 13:17:53'),
(83, '9', '148', '31', 'emoji+hi1+nan+ri', '1', '2', '1', '2018-01-09 13:17:53'),
(84, '9', '148', '31', '%F0%9F%98%81', '1', '2', '1', '2018-01-09 13:17:53'),
(85, '9', '31', '148', 'zbzhhhs', '2', '1', '1', '2018-01-10 04:33:20'),
(86, '9', '31', '148', 'nbzhh', '2', '1', '1', '2018-01-10 04:33:20'),
(87, '9', '31', '148', 'hssjjss', '2', '1', '1', '2018-01-10 05:09:46'),
(88, '9', '31', '148', '%F0%9F%98%8E%F0%9F%A4%97%F0%9F%98%99%F0%9F%A4%97%F0%9F%98%99', '2', '1', '1', '2018-01-10 05:09:46'),
(89, '9', '31', '148', 'xjxjs', '2', '1', '1', '2018-01-10 05:09:46'),
(90, '9', '31', '148', '%F0%9F%98%81%F0%9F%98%8E%F0%9F%98%98%F0%9F%98%98%F0%9F%98%8E', '2', '1', '1', '2018-01-10 05:09:46'),
(91, '9', '31', '148', 'bzb', '2', '1', '1', '2018-01-10 05:11:30'),
(92, '9', '148', '31', '%F0%9F%98%8D%F0%9F%98%9A%F0%9F%98%8D%F0%9F%98%9A%F0%9F%98%8D%F0%9F%98%8D', '1', '2', '1', '2018-01-10 05:11:30'),
(93, '9', '31', '148', '%F0%9F%99%82%F0%9F%98%8D%F0%9F%98%9A', '2', '1', '1', '2018-01-10 05:15:39'),
(94, '9', '148', '31', '%F0%9F%98%8D%F0%9F%98%9A%F0%9F%98%8D%F0%9F%98%9A%F0%9F%98%8D%F0%9F%98%9A%F0%9F%98%9A', '1', '2', '1', '2018-01-10 05:15:39'),
(95, '9', '148', '31', 'gshysu%F0%9F%98%B6%F0%9F%98%B6%F0%9F%98%8E%F0%9F%98%8E%F0%9F%98%8E%F0%9F%99%82%F0%9F%98%8E%F0%9F%99%82', '1', '2', '1', '2018-01-10 05:23:17'),
(96, '9', '148', '31', 'xhji%F0%9F%99%82%F0%9F%98%B6%E2%98%BA%F0%9F%99%82%F0%9F%99%82%F0%9F%99%82%F0%9F%99%82%F0%9F%99%82', '1', '2', '1', '2018-01-10 05:23:17'),
(97, '9', '31', '148', 'xjx', '2', '1', '1', '2018-01-10 05:53:14'),
(98, '9', '31', '148', 'hxh', '2', '1', '1', '2018-01-10 05:53:14'),
(99, '9', '31', '148', 'hsh', '2', '1', '1', '2018-01-10 05:53:14'),
(100, '9', '31', '148', 'nd', '2', '1', '1', '2018-01-10 05:53:14'),
(101, '9', '31', '148', 'hsh', '2', '1', '1', '2018-01-10 05:53:14'),
(102, '9', '31', '148', 'vs', '2', '1', '1', '2018-01-10 05:53:14'),
(103, '9', '148', '31', 'n', '1', '2', '1', '2018-01-10 05:53:14'),
(104, '9', '148', '31', 'bz', '1', '2', '1', '2018-01-10 05:53:14'),
(105, '9', '148', '31', 'bxh', '1', '2', '1', '2018-01-10 05:53:14'),
(106, '9', '148', '31', 'ndj', '1', '2', '1', '2018-01-10 05:53:14'),
(107, '9', '148', '31', 'nchah', '1', '2', '1', '2018-01-10 05:53:14'),
(108, '9', '148', '31', 'vz', '1', '2', '1', '2018-01-10 05:53:14'),
(109, '9', '148', '31', 'bx', '1', '2', '1', '2018-01-10 05:53:14'),
(110, '9', '148', '31', 'vsv', '1', '2', '1', '2018-01-10 05:53:14'),
(111, '9', '148', '31', 'bx', '1', '2', '1', '2018-01-10 05:53:14'),
(112, '9', '148', '31', 'hd', '1', '2', '1', '2018-01-10 05:53:14'),
(113, '9', '31', '148', 'Killl', '2', '1', '1', '2018-01-10 05:53:14'),
(114, '9', '31', '148', 'Hds', '2', '1', '1', '2018-01-10 05:53:14'),
(115, '9', '31', '148', 'Hjj', '2', '1', '1', '2018-01-10 05:53:14'),
(116, '9', '31', '148', 'Ghj', '2', '1', '1', '2018-01-10 05:53:14'),
(117, '9', '31', '148', 'Fg', '2', '1', '1', '2018-01-10 05:53:14'),
(118, '9', '31', '148', 'People', '2', '1', '1', '2018-01-10 05:53:14'),
(119, '9', '31', '148', 'Bsbs bcb\nSchshcshcshcshcwncw\nXsnuec\nWxhac\nScuaxmahcsmchwchwcnwcmwhcencwhccwhcmechwc\nEmcencenc\nEcnechec\nEchecuejcjecjw', '2', '1', '1', '2018-01-10 05:53:14'),
(120, '9', '148', '31', 'ncjdjdjd', '1', '2', '1', '2018-01-10 06:01:35'),
(121, '9', '148', '31', 'bzbzbzb', '1', '2', '1', '2018-01-10 06:01:35'),
(122, '9', '148', '31', 'vzbz', '1', '2', '1', '2018-01-10 06:01:35'),
(123, '9', '148', '31', 'nxnxjxj', '1', '2', '1', '2018-01-10 06:01:35'),
(124, '9', '148', '31', 'nnz', '1', '2', '1', '2018-01-10 06:01:35'),
(125, '9', '148', '31', 'bzz', '1', '2', '1', '2018-01-10 06:01:35'),
(126, '9', '148', '31', 'zh', '1', '2', '1', '2018-01-10 06:01:35'),
(127, '9', '148', '31', 'xjxjhz', '1', '2', '1', '2018-01-10 06:01:35'),
(128, '9', '148', '31', 'jxjx', '1', '2', '1', '2018-01-10 06:01:35'),
(129, '9', '148', '31', 'usu', '1', '2', '1', '2018-01-10 06:01:35'),
(130, '9', '148', '31', 'jdj', '1', '2', '1', '2018-01-10 06:01:35'),
(131, '9', '31', '148', 'Gzgzhxnxjdjd', '2', '1', '1', '2018-01-10 12:45:56'),
(132, '9', '31', '148', 'B hxbdjjd', '2', '1', '1', '2018-01-10 12:45:56'),
(133, '9', '31', '148', 'Hchxjjdnfhdhxjjx', '2', '1', '1', '2018-01-10 12:45:56'),
(134, '9', '31', '148', 'Bcbchxhd', '2', '1', '1', '2018-01-10 12:45:56'),
(135, '9', '31', '148', 'Bdjdjjd', '2', '1', '1', '2018-01-10 12:45:56'),
(136, '9', '31', '148', 'Bdhdjjf', '2', '1', '1', '2018-01-10 12:45:56'),
(137, '9', '31', '148', 'Bfndjjf', '2', '1', '1', '2018-01-10 12:45:56'),
(138, '9', '31', '148', 'Bdjdjf', '2', '1', '1', '2018-01-10 12:45:56'),
(139, '9', '31', '148', 'Hdjfjf', '2', '1', '1', '2018-01-10 12:45:56'),
(140, '9', '31', '148', 'Hfjfjf', '2', '1', '1', '2018-01-10 12:45:56'),
(141, '9', '31', '148', 'Fjcjjfjf', '2', '1', '1', '2018-01-10 12:45:56'),
(142, '9', '31', '148', 'Jkjhjjj', '2', '1', '1', '2018-01-10 12:45:56'),
(143, '9', '31', '148', 'Hhj', '2', '1', '1', '2018-01-10 12:45:56'),
(144, '9', '31', '148', 'Fghjnnnjnbvnn hjj', '2', '1', '1', '2018-01-10 12:45:56'),
(145, '9', '31', '148', 'Ujk', '2', '1', '1', '2018-01-10 12:45:56'),
(146, '9', '148', '31', 'hellooo', '1', '2', '1', '2018-01-10 12:45:56'),
(147, '9', '148', '31', 'Ana+k+nhi+tu', '1', '2', '1', '2018-01-10 12:45:56'),
(148, '22', '147', '143', 'Killl', '2', '1', '2', '2018-01-10 14:47:06'),
(149, '22', '147', '143', 'Killer', '2', '1', '2', '2018-01-10 14:54:03'),
(150, '22', '147', '143', 'Tyy', '2', '1', '2', '2018-01-10 14:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE IF NOT EXISTS `tbl_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(500) NOT NULL,
  `state_code` varchar(500) NOT NULL,
  `country_name` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`id`, `city_name`, `state_code`, `country_name`, `date_created`) VALUES
(7, 'Delhi', ' DL', 'India', '2017-09-15 10:30:55'),
(9, 'Mohali', ' PB', 'India', '2017-11-14 06:05:58'),
(10, 'Delhi', ' CA', ' United States', '2017-09-18 06:36:59'),
(11, 'Chandrapur', ' MH', 'India', '2017-11-14 06:06:01'),
(13, 'Amritsar', ' PB', 'India', '2017-11-14 06:06:04'),
(14, 'Panchkula', ' HR', 'India', '2017-11-14 06:06:06'),
(16, 'Shimla', ' HP', 'India', '2017-11-14 06:06:40'),
(17, 'Haryana', ' HR', 'India', '2017-11-14 06:06:36'),
(18, 'Sukteri', ' HR', 'India', '2017-11-14 06:06:34'),
(19, 'Perth', ' WA', ' Australia', '2017-09-29 17:15:05'),
(20, 'Melbourne', ' VI', ' Australia', '2017-09-29 17:15:46'),
(21, 'Sydney', ' NS', ' Australia', '2017-09-29 17:15:53'),
(22, 'Brisbane', ' QL', ' Australia', '2017-09-29 17:16:04'),
(23, 'Adelaide', ' SA', ' Australia', '2017-09-29 17:16:11'),
(28, 'Sahibzada Ajit singh nagar', ' SAS', 'India', '2017-09-15 10:30:55'),
(29, 'High Wycombe', ' WA', ' Australia', '2017-10-07 17:28:40'),
(33, 'Northbridge', ' wa', ' australia', '2017-10-18 13:25:14'),
(81, 'Chandannagar', ' WB', 'India', '2017-11-15 05:07:06'),
(84, 'Sri Aman', 'SK', 'Malaysia', '2017-11-15 05:07:55'),
(85, 'Malaga', 'OH', 'United States', '2017-11-15 05:08:59'),
(93, 'Rivervale', 'WA', 'Australia', '2017-12-07 07:14:24'),
(95, 'Chandigarh', 'CH', 'India', '2018-01-09 06:15:36'),
(96, 'Chandigarh', 'PB', 'India', '2018-01-09 06:15:42'),
(97, 'Panchkula', 'HR', 'India', '2018-01-09 06:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countrycode`
--

CREATE TABLE IF NOT EXISTS `tbl_countrycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=500 ;

--
-- Dumping data for table `tbl_countrycode`
--

INSERT INTO `tbl_countrycode` (`id`, `country_code`, `date_created`) VALUES
(266, '+93', '2017-11-14 11:44:20'),
(267, '+355', '2017-11-14 11:44:20'),
(268, '+213', '2017-11-14 11:44:20'),
(269, '+1684', '2017-11-14 11:44:20'),
(270, '+376', '2017-11-14 11:44:20'),
(271, '+244', '2017-11-14 11:44:20'),
(272, '+1264', '2017-11-14 11:44:20'),
(273, '+1268', '2017-11-14 11:44:20'),
(274, '+54', '2017-11-14 11:44:20'),
(275, '+374', '2017-11-14 11:44:20'),
(276, '+297', '2017-11-14 11:44:20'),
(277, '+61', '2017-11-14 11:44:20'),
(278, '+43', '2017-11-14 11:44:20'),
(279, '+994', '2017-11-14 11:44:20'),
(280, '+1242', '2017-11-14 11:44:20'),
(281, '+973', '2017-11-14 11:44:20'),
(282, '+880', '2017-11-14 11:44:20'),
(283, '+1246', '2017-11-14 11:44:20'),
(284, '+375', '2017-11-14 11:44:20'),
(285, '+32', '2017-11-14 11:44:20'),
(286, '+501', '2017-11-14 11:44:20'),
(287, '+229', '2017-11-14 11:44:20'),
(288, '+1441', '2017-11-14 11:44:20'),
(289, '+975', '2017-11-14 11:44:20'),
(290, '+591', '2017-11-14 11:44:20'),
(291, '+387', '2017-11-14 11:44:20'),
(292, '+267', '2017-11-14 11:44:20'),
(293, '+55', '2017-11-14 11:44:20'),
(294, '+246', '2017-11-14 11:44:20'),
(295, '+1284', '2017-11-14 11:44:20'),
(296, '+673', '2017-11-14 11:44:20'),
(297, '+359', '2017-11-14 11:44:20'),
(298, '+226', '2017-11-14 11:44:20'),
(299, '+257', '2017-11-14 11:44:20'),
(300, '+855', '2017-11-14 11:44:20'),
(301, '+237', '2017-11-14 11:44:20'),
(302, '+1', '2017-11-14 11:44:20'),
(303, '+238', '2017-11-14 11:44:20'),
(304, '+599', '2017-11-14 11:44:20'),
(305, '+1345', '2017-11-14 11:44:20'),
(306, '+236', '2017-11-14 11:44:20'),
(307, '+235', '2017-11-14 11:44:20'),
(308, '+56', '2017-11-14 11:44:20'),
(309, '+86', '2017-11-14 11:44:20'),
(310, '+57', '2017-11-14 11:44:20'),
(311, '+269', '2017-11-14 11:44:20'),
(312, '+243', '2017-11-14 11:44:20'),
(313, '+242', '2017-11-14 11:44:20'),
(314, '+682', '2017-11-14 11:44:20'),
(315, '+506', '2017-11-14 11:44:20'),
(316, '+225', '2017-11-14 11:44:20'),
(317, '+385', '2017-11-14 11:44:20'),
(318, '+53', '2017-11-14 11:44:20'),
(319, '+599', '2017-11-14 11:44:20'),
(320, '+357', '2017-11-14 11:44:20'),
(321, '+420', '2017-11-14 11:44:20'),
(322, '+45', '2017-11-14 11:44:20'),
(323, '+253', '2017-11-14 11:44:20'),
(324, '+1767', '2017-11-14 11:44:20'),
(325, '+1', '2017-11-14 11:44:20'),
(326, '+593', '2017-11-14 11:44:20'),
(327, '+20', '2017-11-14 11:44:20'),
(328, '+503', '2017-11-14 11:44:20'),
(329, '+240', '2017-11-14 11:44:20'),
(330, '+291', '2017-11-14 11:44:20'),
(331, '+372', '2017-11-14 11:44:20'),
(332, '+251', '2017-11-14 11:44:20'),
(333, '+500', '2017-11-14 11:44:20'),
(334, '+298', '2017-11-14 11:44:20'),
(335, '+679', '2017-11-14 11:44:20'),
(336, '+358', '2017-11-14 11:44:20'),
(337, '+33', '2017-11-14 11:44:20'),
(338, '+594', '2017-11-14 11:44:20'),
(339, '+689', '2017-11-14 11:44:20'),
(340, '+241', '2017-11-14 11:44:20'),
(341, '+220', '2017-11-14 11:44:20'),
(342, '+995', '2017-11-14 11:44:20'),
(343, '+49', '2017-11-14 11:44:20'),
(344, '+233', '2017-11-14 11:44:20'),
(345, '+350', '2017-11-14 11:44:20'),
(346, '+30', '2017-11-14 11:44:20'),
(347, '+299', '2017-11-14 11:44:20'),
(348, '+1473', '2017-11-14 11:44:20'),
(349, '+590', '2017-11-14 11:44:20'),
(350, '+1671', '2017-11-14 11:44:20'),
(351, '+502', '2017-11-14 11:44:20'),
(352, '+224', '2017-11-14 11:44:20'),
(353, '+245', '2017-11-14 11:44:20'),
(354, '+592', '2017-11-14 11:44:20'),
(355, '+509', '2017-11-14 11:44:20'),
(356, '+504', '2017-11-14 11:44:20'),
(357, '+852', '2017-11-14 11:44:20'),
(358, '+36', '2017-11-14 11:44:20'),
(359, '+354', '2017-11-14 11:44:20'),
(360, '+91', '2017-11-14 11:44:20'),
(361, '+62', '2017-11-14 11:44:20'),
(362, '+98', '2017-11-14 11:44:20'),
(363, '+964', '2017-11-14 11:44:20'),
(364, '+353', '2017-11-14 11:44:20'),
(365, '+972', '2017-11-14 11:44:20'),
(366, '+39', '2017-11-14 11:44:20'),
(367, '+1876', '2017-11-14 11:44:20'),
(368, '+81', '2017-11-14 11:44:20'),
(369, '+962', '2017-11-14 11:44:20'),
(370, '+7', '2017-11-14 11:44:20'),
(371, '+254', '2017-11-14 11:44:20'),
(372, '+686', '2017-11-14 11:44:20'),
(373, '+965', '2017-11-14 11:44:20'),
(374, '+996', '2017-11-14 11:44:20'),
(375, '+856', '2017-11-14 11:44:20'),
(376, '+371', '2017-11-14 11:44:20'),
(377, '+961', '2017-11-14 11:44:20'),
(378, '+266', '2017-11-14 11:44:20'),
(379, '+231', '2017-11-14 11:44:20'),
(380, '+218', '2017-11-14 11:44:20'),
(381, '+423', '2017-11-14 11:44:20'),
(382, '+370', '2017-11-14 11:44:20'),
(383, '+352', '2017-11-14 11:44:20'),
(384, '+853', '2017-11-14 11:44:20'),
(385, '+389', '2017-11-14 11:44:20'),
(386, '+261', '2017-11-14 11:44:20'),
(387, '+265', '2017-11-14 11:44:20'),
(388, '+60', '2017-11-14 11:44:20'),
(389, '+960', '2017-11-14 11:44:20'),
(390, '+223', '2017-11-14 11:44:20'),
(391, '+356', '2017-11-14 11:44:20'),
(392, '+692', '2017-11-14 11:44:20'),
(393, '+596', '2017-11-14 11:44:20'),
(394, '+222', '2017-11-14 11:44:20'),
(395, '+230', '2017-11-14 11:44:20'),
(396, '+52', '2017-11-14 11:44:20'),
(397, '+691', '2017-11-14 11:44:20'),
(398, '+373', '2017-11-14 11:44:20'),
(399, '+377', '2017-11-14 11:44:20'),
(400, '+976', '2017-11-14 11:44:20'),
(401, '+382', '2017-11-14 11:44:20'),
(402, '+1664', '2017-11-14 11:44:20'),
(403, '+212', '2017-11-14 11:44:20'),
(404, '+258', '2017-11-14 11:44:20'),
(405, '+95', '2017-11-14 11:44:20'),
(406, '+264', '2017-11-14 11:44:20'),
(407, '+674', '2017-11-14 11:44:20'),
(408, '+977', '2017-11-14 11:44:20'),
(409, '+31', '2017-11-14 11:44:20'),
(410, '+687', '2017-11-14 11:44:20'),
(411, '+64', '2017-11-14 11:44:20'),
(412, '+505', '2017-11-14 11:44:20'),
(413, '+227', '2017-11-14 11:44:20'),
(414, '+234', '2017-11-14 11:44:20'),
(415, '+683', '2017-11-14 11:44:20'),
(416, '+672', '2017-11-14 11:44:20'),
(417, '+850', '2017-11-14 11:44:20'),
(418, '+1670', '2017-11-14 11:44:20'),
(419, '+47', '2017-11-14 11:44:20'),
(420, '+968', '2017-11-14 11:44:20'),
(421, '+92', '2017-11-14 11:44:20'),
(422, '+680', '2017-11-14 11:44:20'),
(423, '+970', '2017-11-14 11:44:20'),
(424, '+507', '2017-11-14 11:44:20'),
(425, '+675', '2017-11-14 11:44:20'),
(426, '+595', '2017-11-14 11:44:20'),
(427, '+51', '2017-11-14 11:44:20'),
(428, '+63', '2017-11-14 11:44:20'),
(429, '+48', '2017-11-14 11:44:20'),
(430, '+351', '2017-11-14 11:44:20'),
(431, '+1', '2017-11-14 11:44:20'),
(432, '+974', '2017-11-14 11:44:20'),
(433, '+262', '2017-11-14 11:44:20'),
(434, '+40', '2017-11-14 11:44:20'),
(435, '+7', '2017-11-14 11:44:20'),
(436, '+250', '2017-11-14 11:44:20'),
(437, '+590', '2017-11-14 11:44:20'),
(438, '+290', '2017-11-14 11:44:20'),
(439, '+1869', '2017-11-14 11:44:20'),
(440, '+1758', '2017-11-14 11:44:20'),
(441, '+590', '2017-11-14 11:44:20'),
(442, '+508', '2017-11-14 11:44:20'),
(443, '+1784', '2017-11-14 11:44:20'),
(444, '+685', '2017-11-14 11:44:20'),
(445, '+378', '2017-11-14 11:44:20'),
(446, '+239', '2017-11-14 11:44:20'),
(447, '+966', '2017-11-14 11:44:20'),
(448, '+221', '2017-11-14 11:44:20'),
(449, '+381', '2017-11-14 11:44:20'),
(450, '+248', '2017-11-14 11:44:20'),
(451, '+232', '2017-11-14 11:44:20'),
(452, '+65', '2017-11-14 11:44:20'),
(453, '+1721', '2017-11-14 11:44:20'),
(454, '+421', '2017-11-14 11:44:20'),
(455, '+386', '2017-11-14 11:44:20'),
(456, '+677', '2017-11-14 11:44:20'),
(457, '+252', '2017-11-14 11:44:20'),
(458, '+27', '2017-11-14 11:44:20'),
(459, '+82', '2017-11-14 11:44:20'),
(460, '+211', '2017-11-14 11:44:20'),
(461, '+34', '2017-11-14 11:44:20'),
(462, '+94', '2017-11-14 11:44:20'),
(463, '+249', '2017-11-14 11:44:20'),
(464, '+597', '2017-11-14 11:44:20'),
(465, '+268', '2017-11-14 11:44:20'),
(466, '+46', '2017-11-14 11:44:20'),
(467, '+41', '2017-11-14 11:44:20'),
(468, '+963', '2017-11-14 11:44:20'),
(469, '+886', '2017-11-14 11:44:20'),
(470, '+992', '2017-11-14 11:44:20'),
(471, '+255', '2017-11-14 11:44:20'),
(472, '+66', '2017-11-14 11:44:20'),
(473, '+670', '2017-11-14 11:44:20'),
(474, '+228', '2017-11-14 11:44:20'),
(475, '+690', '2017-11-14 11:44:20'),
(476, '+676', '2017-11-14 11:44:20'),
(477, '+1868', '2017-11-14 11:44:20'),
(478, '+216', '2017-11-14 11:44:20'),
(479, '+90', '2017-11-14 11:44:20'),
(480, '+993', '2017-11-14 11:44:20'),
(481, '+1649', '2017-11-14 11:44:20'),
(482, '+688', '2017-11-14 11:44:20'),
(483, '+1340', '2017-11-14 11:44:20'),
(484, '+256', '2017-11-14 11:44:20'),
(485, '+380', '2017-11-14 11:44:20'),
(486, '+971', '2017-11-14 11:44:20'),
(487, '+44', '2017-11-14 11:44:20'),
(488, '+1', '2017-11-14 11:44:20'),
(489, '+598', '2017-11-14 11:44:20'),
(490, '+998', '2017-11-14 11:44:20'),
(491, '+678', '2017-11-14 11:44:20'),
(492, '+39', '2017-11-14 11:44:20'),
(493, '+58', '2017-11-14 11:44:20'),
(494, '+84', '2017-11-14 11:44:20'),
(495, '+681', '2017-11-14 11:44:20'),
(496, '+967', '2017-11-14 11:44:20'),
(497, '+260', '2017-11-14 11:44:20'),
(498, '+263', '2017-11-14 11:44:20'),
(499, '+91', '2018-01-08 05:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customerRating`
--

CREATE TABLE IF NOT EXISTS `tbl_customerRating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `driver_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `move_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `rating` varchar(500) COLLATE utf8_bin NOT NULL,
  `comment` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_customerRating`
--

INSERT INTO `tbl_customerRating` (`id`, `user_id`, `driver_id`, `move_id`, `rating`, `comment`, `date_created`) VALUES
(1, '28', '31', '3', '5.0', 'bzbx', '2018-01-11 07:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_declinedDriver`
--

CREATE TABLE IF NOT EXISTS `tbl_declinedDriver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` varchar(500) NOT NULL,
  `move_id` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_declinedDriver`
--

INSERT INTO `tbl_declinedDriver` (`id`, `driver_id`, `move_id`, `date_created`) VALUES
(1, '149', '13', '2018-01-09 10:01:25'),
(2, '149', '12', '2018-01-09 10:02:24'),
(3, '149', '11', '2018-01-09 10:04:10'),
(4, '31', '21', '2018-01-10 06:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driverDetail`
--

CREATE TABLE IF NOT EXISTS `tbl_driverDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `located_at` varchar(500) COLLATE utf8_bin NOT NULL,
  `country_name` varchar(500) COLLATE utf8_bin NOT NULL,
  `status` varchar(500) COLLATE utf8_bin NOT NULL DEFAULT '1' COMMENT '1 for online,2 for offline',
  `no_of_movers` varchar(500) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `vehicle_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `license_no` varchar(500) COLLATE utf8_bin NOT NULL,
  `rc_no` varchar(500) COLLATE utf8_bin NOT NULL,
  `insurance_no` varchar(500) COLLATE utf8_bin NOT NULL,
  `vehicle_no` varchar(500) COLLATE utf8_bin NOT NULL,
  `license_image_front` varchar(500) COLLATE utf8_bin NOT NULL,
  `license_image_back` varchar(500) COLLATE utf8_bin NOT NULL,
  `rc_image_front` varchar(500) COLLATE utf8_bin NOT NULL,
  `rc_image_back` varchar(500) COLLATE utf8_bin NOT NULL,
  `vehicle_image_front` varchar(500) COLLATE utf8_bin NOT NULL,
  `vehicle_image_back` varchar(500) COLLATE utf8_bin NOT NULL,
  `insurance_image_front` varchar(500) COLLATE utf8_bin NOT NULL,
  `insurance_image_back` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `tbl_driverDetail`
--

INSERT INTO `tbl_driverDetail` (`id`, `driver_id`, `located_at`, `country_name`, `status`, `no_of_movers`, `vehicle_id`, `license_no`, `rc_no`, `insurance_no`, `vehicle_no`, `license_image_front`, `license_image_back`, `rc_image_front`, `rc_image_back`, `vehicle_image_front`, `vehicle_image_back`, `insurance_image_front`, `insurance_image_back`, `date_created`) VALUES
(8, '31', 'a:3:{i:0;s:2:"95";i:1;s:2:"96";i:2;s:2:"97";}', 'India', '1', '2', '17', '45645456546', '456654654456', '55445546', 'CH 01 AB 4391', 'http://phphosting.osvin.net/moversOnDemand/public/driverdetail/license_image/ic_gumtree_pickup_big.png', '', 'http://phphosting.osvin.net/moversOnDemand/public/driverdetail/rc_image/ic_gumtree_pickup_big.png', '', '', '', 'http://phphosting.osvin.net/moversOnDemand/public/driverdetail/insurance_image/ic_gumtree_pickup_big.png', '', '2017-08-16 06:26:01'),
(46, '145', 'a:3:{i:0;s:2:"95";i:1;s:2:"96";i:2;s:2:"18";}', ' Australia', '1', '1', '17', 'jhgfjghghg', 'hgfdhgd', 'dghgfh', 'gfgfhgfgfgh', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-05_17:50:547.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-21_13:19:188.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-05_17:50:548.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-21_13:19:189.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-01_11:29:1818.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-06_10:39:325.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-05_17:50:549.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-01_11:29:1817.png', '2018-01-02 06:41:19'),
(47, '146', 'a:3:{i:0;s:2:"95";i:1;s:2:"96";i:2;s:2:"18";}', 'India', '1', '1', '15', '4545456456554564', 'dghgh', 'dhggfhdfg', 'ghfdghdfhf', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-10_14:43:325.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-10_14:43:326.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-21_13:19:1810.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-05_17:50:5410.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-06_10:39:327.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-11_11:01:133.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-06_10:39:326.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-21_13:19:1916.png', '2018-01-04 06:13:31'),
(48, '147', 'a:3:{i:0;s:2:"95";i:1;s:2:"96";i:2;s:2:"18";}', 'India', '1', '2', '17', 'hdbhgfhgfhghghgfhdhggdhdf', 'dfhggfh', 'hdgggdhgfh', 'hgfdhgfg', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-06_10:39:329.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-11_11:01:134.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-21_13:19:1811.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-05_17:50:5411.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-11_11:01:136.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-06_10:39:3210.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-11_11:01:135.png', 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-05_17:50:5412.png', '2018-01-04 06:15:16'),
(50, '151', 'a:4:{i:0;s:1:"9";i:1;s:2:"28";i:2;s:2:"95";i:3;s:2:"96";}', 'India', '1', '1', '22', 'ABC012', '', '', 'GA 00AB 0000', 'http://movers.com.au/public/driverdetail/index13.jpeg', 'http://movers.com.au/public/driverdetail/index23.jpeg', 'http://movers.com.au/public/driverdetail/index6.jpeg', 'http://movers.com.au/public/driverdetail/index14.jpeg', 'http://movers.com.au/public/driverdetail/index26.jpeg', 'http://movers.com.au/public/driverdetail/index7.jpeg', 'http://movers.com.au/public/driverdetail/index24.jpeg', 'http://movers.com.au/public/driverdetail/index25.jpeg', '2018-01-11 05:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driversFund`
--

CREATE TABLE IF NOT EXISTS `tbl_driversFund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `outstanding_amount` varchar(500) COLLATE utf8_bin NOT NULL,
  `paid_amount` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tbl_driversFund`
--

INSERT INTO `tbl_driversFund` (`id`, `driver_id`, `outstanding_amount`, `paid_amount`, `date_modified`, `date_created`) VALUES
(3, '31', '6446.779', '22748', '2018-01-10 18:28:52', '2018-01-10 18:28:52'),
(32, '145', '0', '0', '0000-00-00 00:00:00', '2018-01-02 06:41:19'),
(33, '146', '0', '0', '0000-00-00 00:00:00', '2018-01-04 06:13:31'),
(34, '147', '1437.8', '0', '2018-01-05 15:51:12', '2018-01-05 15:51:12'),
(35, '149', '1017.1', '0', '2018-01-09 11:45:51', '2018-01-09 11:45:51'),
(36, '151', '0', '0', '0000-00-00 00:00:00', '2018-01-11 05:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `rating` varchar(500) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forgotPassword`
--

CREATE TABLE IF NOT EXISTS `tbl_forgotPassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_forgotPassword`
--

INSERT INTO `tbl_forgotPassword` (`id`, `user_id`, `time`, `status`, `date_created`) VALUES
(1, '144', '2018-01-11 06:53:18', 1, '2018-01-11 06:53:18'),
(2, '151', '2018-01-11 06:52:44', 0, '2018-01-11 06:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL COMMENT '1=ios,0=android',
  `unique_deviceId` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `token_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=login,0=logout',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `device_id`, `unique_deviceId`, `token_id`, `status`, `date_created`) VALUES
(1, 144, 2, '', '', 1, '2018-01-09 08:40:37'),
(2, 31, 0, '19038eb1db06c670', 'eC80K_X2awo:APA91bEfkLQWNEEYQsEXTOM2g7z82VfRxBJ_JGqxqH9tpX77bU8AfcK4ORTS3UWT5d98QzUJMJcMuhs4jtAQsuIzlXyFXeB-5Tl0O1JBUR7imOG8hp2ZnxKyE7mVBmrQLqjtwvUGTfxV', 0, '2018-01-09 08:43:50'),
(3, 31, 1, '2FB208FD-D9E1-4BA6-AD1D-5FBF58D2B576', '0843a25e403b81b44eb87a61250e4b54afa6f40e95523c0fcf8c32dde502ab14', 0, '2018-01-09 09:43:19'),
(4, 31, 0, '19038eb1db06c670', 'eC80K_X2awo:APA91bEfkLQWNEEYQsEXTOM2g7z82VfRxBJ_JGqxqH9tpX77bU8AfcK4ORTS3UWT5d98QzUJMJcMuhs4jtAQsuIzlXyFXeB-5Tl0O1JBUR7imOG8hp2ZnxKyE7mVBmrQLqjtwvUGTfxV', 0, '2018-01-09 09:44:20'),
(5, 31, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-09 09:44:35'),
(6, 31, 0, '19038eb1db06c670', 'eC80K_X2awo:APA91bEfkLQWNEEYQsEXTOM2g7z82VfRxBJ_JGqxqH9tpX77bU8AfcK4ORTS3UWT5d98QzUJMJcMuhs4jtAQsuIzlXyFXeB-5Tl0O1JBUR7imOG8hp2ZnxKyE7mVBmrQLqjtwvUGTfxV', 0, '2018-01-09 09:44:59'),
(7, 149, 0, '15f7f38b9d7fb028', 'embT-UJby2A:APA91bHOVtr_VMHlD8VlwUhVIAqWIS3nyQvBfctOeUCjJK5urTDxMe77AqSqpc0ZjqPF7KA6Jz3j6ahXr8prba3Ecwls-SShf-Y57f0L7sQZSpB4w6RCugveSqrRNK1KowRWpah4_xYo', 0, '2018-01-09 09:56:59'),
(8, 148, 0, '19038eb1db06c670', 'eYzmej6NGHA:APA91bHf74G_-CTvqQ56MNBrts804lUuBc6MGse34q5AIAwOare1xorGVJdaiJ1uDyg3bA-K_PBkRpcTk-oRvJwM7TW4SqbWQU9hhzDzW1kvPsrAF-3BirUUtPLisazb5xgLZz-lVWGc', 1, '2018-01-09 10:00:06'),
(9, 28, 0, '6e0d37e6e2784ba7', 'dxaj1_5MllM:APA91bG4VrU2K7U7RFjEAUhi0N4XG9Y62MxzS7mm_xLGl-IGd3lYqTbTAWqfMgAW2KbGz-7A3QR1sclNfyvidOxEE7FGI7ukBmnYHcbdHrcidin71yv9aC-6N-ovJcY8vibVsUhUyCPo', 0, '2018-01-09 10:00:09'),
(10, 31, 0, '6e0d37e6e2784ba7', 'cOf606Bo8KU:APA91bGB-3R18Qq7h_4mMj99cs4AKoHJmskZnfPmMlDw7_MiXv7k1aL1LGjXT9Chkv_ndIrzwEr8Oj4vp6cTfeyPJvxYtDWSukHmUJeKpF1IyjjttrdbiwNRhOANnknJHlLwhwn25uwc', 0, '2018-01-09 10:10:59'),
(11, 148, 0, '6e0d37e6e2784ba7', 'dxaj1_5MllM:APA91bG4VrU2K7U7RFjEAUhi0N4XG9Y62MxzS7mm_xLGl-IGd3lYqTbTAWqfMgAW2KbGz-7A3QR1sclNfyvidOxEE7FGI7ukBmnYHcbdHrcidin71yv9aC-6N-ovJcY8vibVsUhUyCPo', 1, '2018-01-09 10:59:39'),
(12, 31, 0, '19038eb1db06c670', 'eC80K_X2awo:APA91bEfkLQWNEEYQsEXTOM2g7z82VfRxBJ_JGqxqH9tpX77bU8AfcK4ORTS3UWT5d98QzUJMJcMuhs4jtAQsuIzlXyFXeB-5Tl0O1JBUR7imOG8hp2ZnxKyE7mVBmrQLqjtwvUGTfxV', 0, '2018-01-09 11:39:13'),
(13, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-09 11:51:54'),
(14, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-09 12:14:03'),
(15, 31, 0, '15f7f38b9d7fb028', 'embT-UJby2A:APA91bHOVtr_VMHlD8VlwUhVIAqWIS3nyQvBfctOeUCjJK5urTDxMe77AqSqpc0ZjqPF7KA6Jz3j6ahXr8prba3Ecwls-SShf-Y57f0L7sQZSpB4w6RCugveSqrRNK1KowRWpah4_xYo', 0, '2018-01-09 12:45:44'),
(16, 144, 2, '', '', 1, '2018-01-09 13:26:55'),
(17, 33, 1, '4A73B852-9360-480F-A97E-E582D68B726C', '0a86997d65c66ade1cd8dadc9f01fb29ee51db6178ed4392fe1dce9af2d3b406', 1, '2018-01-09 15:02:11'),
(18, 144, 2, '', '', 1, '2018-01-10 04:21:55'),
(19, 31, 0, '6e0d37e6e2784ba7', 'cOf606Bo8KU:APA91bGB-3R18Qq7h_4mMj99cs4AKoHJmskZnfPmMlDw7_MiXv7k1aL1LGjXT9Chkv_ndIrzwEr8Oj4vp6cTfeyPJvxYtDWSukHmUJeKpF1IyjjttrdbiwNRhOANnknJHlLwhwn25uwc', 0, '2018-01-10 04:31:56'),
(20, 144, 2, '', '', 1, '2018-01-10 05:23:45'),
(21, 144, 2, '', '', 1, '2018-01-10 05:23:45'),
(22, 31, 0, '1a3bc06052f9873c', 'cRRq8S-EmQ8:APA91bEYShzijZtoZl7lEzPur2Qmzc3xFh8s-qIX-MJ0xaVaHtZq2EXsS3eSFMTkycK45d1vk6zorgBWFaLkpwBzvy3QuGmcTtoCWxte846bx-fT5lTjaBno5kehqAW-Cy-iEdwXVOkc', 0, '2018-01-10 05:44:15'),
(23, 31, 0, '6e0d37e6e2784ba7', 'cOf606Bo8KU:APA91bGB-3R18Qq7h_4mMj99cs4AKoHJmskZnfPmMlDw7_MiXv7k1aL1LGjXT9Chkv_ndIrzwEr8Oj4vp6cTfeyPJvxYtDWSukHmUJeKpF1IyjjttrdbiwNRhOANnknJHlLwhwn25uwc', 0, '2018-01-10 05:45:58'),
(24, 144, 0, 'f9fb62e700e8f0c0', 'cWXGO78DL0Q:APA91bFpcwTdeFzepOlI4knB8oWis2uHp9tsvkeg4RvUxmcQqNE_8a8zNwej2YBJofmD6--pQOP616mJNKbPvUDGEF1EGOMm4tPUzcGP70G1K9nWgEwZczZN0DfvRnVug-_uOG0go6l1', 1, '2018-01-10 07:00:45'),
(25, 144, 2, '', '', 1, '2018-01-10 07:38:19'),
(26, 143, 1, '0A0DE106-FE64-4AE3-9EFD-A0CF52318541', 'b5d571743c5b24d82d9e0af1df2b354f4afde34c6419a676b643501b3b3939d5', 0, '2018-01-10 09:00:55'),
(27, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:02:03'),
(28, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:02:43'),
(29, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:04:25'),
(30, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:06:56'),
(31, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-10 09:08:15'),
(32, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:23:44'),
(33, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-10 09:24:26'),
(34, 146, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-10 09:33:36'),
(35, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:34:29'),
(36, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-10 09:35:09'),
(37, 147, 1, 'E1D135AD-030B-4B98-9787-3641B319BE3D', '4e635912b98f643cc526c18129ab9493afda1ea1debbf54e10b8bee6a187199d', 0, '2018-01-10 09:37:17'),
(38, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-10 09:37:50'),
(39, 147, 1, 'BD81C25F-367C-4D64-87AD-4BF4D7E19500', 'b8fef7674069ad80c088af95471332b81b44835f749aa1076bbc7b1be0a72a92', 0, '2018-01-10 09:48:06'),
(40, 143, 1, '399C055E-E62C-48B5-B3B2-B35DEBD833CF', '863ca6cca7f4c31a29534eda2eff8055c4d01fca306c516cef5c3d5979a33fd4', 1, '2018-01-10 09:49:02'),
(41, 147, 0, '5410a5c3c24cec20', 'fLexjdoBqwU:APA91bGdu2vMS2RPR9ZL5qvKVWvimOiqE4RSysHmrP3iVW2mTdZ6FW_QfSVYb8WsiudCk49VCHdEd_JZxDztobEKoMHwNIZY2QuPTO7Zs49OmI6-fKiEa2mrBZtjEZzM4st8Y3rus3dL', 0, '2018-01-10 10:03:21'),
(42, 147, 1, 'BD81C25F-367C-4D64-87AD-4BF4D7E19500', 'b8fef7674069ad80c088af95471332b81b44835f749aa1076bbc7b1be0a72a92', 0, '2018-01-10 10:04:31'),
(43, 144, 2, '', '', 1, '2018-01-10 11:22:48'),
(44, 143, 1, 'E90234D2-2FF6-4FFD-9E79-F5AAC988643B', '3093db044bca95155ffac462a0fdc4bc432aebaebd09825a4a831eaa13f99c96', 1, '2018-01-10 11:58:43'),
(45, 144, 2, '', '', 1, '2018-01-10 13:07:01'),
(46, 144, 2, '', '', 1, '2018-01-10 13:25:39'),
(47, 143, 1, 'E194BBD1-27A4-4EEE-BE13-0C776A85C564', '', 1, '2018-01-10 16:24:47'),
(48, 147, 1, '8DBABBEE-827D-47CE-A207-83085A5C1B6C', '', 0, '2018-01-11 02:06:23'),
(49, 144, 2, '', '', 1, '2018-01-11 04:22:35'),
(50, 31, 0, '1a3bc06052f9873c', 'cRRq8S-EmQ8:APA91bEYShzijZtoZl7lEzPur2Qmzc3xFh8s-qIX-MJ0xaVaHtZq2EXsS3eSFMTkycK45d1vk6zorgBWFaLkpwBzvy3QuGmcTtoCWxte846bx-fT5lTjaBno5kehqAW-Cy-iEdwXVOkc', 0, '2018-01-11 04:29:48'),
(51, 31, 0, '6e0d37e6e2784ba7', 'd2MWx_g8eiU:APA91bHjl0re5bW23KsQJqboQIW4j_etvx1T79HUQQ6P1J5PsFT9sohXBkIjfNFMqAQnksNWcQaWW2y0InfVytL43fu--mIih-chjy9Ez7ww-CM2jHMszEDkcowjLUOcvAgqYKqRKwbo', 0, '2018-01-11 04:30:09'),
(52, 31, 0, '1a3bc06052f9873c', 'cRRq8S-EmQ8:APA91bEYShzijZtoZl7lEzPur2Qmzc3xFh8s-qIX-MJ0xaVaHtZq2EXsS3eSFMTkycK45d1vk6zorgBWFaLkpwBzvy3QuGmcTtoCWxte846bx-fT5lTjaBno5kehqAW-Cy-iEdwXVOkc', 1, '2018-01-11 04:40:16'),
(53, 148, 1, '691C045C-A499-4861-AFC9-3E7A39D8710F', '02e62ee5fee1f73e90835cd48ece100e218644eb513d9ff5ea955ac472d2fc54', 0, '2018-01-11 04:53:01'),
(54, 149, 1, '2D9BDD60-B2B6-47D0-8C74-D29B65D37601', '2cd64de1d2890a6411c6934651020805c3fa0d463f123b79ef435420d1f1364d', 0, '2018-01-11 04:56:31'),
(55, 149, 1, '2D9BDD60-B2B6-47D0-8C74-D29B65D37601', '2cd64de1d2890a6411c6934651020805c3fa0d463f123b79ef435420d1f1364d', 0, '2018-01-11 05:00:02'),
(56, 150, 1, '691C045C-A499-4861-AFC9-3E7A39D8710F', '02e62ee5fee1f73e90835cd48ece100e218644eb513d9ff5ea955ac472d2fc54', 0, '2018-01-11 05:21:28'),
(57, 151, 1, '2D9BDD60-B2B6-47D0-8C74-D29B65D37601', '2cd64de1d2890a6411c6934651020805c3fa0d463f123b79ef435420d1f1364d', 0, '2018-01-11 05:37:28'),
(58, 150, 1, '691C045C-A499-4861-AFC9-3E7A39D8710F', '02e62ee5fee1f73e90835cd48ece100e218644eb513d9ff5ea955ac472d2fc54', 1, '2018-01-11 05:42:35'),
(59, 151, 1, '2D9BDD60-B2B6-47D0-8C74-D29B65D37601', 'c5aac5bbe4732681189c4050e37c1e591db67cae372f1f76712662a669042a0e', 0, '2018-01-11 06:55:21'),
(60, 151, 1, '2D9BDD60-B2B6-47D0-8C74-D29B65D37601', 'c5aac5bbe4732681189c4050e37c1e591db67cae372f1f76712662a669042a0e', 0, '2018-01-11 06:56:43'),
(61, 147, 1, 'BD81C25F-367C-4D64-87AD-4BF4D7E19500', 'b8fef7674069ad80c088af95471332b81b44835f749aa1076bbc7b1be0a72a92', 1, '2018-01-11 07:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moveHistory`
--

CREATE TABLE IF NOT EXISTS `tbl_moveHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `booking_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `status` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '1=accepted,2=started,3=completed,4=cancelled',
  `accepted_time` datetime NOT NULL,
  `started_time` datetime NOT NULL,
  `completed_time` datetime NOT NULL,
  `cancelled_time` datetime NOT NULL,
  `cancelled_by` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '1=driver,2=customer',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_moveHistory`
--

INSERT INTO `tbl_moveHistory` (`id`, `driver_id`, `booking_id`, `status`, `accepted_time`, `started_time`, `completed_time`, `cancelled_time`, `cancelled_by`, `date_created`) VALUES
(1, '', '1', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 09:00:04', '0', '2018-01-09 09:00:04'),
(2, '', '2', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 09:46:52', '3', '2018-01-09 09:46:52'),
(3, '31', '3', '3', '2018-01-09 09:34:09', '2018-01-09 09:34:09', '2018-01-09 09:34:09', '0000-00-00 00:00:00', '', '2018-01-11 07:16:31'),
(4, '', '4', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-09 09:20:50'),
(5, '31', '5', '4', '2018-01-09 09:24:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 10:02:04', '0', '2018-01-09 10:02:04'),
(6, '', '6', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 10:30:04', '0', '2018-01-09 10:30:04'),
(7, '', '7', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 09:42:13', '2', '2018-01-09 09:42:13'),
(8, '', '8', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 09:41:52', '2', '2018-01-09 09:41:52'),
(9, '31', '9', '3', '2018-01-09 09:34:09', '2018-01-09 11:41:03', '2018-01-10 18:28:52', '0000-00-00 00:00:00', '', '2018-01-10 18:28:52'),
(10, '31', '10', '4', '2018-01-09 09:35:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 11:00:03', '0', '2018-01-09 11:00:03'),
(11, '', '11', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 10:50:04', '0', '2018-01-09 10:50:04'),
(12, '', '12', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 10:55:04', '0', '2018-01-09 10:55:04'),
(13, '', '13', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 10:55:06', '0', '2018-01-09 10:55:06'),
(14, '', '14', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-09 09:58:17', '2', '2018-01-09 09:58:17'),
(15, '149', '15', '3', '2018-01-09 11:03:22', '2018-01-09 11:37:04', '2018-01-09 11:45:51', '2018-01-09 11:28:04', '0', '2018-01-09 11:45:51'),
(16, '', '18', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 05:25:03', '0', '2018-01-10 05:25:03'),
(17, '', '19', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 05:35:03', '0', '2018-01-10 05:35:03'),
(18, '', '20', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 05:12:23', '2', '2018-01-10 05:12:23'),
(19, '', '21', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 06:50:04', '0', '2018-01-10 06:50:04'),
(20, '147', '22', '4', '2018-01-10 09:58:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 04:08:22', '3', '2018-01-11 04:08:22'),
(21, '147', '23', '4', '2018-01-10 10:34:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 04:27:11', '3', '2018-01-11 04:27:11'),
(22, '', '24', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 13:30:04', '0', '2018-01-10 13:30:04'),
(23, '', '25', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 13:39:32', '2', '2018-01-10 13:39:32'),
(24, '', '26', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 14:30:04', '0', '2018-01-10 14:30:04'),
(25, '', '27', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 14:43:29', '2', '2018-01-10 14:43:29'),
(26, '', '28', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 15:45:03', '0', '2018-01-10 15:45:03'),
(27, '', '29', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-10 15:50:04', '0', '2018-01-10 15:50:04'),
(28, '', '30', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 04:36:47', '2', '2018-01-11 04:36:47'),
(29, '', '31', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 05:18:11', '2', '2018-01-11 05:18:11'),
(30, '', '32', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 06:45:04', '0', '2018-01-11 06:45:04'),
(31, '', '33', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 06:45:06', '0', '2018-01-11 06:45:06'),
(32, '151', '34', '1', '2018-01-11 06:00:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-11 06:00:48'),
(33, '', '35', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-11 07:24:50'),
(34, '', '36', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-01-11 07:31:35', '2', '2018-01-11 07:31:35'),
(35, '', '37', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2018-01-11 07:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movepricing`
--

CREATE TABLE IF NOT EXISTS `tbl_movepricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `move_id` varchar(500) NOT NULL,
  `vehicle_km_charge` varchar(500) DEFAULT NULL,
  `vehicle_mover_time_charge` varchar(500) DEFAULT NULL,
  `gst_percentage` varchar(500) DEFAULT NULL,
  `no_of_movers` varchar(500) NOT NULL,
  `vehicle_min_fare` varchar(500) DEFAULT NULL,
  `min_time` varchar(500) DEFAULT NULL,
  `max_time` varchar(500) DEFAULT NULL,
  `discount_price` varchar(500) DEFAULT '0',
  `distance` varchar(500) DEFAULT NULL,
  `time` varchar(500) NOT NULL,
  `distance_price` varchar(500) DEFAULT NULL,
  `time_price` varchar(500) DEFAULT NULL,
  `min_loading_unloading_fare` varchar(500) NOT NULL,
  `max_loading_unloading_fare` varchar(500) NOT NULL,
  `extra_fare` varchar(500) NOT NULL DEFAULT '0',
  `gst_price` varchar(500) NOT NULL DEFAULT '0',
  `min_estimate_price` varchar(500) NOT NULL,
  `max_estimate_price` varchar(500) NOT NULL,
  `estimate_price` varchar(500) NOT NULL,
  `total_price` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_movepricing`
--

INSERT INTO `tbl_movepricing` (`id`, `move_id`, `vehicle_km_charge`, `vehicle_mover_time_charge`, `gst_percentage`, `no_of_movers`, `vehicle_min_fare`, `min_time`, `max_time`, `discount_price`, `distance`, `time`, `distance_price`, `time_price`, `min_loading_unloading_fare`, `max_loading_unloading_fare`, `extra_fare`, `gst_price`, `min_estimate_price`, `max_estimate_price`, `estimate_price`, `total_price`, `date_created`) VALUES
(1, '1', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '1.14', '395.0', '0', '395', '10', '20', '0', '0', '16.86', '26.86', '35.00', '', '2018-01-09 07:59:24'),
(2, '2', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '1.98', '401.0', '1', '7', '10', '30', '0', '0', '18.17', '38.17', '35.00', '', '2018-01-09 08:45:08'),
(3, '3', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '1.95', '396.0', '1', '7', '10', '30', '0', '0', '18.06', '38.06', '35.00', '', '2018-01-09 08:47:05'),
(4, '4', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '1.8', '269.0', '1', '4', '10', '30', '0', '0', '15.83', '35.83', '35.00', '', '2018-01-09 09:20:50'),
(5, '5', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.14', '455.0', '2', '8', '10', '30', '0', '0', '19.19', '39.19', '35.00', '', '2018-01-09 09:24:32'),
(6, '6', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.09', '445.0', '2', '7', '10', '30', '0', '0', '18.99', '38.99', '35.00', '', '2018-01-09 09:27:38'),
(7, '7', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '1.91', '389.0', '1', '6', '10', '30', '0', '0', '17.91', '37.91', '35.00', '', '2018-01-09 09:28:13'),
(8, '8', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '1.9', '389.0', '1', '6', '10', '30', '0', '0', '17.9', '37.9', '35.00', '', '2018-01-09 09:30:53'),
(9, '9', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.05', '216', '2', NULL, '10', '30', '2121', '913', '18.56', '38.56', '35.00', '4880.5', '2018-01-09 09:34:00'),
(10, '10', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.99', '567.0', '2', '9', '10', '30', '0', '0', '21.69', '41.69', '35.00', '', '2018-01-09 09:35:27'),
(11, '11', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '1.51', '344.0', '0', '6', '10', '20', '0', '0', '16.11', '26.11', '35.00', '', '2018-01-09 09:45:08'),
(12, '12', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '0.16', '72.0', '0', '1', '10', '20', '0', '0', '11.24', '21.24', '35.00', '', '2018-01-09 09:50:22'),
(13, '13', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '1.91', '389.0', '0', '6', '10', '20', '0', '0', '16.96', '26.96', '35.00', '', '2018-01-09 09:53:00'),
(14, '14', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '2.06', '421.0', '1', '7', '10', '20', '0', '0', '17.54', '27.54', '35.00', '', '2018-01-09 09:54:34'),
(15, '15', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '3.82', '-1061424697', '1', NULL, '10', '20', '', '1', '17.66', '27.66', '35.00', '7.5', '2018-01-09 11:02:22'),
(16, '18', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.024', '365', '2', '6', '10', '30', '0', '0', '17.60', '37.60', '35.00', '', '2018-01-10 04:21:10'),
(17, '19', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.097', '372', '2', '6', '10', '30', '0', '0', '17.77', '37.77', '35.00', '', '2018-01-10 04:34:16'),
(18, '20', '0.5', '1.5', '23', '2', '35.00', '10', '20', '0', '2.04', '558.0', '1', '14', '15', '30', '0', '0', '29.97', '44.97', '37.47', '', '2018-01-10 05:10:26'),
(19, '21', '0.75', '1.5', '23', '2', '35.00', '10', '30', '0', '2.446', '468', '2', '12', '15', '45', '0', '0', '17', '47', '35.00', '', '2018-01-10 05:50:00'),
(20, '22', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '1.865', '397', '1', '7', '10', '30', '0', '0', '18.02', '38.02', '35.00', '', '2018-01-10 09:49:50'),
(21, '23', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.159', '396', '2', '7', '10', '30', '0', '0', '18.22', '38.22', '35.00', '', '2018-01-10 10:16:13'),
(22, '24', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.16', '440.0', '2', '7', '10', '30', '0', '0', '18.95', '38.95', '35.00', '', '2018-01-10 12:44:44'),
(23, '25', '0.25', '1.5', '23', '2', '35.00', '10', '20', '0', '1.682', '209', '0', '5', '15', '30', '0', '0', '17', '32', '35.00', '', '2018-01-10 13:39:23'),
(24, '26', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.194', '378', '2', '6', '10', '30', '0', '0', '17.95', '37.95', '35.00', '', '2018-01-10 14:01:49'),
(25, '27', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.852', '523', '2', '9', '10', '30', '0', '0', '20.86', '40.86', '35.00', '', '2018-01-10 14:42:04'),
(26, '28', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '3.242', '583', '2', '10', '10', '30', '0', '0', '22.15', '42.15', '35.00', '', '2018-01-10 14:44:36'),
(27, '29', '0.75', '1', '23', '1', '35.00', '10', '30', '0', '2.87', '529', '2', '9', '10', '30', '0', '0', '20.97', '40.97', '35.00', '', '2018-01-10 14:46:09'),
(28, '30', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '0.16', '42.0', '0', '1', '10', '20', '0', '0', '10.74', '20.74', '35.00', '', '2018-01-11 04:36:38'),
(29, '31', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '1.555', '294', '0', '5', '10', '20', '0', '0', '11', '21', '35.00', '', '2018-01-11 05:14:54'),
(30, '32', '0.25', '1.5', '23', '2', '35.00', '10', '20', '0', '1.023', '224', '0', '6', '15', '30', '0', '0', '17', '32', '35.00', '', '2018-01-11 05:41:12'),
(31, '33', '0.25', '1.5', '23', '2', '35.00', '10', '20', '0', '1.023', '224', '0', '6', '15', '30', '0', '0', '17', '32', '35.00', '', '2018-01-11 05:44:21'),
(32, '34', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '3.998', '527', '1', '9', '10', '20', '0', '0', '19.78', '29.78', '35.00', '', '2018-01-11 05:59:19'),
(33, '35', '0.25', '1.5', '23', '2', '35.00', '10', '20', '0', '2.132', '302', '1', '8', '15', '30', '0', '0', '17', '32', '35.00', '', '2018-01-11 07:24:50'),
(34, '36', '0.25', '1.5', '23', '2', '35.00', '10', '20', '0', '2.132', '302', '1', '8', '15', '30', '0', '0', '17', '32', '35.00', '', '2018-01-11 07:31:24'),
(35, '37', '0.25', '1', '23', '1', '35.00', '10', '20', '0', '1.641', '215', '0', '4', '10', '20', '0', '0', '11', '21', '35.00', '', '2018-01-11 07:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moveType`
--

CREATE TABLE IF NOT EXISTS `tbl_moveType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=order,2=move',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `tbl_moveType`
--

INSERT INTO `tbl_moveType` (`id`, `title`, `icon`, `type`, `date_created`) VALUES
(72, 'Small Moves', 'http://movers.com.au/Admin/public/movetypeicon/ic_small_moves_square.png', 2, '2017-08-04 11:04:38'),
(73, 'Store Pickup', 'http://movers.com.au/Admin/public/movetypeicon/ic_store_pickup_square.png', 1, '2017-08-04 11:04:58'),
(74, 'Gumtree Pickup', 'http://movers.com.au/Admin/public/movetypeicon/ic_gumtree_pickup_square3.png', 2, '2017-08-04 11:05:20'),
(75, 'Rubbish Removal', 'http://movers.com.au/Admin/public/movetypeicon/ic_rubbish_removal_square2.png', 2, '2017-08-04 11:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE IF NOT EXISTS `tbl_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `booking_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `user_type` varchar(500) COLLATE utf8_bin NOT NULL,
  `messageNotification` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE IF NOT EXISTS `tbl_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(500) COLLATE utf8_bin NOT NULL,
  `otp` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promocode`
--

CREATE TABLE IF NOT EXISTS `tbl_promocode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_code` varchar(500) COLLATE utf8_bin NOT NULL,
  `value` varchar(500) COLLATE utf8_bin NOT NULL,
  `max_amount` varchar(500) COLLATE utf8_bin NOT NULL,
  `user_max_usage` varchar(500) COLLATE utf8_bin NOT NULL,
  `expiry_date` date NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_promocode`
--

INSERT INTO `tbl_promocode` (`id`, `promo_code`, `value`, `max_amount`, `user_max_usage`, `expiry_date`, `date_created`) VALUES
(21, 'test', '64', '50', '2', '2018-01-25', '2018-01-10 07:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promousersData`
--

CREATE TABLE IF NOT EXISTS `tbl_promousersData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to_id` varchar(500) NOT NULL,
  `user_refer_id` varchar(500) NOT NULL,
  `promo_id` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_promousersData`
--

INSERT INTO `tbl_promousersData` (`id`, `user_to_id`, `user_refer_id`, `promo_id`, `status`, `type`, `date_created`) VALUES
(1, '144', '', '21', '0', '1', '2018-01-10 13:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_booking_charge` varchar(500) COLLATE utf8_bin NOT NULL,
  `buffer_time` varchar(500) COLLATE utf8_bin NOT NULL,
  `referal_amount` varchar(500) COLLATE utf8_bin NOT NULL,
  `referal_percentage` varchar(500) COLLATE utf8_bin NOT NULL,
  `admin_percentage` varchar(500) COLLATE utf8_bin NOT NULL,
  `move_complete_buffer_time` varchar(500) COLLATE utf8_bin NOT NULL,
  `type` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '0 for within hour,1 for currentday,2  for no of days',
  `gst_percentage` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `min_booking_charge`, `buffer_time`, `referal_amount`, `referal_percentage`, `admin_percentage`, `move_complete_buffer_time`, `type`, `gst_percentage`, `date_created`) VALUES
(1, '10', '10', '60', '50', '45', '145', '8', '23', '2017-08-14 04:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeManagement`
--

CREATE TABLE IF NOT EXISTS `tbl_timeManagement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week_days` varchar(500) DEFAULT NULL COMMENT '1 for monday and so on 7 for sunday',
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=141 ;

--
-- Dumping data for table `tbl_timeManagement`
--

INSERT INTO `tbl_timeManagement` (`id`, `week_days`, `start_time`, `end_time`, `date_created`) VALUES
(88, '2', '01:00:00', '01:30:00', '2017-11-10 04:36:35'),
(89, '1', '02:00:00', '02:30:00', '2017-11-10 04:37:12'),
(92, '5', '01:00:00', '02:00:00', '2017-11-20 09:05:46'),
(93, '6', '02:00:00', '02:30:00', '2017-11-20 09:05:52'),
(94, '6', '01:30:00', '02:00:00', '2017-11-20 09:36:40'),
(96, '2', '01:30:00', '02:00:00', '2017-11-21 07:17:11'),
(97, '5', '02:00:00', '02:30:00', '2017-12-01 07:41:10'),
(98, '5', '04:00:00', '05:00:00', '2017-12-01 07:41:20'),
(99, '5', '15:00:00', '16:00:00', '2017-12-01 07:52:32'),
(100, '5', '14:30:00', '15:00:00', '2017-12-01 07:52:54'),
(101, '3', '10:00:00', '12:00:00', '2018-01-03 04:52:50'),
(102, '3', '06:30:00', '07:00:00', '2017-12-13 11:42:32'),
(103, '4', '13:00:00', '14:00:00', '2017-12-21 08:50:23'),
(106, '3', '22:30:00', '23:00:00', '2017-12-27 04:03:41'),
(107, '5', '06:30:00', '07:00:00', '2017-12-14 12:09:40'),
(108, '5', '05:30:00', '06:00:00', '2017-12-14 12:09:53'),
(109, '5', '18:00:00', '18:30:00', '2017-12-14 12:10:14'),
(110, '4', '18:00:00', '19:00:00', '2017-12-14 12:10:28'),
(111, '6', '18:00:00', '19:00:00', '2017-12-15 08:43:35'),
(112, '5', '18:30:00', '19:00:00', '2017-12-15 08:43:48'),
(115, '4', '14:00:00', '15:00:00', '2017-12-21 08:50:23'),
(116, '4', '15:00:00', '16:00:00', '2017-12-21 08:50:23'),
(117, '4', '16:00:00', '17:00:00', '2017-12-14 12:10:28'),
(118, '4', '01:30:00', '02:00:00', '2017-12-21 14:25:12'),
(119, '4', '00:00:00', '00:30:00', '2017-12-21 14:25:30'),
(123, '7', '00:30:00', '01:00:00', '2017-12-21 14:31:28'),
(125, '7', '01:30:00', '02:00:00', '2017-12-26 09:44:25'),
(126, '1', '01:30:00', '02:00:00', '2017-12-27 10:25:42'),
(127, '6', '05:45:00', '06:00:00', '2017-12-29 21:42:56'),
(128, '1', '18:00:00', '18:30:00', '2018-01-04 12:58:17'),
(129, '2', '18:00:00', '18:30:00', '2018-01-02 12:10:50'),
(130, '2', '19:00:00', '19:30:00', '2018-01-02 12:12:10'),
(131, '1', '23:00:00', '23:30:00', '2018-01-03 04:22:20'),
(132, '3', '01:00:00', '01:30:00', '2018-01-03 07:48:04'),
(133, '3', '13:00:00', '14:00:00', '2018-01-03 07:48:42'),
(135, '3', '16:00:00', '17:00:00', '2018-01-03 10:37:44'),
(137, '4', '11:00:00', '12:00:00', '2018-01-04 05:03:04'),
(138, '1', '00:00:00', '00:30:00', '2018-01-05 04:25:23'),
(140, '3', '20:00:00', '21:00:00', '2018-01-10 14:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE IF NOT EXISTS `tbl_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `move_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `card_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `amount_credited` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `amount_debited` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `txn_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `type` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=65 ;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `user_id`, `move_id`, `card_id`, `amount_credited`, `amount_debited`, `txn_id`, `type`, `date_created`, `date_modified`) VALUES
(1, '148', '1', '6', NULL, '3.5', 'a5cwgbyy', '1', '2018-01-09 07:59:24', '0000-00-00 00:00:00'),
(2, '148', '2', '6', NULL, '3.5', 'ndcd65tf', '1', '2018-01-09 08:45:08', '0000-00-00 00:00:00'),
(3, '148', '3', '6', NULL, '3.5', 'cc30w53h', '1', '2018-01-09 08:47:05', '0000-00-00 00:00:00'),
(4, '148', '1', '', '3.50', NULL, '18jv2nar', '2', '2018-01-09 09:00:04', '0000-00-00 00:00:00'),
(5, '148', '4', '6', NULL, '3.5', 'mknmscm5', '1', '2018-01-09 09:20:50', '0000-00-00 00:00:00'),
(6, '148', '5', '6', NULL, '3.5', '8g0r493g', '1', '2018-01-09 09:24:32', '0000-00-00 00:00:00'),
(7, '148', '6', '6', NULL, '3.5', 'dds4dnp0', '1', '2018-01-09 09:27:38', '0000-00-00 00:00:00'),
(8, '148', '7', '6', NULL, '3.5', '3cgkgkcw', '1', '2018-01-09 09:28:13', '0000-00-00 00:00:00'),
(9, '148', '8', '6', NULL, '3.5', 'rne7y2b2', '1', '2018-01-09 09:30:53', '0000-00-00 00:00:00'),
(10, '148', '9', '6', NULL, '3.5', 'h7hm8qdm', '1', '2018-01-09 09:34:00', '0000-00-00 00:00:00'),
(11, '148', '10', '6', NULL, '3.5', 'a9j85qpg', '1', '2018-01-09 09:35:27', '0000-00-00 00:00:00'),
(12, '148', '8', '6', '3.50', NULL, 'f7j4n8aw', '2', '2018-01-09 09:41:54', '0000-00-00 00:00:00'),
(13, '148', '7', '6', '3.50', NULL, '6aqvxc4e', '2', '2018-01-09 09:42:15', '0000-00-00 00:00:00'),
(14, '148', '11', '6', NULL, '3.5', 'a4qhy22q', '1', '2018-01-09 09:45:08', '0000-00-00 00:00:00'),
(15, '148', '2', '', '3.50', NULL, '5tjesmz3', '2', '2018-01-09 09:46:52', '0000-00-00 00:00:00'),
(16, '148', '12', '6', NULL, '3.5', 'dq4kqp61', '1', '2018-01-09 09:50:22', '0000-00-00 00:00:00'),
(17, '148', '13', '6', NULL, '3.5', 'cytjcgr4', '1', '2018-01-09 09:53:00', '0000-00-00 00:00:00'),
(18, '148', '14', '6', NULL, '3.5', '2fk0aaae', '1', '2018-01-09 09:54:34', '0000-00-00 00:00:00'),
(19, '148', '5', '', '3.50', NULL, '1a1rqqw1', '2', '2018-01-09 10:02:04', '0000-00-00 00:00:00'),
(20, '148', '6', '', '3.50', NULL, '8hk03w32', '2', '2018-01-09 10:30:04', '0000-00-00 00:00:00'),
(21, '148', '11', '', '3.50', NULL, 'f6a1dq1b', '2', '2018-01-09 10:50:04', '0000-00-00 00:00:00'),
(22, '148', '12', '', '3.50', NULL, 'm9141wg1', '2', '2018-01-09 10:55:04', '0000-00-00 00:00:00'),
(23, '148', '13', '', '3.50', NULL, 'baak090n', '2', '2018-01-09 10:55:06', '0000-00-00 00:00:00'),
(24, '148', '10', '', '3.50', NULL, 'qbnx22sx', '2', '2018-01-09 11:00:03', '0000-00-00 00:00:00'),
(25, '148', '15', '6', NULL, '3.5', '1pqt11kj', '1', '2018-01-09 11:02:22', '0000-00-00 00:00:00'),
(26, '148', '15', '', '3.50', NULL, 'n1r1tpe2', '2', '2018-01-09 11:28:04', '0000-00-00 00:00:00'),
(27, '148', '15', '6', NULL, '7.5', 'rmmhz1gd', '1', '2018-01-09 11:45:51', '0000-00-00 00:00:00'),
(28, '149', '15', '', '7', NULL, 'on_wallet', '3', '2018-01-09 11:45:51', '0000-00-00 00:00:00'),
(29, '148', '9', '6', NULL, '415.5', 'a5n6zh4h', '1', '2018-01-09 15:17:02', '0000-00-00 00:00:00'),
(30, '31', '9', '', '152.6', NULL, 'on_wallet', '3', '2018-01-09 15:17:02', '0000-00-00 00:00:00'),
(31, '143', '18', '4', NULL, '3.5', '9k0be7d7', '1', '2018-01-10 04:21:10', '0000-00-00 00:00:00'),
(32, '143', '19', '4', NULL, '3.5', '6bp4rbqa', '1', '2018-01-10 04:34:16', '0000-00-00 00:00:00'),
(33, '28', '20', '3', NULL, '3.75', 'r5w0dm5g', '1', '2018-01-10 05:10:26', '0000-00-00 00:00:00'),
(34, '28', '20', '3', '3.75', NULL, 'fgzbyhn1', '2', '2018-01-10 05:12:25', '0000-00-00 00:00:00'),
(35, '143', '18', '', '3.50', NULL, '0y8ts9tj', '2', '2018-01-10 05:25:03', '0000-00-00 00:00:00'),
(36, '143', '19', '', '3.50', NULL, 'fj3b7a88', '2', '2018-01-10 05:35:03', '0000-00-00 00:00:00'),
(37, '144', '21', '5', NULL, '3.5', '6qvxm2kg', '1', '2018-01-10 05:50:00', '0000-00-00 00:00:00'),
(38, '144', '21', '', '3.50', NULL, 'qhqtqwy3', '2', '2018-01-10 06:50:03', '0000-00-00 00:00:00'),
(39, '143', '22', '4', NULL, '3.5', '3xx0gr4m', '1', '2018-01-10 09:49:50', '0000-00-00 00:00:00'),
(40, '143', '23', '4', NULL, '3.5', 'dvftbp5q', '1', '2018-01-10 10:16:13', '0000-00-00 00:00:00'),
(41, '148', '24', '6', NULL, '3.5', '40syn2m9', '1', '2018-01-10 12:44:44', '0000-00-00 00:00:00'),
(42, '148', '24', '', '3.50', NULL, 'krdfj7e1', '2', '2018-01-10 13:30:04', '0000-00-00 00:00:00'),
(43, '144', '25', '5', NULL, '3.5', 'qzhpg93n', '1', '2018-01-10 13:39:23', '0000-00-00 00:00:00'),
(44, '143', '26', '4', NULL, '3.5', '50g9h4jb', '1', '2018-01-10 14:01:49', '0000-00-00 00:00:00'),
(45, '143', '26', '', '3.50', NULL, '3qp0t4v6', '2', '2018-01-10 14:30:04', '0000-00-00 00:00:00'),
(46, '143', '27', '4', NULL, '3.5', 'e19mkt4j', '1', '2018-01-10 14:42:04', '0000-00-00 00:00:00'),
(47, '143', '28', '4', NULL, '3.5', 'g5sjayba', '1', '2018-01-10 14:44:36', '0000-00-00 00:00:00'),
(48, '143', '29', '4', NULL, '3.5', '0regdw0g', '1', '2018-01-10 14:46:09', '0000-00-00 00:00:00'),
(49, '143', '28', '', '3.50', NULL, 'd2p5gf6f', '2', '2018-01-10 15:45:03', '0000-00-00 00:00:00'),
(50, '143', '29', '', '3.50', NULL, 'keedhyfm', '2', '2018-01-10 15:50:04', '0000-00-00 00:00:00'),
(51, '148', '9', '6', NULL, '4880.5', 'm8gtgd75', '1', '2018-01-10 18:28:52', '0000-00-00 00:00:00'),
(52, '31', '9', '', '1295', NULL, 'on_wallet', '3', '2018-01-10 18:28:52', '0000-00-00 00:00:00'),
(53, '143', '22', '', '3.50', NULL, 'c6f1v6s2', '2', '2018-01-11 04:08:22', '0000-00-00 00:00:00'),
(54, '143', '23', '', '3.50', NULL, 'mzxr90dg', '2', '2018-01-11 04:27:11', '0000-00-00 00:00:00'),
(55, '144', '30', '5', NULL, '3.5', '38s0jzk7', '1', '2018-01-11 04:36:38', '0000-00-00 00:00:00'),
(56, '144', '31', '5', NULL, '3.5', 'mm65v1gy', '1', '2018-01-11 05:14:54', '0000-00-00 00:00:00'),
(57, '144', '32', '5', NULL, '3.5', 'c0ygte94', '1', '2018-01-11 05:41:12', '0000-00-00 00:00:00'),
(58, '144', '33', '5', NULL, '3.5', '6ghhmt18', '1', '2018-01-11 05:44:21', '0000-00-00 00:00:00'),
(59, '150', '34', '7', NULL, '3.5', '5pgtmhss', '1', '2018-01-11 05:59:19', '0000-00-00 00:00:00'),
(60, '144', '32', '', '3.50', NULL, '2syhp8aw', '2', '2018-01-11 06:45:04', '0000-00-00 00:00:00'),
(61, '144', '33', '', '3.50', NULL, 'qdpd0sf0', '2', '2018-01-11 06:45:06', '0000-00-00 00:00:00'),
(62, '144', '35', '5', NULL, '3.5', 'bz20t262', '1', '2018-01-11 01:54:50', '0000-00-00 00:00:00'),
(63, '144', '36', '5', NULL, '3.5', 'gzxatw88', '1', '2018-01-11 02:01:24', '0000-00-00 00:00:00'),
(64, '144', '37', '5', NULL, '3.5', 'a7nwq1nz', '1', '2018-01-11 02:05:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lname` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(500) NOT NULL,
  `country_code` varchar(500) NOT NULL,
  `phone` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `company_name` varchar(500) DEFAULT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `fb_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `google_id` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `refercode` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `manual_signUp` int(11) NOT NULL COMMENT '1=yes,0=no',
  `google_signUp` int(11) NOT NULL COMMENT '1=yes,0=no',
  `fb_signUp` int(11) NOT NULL COMMENT '1=yes,0=no',
  `is_commercial` int(11) NOT NULL DEFAULT '1' COMMENT '1=yes,0=no',
  `user_Type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '1=customer,2=mover',
  `is_suspend` int(11) NOT NULL COMMENT '0 for no, 1 for yes',
  `is_activate` int(11) NOT NULL COMMENT 'driver case  0 for no, 1 for yes',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `fname`, `lname`, `email`, `password`, `country_code`, `phone`, `company_name`, `profile_pic`, `fb_id`, `google_id`, `latitude`, `longitude`, `refercode`, `manual_signUp`, `google_signUp`, `fb_signUp`, `is_commercial`, `user_Type`, `is_suspend`, `is_activate`, `date_created`) VALUES
(28, 'Rajbir', 'Kumar', 'rajbirkumar007@gmail.com', '6dbd0fe19c9a301c4708287780df41a2', '+91', '8727975718', '0svin', 'http://movers.com.au/Admin/public/profile_pic/2820171227_124152.jpg', '', '', '30.7233742', '76.8478213', 'M4649Ra8605', 1, 0, 0, 0, '1', 0, 1, '2017-09-01 18:23:10'),
(31, 'Osvin', 'driver', 'driver123@gmail.com', 'fa55059e014dbfddfec29dee750d4111', '+91', '917018256110', '0', 'http://movers.com.au/Admin/public/profile_pic/2820170914_172521.jpg', '', '', '30.7233872', '76.8478094', '', 1, 0, 0, 1, '2', 0, 1, '2017-09-05 11:27:37'),
(33, 'Craig', 'Oehlers', 'craig@ebusiness.com.au', 'baddbeaff0520dc2a3dfc3beffdc332e', '', '0400987987', '0', '', '', '', '', '', 'M4112Cr5697', 1, 0, 0, 0, '1', 0, 1, '2017-09-09 13:02:40'),
(143, 'Anil', 'Kumar', 'anilk98891@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '+91', '7018252694', '', 'http://movers.com.au/Admin/public/profile_pic/file3623855734.jpg', '', '', '', '', 'M1353An7859', 1, 0, 0, 1, '1', 0, 0, '2018-01-02 06:02:23'),
(144, 'Rahul', 'Sharma', 'osvinphp@gmail.com', '4c622cfc6a71ce56e06c59a93c24a39e', '91', '3638789654', 'demo1', '', 'undefined', 'undefined', '', '', 'M3990Ra5945', 1, 0, 0, 1, '1', 0, 0, '2018-01-02 06:12:44'),
(145, 'ghdgh', 'hgfdhgfghfd', 'osvinphp@gmail.com', '9cc82cea8f804438dd93bd9d2977cf66', '+374', '525351323213', NULL, 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-08-21_13:19:1915.png', '', '', '', '', '', 1, 0, 0, 1, '2', 0, 1, '2018-01-02 06:41:19'),
(146, 'osvin', 'driver', 'osvindriver123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '+297', '787878788787', NULL, 'http://movers.com.au/public/driverdetail/31fcd_a47-100b-42e1-a51_3-c6_aa_09c3b2dd.jpg', '', '', '30.7234483', '76.847915', '', 1, 0, 0, 1, '2', 0, 0, '2018-01-04 06:13:31'),
(147, 'osvin', 'driver', 'osvindriver1234@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '+376', '464546544566', NULL, 'http://movers.com.au/public/driverdetail/Screenshot_from_2017-09-06_10:39:328.png', '', '', '30.7233674', '76.8478629', '', 1, 0, 0, 1, '2', 0, 1, '2018-01-04 06:15:16'),
(150, 'Aayush', 'Bawa', 'rajat.debut2@gmail.com', 'dda92610c7e74d0796aa9caefd8f0eaa', '+91', '9779774005', '', 'http://movers.com.au/Admin/public/profile_pic/file1857007751.jpg', '', '', '', '', 'M2423Aa6112', 1, 0, 0, 1, '1', 0, 0, '2018-01-11 05:21:28'),
(151, 'Rajat', 'Verma', 'rajat.debut5@gmail.com', 'dda92610c7e74d0796aa9caefd8f0eaa', '+91', '9779774000', NULL, 'http://movers.com.au/public/driverdetail/index5.jpeg', '', '', '', '', '', 1, 0, 0, 1, '2', 0, 1, '2018-01-11 05:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vechicleType`
--

CREATE TABLE IF NOT EXISTS `tbl_vechicleType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `height` double NOT NULL,
  `length` double NOT NULL,
  `width` varchar(500) NOT NULL,
  `weight` double NOT NULL,
  `movers_charges1` double NOT NULL,
  `movers_charges2` double NOT NULL,
  `min_minutes` double NOT NULL,
  `max_minutes` double NOT NULL,
  `km_charges` double NOT NULL,
  `min_fare` varchar(500) NOT NULL,
  `sequence` varchar(500) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_vechicleType`
--

INSERT INTO `tbl_vechicleType` (`id`, `name`, `icon`, `height`, `length`, `width`, `weight`, `movers_charges1`, `movers_charges2`, `min_minutes`, `max_minutes`, `km_charges`, `min_fare`, `sequence`, `creation_date`) VALUES
(15, 'Van', 'http://movers.com.au/Admin/public/vechicletypeicon/ic_van_big.png', 1.5, 3, '45', 2800, 1, 1.5, 10, 20, 0.5, '35.00', '3', '2017-07-31 11:41:28'),
(17, 'Truck', 'http://movers.com.au/Admin/public/vechicletypeicon/ic_truck_big.png', 212, 8.5, '78', 5600, 1, 1.5, 10, 30, 0.75, '35.00', '1', '2017-07-31 11:43:12'),
(22, 'Ute', 'http://movers.com.au/Admin/public/vechicletypeicon/ute1.png', 45, 44, '42', 1200, 1, 1.5, 10, 20, 0.25, '35.00', '2', '2017-11-13 05:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE IF NOT EXISTS `tbl_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `balence` varchar(500) COLLATE utf8_bin NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
