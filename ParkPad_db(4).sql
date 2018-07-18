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
-- Database: `ParkPad_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `parking_id` varchar(250) NOT NULL,
  `servicetype` varchar(250) NOT NULL COMMENT '1->hourly, 2-> day, 3->weekly',
  `price` varchar(250) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(500) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `phonenumber` varchar(500) NOT NULL,
  `additionalInfo` varchar(500) NOT NULL,
  `paymenttype` varchar(500) NOT NULL,
  `paypalid` varchar(500) NOT NULL,
  `countryCode` varchar(500) NOT NULL,
  `transactionId` varchar(100) NOT NULL,
  `transactionTime` varchar(100) NOT NULL,
  `transactionCode` varchar(500) NOT NULL,
  `accHolderName` varchar(500) NOT NULL,
  `accNumber` varchar(500) NOT NULL,
  `bankIdentNumber` varchar(500) NOT NULL,
  `park_time` datetime NOT NULL,
  `pick_time` datetime NOT NULL,
  `vehicleImage` varchar(500) NOT NULL,
  `vehicleRegistrationImage` varchar(500) NOT NULL,
  `number` varchar(500) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 for picked,1 for parked',
  `estimateprice` varchar(500) NOT NULL,
  `totalprice` varchar(500) NOT NULL,
  `amountTranfer` varchar(250) NOT NULL COMMENT 'to owner',
  `totaltime` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `device_id` varchar(250) NOT NULL COMMENT '1 for ios 0 for android',
  `unique_deviceId` varchar(250) NOT NULL,
  `token_id` text NOT NULL,
  `date_created` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1 for login, 0 for logout',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `device_id`, `unique_deviceId`, `token_id`, `date_created`, `status`) VALUES
(1, '2', '1', '047BF484-017E-4CAC-A7A0-01F1EDCC40AB', '', '2018-05-28 15:09:31', 1),
(2, '3', '0', '14b53d313af8342a', 'cs_PftQEIrU:APA91bGbE_ViUkr_vsIiiZV5Po98Qr-FwRSiPXiQA07VLp01fV17Jmq2bun-IphGu1wOB1fVvqvdEOMv3QIkXE321n5LeZWHSRCcI5NOXbgXQchsxFCga3qwoD26q07p4twZ2oc40Kq6', '2018-05-29 11:16:06', 0),
(3, '4', '1', '19C697B3-815E-4594-ACF9-6CC8AB3216E8', '', '2018-05-29 13:36:24', 1),
(4, '4', '1', '215FFAC3-DF89-4665-8807-28E594DAD288', '', '2018-05-29 21:17:29', 1),
(5, '5', '0', 'e23f7bf5c0954683', 'fweseOiOgJM:APA91bEinsPNwPtyY6iRkEB2R6i_v8KafxS1TZANKtE9RReeWlO5DAflOFWiDzbKUMCRLkcQdEpeZWwXbKkqY-E8YQrcgNTiSZNEp1xv3d-e2zfr4MbreRnxpzXpWtUOXgeCG7SCyhY-', '2018-05-30 16:09:10', 1),
(6, '4', '1', 'FB1669FF-B350-420A-83F3-909A4EB49D70', '', '2018-05-30 17:31:46', 1),
(7, '4', '1', 'D53EAF27-0080-43F4-AD8A-D25ABB23C5AF', '', '2018-05-31 17:58:24', 1),
(8, '4', '1', '9737CEDC-3066-49B0-903B-2DC204758373', '', '2018-06-01 15:38:35', 1),
(9, '6', '1', 'B4248778-0AFF-41F1-B7BB-C6CACFEE8A08', '', '2018-06-02 03:05:01', 1),
(10, '7', '0', '5f91b4bfea39233d', 'fIVgh26bvC8:APA91bHyZmsTjEQVKEDCRFtiOe6vKoJiRSUD9JvvqEcm4eT84Fd5S_5a-dtV0xboQF0UsvlZnlYfM4rpU8oj4EYNRh5aANflCxFHOfmlquyD3rQl1uIrZ21rFlnNHWvFQ7VoOZ042opH', '2018-06-02 08:05:24', 1),
(11, '8', '0', 'bf7512ca28bcfb80', 'cC0zbvnuOxw:APA91bFwtflT3QF_YVhP7_wVFCoHGdvVL-9R8jFI8ZbMMfLV4xsnrhh47qwWMH4T8KSiaUMwj6wHMV4YoqRAauhXifF9bFXPJZDxp-Up3Yu6I4fS6yTXsXZCttBIND0nc5_kQRRciIV1', '2018-06-02 20:41:42', 1),
(12, '9', '1', '7E331BB4-FDCD-4536-9C29-7C7556C149DE', '', '2018-06-05 07:27:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_push`
--

CREATE TABLE IF NOT EXISTS `tbl_push` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `time_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rentPrice`
--

CREATE TABLE IF NOT EXISTS `tbl_rentPrice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rent_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `hourprice` varchar(250) NOT NULL,
  `dayprice` varchar(250) NOT NULL,
  `weekprice` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_rentPrice`
--

INSERT INTO `tbl_rentPrice` (`id`, `rent_id`, `vehicle_id`, `hourprice`, `dayprice`, `weekprice`, `date_created`) VALUES
(1, 2, 7, '1', '5', '10', '2018-06-02 15:17:48'),
(2, 2, 6, '1', '5', '10', '2018-06-02 15:17:48'),
(3, 2, 5, '1', '5', '10', '2018-06-02 15:17:48'),
(4, 2, 8, '1', '5', '10', '2018-06-02 15:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rentspace`
--

CREATE TABLE IF NOT EXISTS `tbl_rentspace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 NOT NULL,
  `address1` varchar(250) NOT NULL,
  `phonenumber` varchar(250) CHARACTER SET utf8 NOT NULL,
  `numberofvehicle` varchar(250) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `lat` varchar(250) NOT NULL,
  `lng` varchar(250) NOT NULL,
  `account_status` int(11) NOT NULL COMMENT '0-> Pending, 1-> Activated',
  `book_status` int(10) NOT NULL COMMENT '0->free  1-> occupied',
  `spacepic` varchar(250) CHARACTER SET utf8 NOT NULL,
  `hostagreementpic` varchar(250) CHARACTER SET utf8 NOT NULL,
  `paymenttype` int(11) NOT NULL COMMENT '0-paypal,1-visa',
  `paypalid` varchar(250) NOT NULL,
  `accHolderName` varchar(500) NOT NULL,
  `accNumber` varchar(500) NOT NULL,
  `bankIdentNumber` varchar(500) NOT NULL,
  `countryCode` varchar(500) NOT NULL,
  `transactionCode` varchar(500) NOT NULL,
  `parkingtimingtype` varchar(500) NOT NULL COMMENT '2 for 24 hours,1 for timing',
  `openingtime` time NOT NULL,
  `closingtime` time NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accHolderName` (`accHolderName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_rentspace`
--

INSERT INTO `tbl_rentspace` (`id`, `user_id`, `name`, `email`, `profile_pic`, `address`, `address1`, `phonenumber`, `numberofvehicle`, `description`, `lat`, `lng`, `account_status`, `book_status`, `spacepic`, `hostagreementpic`, `paymenttype`, `paypalid`, `accHolderName`, `accNumber`, `bankIdentNumber`, `countryCode`, `transactionCode`, `parkingtimingtype`, `openingtime`, `closingtime`, `date_created`) VALUES
(2, '2', 'Aden', 'Niancss@gmail.com', 'http://parkpad.us/Admin/public/bookparkingdetail/file993963548.jpg', '3085 Colonial Way, Atlanta, GA 30341, USA', '', '4049662047', '2', '', '33.8673547', '-84.2824462', 1, 0, 'http://parkpad.us/Admin/public/bookparkingdetail/file1570437264.jpg', 'http://parkpad.us/Admin/public/bookparkingdetail/file2840900476.jpg', 0, 'niancss@gmail.com', '', '', '', '', '', '2', '00:00:00', '00:00:00', '2018-06-02 15:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_percent` varchar(50) NOT NULL,
  `late_park_percent` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `admin_percent`, `late_park_percent`, `date_created`) VALUES
(1, '3', '50', '2017-11-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `fb_id` varchar(250) NOT NULL,
  `manual_signUp` int(250) NOT NULL,
  `social_signUp` int(250) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 = user,2=admin',
  `profile_pic` varchar(500) NOT NULL,
  `is_activated` int(11) NOT NULL COMMENT '0->active,1->suspend',
  `notification_status` int(11) NOT NULL COMMENT '0->on,1->off',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `fullname`, `email`, `password`, `fb_id`, `manual_signUp`, `social_signUp`, `type`, `profile_pic`, `is_activated`, `notification_status`, `date_created`) VALUES
(1, 'Admin', 'parkpad2018@gmail.com', '9c139d3e032dee9b57f23f33bea3c54d', '', 0, 0, 2, 'http://parkpad.us/Admin/public/profile_pic/best-social-networking-sites5.png', 1, 0, '2017-07-26 11:12:49'),
(2, 'Aden', 'Niancss@gmail.com', 'd56fcd19a7f0235b6675d34f85448277', '', 1, 0, 1, 'http://parkpad.us/Admin/public/profile_pic/file3881946053.jpg', 0, 0, '2018-05-28 15:09:31'),
(3, 'Er Surbhi Sharma', 'er.surbhisharma143@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '1688417464586909', 0, 1, 1, 'https://graph.facebook.com/1688417464586909/picture?type=normal', 0, 0, '2018-05-29 11:16:06'),
(4, 'Test Osvin', 'test@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', 1, 0, 1, '', 1, 0, '2018-05-29 13:36:24'),
(5, 'Ayodele Oni', 'Ayo.T.Oni@gmail.com', '5ba7e4784fa51a7767f22fab1cf4b6f5', '', 1, 0, 1, '', 0, 0, '2018-05-30 16:09:10'),
(6, 'Jessica Brown', 'jmariebr@gmail.com', 'f30a87acbfeb069a6cb2b5f620c81be0', '', 1, 0, 1, '', 0, 0, '2018-06-02 03:05:01'),
(7, 'Tobi Ibikunle', 'tobiibi45@yahoo.co.uk', 'd41d8cd98f00b204e9800998ecf8427e', '10216461086427578', 0, 1, 1, 'https://graph.facebook.com/10216461086427578/picture?type=normal', 0, 0, '2018-06-02 08:05:24'),
(8, 'Kulin Dave', 'kdave84@gmail.com', 'f6bca54ae53b1e1d57a20a6cebd7a99e', '', 1, 0, 1, '', 0, 0, '2018-06-02 20:41:42'),
(9, 'Osvin AmanAttri', 'osvinandroid@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2076875872559799', 0, 1, 1, 'https://graph.facebook.com/2076875872559799/picture?type=large', 1, 0, '2018-06-05 07:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle`
--

CREATE TABLE IF NOT EXISTS `tbl_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `length` double NOT NULL,
  `height` double NOT NULL,
  `width` double NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_vehicle`
--

INSERT INTO `tbl_vehicle` (`id`, `name`, `img`, `length`, `height`, `width`, `date_created`) VALUES
(3, 'SUV', 'http://parkpad.us/Admin/public/vehicle_img/ic_suv.png', 32, 50, 60, '2017-05-28 07:00:00'),
(4, 'Taxi', 'http://parkpad.us/Admin/public/vehicle_img/ic_taxi.png', 324, 23, 23, '2017-05-28 07:00:00'),
(5, 'Motorcycle', 'http://parkpad.us/Admin/public/vehicle_img/motorbike_(1).png', 6, 3, 3, '2017-05-28 07:00:00'),
(6, 'Car', 'http://parkpad.us/Admin/public/vehicle_img/car.png', 10, 10, 12, '2017-05-28 07:00:00'),
(7, 'Van', 'http://parkpad.us/Admin/public/vehicle_img/van.png', 10, 10, 12, '2017-05-28 07:00:00'),
(8, 'Pickup Truck', 'http://parkpad.us/Admin/public/vehicle_img/pick-up-truck.png', 15, 14, 10, '2017-05-28 07:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
