-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2018 at 05:35 PM
-- Server version: 5.5.60-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `18street`
--

-- --------------------------------------------------------

--
-- Table structure for table `18street_card_detail`
--

CREATE TABLE IF NOT EXISTS `18street_card_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `card_num` varchar(255) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_categories`
--

CREATE TABLE IF NOT EXISTS `18street_categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `18street_categories`
--

INSERT INTO `18street_categories` (`id`, `categories`) VALUES
(1, 'Music'),
(2, 'Business'),
(3, 'Food & Drink'),
(4, 'Community'),
(5, 'Performing'),
(6, 'Film or Media'),
(7, 'Sports or Fitness'),
(8, 'Health & Welness'),
(9, 'Science'),
(10, 'Travel & Outdoor'),
(11, 'Charity & Causes'),
(12, 'Religion'),
(13, 'Family & Education'),
(14, 'Seasonal & Holiday'),
(15, 'Government'),
(16, 'Fashion & Beauty'),
(17, 'Home & Lifestyle'),
(18, 'Auto, Boat & Air'),
(19, 'Hobbies & Special'),
(20, 'School Activities'),
(21, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `18street_countries`
--

CREATE TABLE IF NOT EXISTS `18street_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `currency_code` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=246 ;

--
-- Dumping data for table `18street_countries`
--

INSERT INTO `18street_countries` (`id`, `country_code`, `name`, `currency_code`) VALUES
(1, 'US', 'United States', 'USD'),
(2, 'AF', 'Afghanistan', 'USD'),
(3, 'AL', 'Albania', 'USD'),
(4, 'DZ', 'Algeria', 'USD'),
(5, 'DS', 'American Samoa', 'USD'),
(6, 'AD', 'Andorra', 'EUR'),
(7, 'AO', 'Angola', 'USD'),
(8, 'AI', 'Anguilla', 'USD'),
(9, 'AQ', 'Antarctica', 'USD'),
(10, 'AG', 'Antigua and Barbuda', 'USD'),
(11, 'AR', 'Argentina', 'USD'),
(12, 'AM', 'Armenia', 'USD'),
(13, 'AW', 'Aruba', 'USD'),
(14, 'AU', 'Australia', 'AUD'),
(15, 'AT', 'Austria', 'EUR'),
(16, 'AZ', 'Azerbaijan', 'USD'),
(17, 'BS', 'Bahamas', 'USD'),
(18, 'BH', 'Bahrain', 'USD'),
(19, 'BD', 'Bangladesh', 'USD'),
(20, 'BB', 'Barbados', 'USD'),
(21, 'BY', 'Belarus', 'USD'),
(22, 'BE', 'Belgium', 'EUR'),
(23, 'BZ', 'Belize', 'USD'),
(24, 'BJ', 'Benin', 'USD'),
(25, 'BM', 'Bermuda', 'USD'),
(26, 'BT', 'Bhutan', 'USD'),
(27, 'BO', 'Bolivia', 'USD'),
(28, 'BA', 'Bosnia and Herzegovina', 'USD'),
(29, 'BW', 'Botswana', 'USD'),
(30, 'BV', 'Bouvet Island', 'USD'),
(31, 'BR', 'Brazil', 'BRL'),
(32, 'IO', 'British Indian Ocean Territory', 'USD'),
(33, 'BN', 'Brunei Darussalam', 'USD'),
(34, 'BG', 'Bulgaria', 'USD'),
(35, 'BF', 'Burkina Faso', 'USD'),
(36, 'BI', 'Burundi', 'USD'),
(37, 'KH', 'Cambodia', 'USD'),
(38, 'CM', 'Cameroon', 'USD'),
(39, 'CA', 'Canada', 'CAD'),
(40, 'CV', 'Cape Verde', 'USD'),
(41, 'KY', 'Cayman Islands', 'USD'),
(42, 'CF', 'Central African Republic', 'USD'),
(43, 'TD', 'Chad', 'USD'),
(44, 'CL', 'Chile', 'USD'),
(45, 'CN', 'China', 'USD'),
(46, 'CX', 'Christmas Island', 'USD'),
(47, 'CC', 'Cocos (Keeling) Islands', 'USD'),
(48, 'CO', 'Colombia', 'USD'),
(49, 'KM', 'Comoros', 'USD'),
(50, 'CG', 'Congo', 'USD'),
(51, 'CK', 'Cook Islands', 'USD'),
(52, 'CR', 'Costa Rica', 'USD'),
(53, 'HR', 'Croatia (Hrvatska)', 'USD'),
(54, 'CU', 'Cuba', 'USD'),
(55, 'CY', 'Cyprus', 'EUR'),
(56, 'CZ', 'Czech Republic', 'CZK'),
(57, 'DK', 'Denmark', 'DKK'),
(58, 'DJ', 'Djibouti', 'USD'),
(59, 'DM', 'Dominica', 'USD'),
(60, 'DO', 'Dominican Republic', 'USD'),
(61, 'TP', 'East Timor', 'USD'),
(62, 'EC', 'Ecuador', 'USD'),
(63, 'EG', 'Egypt', 'USD'),
(64, 'SV', 'El Salvador', 'USD'),
(65, 'GQ', 'Equatorial Guinea', 'USD'),
(66, 'ER', 'Eritrea', 'USD'),
(67, 'EE', 'Estonia', 'EUR'),
(68, 'ET', 'Ethiopia', 'USD'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'USD'),
(70, 'FO', 'Faroe Islands', 'USD'),
(71, 'FJ', 'Fiji', 'USD'),
(72, 'FI', 'Finland', 'EUR'),
(73, 'FR', 'France', 'EUR'),
(74, 'FX', 'France, Metropolitan', 'USD'),
(75, 'GF', 'French Guiana', 'USD'),
(76, 'PF', 'French Polynesia', 'USD'),
(77, 'TF', 'French Southern Territories', 'USD'),
(78, 'GA', 'Gabon', 'USD'),
(79, 'GM', 'Gambia', 'USD'),
(80, 'GE', 'Georgia', 'USD'),
(81, 'DE', 'Germany', 'EUR'),
(82, 'GH', 'Ghana', 'USD'),
(83, 'GI', 'Gibraltar', 'USD'),
(84, 'GK', 'Guernsey', 'USD'),
(85, 'GR', 'Greece', 'EUR'),
(86, 'GL', 'Greenland', 'USD'),
(87, 'GD', 'Grenada', 'USD'),
(88, 'GP', 'Guadeloupe', 'USD'),
(89, 'GU', 'Guam', 'USD'),
(90, 'GT', 'Guatemala', 'USD'),
(91, 'GN', 'Guinea', 'USD'),
(92, 'GW', 'Guinea-Bissau', 'USD'),
(93, 'GY', 'Guyana', 'USD'),
(94, 'HT', 'Haiti', 'USD'),
(95, 'HM', 'Heard and Mc Donald Islands', 'USD'),
(96, 'HN', 'Honduras', 'USD'),
(97, 'HK', 'Hong Kong', 'HKD'),
(98, 'HU', 'Hungary', 'HUF'),
(99, 'IS', 'Iceland', 'USD'),
(100, 'IN', 'India', 'USD'),
(101, 'IM', 'Isle of Man', 'USD'),
(102, 'ID', 'Indonesia', 'USD'),
(103, 'IR', 'Iran (Islamic Republic of)', 'USD'),
(104, 'IQ', 'Iraq', 'USD'),
(105, 'IE', 'Ireland', 'EUR'),
(106, 'IL', 'Israel', 'ILS'),
(107, 'IT', 'Italy', 'EUR'),
(108, 'CI', 'Ivory Coast', 'USD'),
(109, 'JE', 'Jersey', 'USD'),
(110, 'JM', 'Jamaica', 'USD'),
(111, 'JP', 'Japan', 'JPY'),
(112, 'JO', 'Jordan', 'USD'),
(113, 'KZ', 'Kazakhstan', 'USD'),
(114, 'KE', 'Kenya', 'USD'),
(115, 'KI', 'Kiribati', 'USD'),
(116, 'KP', 'Korea, Democratic People''s Republic of', 'USD'),
(117, 'KR', 'Korea, Republic of', 'USD'),
(118, 'XK', 'Kosovo', 'EUR'),
(119, 'KW', 'Kuwait', 'USD'),
(120, 'KG', 'Kyrgyzstan', 'USD'),
(121, 'LA', 'Lao People''s Democratic Republic', 'USD'),
(122, 'LV', 'Latvia', 'EUR'),
(123, 'LB', 'Lebanon', 'USD'),
(124, 'LS', 'Lesotho', 'USD'),
(125, 'LR', 'Liberia', 'USD'),
(126, 'LY', 'Libyan Arab Jamahiriya', 'USD'),
(127, 'LI', 'Liechtenstein', 'CHF'),
(128, 'LT', 'Lithuania', 'EUR'),
(129, 'LU', 'Luxembourg', 'EUR'),
(130, 'MO', 'Macau', 'USD'),
(131, 'MK', 'Macedonia', 'USD'),
(132, 'MG', 'Madagascar', 'USD'),
(133, 'MW', 'Malawi', 'USD'),
(134, 'MY', 'Malaysia', 'MYR'),
(135, 'MV', 'Maldives', 'USD'),
(136, 'ML', 'Mali', 'USD'),
(137, 'MT', 'Malta', 'EUR'),
(138, 'MH', 'Marshall Islands', 'USD'),
(139, 'MQ', 'Martinique', 'USD'),
(140, 'MR', 'Mauritania', 'USD'),
(141, 'MU', 'Mauritius', 'USD'),
(142, 'TY', 'Mayotte', 'USD'),
(143, 'MX', 'Mexico', 'MXN'),
(144, 'FM', 'Micronesia, Federated States of', 'USD'),
(145, 'MD', 'Moldova, Republic of', 'USD'),
(146, 'MC', 'Monaco', 'EUR'),
(147, 'MN', 'Mongolia', 'USD'),
(148, 'ME', 'Montenegro', 'EUR'),
(149, 'MS', 'Montserrat', 'USD'),
(150, 'MA', 'Morocco', 'USD'),
(151, 'MZ', 'Mozambique', 'USD'),
(152, 'MM', 'Myanmar', 'USD'),
(153, 'NA', 'Namibia', 'USD'),
(154, 'NR', 'Nauru', 'USD'),
(155, 'NP', 'Nepal', 'USD'),
(156, 'NL', 'Netherlands', 'EUR'),
(157, 'AN', 'Netherlands Antilles', 'USD'),
(158, 'NC', 'New Caledonia', 'USD'),
(159, 'NZ', 'New Zealand', 'NZD'),
(160, 'NI', 'Nicaragua', 'USD'),
(161, 'NE', 'Niger', 'USD'),
(162, 'NG', 'Nigeria', 'USD'),
(163, 'NU', 'Niue', 'USD'),
(164, 'NF', 'Norfolk Island', 'USD'),
(165, 'MP', 'Northern Mariana Islands', 'USD'),
(166, 'NO', 'Norway', 'NOK'),
(167, 'OM', 'Oman', 'USD'),
(168, 'PK', 'Pakistan', 'USD'),
(169, 'PW', 'Palau', 'USD'),
(170, 'PS', 'Palestine', 'ILS'),
(171, 'PA', 'Panama', 'USD'),
(172, 'PG', 'Papua New Guinea', 'USD'),
(173, 'PY', 'Paraguay', 'USD'),
(174, 'PE', 'Peru', 'USD'),
(175, 'PH', 'Philippines', 'PHP'),
(176, 'PN', 'Pitcairn', 'USD'),
(177, 'PL', 'Poland', 'PLN'),
(178, 'PT', 'Portugal', 'EUR'),
(179, 'PR', 'Puerto Rico', 'USD'),
(180, 'QA', 'Qatar', 'USD'),
(181, 'RE', 'Reunion', 'USD'),
(182, 'RO', 'Romania', 'USD'),
(183, 'RU', 'Russian Federation', 'RUB'),
(184, 'RW', 'Rwanda', 'USD'),
(185, 'KN', 'Saint Kitts and Nevis', 'USD'),
(186, 'LC', 'Saint Lucia', 'USD'),
(187, 'VC', 'Saint Vincent and the Grenadines', 'USD'),
(188, 'WS', 'Samoa', 'USD'),
(189, 'SM', 'San Marino', 'EUR'),
(190, 'ST', 'Sao Tome and Principe', 'USD'),
(191, 'SA', 'Saudi Arabia', 'USD'),
(192, 'SN', 'Senegal', 'USD'),
(193, 'RS', 'Serbia', 'USD'),
(194, 'SC', 'Seychelles', 'USD'),
(195, 'SL', 'Sierra Leone', 'USD'),
(196, 'SG', 'Singapore', 'SGD'),
(197, 'SK', 'Slovakia', 'EUR'),
(198, 'SI', 'Slovenia', 'EUR'),
(199, 'SB', 'Solomon Islands', 'USD'),
(200, 'SO', 'Somalia', 'USD'),
(201, 'ZA', 'South Africa', 'USD'),
(202, 'GS', 'South Georgia South Sandwich Islands', 'USD'),
(203, 'ES', 'Spain', 'EUR'),
(204, 'LK', 'Sri Lanka', 'USD'),
(205, 'SH', 'St. Helena', 'USD'),
(206, 'PM', 'St. Pierre and Miquelon', 'USD'),
(207, 'SD', 'Sudan', 'USD'),
(208, 'SR', 'Suriname', 'USD'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands', 'USD'),
(210, 'SZ', 'Swaziland', 'USD'),
(211, 'SE', 'Sweden', 'SEK'),
(212, 'CH', 'Switzerland', 'CHF'),
(213, 'SY', 'Syrian Arab Republic', 'USD'),
(214, 'TW', 'Taiwan', 'TWD'),
(215, 'TJ', 'Tajikistan', 'USD'),
(216, 'TZ', 'Tanzania, United Republic of', 'USD'),
(217, 'TH', 'Thailand', 'THB'),
(218, 'TG', 'Togo', 'USD'),
(219, 'TK', 'Tokelau', 'USD'),
(220, 'TO', 'Tonga', 'USD'),
(221, 'TT', 'Trinidad and Tobago', 'USD'),
(222, 'TN', 'Tunisia', 'USD'),
(223, 'TR', 'Turkey', 'USD'),
(224, 'TM', 'Turkmenistan', 'USD'),
(225, 'TC', 'Turks and Caicos Islands', 'USD'),
(226, 'TV', 'Tuvalu', 'USD'),
(227, 'UG', 'Uganda', 'USD'),
(228, 'UA', 'Ukraine', 'USD'),
(229, 'AE', 'United Arab Emirates', 'USD'),
(230, 'GB', 'United Kingdom', 'GBP'),
(231, 'UM', 'United States minor outlying islands', 'USD'),
(232, 'UY', 'Uruguay', 'USD'),
(233, 'UZ', 'Uzbekistan', 'USD'),
(234, 'VU', 'Vanuatu', 'USD'),
(235, 'VA', 'Vatican City State', 'USD'),
(236, 'VE', 'Venezuela', 'USD'),
(237, 'VN', 'Vietnam', 'USD'),
(238, 'VG', 'Virgin Islands (British)', 'USD'),
(239, 'VI', 'Virgin Islands (U.S.)', 'USD'),
(240, 'WF', 'Wallis and Futuna Islands', 'USD'),
(241, 'EH', 'Western Sahara', 'USD'),
(242, 'YE', 'Yemen', 'USD'),
(243, 'ZR', 'Zaire', 'USD'),
(244, 'ZM', 'Zambia', 'USD'),
(245, 'ZW', 'Zimbabwe', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `18street_currency`
--

CREATE TABLE IF NOT EXISTS `18street_currency` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=272 ;

--
-- Dumping data for table `18street_currency`
--

INSERT INTO `18street_currency` (`ID`, `currency_code`) VALUES
(247, 'USD'),
(248, 'AUD'),
(250, 'BRL'),
(251, 'CAD'),
(252, 'CHF'),
(253, 'CZK'),
(254, 'DKK'),
(255, 'EUR'),
(256, 'GBP'),
(257, 'HKD'),
(258, 'HUF'),
(259, 'ILS'),
(260, 'JPY'),
(261, 'MXN'),
(262, 'MYR'),
(263, 'NOK'),
(264, 'NZD'),
(265, 'PHP'),
(266, 'PLN'),
(267, 'RUB'),
(268, 'SEK'),
(269, 'SGD'),
(270, 'THB'),
(271, 'TWD');

-- --------------------------------------------------------

--
-- Table structure for table `18street_events`
--

CREATE TABLE IF NOT EXISTS `18street_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(500) CHARACTER SET latin1 NOT NULL,
  `title` varchar(500) CHARACTER SET latin1 NOT NULL,
  `description` varchar(500) CHARACTER SET latin1 NOT NULL,
  `fromdate` datetime NOT NULL,
  `todate` datetime NOT NULL,
  `location` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `event_type` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(500) CHARACTER SET latin1 NOT NULL DEFAULT '0' COMMENT '1 for active, 0 deactive',
  `privacy` int(11) NOT NULL COMMENT '0 = public , 1 = private',
  `event_banner` text NOT NULL,
  `popularity` int(11) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  `date_published` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `18street_events`
--

INSERT INTO `18street_events` (`id`, `userid`, `title`, `description`, `fromdate`, `todate`, `location`, `city`, `state`, `country`, `lat`, `lng`, `event_type`, `category`, `status`, `privacy`, `event_banner`, `popularity`, `date_created`, `date_published`) VALUES
(52, '120', 'Columbus family monthly meeting. ', 'Our monthly meeting will be held at the ndenga family. Please bring your children with you. ', '2018-05-30 19:00:00', '2018-06-01 03:00:00', '442 Stone Shadow Dr, Blacklick, OH 43004, USA', 'Blacklick', 'Ohio', 'United States', 39.99195870, -82.81484930, 'Dinner or Gala', 'Food & Drink', '1', 0, '152850717712020180608_211704.jpg', 0, '2018-05-30 21:49:38', '0000-00-00 00:00:00'),
(53, '143', 'Lady ponce en concert à Columbus Ohio', 'Elle sera notre pour un concert unique. Venez nombreux supporter la star camerounaise aux hanches de feu', '2018-09-30 02:00:00', '2018-09-30 10:00:00', 'Michelle''s Academy', 'Blacklick', 'Ohio', 'United States', 39.99164200, -82.81291000, 'Party or Social', 'Music', '1', 0, '1528779005profile_pic2520928169.jpg', 0, '2018-05-31 03:08:05', '2018-05-31 03:22:32'),
(61, '143', 'Columbus family monthly meeting', 'If you’re part of Columbus Family, please join other members at the Ndenga’s residence for our monthly meeting. Casual attire is a most', '2018-06-23 19:00:00', '2018-06-24 03:00:00', 'Shade On the Canal', 'Canal Winchester', 'Ohio', 'United States', 39.84209860, -82.80535900, 'Meeting', 'Community', '1', 0, '1527780340profile_pic1972725758.jpg', 0, '2018-05-31 15:04:13', '2018-05-31 15:25:40'),
(63, '142', 'Pool Party', 'enjy free drink  with DJ music at free cost.', '2018-06-05 09:30:00', '2018-06-18 13:30:00', 'Hotel Windsor', 'Panchkula', 'Haryana', 'India', 30.72214190, 76.85174880, 'Party or Social', 'Food & Drink', '1', 0, '152784513614220180601_145331.jpg', 0, '2018-06-01 09:17:22', '0000-00-00 00:00:00'),
(77, '138', 'Food Park ', 'Different  varieties of food available at very low price. Come and enjoy.', '2018-06-19 12:30:00', '2018-06-19 16:30:00', 'Hotel Windsor', 'Panchkula', 'Haryana', 'India', 30.72214190, 76.85174880, 'Party or Social', 'Food & Drink', '1', 0, '152837050013820180607_164912.jpg', 0, '2018-06-07 11:19:18', '0000-00-00 00:00:00'),
(92, '144', 'Team Building', 'Team building is the process of turning a group of individual contributing employees into a cohesive team.', '2018-07-18 04:00:00', '2018-07-22 11:30:00', 'Bird Academy (Bird Education Society for Travel & Tourism)', 'Chandigarh', 'Chandigarh', 'India', 30.72460900, 76.84621630, 'Meeting', 'Business', '1', 0, '152844374314420180608_130955.jpg', 87, '2018-06-08 07:40:59', '0000-00-00 00:00:00'),
(95, '120', 'Blaise 50th Birthday', 'Blaise is turning 50. Join him and his family to formally share they happiness around a home made dinner. \nCelebrities attires require.', '2018-06-14 06:10:25', '2018-06-15 21:00:00', '28 S Hamilton Rd, Columbus, OH 43213, USA', 'Columbus', 'Ohio', 'United States', 39.97453390, -82.87325250, 'Dinner or Gala', 'Family & Education', '1', 0, '152847686912020180608_125156.jpg', 0, '2018-06-08 16:52:40', '0000-00-00 00:00:00'),
(96, '128', 'Dunkin’ Donuts ', 'We have different kind of Dunkin’ Donuts. ', '2018-11-14 07:00:25', '2018-11-15 21:00:00', 'Panchkula', 'Panchkula', 'Haryana', 'India', 30.69420910, 76.86056500, 'Party or Social', 'Food & Drink', '1', 0, '1528709854profile_pic2743993097.jpg', 0, '2018-06-11 09:37:14', '0000-00-00 00:00:00'),
(99, '128', 'Water Park', 'Water value', '2018-09-16 04:40:00', '2018-09-16 09:40:00', 'Mumbai', 'Mumbai', 'Maharashtra', 'India', 19.07598370, 72.87765590, '', '', '1', 0, '', 0, '2018-06-15 04:43:47', '0000-00-00 00:00:00'),
(101, '142', 'Art & Craft', 'It is about for school students. Where they can exhibit there drawings, models, portraits etc. it is more like that exhibition.', '2018-06-17 08:00:00', '2018-06-18 14:00:00', 'MHC Market', 'Chandigarh', 'Chandigarh', 'India', 30.71580560, 76.83178170, 'Seminar or Talk', 'Performing', '1', 0, '1529046150profile_pic3969663275.jpg', 0, '2018-06-15 07:01:44', '0000-00-00 00:00:00'),
(102, '144', 'Theatre Drama', 'This is for college students. In this event they can showcase they acting talent as well as earn income. ', '2018-07-16 04:00:00', '2018-07-21 11:30:00', 'Tk20 India Private Limited', 'Chandigarh', 'Chandigarh', 'India', 30.72385270, 76.84659980, 'Appearance', 'Film or Media', '0', 0, '152905352614420180615_143235.jpg', 0, '2018-06-15 09:02:35', '0000-00-00 00:00:00'),
(103, '142', 'Computer Geek', 'Event from technology lovers.', '2018-08-15 09:00:00', '2018-10-20 12:00:00', 'Garden of Silence', 'Chandigarh', 'Chandigarh', 'India', 30.73843420, 76.83011740, 'Seminar or Talk', 'Hobbies & Special', '1', 0, '1529055379profile_pic1315221207.jpg', 6, '2018-06-15 09:36:08', '0000-00-00 00:00:00'),
(110, '143', 'Xoomia annual conference ', 'It is this time of the year again. Join the growing community of xoomia users, who meet every year to brainstorm for the good of providers', '2018-07-01 14:00:00', '2018-07-03 19:00:00', 'Michelle''s Academy', 'Blacklick', 'Ohio', 'United States', 39.99164200, -82.81291000, 'Conference', 'Business', '1', 0, '152938510814320180619_010844.jpg', 0, '2018-06-19 00:18:28', '0000-00-00 00:00:00'),
(116, '141', 'Comedy nights', 'Comedy nights with kapil Sharma and Suresh lehri.. ', '2018-08-29 12:30:00', '2018-06-30 15:30:00', 'Sector 1, Chandigarh, 160005, India', 'Chandigarh', 'Chandigarh', 'India', 30.74475880, 76.81055770, 'Appearance', 'Performing', '1', 0, '152939215214120180619_123613.jpg', 13, '2018-06-19 07:08:43', '0000-00-00 00:00:00'),
(117, '144', 'Mystery Room', 'Hi we also don''t now about the event.', '2018-07-30 16:00:00', '2018-07-31 12:30:00', 'Hotel Windsor', 'Panchkula', 'Haryana', 'India', 30.72214190, 76.85174880, 'Tournament', 'Science', '1', 0, '152940153214420180619_151232.jpg', 7, '2018-06-19 09:45:08', '0000-00-00 00:00:00'),
(118, '142', 'Trade show', 'Trade show by Hyundai.. ..', '2018-07-30 04:30:00', '2018-08-01 11:30:00', 'OSVIN Web Solutions', 'Chandigarh', 'Chandigarh', 'India', 30.72318860, 76.84794900, 'Tradeshow', 'Business', '1', 0, '152940357514220180619_154634.jpg', 97, '2018-06-19 10:19:12', '0000-00-00 00:00:00'),
(119, '120', 'Visit to the Columbus Zoo', 'Columbus family members are invited to attend or annual fun day. Please bring your family for this great event designed to keep us together. ', '2018-07-31 13:00:00', '2018-08-01 01:00:00', '4850 W Powell Rd, Powell, OH 43065, USA', 'Powell', 'Ohio', 'United States', 40.15607890, -83.11830420, 'Party or Social', 'Travel & Outdoor', '1', 0, '152955921412020180621_013024.jpg', 0, '2018-06-21 05:30:01', '0000-00-00 00:00:00'),
(120, '119', 'Test', 'This is for testing purposes only', '2018-08-31 03:30:00', '2018-08-31 15:30:00', 'Panchkula', 'Panchkula', 'Haryana', 'India', 30.69420910, 76.86056500, '', '', '0', 0, '', 0, '2018-06-22 06:08:55', '0000-00-00 00:00:00'),
(121, '138', 'Ready ', 'Ready for jack jones showroom ', '2018-07-27 05:26:00', '2018-10-27 05:26:00', 'Panchkula', 'Panchkula', 'Haryana', 'India', 30.69420910, 76.86056500, '', '', '0', 0, '', 0, '2018-06-26 05:30:03', '0000-00-00 00:00:00'),
(122, '143', 'Let''s go to the zoo', 'Our annual hang out to the zoo is tomorrow. Please join our family to enjoy this moment of joy. See you there at the zoo', '2018-07-06 14:00:00', '2018-07-07 01:00:00', '4850 W Powell Rd, Powell, OH 43065, USA', 'Powell', 'Ohio', 'United States', 40.15607890, -83.11830420, 'Camp or Trip', 'Community', '1', 0, '153012634214320180627_150213.jpg', 8, '2018-06-27 19:03:36', '0000-00-00 00:00:00'),
(123, '141', 'Fhggh', 'Ctgvgh', '2018-07-29 18:30:00', '2018-09-29 18:30:00', 'Panchkula', 'Panchkula', 'Haryana', 'India', 30.69420910, 76.86056500, '', '', '0', 0, '', 0, '2018-06-29 04:33:39', '0000-00-00 00:00:00'),
(124, '119', 'Testing live app', 'Testing live event', '2018-07-05 12:53:00', '2018-07-19 12:53:00', 'Hotel Windsor', 'Panchkula', 'Haryana', 'India', 30.72214190, 76.85174880, 'Seminar or Talk', 'Food & Drink', '1', 0, '153070884211920180704_182356.jpg', 0, '2018-07-04 12:53:29', '0000-00-00 00:00:00'),
(125, '120', 'Le barbecue chez Elisee ', 'Columbus family and friends, for cordially invited to honore for presence at the barbecue held this coming Friday. ', '2018-07-14 22:00:00', '2018-07-15 21:00:00', '1630 Schrock Rd, Columbus, OH 43229, USA', 'Columbus', 'Ohio', 'United States', 40.10620910, -82.97244830, 'Party or Social', 'Food & Drink', '1', 0, '153074593612020180704_191206.jpg', 9, '2018-07-04 23:11:15', '0000-00-00 00:00:00'),
(126, '143', 'Xoomia conference ', 'Annuel Xoomia conference for new user in North America. This year again we are opening this event to the general public as well.', '2018-07-25 12:30:00', '2018-07-30 03:30:00', '400 N High St, Columbus, OH 43215, USA', 'Columbus', 'Ohio', 'United States', 39.97235410, -83.00120790, 'Conference', 'Business', '1', 0, '153084765314320180705_233352.jpg', 6, '2018-07-06 03:26:31', '0000-00-00 00:00:00'),
(127, '143', 'Gtes', 'Test', '2018-07-19 13:23:00', '2018-07-20 13:23:00', 'Columbus Distributing Co', 'Columbus', 'Ohio', 'United States', 40.06783320, -82.99547760, '', '', '0', 0, '153088460914320180706_094314.jpg', 0, '2018-07-06 13:24:38', '0000-00-00 00:00:00'),
(128, '120', 'Christelle''s birthday party ', 'With family and close friends,  Cecile christelle engmbom plans to throw a giant party for her 32 birthday. ', '2018-10-03 23:00:00', '2018-10-04 22:00:00', 'Boulevard du 20 mai, Yaoundé, Cameroon', 'Yaounde', 'Centre', 'Cameroon', 3.86439840, 11.51596250, 'Dinner or Gala', 'Food & Drink', '1', 0, '153102150512020180707_234448.jpg', 12, '2018-07-08 03:26:47', '0000-00-00 00:00:00'),
(129, '143', 'Columbus annual cars show', 'Come and join us for the fifth edition of our Columbus cars show event to be held at the great her convention center. Bring your family for fun.', '2018-07-29 19:00:00', '2018-08-01 03:00:00', '39 E State St, Columbus, OH 43215, USA', 'Columbus', 'Ohio', 'United States', 39.95995170, -82.99894200, 'Convention', 'Auto, Boat & Air', '1', 0, '153102071214320180707_233808.jpg', 3, '2018-07-08 03:28:43', '0000-00-00 00:00:00'),
(130, '119', 'Android ', 'This is for testing purposes only ', '2018-07-30 03:30:00', '2018-07-30 15:32:00', 'Panchkula', 'Panchkula', 'Haryana', 'India', 30.69420910, 76.86056500, '', '', '0', 0, '', 0, '2018-07-16 10:14:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `18street_eventtype`
--

CREATE TABLE IF NOT EXISTS `18street_eventtype` (
  `id` int(11) NOT NULL,
  `event_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `18street_eventtype`
--

INSERT INTO `18street_eventtype` (`id`, `event_type`) VALUES
(1, 'Conference'),
(2, 'Seminar or Talk'),
(3, 'Tradeshow'),
(4, 'Convention'),
(5, 'Screening'),
(6, 'Dinner or Gala'),
(7, 'Class, Training'),
(8, 'Meeting'),
(9, 'Party or Social'),
(10, 'Rally'),
(11, 'Tournament'),
(12, 'Game'),
(13, 'Race or Endurance'),
(14, 'Tour'),
(15, 'Camp or Trip'),
(16, 'Appearance'),
(17, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `18street_favevents`
--

CREATE TABLE IF NOT EXISTS `18street_favevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `18street_favevents`
--

INSERT INTO `18street_favevents` (`id`, `userid`, `eventid`, `datetime`) VALUES
(1, 120, 122, '2018-07-04 20:33:32'),
(2, 141, 103, '2018-07-10 11:47:37'),
(4, 119, 92, '2018-07-17 08:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `18street_forgotPassword`
--

CREATE TABLE IF NOT EXISTS `18street_forgotPassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) COLLATE utf8_bin NOT NULL,
  `time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_login`
--

CREATE TABLE IF NOT EXISTS `18street_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(500) NOT NULL,
  `device_type` int(11) NOT NULL COMMENT '0 for android,1 for ios',
  `unique_device_id` varchar(500) NOT NULL,
  `token_id` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL DEFAULT '1' COMMENT '0 for logout,1 for login',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `18street_login`
--

INSERT INTO `18street_login` (`id`, `user_id`, `device_type`, `unique_device_id`, `token_id`, `status`, `date_created`) VALUES
(1, '144', 0, '19038eb1db06c670', 'fkz4xZZDr7s:APA91bF7TAyMnNre_PZN5dlSuqmwWgYXyFoBp8hMYotxfYAa6U-c4lwOFtz430HyllvBPtwUnv1lmziH65PRoyh21evmgzEFwgXGDs7g4F-uJ6npDMjddA4MOzELvxhpmIjsAAWHLzJ4Mfw7HdZjVdWiSy9A_SPIlA', '0', '2018-07-04 14:19:50'),
(2, '119', 0, '19038eb1db06c670', 'fkz4xZZDr7s:APA91bF7TAyMnNre_PZN5dlSuqmwWgYXyFoBp8hMYotxfYAa6U-c4lwOFtz430HyllvBPtwUnv1lmziH65PRoyh21evmgzEFwgXGDs7g4F-uJ6npDMjddA4MOzELvxhpmIjsAAWHLzJ4Mfw7HdZjVdWiSy9A_SPIlA', '0', '2018-07-04 14:22:42'),
(3, '143', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-04 20:08:41'),
(4, '120', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-04 20:32:31'),
(5, '143', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-04 20:36:46'),
(6, '120', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-04 20:43:35'),
(7, '138', 0, '19038eb1db06c670', 'cuWn1EcDi2k:APA91bFkq9zyq_Dy-5UNRjynmRRl_0NCulaXzD8WYst2g90Ug8trFyod1ctN9Q_HeKs4zZPVqvnEe9qJgTyTkXpthIXFVXz_L7wZfwBPyivsJJpikVYAsj5bWlEMKrLTxdXsc6_A_KM4IDe7H25qlFj9E8DDBX-Bbw', '1', '2018-07-05 07:16:39'),
(8, '138', 0, '19038eb1db06c670', 'cuWn1EcDi2k:APA91bFkq9zyq_Dy-5UNRjynmRRl_0NCulaXzD8WYst2g90Ug8trFyod1ctN9Q_HeKs4zZPVqvnEe9qJgTyTkXpthIXFVXz_L7wZfwBPyivsJJpikVYAsj5bWlEMKrLTxdXsc6_A_KM4IDe7H25qlFj9E8DDBX-Bbw', '1', '2018-07-05 07:16:47'),
(9, '141', 0, '19038eb1db06c670', 'cuWn1EcDi2k:APA91bFkq9zyq_Dy-5UNRjynmRRl_0NCulaXzD8WYst2g90Ug8trFyod1ctN9Q_HeKs4zZPVqvnEe9qJgTyTkXpthIXFVXz_L7wZfwBPyivsJJpikVYAsj5bWlEMKrLTxdXsc6_A_KM4IDe7H25qlFj9E8DDBX-Bbw', '0', '2018-07-05 07:28:13'),
(10, '128', 1, 'ABF81107-4B2C-4A7F-8827-9CBC9C6B74E0', '62d62ac5950e66e6eee857915dab8aa313b700277e35c145c4cf55bfa0b5c966', '0', '2018-07-05 08:54:27'),
(11, '144', 0, '19038eb1db06c670', 'cuWn1EcDi2k:APA91bFkq9zyq_Dy-5UNRjynmRRl_0NCulaXzD8WYst2g90Ug8trFyod1ctN9Q_HeKs4zZPVqvnEe9qJgTyTkXpthIXFVXz_L7wZfwBPyivsJJpikVYAsj5bWlEMKrLTxdXsc6_A_KM4IDe7H25qlFj9E8DDBX-Bbw', '0', '2018-07-05 09:32:44'),
(12, '144', 1, 'DAB5FEBA-3A53-4D37-A163-E974BD8BEC4B', 'c6334e85e1feec636a3cae48bde63c65b8263963c0607d503104ecafb35d63b5', '0', '2018-07-05 09:55:21'),
(13, '144', 0, '9d08386b2fbe3559', 'eW9InXrS_iU:APA91bGaTNrx5wlYm9BgePvMU-uxixNnzPVCY906QiHLT78KPsiedxlGZHA3pA_Mu68bQfhG1NxHdq1j0z7ix061OLvr7WHsBfbwri58iat19uRMnIJSlyc2T_FZk6P0DOt_I_9tih7j8L2a-3z_0x4OLxGOKD0YVQ', '0', '2018-07-05 10:40:10'),
(14, '119', 0, 'abe65d0f3146225', 'fb6hQy0iuA0:APA91bGvIRrjNeblREG36eMbCA5zTCM8dGeJj9uYX1SNYTY0IZoeCjGsnuWvtOL8Czgli-cRhsO9ALQEDczcGRK2C9cJPejHD2Y1uxfpVu-1DWFaORfHDB3WQebad-AvmbkrSc62U6vuUcwxMt5RGOqJEE6vdoUJug', '0', '2018-07-06 04:50:18'),
(15, '141', 1, '837A58A0-D5C7-4F2E-B651-2D8292FBCD19', '7881081da73d924ec7bd40b0cece0c5c14135bf61a031e2021f08d7d5928836a', '0', '2018-07-06 05:45:25'),
(16, '141', 0, '91a78ca92c93c82f', 'eKXwgaBTfjc:APA91bFBzQw2YuB3YoTl-9jew0dfSqitZOixv5xdgC_nv8gLv2nvClwVNJq5wgc8oCI76GZ0Vgs34tPvEpU0Ng1rnKofe_XizrzhMz7mCsYV7OTYJVbW-qaN9tGI3bC7vzsyphxFellC', '0', '2018-07-06 05:54:35'),
(17, '141', 1, 'D0835502-DE17-4112-AE0D-8C1440A5055E', '985254b68b5fc3092bacc45225cd95b85894c69b19c41bf90258c3893b67b32f', '0', '2018-07-06 06:22:31'),
(18, '143', 0, 'ea3e0ff966d4400b', 'dyGeM2nCDTE:APA91bE9JX2Bye54aytoJQefgkvCoqGfZBR2YyLb6ZQgfjnWmqD9H_EkpZPER2p13HoaPehVx7jjElJRxYzOMFBr2ob8ZlxePVDp1Jz3vFbNsuhVAnbOh9Gz6kph6f47gLofkZuF238TFNvlgkYmSEU471gw83T0GQ', '0', '2018-07-06 13:21:44'),
(19, '113', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-08 02:46:01'),
(20, '116', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-08 02:50:08'),
(21, '361', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:17'),
(22, '362', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:19'),
(23, '363', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:20'),
(24, '364', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:21'),
(25, '365', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:23'),
(26, '366', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:24'),
(27, '367', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:24'),
(28, '368', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:02:59'),
(29, '369', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:03:02'),
(30, '370', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:03:03'),
(31, '371', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:03:04'),
(32, '372', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:03:10'),
(33, '373', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:03:39'),
(34, '374', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:04:26'),
(35, '375', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:04:58'),
(36, '376', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:05:02'),
(37, '377', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:05:06'),
(38, '378', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:05:17'),
(39, '379', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:29'),
(40, '380', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:30'),
(41, '381', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:33'),
(42, '382', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:34'),
(43, '383', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:35'),
(44, '384', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:44'),
(45, '385', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-08 03:06:47'),
(46, '113', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-08 03:07:33'),
(47, '113', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-08 03:07:46'),
(48, '120', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '0', '2018-07-08 03:13:48'),
(49, '143', 0, 'f7b89c82a6df23db', 'cqYCNZ2OQbU:APA91bFTN9j90lv8wQNv_PrdOYwABQGCcVb5RUe4PLa9pR6zRtz57ZL2PCCE0SsLE5iULczwiyiOiIzY9K2B9IsaiPXYBQQ5SPu1elWuLxi33thgQvwvkda3eR6fjx1hPdADRwygmVGN0sAj1-eM0fJDxnZhfPKunw', '0', '2018-07-08 03:18:00'),
(50, '386', 0, 'feb076e46f46ab3f', 'fVj1KqdAB_Q:APA91bHut_aX_DlVNNjxGinB1t3ot4PsV-9AGe-Z3TrYfUqrxXZ10t471i7Z1fzl9EjHUUUHyZmr7Y3kCXyAI231qiK05xZLbx6X3MVkDNS4N8iPYXhQpw8GHiJr3XoPLhTdSEQ1q9HdsrDGt03VUc3zCsieeKbwsQ', '1', '2018-07-08 05:08:14'),
(51, '387', 0, 'feb076e46f46ab3f', 'fVj1KqdAB_Q:APA91bHut_aX_DlVNNjxGinB1t3ot4PsV-9AGe-Z3TrYfUqrxXZ10t471i7Z1fzl9EjHUUUHyZmr7Y3kCXyAI231qiK05xZLbx6X3MVkDNS4N8iPYXhQpw8GHiJr3XoPLhTdSEQ1q9HdsrDGt03VUc3zCsieeKbwsQ', '1', '2018-07-08 05:08:18'),
(52, '388', 0, 'feb076e46f46ab3f', 'fVj1KqdAB_Q:APA91bHut_aX_DlVNNjxGinB1t3ot4PsV-9AGe-Z3TrYfUqrxXZ10t471i7Z1fzl9EjHUUUHyZmr7Y3kCXyAI231qiK05xZLbx6X3MVkDNS4N8iPYXhQpw8GHiJr3XoPLhTdSEQ1q9HdsrDGt03VUc3zCsieeKbwsQ', '1', '2018-07-08 05:08:38'),
(53, '389', 0, 'feb076e46f46ab3f', 'fVj1KqdAB_Q:APA91bHut_aX_DlVNNjxGinB1t3ot4PsV-9AGe-Z3TrYfUqrxXZ10t471i7Z1fzl9EjHUUUHyZmr7Y3kCXyAI231qiK05xZLbx6X3MVkDNS4N8iPYXhQpw8GHiJr3XoPLhTdSEQ1q9HdsrDGt03VUc3zCsieeKbwsQ', '1', '2018-07-08 05:08:47'),
(54, '143', 0, 'feb076e46f46ab3f', 'fVj1KqdAB_Q:APA91bHut_aX_DlVNNjxGinB1t3ot4PsV-9AGe-Z3TrYfUqrxXZ10t471i7Z1fzl9EjHUUUHyZmr7Y3kCXyAI231qiK05xZLbx6X3MVkDNS4N8iPYXhQpw8GHiJr3XoPLhTdSEQ1q9HdsrDGt03VUc3zCsieeKbwsQ', '0', '2018-07-08 05:17:33'),
(55, '120', 0, '5bd6da750df02cfd', 'fwlTcLCZWps:APA91bHS9qrWHzKV5klyjCfriysdIGXBHO5KE6oaMpFR7uht6e-BEaWEDw2g4_ZXsnkZhp1_GMZz3LacBZONRdv2vP2An4E0GobwbAKgw_o_4C-ZurEOrpCrD1cKSss1QhezwL0ZpxAH1mUbcyLEu7EgY4Bpq57pxQ', '1', '2018-07-09 02:44:10'),
(56, '141', 0, '9d08386b2fbe3559', 'f9rAlnqTgxk:APA91bFg0xyi99M6ifb_STViY9Nc219RxljsqGe-mMuSY4-RL_9ut_07Fd3sAMFTg7x4tVIXipNSnYt_z_ZJ8QJHuRfP_9NOTDKVIjlxCg60K8Rh220np-W4rT6jmmxrdBVQezKjEpfz2LXbmsu_9IUGAYOSLei7JA', '0', '2018-07-10 11:41:53'),
(57, '143', 1, '0157898B-EFFE-47A6-BD5B-A528B0641CFC', '588b02c2bfbcab1968b5ed577e6b7db887258d3f24d08c2de6b0017451d07324', '1', '2018-07-11 14:45:18'),
(58, '119', 0, 'cab534f96e330a77', 'fwbrjZN0JKg:APA91bGpFI9VoseFTCABHhutBzywZ-cM4RPa8nEM2vni1Y65c4IsDaWA5ETh7Dz0G6CJ0ZoETx34BULLtXLKtitXSI1jVKnwhC50pu4IN3TWqh1TsN0Wm5flldGF9E1KLQmvMKdC3tOJbCGiSgjpsop6XzC_1f23bQ', '0', '2018-07-16 05:14:23'),
(59, '119', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-16 10:16:16'),
(60, '119', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-16 12:08:47'),
(61, '119', 0, 'cab534f96e330a77', 'dR3qeUuZ1Oo:APA91bHz7GYH87D9Ah7ZDFEKLbtHbl5wKdlZ_ACuixPXGvSAhu4EApf9u-S6i6NlNuUdoIKpJ5SmE-8JLf5R3BMdsLdKCMjONWuce2gAgqnIHqgSqLKPJ64qJoywYYz-dwoO2N0s-QOEoa86ws67uDh9m88rJH4glg', '0', '2018-07-17 04:48:22'),
(62, '142', 0, 'cab534f96e330a77', 'dR3qeUuZ1Oo:APA91bHz7GYH87D9Ah7ZDFEKLbtHbl5wKdlZ_ACuixPXGvSAhu4EApf9u-S6i6NlNuUdoIKpJ5SmE-8JLf5R3BMdsLdKCMjONWuce2gAgqnIHqgSqLKPJ64qJoywYYz-dwoO2N0s-QOEoa86ws67uDh9m88rJH4glg', '0', '2018-07-17 05:16:30'),
(63, '119', 0, 'cab534f96e330a77', 'dR3qeUuZ1Oo:APA91bHz7GYH87D9Ah7ZDFEKLbtHbl5wKdlZ_ACuixPXGvSAhu4EApf9u-S6i6NlNuUdoIKpJ5SmE-8JLf5R3BMdsLdKCMjONWuce2gAgqnIHqgSqLKPJ64qJoywYYz-dwoO2N0s-QOEoa86ws67uDh9m88rJH4glg', '0', '2018-07-17 05:19:24'),
(64, '142', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-17 09:28:52'),
(65, '119', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-17 09:30:07'),
(66, '119', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-17 11:00:46'),
(67, '390', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '1', '2018-07-17 11:50:15'),
(68, '391', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '1', '2018-07-17 11:51:40'),
(69, '119', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-17 12:36:46'),
(70, '142', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '0', '2018-07-17 13:10:22'),
(71, '119', 0, 'cab534f96e330a77', 'dR3qeUuZ1Oo:APA91bHz7GYH87D9Ah7ZDFEKLbtHbl5wKdlZ_ACuixPXGvSAhu4EApf9u-S6i6NlNuUdoIKpJ5SmE-8JLf5R3BMdsLdKCMjONWuce2gAgqnIHqgSqLKPJ64qJoywYYz-dwoO2N0s-QOEoa86ws67uDh9m88rJH4glg', '1', '2018-07-17 13:12:15'),
(72, '144', 0, '1a3bc06052f9873c', 'cZhll4Ge3so:APA91bE4Qum__kd2KdSn5Qz_tB_dfKVY3LlTLiuzPtBKx7mdhvBp_THPBpFrDyLF8t_FdxxwcNIhhRwf0HFI7j6Wfx2CoxmMt_UT3mlSR8vZzajUIrDx4rFrg36qZHpWahhfQuWHAT-P2mgxpa8xy4qvAc9ira-jzw', '1', '2018-07-17 13:16:53'),
(73, '392', 0, '19038eb1db06c670', 'dVli2KQyRj0:APA91bFk95d6QkMJbE3LBZfLaGnUuKxY5tzPyGb1dTJz_aktkQTE6ZABSn6wmjSYPrvPHLalfWlEMdtlmaIxoDy1WFop7YlOy1HPUtTjRffGJi_mWXTl1TIMp4RsxyU62Of8rM0ga090vqnO2TKLD8xGfcmBKxzypA', '1', '2018-07-18 04:56:44'),
(74, '393', 0, '19038eb1db06c670', 'dVli2KQyRj0:APA91bFk95d6QkMJbE3LBZfLaGnUuKxY5tzPyGb1dTJz_aktkQTE6ZABSn6wmjSYPrvPHLalfWlEMdtlmaIxoDy1WFop7YlOy1HPUtTjRffGJi_mWXTl1TIMp4RsxyU62Of8rM0ga090vqnO2TKLD8xGfcmBKxzypA', '1', '2018-07-18 04:58:55'),
(75, '394', 0, '19038eb1db06c670', 'dVli2KQyRj0:APA91bFk95d6QkMJbE3LBZfLaGnUuKxY5tzPyGb1dTJz_aktkQTE6ZABSn6wmjSYPrvPHLalfWlEMdtlmaIxoDy1WFop7YlOy1HPUtTjRffGJi_mWXTl1TIMp4RsxyU62Of8rM0ga090vqnO2TKLD8xGfcmBKxzypA', '1', '2018-07-18 05:01:26'),
(76, '395', 0, 'gdfhgh565', 'dfdsshgfjgfjghkhjljfgsdagdfa', '1', '2018-07-18 05:04:29'),
(77, '396', 0, '19038eb1db06c670', 'dVli2KQyRj0:APA91bFk95d6QkMJbE3LBZfLaGnUuKxY5tzPyGb1dTJz_aktkQTE6ZABSn6wmjSYPrvPHLalfWlEMdtlmaIxoDy1WFop7YlOy1HPUtTjRffGJi_mWXTl1TIMp4RsxyU62Of8rM0ga090vqnO2TKLD8xGfcmBKxzypA', '0', '2018-07-18 05:05:55'),
(78, '397', 0, 'gdfhgh565', 'dfdsshgfjgfjghkhjljfgsdagdfa', '1', '2018-07-18 05:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `18street_notification`
--

CREATE TABLE IF NOT EXISTS `18street_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `action` varchar(1000) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 unread, 1 read',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `18street_notification`
--

INSERT INTO `18street_notification` (`id`, `userid`, `eventid`, `orderid`, `action`, `message`, `status`, `datetime`) VALUES
(5, 120, 122, 3, 'booking', 'You have a new booking for ''Let''s go to the zoo'' event with order id. 3', 0, '2018-07-04 20:45:08'),
(6, 144, 103, 5, 'booking', 'You have a new booking for ''Computer Geek'' event with order id. 5', 0, '2018-07-05 10:34:02'),
(7, 143, 125, 6, 'booking', 'You have a new booking for ''Le barbecue chez Elisee '' event with order id. 6', 0, '2018-07-05 19:37:19'),
(8, 120, 122, 3, 'reminder', 'Reminder: you have to join  ''Let''s go to the zoo'' event, please be ready for that.', 0, '2018-07-06 12:50:01'),
(9, 143, 125, 9, 'booking', 'You have a new booking for ''Le barbecue chez Elisee '' event with order id. 9', 0, '2018-07-08 04:26:09'),
(10, 120, 126, 10, 'booking', 'You have a new booking for ''Xoomia conference '' event with order id. 10', 0, '2018-07-08 04:30:09'),
(11, 120, 129, 11, 'booking', 'You have a new booking for ''Columbus annual cars show'' event with order id. 11', 0, '2018-07-08 04:31:50'),
(12, 141, 92, 1, 'booking', 'You have a new booking for ''Team Building'' event with order id. 1', 0, '2018-07-10 11:48:35'),
(13, 141, 103, 2, 'booking', 'You have a new booking for ''Computer Geek'' event with order id. 2', 0, '2018-07-10 11:50:24'),
(14, 141, 92, 3, 'booking', 'You have a new booking for ''Team Building'' event with order id. 3', 0, '2018-07-10 11:53:01'),
(15, 141, 92, 4, 'booking', 'You have a new booking for ''Team Building'' event with order id. 4', 0, '2018-07-10 11:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `18street_orderedtickets`
--

CREATE TABLE IF NOT EXISTS `18street_orderedtickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `ticketid` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `check_in` int(11) NOT NULL COMMENT '1 for checkin, 2 for checkout',
  `check_in_time` datetime NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_orders`
--

CREATE TABLE IF NOT EXISTS `18street_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `noofticket` int(11) NOT NULL,
  `ticketprice` float NOT NULL,
  `additionalcharge` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymenttype` varchar(255) NOT NULL COMMENT '1 cash, 2 card, 3 paypal ',
  `txnid` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 joined, 2 waiting, 3 cancelled',
  `ticket_type` int(11) NOT NULL COMMENT '0 = free , 1 = paid',
  `payment_status` int(11) NOT NULL COMMENT '0 reserved, 1 purchased',
  `reminder_sent` int(11) NOT NULL COMMENT '1 sent',
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `eventid` (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_otp`
--

CREATE TABLE IF NOT EXISTS `18street_otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `otp` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `18street_otp`
--

INSERT INTO `18street_otp` (`id`, `phone`, `otp`, `datetime`) VALUES
(2, '+919780133030', '3581', '2018-07-18 05:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `18street_payments`
--

CREATE TABLE IF NOT EXISTS `18street_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `txnid` varchar(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 unpaid, 1 paid',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_refundpolicy`
--

CREATE TABLE IF NOT EXISTS `18street_refundpolicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policy` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `18street_refundpolicy`
--

INSERT INTO `18street_refundpolicy` (`id`, `policy`, `datetime`) VALUES
(1, 'No refunds are applicable', '2018-04-29 18:30:00'),
(2, 'Before 7 days of event start', '2018-04-29 18:30:00'),
(3, 'Before 15 days of event start', '2018-04-29 18:30:00'),
(4, 'Before 30 days of event start', '2018-04-29 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `18street_report_event`
--

CREATE TABLE IF NOT EXISTS `18street_report_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_report_users`
--

CREATE TABLE IF NOT EXISTS `18street_report_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `report_user_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_seats`
--

CREATE TABLE IF NOT EXISTS `18street_seats` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `no_of_tickets` varchar(255) NOT NULL,
  `seats` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `18street_setting`
--

CREATE TABLE IF NOT EXISTS `18street_setting` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `terms` longtext NOT NULL,
  `privacy` longtext NOT NULL,
  `service_charge` float NOT NULL,
  `payment_fee` float NOT NULL,
  `ticket_limit` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `18street_setting`
--

INSERT INTO `18street_setting` (`id`, `terms`, `privacy`, `service_charge`, `payment_fee`, `ticket_limit`, `date_created`) VALUES
(1, 'This following sets out the terms and conditions on which you may use the content on \nbusiness-standard.com website, business-standard.com''s mobile browser site, Business Standard instore Applications and other digital publishing services (www.smartinvestor.in, www.bshindi.com and www.bsmotoring,com) owned by Business Standard Private Limited, all the services herein will be referred to as Business Standard Content Services.', 'Privacy is the ability of an individual or group to seclude themselves, or information about themselves, and thereby express themselves selectively. The boundaries and content of what is considered private differ among cultures and individuals, but share common themes.', 5, 5, 1, '2018-07-05 19:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `18street_socialauth`
--

CREATE TABLE IF NOT EXISTS `18street_socialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `socialtype` varchar(255) NOT NULL,
  `socialid` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `18street_socialauth`
--

INSERT INTO `18street_socialauth` (`id`, `userid`, `socialtype`, `socialid`) VALUES
(5, 137, 'facebook', '2056646661249387'),
(6, 138, 'google', '100893249527277324515'),
(7, 138, 'facebook', '2056646661249387'),
(8, 140, 'facebook', '23232323233'),
(9, 145, 'facebook', '120766085486060'),
(10, 319, 'google', '100893249527277324515'),
(11, 113, 'facebook', '10209531959895455'),
(12, 116, 'google', '106849434324032971505');

-- --------------------------------------------------------

--
-- Table structure for table `18street_ticketdetails`
--

CREATE TABLE IF NOT EXISTS `18street_ticketdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventid` int(11) NOT NULL,
  `ticket_type` int(11) NOT NULL COMMENT '0 free, 1 paid',
  `is_waiting` int(11) NOT NULL COMMENT '0 no, 1 yes',
  `ticket_name` text NOT NULL,
  `quantity_available` int(11) NOT NULL,
  `price` float NOT NULL,
  `sale_start_date` datetime NOT NULL,
  `sale_end_date` datetime NOT NULL,
  `capacity` int(11) NOT NULL,
  `waiting` int(11) NOT NULL,
  `payment_country` varchar(50) DEFAULT NULL,
  `min_buy_limit` int(11) NOT NULL,
  `max_buy_limit` int(11) NOT NULL,
  `refund_policy` int(11) NOT NULL,
  `refund_policy_info` text NOT NULL,
  `currency` varchar(50) NOT NULL,
  `fee_applied` int(11) NOT NULL COMMENT '0 cost to buyer, 1 cost to seller',
  `notes` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `18street_ticketdetails`
--

INSERT INTO `18street_ticketdetails` (`id`, `eventid`, `ticket_type`, `is_waiting`, `ticket_name`, `quantity_available`, `price`, `sale_start_date`, `sale_end_date`, `capacity`, `waiting`, `payment_country`, `min_buy_limit`, `max_buy_limit`, `refund_policy`, `refund_policy_info`, `currency`, `fee_applied`, `notes`) VALUES
(102, 22, 1, 0, 'Blaise 50 th birthday', 200, 50, '2018-07-01 04:00:00', '2018-10-01 03:59:00', 250, 0, 'United States', 1, 4, 0, '', 'USD', 1, ''),
(103, 22, 1, 0, 'Blaise 50 th birthday', 200, 5000, '2018-07-01 04:00:00', '2018-10-01 03:59:00', 250, 0, 'United States', 1, 4, 0, '', 'USD', 0, ''),
(219, 117, 1, 0, 'Mystery  Circle', 50, 100, '2018-06-25 06:00:00', '2018-07-30 00:30:00', 50, 0, 'United States', 1, 5, 0, '', 'USD', 0, 'Hello'),
(220, 117, 1, 0, 'Mystery Square', 50, 10, '2018-06-25 06:00:00', '2018-07-30 12:30:00', 50, 0, 'United States', 2, 5, 1, 'Hi \nHe''ll\nMaximum \nMaximum \nMaximum \nMaximum', 'USD', 1, ''),
(221, 92, 1, 0, 'Team Camp', 100, 50, '2018-06-25 00:30:00', '2018-07-18 12:30:00', 100, 0, 'Australia', 2, 4, 0, '', 'USD', 0, ''),
(222, 92, 1, 1, 'Team Base', 5, 25, '2018-06-25 06:00:00', '2018-07-18 00:30:00', 7, 0, 'Australia', 3, 5, 1, 'No refund applicable for the event.', 'USD', 1, 'Free download it from the energy we all have available to gave him some people have been.'),
(224, 103, 1, 0, 'Computerized ', 5, 25, '2018-06-25 00:30:00', '2018-08-14 06:30:00', 6, 0, 'Switzerland', 2, 5, 1, 'NO problem with the energy we all have available to gave him some people have been.', 'GBP', 0, 'No refund applicable for testing purposes only. '),
(225, 103, 1, 0, 'Teched ', 2, 100, '2018-06-25 03:30:00', '2018-08-14 15:30:00', 3, 0, 'Switzerland', 1, 2, 0, '', 'GBP', 1, ''),
(226, 116, 1, 0, 'PLATINUM ', 5, 100, '2018-06-25 06:30:00', '2018-08-29 16:00:00', 5, 0, 'New Zealand', 1, 5, 1, 'Hi refund policy are available before one week of eveMr schedule date.', 'NZD', 0, ''),
(227, 116, 1, 0, 'GOLD', 7, 75, '2018-06-25 03:30:00', '2018-08-29 15:30:00', 8, 0, 'New Zealand', 1, 5, 0, '', 'NZD', 0, 'No notes for now.'),
(228, 116, 1, 1, 'SILVER', 5, 50, '2018-06-25 03:30:00', '2018-08-29 15:30:00', 7, 0, 'New Zealand', 1, 5, 0, '', 'NZD', 0, ''),
(229, 122, 1, 0, 'Zoo event', 50, 25, '2018-06-27 19:04:00', '2018-06-30 19:04:00', 75, 0, 'United States', 1, 2, 1, 'This is a2 days refund event.', 'USD', 0, 'This ticket is only for columbus family. Please make sure you reserve your seat. '),
(230, 122, 1, 0, 'Zoo time', 25, 15, '2018-06-28 11:17:00', '2018-06-30 11:17:00', 50, 0, 'United States', 1, 3, 1, 'There 3 days refund policy applicable on this ticket. Please follow our policy.', 'USD', 0, 'This ticket has the a waiting list. '),
(231, 124, 0, 0, 'Test', 12, 0, '2018-07-04 12:54:00', '2018-07-05 12:54:00', 100, 0, '', 1, 10, 0, '', '', 0, ''),
(232, 122, 1, 1, 'Zoo admission', 50, 25, '2018-07-04 20:38:00', '2018-07-05 20:38:00', 55, 0, 'United States', 1, 4, 1, 'Claim your refund 1 day before the event', 'USD', 0, 'This ticket is exclusively for families'),
(233, 125, 1, 0, 'Barbecue admission', 25, 30, '2018-07-04 23:15:00', '2018-07-13 23:15:00', 30, 0, 'United States', 1, 5, 0, '', 'USD', 0, 'This event will be a private event. So please be responsible. See you there'),
(234, 119, 0, 0, 'Free admission', 50, 0, '2018-07-05 08:56:00', '2018-07-30 08:56:00', 60, 0, '', 1, 5, 0, '', '', 0, 'This is a public event. \n'),
(235, 126, 1, 0, 'General admission', 190, 75, '2018-07-06 03:38:00', '2018-07-24 03:38:00', 250, 0, 'United States', 2, 5, 0, '', 'USD', 0, 'This event is sponsor by xoomia the electronic documentation system'),
(236, 126, 1, 0, 'General admission', 100, 75, '2018-07-06 03:42:00', '2018-07-25 03:42:00', 190, 0, 'United States', 3, 5, 1, 'Refund available on site', 'USD', 0, 'This event is sponsored by xoomia the electronic documentation system'),
(237, 128, 0, 0, 'Invitation ', 150, 0, '2018-07-08 03:30:00', '2018-09-28 03:30:00', 200, 0, '', 1, 2, 0, '', '', 0, ''),
(238, 129, 1, 1, 'Cars show admission', 100, 30, '2018-07-08 03:52:00', '2018-07-25 16:00:00', 100, 0, 'United States', 2, 5, 0, '', 'USD', 1, 'Come very early'),
(239, 118, 0, 0, 'Trade Show', 50, 0, '2018-07-17 05:16:00', '2018-07-30 03:30:00', 70, 0, '', 1, 10, 0, '', '', 0, 'Free entry');

-- --------------------------------------------------------

--
-- Table structure for table `18street_users`
--

CREATE TABLE IF NOT EXISTS `18street_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '1=admin,0=User',
  `is_suspend` int(11) NOT NULL COMMENT '0= not Suspended,1=Suspended',
  `verified` int(11) NOT NULL DEFAULT '0' COMMENT '1 verified',
  `location` longtext NOT NULL,
  `bio` longtext NOT NULL,
  `notification` int(11) NOT NULL DEFAULT '1' COMMENT '1 on, 2 off',
  `paypal_id` varchar(250) NOT NULL,
  `current_city` varchar(255) NOT NULL,
  `current_state` varchar(255) NOT NULL,
  `current_country` varchar(255) NOT NULL,
  `current_lat` decimal(10,0) NOT NULL,
  `current_lng` decimal(10,0) NOT NULL,
  `facebook_link` text NOT NULL,
  `twitter_link` text NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=398 ;

--
-- Dumping data for table `18street_users`
--

INSERT INTO `18street_users` (`id`, `name`, `email`, `password`, `phone`, `profile_pic`, `user_type`, `is_suspend`, `verified`, `location`, `bio`, `notification`, `paypal_id`, `current_city`, `current_state`, `current_country`, `current_lat`, `current_lng`, `facebook_link`, `twitter_link`, `date_created`) VALUES
(1, 'admin', 'admin@gmail.com', '089905b38276f46c40e436dee0dc8915', '9090909090', '152759280514420180529_164623.jpg', 1, 0, 1, '', '', 0, '', '1', '1', '1', 1, 1, '', '', '0000-00-00 00:00:00'),
(113, 'Elisee Ndenga', 'ndenga@yahoo.fr', 'faa209444b774cea22ec24f3a974c109', '(617)218-5743', '', 0, 0, 1, '', '', 1, '', '', '', '', 1, 1, '', '', '2018-05-01 16:29:36'),
(116, 'Elisee Ndenga', 'eliseendenga@gmail.com', '2afc0ed6b00b50dea56d57797a1f60df', '+16142185743', '', 0, 0, 1, '', '', 1, '', '', '', '', 1, 1, '', '', '2018-05-05 11:19:32'),
(117, 'Mandeep Singh', 'Mandeep.singh671@gmail.com', '677e0b03355cb2daae308ad4dfa98ec8', '(903)444-6032', '', 0, 0, 1, '', 'Test', 1, '', '', '', '', 1, 1, '', '', '2018-05-07 04:45:04'),
(119, 'Zohaib ahmed', '11.zohaib@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '+917009493550', '153063288311920180703_211753.jpg', 0, 0, 1, 'IT Park Rd, Phase - I, Manimajra, Sukteri, Haryana 160101, India', 'I''m an android developer having an experience of 3.5 years.', 1, 'zohaib@gmail.com', '', '', '', 1, 1, 'https://facebook.com/zohaib', 'https://twitter.com/zohaib', '2018-05-07 05:37:52'),
(120, 'Elisee Ndenga', 'elisee.ndenga@xoomia.com', '2afc0ed6b00b50dea56d57797a1f60df', '+16146336777', '1526557668profile_pic3345799938.jpg', 0, 0, 1, '442 Stone Shadow Dr, Blacklick, Ohio 43004', 'Eliser Productin s avery pright', 1, '', '', '', '', 1, 1, '', '', '2018-05-11 22:03:50'),
(128, 'Joseph', 'john@gmail.com', '677e0b03355cb2daae308ad4dfa98ec8', '(903)444-6031', '1526377155profile_pic2260435135.jpg', 0, 0, 1, '', '', 1, '', 'ggg', '', '', 1, 1, 'https://we:Facebook.com', 'https://sggddttd shshhdhs', '2018-05-14 11:03:09'),
(138, 'osvin', 'osvinandroid@gmail.com', '', '', '', 0, 0, 1, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-05-17 12:42:38'),
(141, 'Jason Roy', 'jasonroy@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '(987)654-3210', '1527061841profile_pic2355721159.jpg', 0, 0, 1, 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 1601', 'Hi', 1, '', '', '', '', 0, 0, '', '', '2018-05-23 05:41:42'),
(142, 'Kent', 'kent@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '(091)987-6543', '152751152514220180528_181302.jpg', 0, 0, 1, 'IT Park Rd, Phase - I, Manimajra, Chandigarh, 1601', 'DJ', 1, 'yo-yo@gmail.com', '', '', '', 0, 0, '', '', '2018-05-23 08:58:18'),
(143, 'Royalty Ndenga', 'elisee.ndenga@brightp.com', '2afc0ed6b00b50dea56d57797a1f60df', '16142185743', '152855129114320180609_093157.jpg', 0, 0, 1, '442 Stone Shadow Dr, Blacklick, OH 43004, USA', 'We envision Stuart''s Opera House as the cultural anchor and a center of expression on Nelsonville''s bustling and dynamic Public Square. It is a historic venue sought out by people of all ages. We envision Stuart''s Opera House as the cultural anchor and a center of expression on Nelsonville''s bustling and dynamic Public Square. It is a historic venue sought out by people of all ages. We envision Stuart''s Opera House as the cultural anchor and a center of expression on Nelsonville''s bustling and dynamic Public Square. It is a historic venue sought out by people of all ages.', 1, 'ndenga@Yahoo.fr', '', '', '', 0, 0, '', '', '2018-05-23 21:36:58'),
(144, 'Hornet', 'hornet@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '+917508028759', '152759280514420180529_164623.jpg', 0, 0, 1, 'Sukhna Watch Tower, Lake Walking Way, Sector 1, Ch', 'Fun loving person.', 1, '', '', '', '', 0, 0, '', '', '2018-05-29 11:14:56'),
(246, 'Rahul Vendettas', 'rahul@gmail.com', '677e0b03355cb2daae308ad4dfa98ec8', '+919728958343', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-14 11:44:34'),
(292, 'Demo', 'demot@gmail.com', '677e0b03355cb2daae308ad4dfa98ec8', '+919034446032', '', 0, 0, 1, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-14 13:01:26'),
(311, 'vijju', 'ravinder@gmail.com', '61082836209909a620d745020dc6f3b7', '+917906653223', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-15 04:35:21'),
(319, '', 'osvin websolutions', '', '', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-19 05:37:22'),
(323, 'Divya', 'erdeviyaniswami@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '+91-7742313381', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-22 07:02:07'),
(326, 'Rajbir', 'rajbirkumar007@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '+918727975718', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-22 07:05:04'),
(327, 'Jacob', 'jacob@gmail.com', '677e0b03355cb2daae308ad4dfa98ec8', '+917742313381', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-28 05:27:54'),
(335, 'Ashish', 'testtester1011@gmail.com', 'add139d9c88585ed29c3de34e93f99dd', '+919056112398', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-28 06:46:39'),
(360, 'dps', 'dps@gmail.com', '80a95d51462f7d81483c3d6f22ba84f9', '9056112398', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-06-28 07:59:46'),
(385, 'Olinga Mbida Georgette Beatrice ', 'mbidageorgette@hotmail.fr', '96b1f2f949a5e44e33771f70eba108ce', '16142523696', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-07-08 03:06:46'),
(389, 'Imran Shabir', 'muhimranshabir@hotmail.com', '0d72c5131c1015b0ff36aad2d150861a', '+923365550877', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-07-08 05:08:47'),
(397, 'Taruna', 'taruna@gmail.com ', 'add139d9c88585ed29c3de34e93f99dd', '+919780133030', '', 0, 0, 0, '', '', 1, '', '', '', '', 0, 0, '', '', '2018-07-18 05:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `18street_waitlist`
--

CREATE TABLE IF NOT EXISTS `18street_waitlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `waitingcount` int(55) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 active, 1 deactive',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `18street_waitlist`
--

INSERT INTO `18street_waitlist` (`id`, `userid`, `eventid`, `orderid`, `waitingcount`, `status`, `created`, `updated`) VALUES
(1, 141, 92, 4, 2, 0, '2018-07-10 11:53:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `18street_waitlistrefund`
--

CREATE TABLE IF NOT EXISTS `18street_waitlistrefund` (
  `id` int(11) NOT NULL,
  `waitlistid` int(11) NOT NULL,
  `REFUNDTRANSACTIONID` varchar(205) NOT NULL,
  `TOTALREFUNDEDAMOUNT` float NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
