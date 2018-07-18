-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2018 at 05:31 PM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `DBcouponApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblAdmin`
--

CREATE TABLE IF NOT EXISTS `tblAdmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblAdmin`
--

INSERT INTO `tblAdmin` (`id`, `name`, `email`, `password`, `dateCreated`) VALUES
(1, 'Admin', 'admin@gmail.com', 'e6e061838856bf47e1de730719fb2609', '2018-06-08 10:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblAssignedPlaceDeal`
--

CREATE TABLE IF NOT EXISTS `tblAssignedPlaceDeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealId` int(11) NOT NULL,
  `retailerId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `expiryDate` date NOT NULL,
  `validFor` int(11) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblAssignedPlaceDeal`
--

INSERT INTO `tblAssignedPlaceDeal` (`id`, `dealId`, `retailerId`, `placeId`, `expiryDate`, `validFor`, `dateCreated`) VALUES
(1, 3, 1, 1, '2018-06-15', 0, '2018-06-13 10:57:25'),
(2, 3, 1, 2, '2018-06-15', 0, '2018-06-13 10:27:32'),
(3, 1, 16, 8, '0000-00-00', 0, '2018-06-21 09:11:01'),
(4, 1, 16, 9, '0000-00-00', 0, '2018-06-21 09:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblBarCode`
--

CREATE TABLE IF NOT EXISTS `tblBarCode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealId` int(11) NOT NULL,
  `barCodeImage` varchar(21800) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 for free,1 for used',
  `usedDateTime` datetime NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblBarCode`
--

INSERT INTO `tblBarCode` (`id`, `dealId`, `barCodeImage`, `status`, `usedDateTime`, `dateCreated`) VALUES
(1, 3, 'http://phphosting.osvin.net/couponApp/assets/apidata/profile21.png', 0, '2018-06-13 15:54:16', '2018-06-13 09:58:15'),
(2, 3, 'http://phphosting.osvin.net/couponApp/assets/apidata/unnamed5.png', 0, '2018-06-13 15:57:32', '2018-06-13 09:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblCustomer`
--

CREATE TABLE IF NOT EXISTS `tblCustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phoneNo` varchar(500) NOT NULL,
  `fbId` varchar(500) DEFAULT NULL,
  `profilePic` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `suspend` enum('0','1') NOT NULL COMMENT '0 for no,1 for yes',
  `pushNotification` enum('1','0') NOT NULL COMMENT '1 for on,0 for off',
  `complete` int(11) NOT NULL COMMENT '0 for no,1 for yes',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblCustomer`
--

INSERT INTO `tblCustomer` (`id`, `firstName`, `lastName`, `email`, `phoneNo`, `fbId`, `profilePic`, `password`, `dob`, `suspend`, `pushNotification`, `complete`, `dateCreated`) VALUES
(1, 'rajbir', 'kumar', 'rajbirkumar007@gmail.com', '+917018256111', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00', '0', '1', 1, '2018-06-13 09:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblCustomerFavDeals`
--

CREATE TABLE IF NOT EXISTS `tblCustomerFavDeals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `dealId` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 for no,1 for yes',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblCustomerFavDeals`
--

INSERT INTO `tblCustomerFavDeals` (`id`, `customerId`, `dealId`, `status`, `dateCreated`) VALUES
(1, 1, 3, 1, '2018-06-13 10:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblCustomerFavPlaces`
--

CREATE TABLE IF NOT EXISTS `tblCustomerFavPlaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 for yes,0 for no',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblCustomerFavPlaces`
--

INSERT INTO `tblCustomerFavPlaces` (`id`, `customerId`, `placeId`, `status`, `dateCreated`) VALUES
(1, 1, 1, 0, '2018-06-13 10:00:53'),
(2, 1, 2, 1, '2018-06-13 10:02:08'),
(3, 1, 1, 1, '2018-06-13 10:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblDeals`
--

CREATE TABLE IF NOT EXISTS `tblDeals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealName` varchar(500) NOT NULL,
  `dealImage` varchar(500) NOT NULL,
  `offerOrDiscount` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `termsConditions` text NOT NULL,
  `isAvailable` int(11) NOT NULL COMMENT '0 for no,1 for yes',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tblDeals`
--

INSERT INTO `tblDeals` (`id`, `dealName`, `dealImage`, `offerOrDiscount`, `description`, `termsConditions`, `isAvailable`, `dateCreated`) VALUES
(1, 'Up to 1000 off on Domestic flights', 'http://phphosting.osvin.net/couponApp/assets/apidata/profile18.png', '1000 off', '    A minimum booking amount of Rs.4,000 required to avail the offer.\r\n    Offer is applicable on desktop, APP and mobile site.\r\n    The offer is applicable on both one-way and round-trip flight booking.\r\n    Use promo code JUN13DOMto avail the offer.\r\n    This 6 hour sale is valid between 1200hrs - 1800hrs today, June 13, 2018.', '6 Hour Sale on Domestic Flights! Use promo code JUN13DOM and book through Yatra to get up to  Rs.1,000 OF', 0, '2018-06-13 09:36:43'),
(2, 'Round the year discount - Rs.1,000 Off on Domestic Flights', 'http://phphosting.osvin.net/couponApp/assets/apidata/profile19.png', '1000 off', 'Here is how the offer works:\r\n\r\nVouchers\r\n\r\nAs soon as you enroll with this travel card, you get Yatra.com vouchers worth Rs.8,250.\r\n\r\n    2 vouchers worth Rs500 each for Domestic Travel\r\n    2 vouchers worth Rs1,000 each for International Travel\r\n    1 voucher worth Rs.750 for Hotel Bookings\r\n    1 voucher worth Rs1,500 for Domestic Holidays\r\n    1 voucher worth Rs.3,000 for International Holidays\r\n\r\nOffer with Yatra\r\nPromo code : TRAVEL\r\n\r\n    Rs.1,000 Off on Domestic Flight booking with min. booking amount of Rs.5,000\r\n    Rs.4,000 Off on International Flight booking with min. booking amount of Rs.40,000\r\n', 'You have a new best friend. Every time you use your Yatra SBI Credit Card, a number of benefits come your way, ranging from reward points to great discounts at Yatra.com. ', 0, '2018-06-13 09:38:23'),
(3, '20 Days of Summer Sale', 'http://phphosting.osvin.net/couponApp/assets/apidata/profile20.png', 'One deal ', '6 Hour Sale on Domestic Flights! Use promo code JUN13DOM and book through Yatra to get up to Rs.1,000 OF', 'A minimum booking amount of Rs.4,000 required to avail the offer. Offer is applicable on desktop, APP and mobile site. The offer is applicable on both one-way and round-trip flight booking. Use promo code JUN13DOMto avail the offer. This 6 hour sale is valid between 1200hrs - 1800hrs today, June 13, 2018.', 1, '2018-06-13 09:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblForgotPassword`
--

CREATE TABLE IF NOT EXISTS `tblForgotPassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `time` datetime NOT NULL COMMENT 'reset mail time',
  `status` int(11) NOT NULL COMMENT '1 for no,0 for yes',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tblGrabbedDeal`
--

CREATE TABLE IF NOT EXISTS `tblGrabbedDeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `dealId` int(11) NOT NULL,
  `barCodeId` int(11) NOT NULL,
  `retailerId` int(11) NOT NULL,
  `placeId` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 for no,1 for yes ',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tblGrabbedDeal`
--

INSERT INTO `tblGrabbedDeal` (`id`, `customerId`, `dealId`, `barCodeId`, `retailerId`, `placeId`, `status`, `dateCreated`) VALUES
(1, 1, 3, 1, 1, 2, 0, '2018-06-13 09:58:57'),
(2, 1, 3, 1, 1, 1, 0, '2018-06-13 10:05:30'),
(3, 1, 3, 1, 1, 2, 0, '2018-06-13 10:16:08'),
(4, 1, 3, 2, 1, 2, 0, '2018-06-13 10:18:18'),
(5, 1, 3, 1, 1, 2, 0, '2018-06-13 10:22:03'),
(6, 1, 3, 1, 1, 2, 0, '2018-06-13 10:24:16'),
(7, 1, 3, 2, 1, 2, 0, '2018-06-13 10:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblLogin`
--

CREATE TABLE IF NOT EXISTS `tblLogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `tokenId` varchar(500) NOT NULL,
  `deviceId` int(11) NOT NULL COMMENT '0 for android,1 for ios',
  `uniqueDeviceId` varchar(500) NOT NULL,
  `userType` int(11) NOT NULL COMMENT '1 for customer,2 for retailer',
  `status` int(11) NOT NULL COMMENT '0 for logout,1 for login',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tblLogin`
--

INSERT INTO `tblLogin` (`id`, `userId`, `tokenId`, `deviceId`, `uniqueDeviceId`, `userType`, `status`, `dateCreated`) VALUES
(1, 1, 'fuz3FAcdh_A:APA91bH_zP-BD4n6-fytLJ-stJnory0NwQl9Q2Uqa6uvcQsECIx-wGSMQbLn8hMfEBNKgxbFsQmjwstOHEoZ6Xvk0j0gXfPnxF2P8It9kWK-E61mk4QJ1ICmLv7eEv520eTPc2SLTPyv', 0, '91a78ca92c93c82f', 2, 0, '2018-06-13 09:30:51'),
(2, 1, 'f4iTpxajJUA:APA91bEuO3-KV_2ZM3160CG-vbxHsOrWYptl3jgnOoUhRkltYW6F2ETu5wUJZJSB1nxQp8TO2k40XdA8m55QABsJmf330GqxapRmJPnSgrgyZzKt-kJQK59PGdFR2zcY09jmjVoufmcK', 0, '91a78ca92c93c82f', 1, 0, '2018-06-13 09:52:51'),
(3, 11, 'cbr2-HgoNJI:APA91bHrYF3ZAkKcBv-e1aAs0F85jDcfFqPcRm3jMaVZdXZGZYYYYvUvMMZ-D67s7e2sdYqr4JrbBrIQ8UID85mwQyogQoIR5hzsY_hEdYrwtarSWh4C-pfpAdzktft48MDpLV5x5iS1', 0, '9d08386b2fbe3559', 2, 0, '2018-06-13 13:11:25'),
(4, 17, 'cbr2-HgoNJI:APA91bHrYF3ZAkKcBv-e1aAs0F85jDcfFqPcRm3jMaVZdXZGZYYYYvUvMMZ-D67s7e2sdYqr4JrbBrIQ8UID85mwQyogQoIR5hzsY_hEdYrwtarSWh4C-pfpAdzktft48MDpLV5x5iS1', 0, '9d08386b2fbe3559', 2, 0, '2018-06-14 04:45:33'),
(5, 1, 'csnjLg6Ra6c:APA91bEEoV4k3ORoCkYj6WTLdwHQxCejUabA0K5xR7rIWKCZPHCSP-u5innhvbxAWzl8JAc6SYDMFCZHCFK4hvDVjrE3jvMbSOqj8mzz6Ifhz4FD6gU1Pq4Ef_JC3wwQisq5Ah3uuYXr', 0, '9d08386b2fbe3559', 1, 0, '2018-06-14 05:02:46'),
(6, 1, 'fluNtblMmzQ:APA91bHfJpc6GuSDvfJxbnkleGs8FDr9nEfMK1ZsdVgAbPLdx8_UI2S_wmNgVjpLQc6UWfftt8-FFQZcgIcXeGBSPSrMYfTy2zoEznuUPJ9ksB-00obN3hQ0-o_aTNEH3aRaebIJo0zb', 0, '91a78ca92c93c82f', 2, 0, '2018-06-14 05:13:28'),
(7, 16, '', 1, '9AD9AEBD-60E3-4210-9FD4-7A3F589CCBE8', 2, 0, '2018-06-15 04:33:31'),
(8, 16, '', 1, '6674FF4F-302D-4522-BAB0-18A0B8DA9664', 2, 0, '2018-06-15 04:49:32'),
(9, 16, '', 1, 'B5E100EA-F743-4AFE-866C-41B2F93D86D5', 2, 0, '2018-06-15 07:03:46'),
(10, 16, '', 1, '029F24FE-3430-4137-B834-F89A9F050B6B', 2, 0, '2018-06-15 08:55:14'),
(11, 16, '', 1, '1C8FEF74-DC44-4111-8223-6F2F91C5D072', 2, 0, '2018-06-15 09:12:02'),
(12, 16, '', 1, '6674FF4F-302D-4522-BAB0-18A0B8DA9664', 2, 0, '2018-06-19 06:39:03'),
(13, 16, '', 1, '614F3F4F-62DE-4184-A68C-39A85DBC529A', 2, 0, '2018-06-19 10:24:03'),
(14, 16, '', 1, 'BFFC9EC6-3376-4788-BD27-F91CBB73888A', 2, 0, '2018-06-20 04:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblOtp`
--

CREATE TABLE IF NOT EXISTS `tblOtp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNo` varchar(500) NOT NULL,
  `otp` varchar(500) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblOtp`
--

INSERT INTO `tblOtp` (`id`, `phoneNo`, `otp`, `dateCreated`) VALUES
(1, '+917018256110', '7587', '2018-06-14 05:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblRetailer`
--

CREATE TABLE IF NOT EXISTS `tblRetailer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phoneNo` varchar(500) NOT NULL,
  `userName` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `storeAllowed` int(11) NOT NULL,
  `suspend` enum('0','1') NOT NULL COMMENT '0 for no,1 for yes',
  `pushNotification` enum('1','0') NOT NULL COMMENT '1 for on,0 for off',
  `isComplete` int(11) NOT NULL COMMENT '0 for no,1 for yes',
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tblRetailer`
--

INSERT INTO `tblRetailer` (`id`, `name`, `email`, `phoneNo`, `userName`, `password`, `image`, `logo`, `storeAllowed`, `suspend`, `pushNotification`, `isComplete`, `dateCreated`) VALUES
(1, 'admin', 'admin@gmail.com', '455443545', 'osvinphp5009', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'http://phphosting.osvin.net/couponApp/assets/apidata/profile30.png', 'http://phphosting.osvin.net/couponApp/assets/apidata/profile31.png', 55554455, '0', '1', 1, '2018-06-13 09:29:10'),
(16, 'osvinphp3447', 'osvip@gmail.com', '9034446032', 'osvinphp3447', 'e10adc3949ba59abbe56e057f20f883e', 'http://phphosting.osvin.net/couponApp/assets/apidata/file1603562684.jpg', 'http://phphosting.osvin.net/couponApp/assets/apidata/file4129528871.jpg', 555, '0', '1', 1, '2018-06-13 13:22:01'),
(17, '24 SLIDES', 'testtester1011@gmail.com', '', '24slides6918', 'e10adc3949ba59abbe56e057f20f883e', 'http://phphosting.osvin.net/couponApp/assets/apidata/1720180614_101501.jpg', 'http://phphosting.osvin.net/couponApp/assets/apidata/profile32.png', 5, '0', '1', 1, '2018-06-14 04:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblStorePlaces`
--

CREATE TABLE IF NOT EXISTS `tblStorePlaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `retailerId` int(11) NOT NULL,
  `storeName` varchar(500) NOT NULL,
  `storeLocation` varchar(500) NOT NULL,
  `storeImage` varchar(500) NOT NULL,
  `latitude` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `city` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblStorePlaces`
--

INSERT INTO `tblStorePlaces` (`id`, `retailerId`, `storeName`, `storeLocation`, `storeImage`, `latitude`, `longitude`, `city`, `state`, `description`, `dateCreated`) VALUES
(1, 1, 'place one', 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 160101, India', 'http://phphosting.osvin.net/couponApp/assets/apidata/120180613_150152.jpg', '30.72496432165976', '76.84560880064964', 'Chandigarh', 'Haryana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn''t even a word; instead it''s a piece of the ', '2018-06-13 09:35:35'),
(2, 1, 'Place Two', 'IT Park Rd, Phase - I, Manimajra, Panchkula, Chandigarh 160101, India', 'http://phphosting.osvin.net/couponApp/assets/apidata/120180613_150317.jpg', '30.72935313434234', '76.844840683043', 'Panchkula', 'Chandigarh', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn''t even a word; instead it''s a piece of the ', '2018-06-13 09:36:21'),
(3, 1, 'Place three', 'Dolphin Chowk, Mansa Devi Complex, MDC Sector 4, Panchkula, Haryana 133301, India', 'http://phphosting.osvin.net/couponApp/assets/apidata/120180613_150349.jpg', '30.730179400797283', '76.85170445591211', 'Panchkula', 'Haryana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn''t even a word; instead it''s a piece of the ', '2018-06-13 09:37:04'),
(6, 1, 'Place five', 'Saketri Rd, Mansa Devi Complex, MDC Sector 4, Sukteri, Haryana 133301, India', 'http://phphosting.osvin.net/couponApp/assets/apidata/120180613_150917.jpg', '30.73185929076854', '76.85520239174365', 'Sukteri', 'Haryana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn''t even a word; instead it''s a piece of the ', '2018-06-13 09:42:41'),
(7, 1, 'Place six', 'Saketri Rd, Mansa Devi Complex, MDC Sector 4, Sukteri, Haryana 134114, India', 'http://phphosting.osvin.net/couponApp/assets/apidata/120180613_151142.jpg', '30.72948945294438', '76.8557408452034', 'Sukteri', 'Haryana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ... The first word, “Lorem,” isn''t even a word; instead it''s a piece of the ', '2018-06-13 09:44:58'),
(8, 16, 'rby5rby', 'Stonehenge', '', '51.178882', '-1.826215', '', '', 'b 56y76 ', '2018-06-15 07:41:38'),
(9, 16, '121212', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '121212', '2018-06-15 07:52:29'),
(10, 16, '1111', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '1111111', '2018-06-15 07:55:19'),
(11, 16, '1212', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '1111', '2018-06-15 07:57:59'),
(12, 16, '112121', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '121212', '2018-06-15 07:59:55'),
(13, 16, '12121', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '12121', '2018-06-15 08:01:11'),
(14, 16, '12121', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '1212121', '2018-06-15 08:03:58'),
(15, 16, '121212', 'Stonehenge Landscape', '', '51.178936', '-1.8262964', '', '', '12121', '2018-06-15 08:55:47'),
(16, 16, '12121', 'Stonehenge', 'http://phphosting.osvin.net/couponApp/assets/apidata/file1653345515.jpg', '51.178882', '-1.826215', '', '', '1212121', '2018-06-15 08:59:54'),
(17, 16, '121212112', '3 Stonehenge Rd', '', '51.1803294', '-1.828006', '', '', '121', '2018-06-15 09:02:53'),
(18, 16, '121212', 'Tombouctou', '', '21.8279257', '-3.097702', '', '', '12121', '2018-06-15 09:05:43'),
(19, 16, '12212112121', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '12121', '2018-06-15 09:55:05'),
(20, 16, '1212', 'Stonehenge', '', '51.178882', '-1.826215', '', '', '212121', '2018-06-15 09:58:41'),
(21, 16, 'test place', 'Chandigarh Rd, Sector 48B, Sector 47, Chandigarh, 160047, India', '', '30.6897382204879', '76.7661369591951', 'Chandigarh', 'Chandigarh', 'tefffgghh', '2018-06-20 10:23:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
