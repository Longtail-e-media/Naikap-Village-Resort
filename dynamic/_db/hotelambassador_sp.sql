-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 03:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelambassador`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `parent`, `fullname`, `current_address`, `mobile`, `phone`, `email`, `sortorder`, `position`, `myfile`, `qualification`) VALUES
(1, '', 'Swarna Shakya', 'KTM', '9849482842', '', 'swarna@longtail.info', 1, '1', 'family-fun-1.jpg', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(6, 0, 'about-us', 'About Us', 'Luxury Hotel', '<section class=\"about section-padding\" data-scroll-index=\"1\">\r\n	<div class=\"container\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-6 mb-30 animate-box\" data-animate-effect=\"fadeInUp\">\r\n				<div class=\"section-subtitle\">\r\n					About Hotel Ambassador by ACE Hotels</div>\r\n				<div class=\"section-title\">\r\n					Enjoy a Luxury Experience</div>\r\n				<p>\r\n					The Ambassador is a upscale hotel at the heart of Kathmandu. Located in one the most vibrant areas of Kathmandu (Lazimpat), it is an ideal choice for guests who want to experience everything great that the city has to offer, without having to venture too far. Within walking distance of the buzzing alleys of Thamel and the upmarket shopping boulevard.</p>\r\n				<p>\r\n					The Ambassador&#39;s journey started in 1963 as a residential bungalow converted into a ten room hotel. The Ambassador now stands tall at the center of Kathmandu but, while the building may be new, it still carries the legacy of providing guests with an unparalleled hospitality experience for an unprecedented value.</p>\r\n			</div>\r\n			<div class=\"col col-md-3 animate-box text-center\" data-animate-effect=\"fadeInUp\">\r\n				<img src=\"template/web/img/tripadv.png\" style=\"width: 150px;margin-bottom: 15px;\" /> <img alt=\"\" class=\"mt-10 mb-30\" src=\"template/web/img/rooms/8.jpg\" /></div>\r\n			<div class=\"col col-md-3 animate-box\" data-animate-effect=\"fadeInUp\">\r\n				<img alt=\"\" src=\"template/web/img/1.png\" style=\"width: 190px;margin-bottom: 21px;\" /> <img alt=\"\" src=\"template/web/img/rooms/2.jpg\" /></div>\r\n		</div>\r\n	</div>\r\n</section>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<div class=\"row\">\r\n	<div class=\"col-md-6 mb-30 animate-box\" data-animate-effect=\"fadeInUp\">\r\n		<div class=\"section-subtitle\">\r\n			&nbsp;</div>\r\n		<div class=\"section-subtitle\">\r\n			About Hotel Ambassador by ACE Hotels</div>\r\n		<div class=\"section-title\">\r\n			Enjoy a Luxury Experience</div>\r\n		<p>\r\n			The Ambassador is a upscale hotel at the heart of Kathmandu. Located in one the most vibrant areas of Kathmandu (Lazimpat), it is an ideal choice for guests who want to experience everything great that the city has to offer, without having to venture too far. Within walking distance of the buzzing alleys of Thamel and the upmarket shopping boulevard.</p>\r\n		<p>\r\n			The Ambassador&#39;s journey started in 1963 as a residential bungalow converted into a ten room hotel. The Ambassador now stands tall at the center of Kathmandu but, while the building may be new, it still carries the legacy of providing guests with an unparalleled hospitality experience for an unprecedented value.</p>\r\n	</div>\r\n	<div class=\"col col-md-3 animate-box text-center\" data-animate-effect=\"fadeInUp\">\r\n		<img alt=\"\" class=\"mt-10 mb-30\" src=\"template/web/img/rooms/8.jpg\" /></div>\r\n	<div class=\"col col-md-3 animate-box\" data-animate-effect=\"fadeInUp\">\r\n		<img alt=\"\" src=\"template/web/img/rooms/2.jpg\" /></div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2023-08-25 12:54:08', '2023-11-08 15:11:59', 1, 1, 0x613a303a7b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `logo_upload_dark` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `contact_info2` varchar(100) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `default_image` varchar(255) NOT NULL,
  `contact_image` varchar(255) NOT NULL,
  `gallery_image` varchar(255) NOT NULL,
  `facilities_image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `logo_upload_dark`, `fb_upload`, `twitter_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `book_type`, `hotel_page`, `hotel_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pixel_code`, `default_image`, `contact_image`, `gallery_image`, `facilities_image`) VALUES
(1, 'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu', 'fsAI3-logo.png', '7Fz7J-logo.png', 'M76sh-logo-dark.png', '3DdLQ-logo.png', 'ERoPw-logo.png', 'Hotel Ambassador', 1, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3531.951263643065!2d85.317531!3d27.718791!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb191c9353d0ef%3A0xa6547a5c10ff5032!2sHotel%20Ambassador!5e0!3m2!1sen!2sus!4v1688970136085!5m2!1sen!2sus', 'aHQyy-map.jpg', 'Lazimpat, Kathmandu, Nepal', 'Lazimpat, Kathmandu, Nepal', '4442726,4442727,4414432,4410432,9818465741', 'Lazimpat, Kathmandu<br> Nepal', 'info@ambassador.com.np', '<p>\r\n	We believe you won&#39;t find a better publicly available rate for our hotels anywhere else. If you make a reservation on ambassador.com and then find a lower rate elsewhere with the same booking conditions, we will refund the difference or revise your booking to the lower rate.</p>\r\n', '© Copyright {year}. All Rights Reserved.  Hotel Ambassador.', 'Hotel Ambassador by ACE Hotels ', 'Hotel Ambassador by ACE Hotels ', 'Hotel Ambassador by ACE Hotels ', '', '', '#', 'User-agent: *\r\nDisallow: /cgi-bin/', 2, 'result.php', '#', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, 'https://goo.gl/maps/sQhHfSZbuYTiq7GJA', '', 'SCifS-hotelambasadordefault.jpg', 'FnXQe-qr.jpg', 'xqrYT-defaultlogo.jpeg', 'hV4Zu-hotelambasadordefault.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(3) NOT NULL,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `title`, `title_gr`, `content`, `content_gr`, `status`, `sortorder`, `added_date`) VALUES
(2, 'How can I confirm that you have received my reservation?', '', '<p>\r\n	Lorem ut nisl quam nestibulum ac quam nec odio elementum sceisue the aucan ligula. Orci varius natoque penatibus et magnis dis parturient monte nascete ridiculus mus nellentesque habitant morbine. Donec in quis the pellentesque velit id velit ac arcu posuere blane.</p>\r\n', '', 1, 1, '2023-08-28 11:17:00'),
(3, 'Up to what age are they considered children?', '', '<p>\r\n	Lorem ut nisl quam nestibulum ac quam nec odio elementum sceisue the aucan ligula. Orci varius natoque penatibus et magnis dis parturient monte nascete ridiculus mus nellentesque habitant morbine. Donec in quis the pellentesque velit id velit ac arcu posuere blane.</p>\r\n', '', 1, 2, '2023-08-29 11:44:10'),
(4, 'Do you have any discount code?', '', '<p>\r\n	Lorem ut nisl quam nestibulum ac quam nec odio elementum sceisue the aucan ligula. Orci varius natoque penatibus et magnis dis parturient monte nascete ridiculus mus nellentesque habitant morbine. Donec in quis the pellentesque velit id velit ac arcu posuere blane.</p>\r\n', '', 1, 3, '2023-08-29 11:44:28'),
(5, 'test', '', '<p>\r\n	dsd</p>\r\n', '', 0, 4, '2023-08-29 11:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(134, 'Room Amenities', 0, '', '', '', 1, 1, '2023-08-25 16:02:15'),
(136, '1-2 Persons', 134, '', '', 'flaticon-group', 1, 2, '2023-08-25 16:02:59'),
(137, 'Free Wifi', 134, '', '', 'flaticon-wifi', 1, 3, '2023-08-28 12:53:06'),
(138, '200 sqft room', 134, '', '', 'flaticon-clock-1', 1, 4, '2023-08-28 12:53:20'),
(141, 'Breakfast', 134, '', '', 'flaticon-breakfast', 1, 6, '2023-08-28 12:54:02'),
(140, 'Towels', 134, '', '', 'flaticon-towel', 1, 5, '2023-08-28 12:53:46'),
(142, 'Swimming Pool', 134, '', '', 'flaticon-swimming', 1, 7, '2023-08-28 12:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(11, 'rooms', 'Rooms', 'rIkyH-abb.jpg', '', 1, 1, '2023-08-25 13:25:21', 1),
(12, 'exterior', 'Exterior', '4UNDY-gallery11.jpg', '', 1, 2, '2023-08-25 13:25:35', 1),
(13, 'mice', 'Mice', '957x3-gallery9.jpg', '', 1, 3, '2023-08-25 13:26:06', 1),
(14, 'homepage', 'Homepage', 'brLlo-abb.jpg', '', 1, 4, '2023-08-27 16:34:50', 2),
(15, 'restaurant-shops', 'Restaurant/Shops', 'NDMAn-res1.jpg', '', 1, 5, '2023-08-29 11:38:48', 1),
(16, 'interior', 'Interior', 'qqyzn-gallery10.jpg', '', 1, 6, '2023-08-29 11:40:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(125, 14, 'Shops', 'qdAoX-3.jpg', 1, '', 1, '2023-08-27 16:35:28'),
(126, 14, 'Delicious', 'elR7Q-4.jpg', 1, '', 2, '2023-08-27 16:35:28'),
(127, 14, 'Interior', '8oeoB-2.jpg', 1, '', 3, '2023-08-27 16:35:28'),
(128, 14, 'Cuisine', 'oPkXV-5.jpg', 1, '', 4, '2023-08-27 16:35:28'),
(129, 14, 'Building', 'G28bZ-1.jpg', 1, '', 5, '2023-08-27 16:35:28'),
(130, 14, 'Events', '48nMv-6.jpg', 1, '', 6, '2023-08-27 16:35:28'),
(131, 14, 'Food ', '1zEw2-8.jpg', 1, '', 7, '2023-08-27 16:35:28'),
(132, 14, 'Decorations', '2jTf3-9.jpg', 1, '', 8, '2023-08-27 16:35:28'),
(133, 14, 'Luxury', 'hqu5B-70.jpg', 1, '', 9, '2023-08-27 16:35:28'),
(134, 11, 'Rooms', 'veoVI-abb.jpg', 1, '', 1, '2023-08-29 11:37:29'),
(135, 11, 'Rooms', '0BPy4-gallery5.jpg', 1, '', 2, '2023-08-29 11:37:29'),
(136, 11, 'Rooms', '53Yl0-gallery2.jpg', 1, '', 3, '2023-08-29 11:37:29'),
(137, 11, 'Rooms', 'k3wDS-ab.jpg', 1, '', 4, '2023-08-29 11:37:29'),
(138, 11, 'Rooms', '5dWBc-gallery3.jpg', 1, '', 5, '2023-08-29 11:37:29'),
(139, 12, 'Exterior', 'hbHzX-gallery4.jpg', 1, '', 1, '2023-08-29 11:38:01'),
(140, 12, 'Exterior', 'J4oau-gallery1.jpg', 1, '', 2, '2023-08-29 11:38:01'),
(141, 12, 'Exterior', 'M1CAz-gallery6.jpg', 1, '', 3, '2023-08-29 11:38:01'),
(142, 13, 'Mice', 'XdzNz-gallery7.jpg', 1, '', 1, '2023-08-29 11:38:26'),
(143, 13, 'Mice', 'XVKnN-gallery9.jpg', 1, '', 2, '2023-08-29 11:38:26'),
(144, 13, 'Mice', 'AtAsH-bbb.jpg', 1, '', 3, '2023-08-29 11:38:26'),
(145, 13, 'Mice', 'tRUwJ-bb.jpg', 1, '', 4, '2023-08-29 11:38:26'),
(146, 13, 'Mice', 'iJW2L-gallery8.jpg', 1, '', 5, '2023-08-29 11:38:26'),
(147, 15, 'Restaurant/Shops', 'WpDUB-res1.jpg', 1, '', 1, '2023-08-29 11:39:42'),
(148, 15, 'Restaurant/Shops', 'bIGfd-res5.jpg', 1, '', 2, '2023-08-29 11:39:42'),
(149, 15, 'Restaurant/Shops', 'RqyHq-res6.jpg', 1, '', 3, '2023-08-29 11:39:42'),
(150, 15, 'Restaurant/Shops', 'RJvrl-res2.jpg', 1, '', 4, '2023-08-29 11:39:42'),
(151, 15, 'Restaurant/Shops', 'EsyPn-res3.jpg', 1, '', 5, '2023-08-29 11:39:42'),
(152, 15, 'Restaurant/Shops', '83qJD-res4.jpg', 1, '', 6, '2023-08-29 11:39:42'),
(153, 16, 'Interior', 'vfKPO-gallery10.jpg', 1, '', 1, '2023-08-29 11:40:49'),
(154, 16, 'Interior', 'H3C5O-gallery11.jpg', 1, '', 2, '2023-08-29 11:40:49'),
(155, 16, 'Interior', 'PqUE9-gallery12.jpg', 1, '', 3, '2023-08-29 11:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `group_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`) VALUES
(1, 'Administrator', '1', 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2023-08-25 15:01:34', 1, 6, '::1'),
(2, 'Package [Rooms & Suites]Data has added successfully.', '2023-08-25 15:05:20', 1, 3, '::1'),
(3, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-25 15:07:22', 1, 4, '::1'),
(4, 'Sub Package \'Deluxe Room\' has added successfully.', '2023-08-25 15:08:01', 1, 3, '::1'),
(5, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-25 15:08:50', 1, 3, '::1'),
(6, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-25 15:08:50', 1, 3, '::1'),
(7, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-25 15:08:50', 1, 3, '::1'),
(8, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 15:14:53', 1, 4, '::1'),
(9, 'Package Rooms & Suites Edit Successfully', '2023-08-25 15:18:08', 1, 4, '::1'),
(10, 'Features [Room Amenities]Data has added successfully.', '2023-08-25 15:25:01', 1, 3, '::1'),
(11, 'Features [Free Wifi]Data has added successfully.', '2023-08-25 15:25:34', 1, 3, '::1'),
(12, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 15:26:09', 1, 4, '::1'),
(13, 'Features [Free Wifi] Edit Successfully', '2023-08-25 15:29:51', 1, 4, '::1'),
(14, 'Features [Free Wifi] Edit Successfully', '2023-08-25 15:30:24', 1, 4, '::1'),
(15, 'Sub Package \'Standard Room\' has added successfully.', '2023-08-25 15:48:02', 1, 3, '::1'),
(16, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 15:51:52', 1, 4, '::1'),
(17, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:54:47', 1, 4, '::1'),
(18, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:55:33', 1, 4, '::1'),
(19, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:56:00', 1, 4, '::1'),
(20, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:56:30', 1, 4, '::1'),
(21, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:57:37', 1, 4, '::1'),
(22, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 15:57:47', 1, 4, '::1'),
(23, 'Features  [Room Amenities]Data has deleted successfully.', '2023-08-25 16:02:08', 1, 6, '::1'),
(24, 'Features [Room Amenities]Data has added successfully.', '2023-08-25 16:02:15', 1, 3, '::1'),
(25, 'Features [Free Wifi]Data has added successfully.', '2023-08-25 16:02:44', 1, 3, '::1'),
(26, 'Features  [Free Wifi]Data has deleted successfully.', '2023-08-25 16:02:51', 1, 6, '::1'),
(27, 'Features [Free Wifi]Data has added successfully.', '2023-08-25 16:02:59', 1, 3, '::1'),
(28, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 16:03:08', 1, 4, '::1'),
(29, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-25 16:03:16', 1, 4, '::1'),
(30, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-25 16:14:35', 1, 4, '::1'),
(31, 'Package [Other Services]Data has added successfully.', '2023-08-25 16:50:21', 1, 3, '::1'),
(32, 'Sub Package \'Meeting & Events\' has added successfully.', '2023-08-25 16:52:45', 1, 3, '::1'),
(33, 'Menu [Mice] Edit Successfully', '2023-08-25 16:56:05', 1, 4, '::1'),
(34, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(35, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(36, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(37, 'Sub Package Image [Hall]Data has added successfully.', '2023-08-25 16:58:08', 1, 3, '::1'),
(38, 'Changes on Sub Package \'Meeting & Events\' has been saved successfully.', '2023-08-25 16:58:49', 1, 4, '::1'),
(39, 'Changes on Sub Package \'Meeting & Events\' has been saved successfully.', '2023-08-25 17:04:39', 1, 4, '::1'),
(40, 'Sub Package \'The Restaurant\' has added successfully.', '2023-08-25 17:06:40', 1, 3, '::1'),
(41, 'Menu [Restaurants  Shops] Edit Successfully', '2023-08-25 17:06:56', 1, 4, '::1'),
(42, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(43, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(44, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(45, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-25 17:07:48', 1, 3, '::1'),
(46, 'Changes on Sub Package \'The Restaurant\' has been saved successfully.', '2023-08-25 17:08:38', 1, 4, '::1'),
(47, 'Login: Gautam Hotel   logged in.', '2023-08-27 14:02:57', 1, 1, '::1'),
(48, 'Login: Gautam Hotel   logged in.', '2023-08-27 14:08:22', 1, 1, '::1'),
(49, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2023-08-27 14:10:31', 1, 6, '::1'),
(50, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-27 14:10:34', 1, 6, '::1'),
(51, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2023-08-27 14:10:34', 1, 6, '::1'),
(52, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-27 14:10:36', 1, 6, '::1'),
(53, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-27 14:10:36', 1, 6, '::1'),
(54, 'SubPackage Gallery Image [Deluxe Room]Data has deleted successfully.', '2023-08-27 14:10:36', 1, 6, '::1'),
(55, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-27 14:27:15', 1, 3, '::1'),
(56, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-27 14:27:15', 1, 3, '::1'),
(57, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2023-08-27 14:27:15', 1, 3, '::1'),
(58, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 14:27:57', 1, 4, '::1'),
(59, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 14:38:00', 1, 4, '::1'),
(60, 'Package Rooms & Suites Edit Successfully', '2023-08-27 14:38:59', 1, 4, '::1'),
(61, 'Menu [Rooms & Suites] Edit Successfully', '2023-08-27 14:39:53', 1, 4, '::1'),
(62, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 14:51:13', 1, 4, '::1'),
(63, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 14:52:00', 1, 4, '::1'),
(64, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-27 15:02:33', 1, 4, '::1'),
(65, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-27 15:02:43', 1, 4, '::1'),
(66, 'Services [Pick Up & Drop] Edit Successfully', '2023-08-27 15:22:18', 1, 4, '::1'),
(67, 'Services [Pick Up & Drop] Edit Successfully', '2023-08-27 15:22:59', 1, 4, '::1'),
(68, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 15:55:25', 1, 4, '::1'),
(69, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 16:00:12', 1, 4, '::1'),
(70, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-27 16:11:26', 1, 4, '::1'),
(71, 'Testimonial [Arthur Sacramento]Data has added successfully.', '2023-08-27 16:27:05', 1, 3, '::1'),
(72, 'Testimonial [Arthur Sacramento] Edit Successfully', '2023-08-27 16:33:45', 1, 4, '::1'),
(73, 'Gallery [Homepage]Data has added successfully.', '2023-08-27 16:34:50', 1, 3, '::1'),
(74, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(75, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(76, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(77, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(78, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(79, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(80, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(81, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(82, 'Sub Gallery Image [Homepage]Data has added successfully.', '2023-08-27 16:35:28', 1, 3, '::1'),
(83, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 16:57:59', 1, 4, '::1'),
(84, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 16:58:17', 1, 4, '::1'),
(85, 'Login: Gautam Hotel   logged in.', '2023-08-27 17:16:17', 1, 1, '::1'),
(86, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:23:15', 1, 4, '::1'),
(87, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:24:09', 1, 4, '::1'),
(88, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:24:50', 1, 4, '::1'),
(89, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-27 17:25:18', 1, 4, '::1'),
(90, 'Article \'Job Opening\' has added successfully.', '2023-08-27 17:32:52', 1, 3, '::1'),
(91, 'Menu [Career] Edit Successfully', '2023-08-27 17:33:04', 1, 4, '::1'),
(92, 'Changes on Article \'Job Opening\' has been saved successfully.', '2023-08-27 17:34:33', 1, 4, '::1'),
(93, 'Login: Gautam Hotel   logged in.', '2023-08-28 11:01:05', 1, 1, '::1'),
(94, 'User [Gautam Hotel  ] Edit Successfully', '2023-08-28 11:03:57', 1, 4, '::1'),
(95, 'FAQ \'Test\' has added successfully.', '2023-08-28 11:08:13', 1, 3, '::1'),
(96, 'FAQ [Test]Data has deleted successfully.', '2023-08-28 11:08:29', 1, 6, '::1'),
(97, 'FAQ \'How can I confirm that you have received my reservation?\' has added successfully.', '2023-08-28 11:17:00', 1, 3, '::1'),
(98, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 11:54:18', 1, 4, '::1'),
(99, 'Changes on Sub Package \'The Restaurant\' has been saved successfully.', '2023-08-28 12:01:45', 1, 4, '::1'),
(100, 'Changes on Sub Package \'Meeting & Events\' has been saved successfully.', '2023-08-28 12:01:59', 1, 4, '::1'),
(101, 'Sub Package \'Special offer\' has added successfully.', '2023-08-28 12:02:13', 1, 3, '::1'),
(102, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:46:57', 1, 6, '::1'),
(103, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:46:59', 1, 6, '::1'),
(104, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:46:59', 1, 6, '::1'),
(105, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:01', 1, 6, '::1'),
(106, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:01', 1, 6, '::1'),
(107, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:47:01', 1, 6, '::1'),
(108, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(109, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(110, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(111, 'SubPackage Gallery Image [The Restaurant]Data has deleted successfully.', '2023-08-28 12:47:04', 1, 6, '::1'),
(112, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(113, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(114, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(115, 'Sub Package Image [The Restaurant]Data has added successfully.', '2023-08-28 12:47:53', 1, 3, '::1'),
(116, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:00', 1, 6, '::1'),
(117, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:02', 1, 6, '::1'),
(118, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:02', 1, 6, '::1'),
(119, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:04', 1, 6, '::1'),
(120, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:04', 1, 6, '::1'),
(121, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:04', 1, 6, '::1'),
(122, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(123, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(124, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(125, 'SubPackage Gallery Image [Hall]Data has deleted successfully.', '2023-08-28 12:48:07', 1, 6, '::1'),
(126, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(127, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(128, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(129, 'Sub Package Image [Meeting & Events]Data has added successfully.', '2023-08-28 12:49:22', 1, 3, '::1'),
(130, 'Sub Package Image [Standard Room]Data has added successfully.', '2023-08-28 12:50:14', 1, 3, '::1'),
(131, 'Sub Package Image [Standard Room]Data has added successfully.', '2023-08-28 12:50:14', 1, 3, '::1'),
(132, 'Sub Package Image [Standard Room]Data has added successfully.', '2023-08-28 12:50:14', 1, 3, '::1'),
(133, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 12:50:47', 1, 4, '::1'),
(134, 'Features [1-2 Persons] Edit Successfully', '2023-08-28 12:52:50', 1, 4, '::1'),
(135, 'Features [Free Wifi]Data has added successfully.', '2023-08-28 12:53:06', 1, 3, '::1'),
(136, 'Features [200 sqft room]Data has added successfully.', '2023-08-28 12:53:20', 1, 3, '::1'),
(137, 'Features [Breakfast]Data has added successfully.', '2023-08-28 12:53:29', 1, 3, '::1'),
(138, 'Features [Towels]Data has added successfully.', '2023-08-28 12:53:46', 1, 3, '::1'),
(139, 'Features  [Breakfast]Data has deleted successfully.', '2023-08-28 12:53:49', 1, 6, '::1'),
(140, 'Features  []Data has deleted successfully.', '2023-08-28 12:53:49', 1, 6, '::1'),
(141, 'Features [Breakfast]Data has added successfully.', '2023-08-28 12:54:02', 1, 3, '::1'),
(142, 'Features [Swimming Pool]Data has added successfully.', '2023-08-28 12:54:13', 1, 3, '::1'),
(143, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-28 12:54:34', 1, 4, '::1'),
(144, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 12:54:47', 1, 4, '::1'),
(145, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-28 12:55:34', 1, 4, '::1'),
(146, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-28 12:55:39', 1, 4, '::1'),
(147, 'Menu [Rooms & Suites] Edit Successfully', '2023-08-28 12:58:28', 1, 4, '::1'),
(148, 'Menu [Restaurant] Edit Successfully', '2023-08-28 12:58:52', 1, 4, '::1'),
(149, 'Menu [Career] CreatedData has added successfully.', '2023-08-28 12:59:15', 1, 3, '::1'),
(150, 'Menu [About Hotel] Edit Successfully', '2023-08-28 12:59:24', 1, 4, '::1'),
(151, 'Menu [Contact] Edit Successfully', '2023-08-28 13:01:21', 1, 4, '::1'),
(152, 'Menu [Contact] Edit Successfully', '2023-08-28 13:01:34', 1, 4, '::1'),
(153, 'Menu [Contact] Edit Successfully', '2023-08-28 13:01:54', 1, 4, '::1'),
(154, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-28 13:02:39', 1, 4, '::1'),
(155, 'Login: Gautam Hotel   logged in.', '2023-08-28 14:33:26', 1, 1, '::1'),
(156, 'User [Gautam Hotel  ] Edit Successfully', '2023-08-28 14:47:33', 1, 4, '::1'),
(157, 'Vacency [test]Data has added successfully.', '2023-08-28 14:49:22', 1, 3, '::1'),
(158, 'Vacency [asdasd]Data has added successfully.', '2023-08-28 15:05:09', 1, 3, '::1'),
(159, 'Vacency [asd]Data has added successfully.', '2023-08-28 15:07:15', 1, 3, '::1'),
(160, 'Vacency  [asd]Data has deleted successfully.', '2023-08-28 15:07:24', 1, 6, '::1'),
(161, 'Vacency  []Data has deleted successfully.', '2023-08-28 15:07:26', 1, 6, '::1'),
(162, 'Vacency  [asdasd]Data has deleted successfully.', '2023-08-28 15:07:26', 1, 6, '::1'),
(163, 'Vacency [test] Edit Successfully', '2023-08-28 15:07:56', 1, 4, '::1'),
(164, 'Vacency  [test]Data has deleted successfully.', '2023-08-28 15:11:17', 1, 6, '::1'),
(165, 'Vacency [Senior Executive Assistant]Data has added successfully.', '2023-08-28 15:12:02', 1, 3, '::1'),
(166, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:16:15', 1, 4, '::1'),
(167, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:18:09', 1, 4, '::1'),
(168, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:19:05', 1, 4, '::1'),
(169, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-08-28 15:40:34', 1, 4, '::1'),
(170, 'Menu [Career] Edit Successfully', '2023-08-28 15:45:18', 1, 4, '::1'),
(171, 'Articles  [Job Opening]Data has deleted successfully.', '2023-08-28 15:45:22', 1, 6, '::1'),
(172, 'Menu [Career] Edit Successfully', '2023-08-28 15:55:37', 1, 4, '::1'),
(173, 'Services [Pick Up & Drop] Edit Successfully', '2023-08-28 16:03:10', 1, 4, '::1'),
(174, 'Services [Parking Space]Data has added successfully.', '2023-08-28 16:06:26', 1, 3, '::1'),
(175, 'Services [Room Service]Data has added successfully.', '2023-08-28 16:06:41', 1, 3, '::1'),
(176, 'Services [Free Wifi]Data has added successfully.', '2023-08-28 16:06:53', 1, 3, '::1'),
(177, 'Services [Breakfast]Data has added successfully.', '2023-08-28 16:07:06', 1, 3, '::1'),
(178, 'Services [Safety Deposit Box]Data has added successfully.', '2023-08-28 16:09:51', 1, 3, '::1'),
(179, 'Services [Triple Gazed Sound Proof Windows]Data has added successfully.', '2023-08-28 16:10:15', 1, 3, '::1'),
(180, 'Services [EV charging station]Data has added successfully.', '2023-08-28 16:10:40', 1, 3, '::1'),
(181, 'Services [Emergency Torch]Data has added successfully.', '2023-08-28 16:12:14', 1, 3, '::1'),
(182, 'Services [Five on-site dining options]Data has added successfully.', '2023-08-28 16:12:27', 1, 3, '::1'),
(183, 'Services [Meeting Hall]Data has added successfully.', '2023-08-28 16:12:39', 1, 3, '::1'),
(184, 'Services [Iron and Ironing Board]Data has added successfully.', '2023-08-28 16:14:01', 1, 3, '::1'),
(185, 'Services [Upcoming Gym & Spa]Data has added successfully.', '2023-08-28 16:14:20', 1, 3, '::1'),
(186, 'Services [Coffee Maker]Data has added successfully.', '2023-08-28 16:14:47', 1, 3, '::1'),
(187, 'Services [24hrs Front Desk]Data has added successfully.', '2023-08-28 16:14:58', 1, 3, '::1'),
(188, 'Services [Bathtub]Data has added successfully.', '2023-08-28 16:15:08', 1, 3, '::1'),
(189, 'Services [Minibar]Data has added successfully.', '2023-08-28 16:15:19', 1, 3, '::1'),
(190, 'Services [Room Slippers]Data has added successfully.', '2023-08-28 16:15:29', 1, 3, '::1'),
(191, 'Services [Hair Dryer]Data has added successfully.', '2023-08-28 16:15:38', 1, 3, '::1'),
(192, 'Services [LED Tv]Data has added successfully.', '2023-08-28 16:15:47', 1, 3, '::1'),
(193, 'Services [Vanity Mirror]Data has added successfully.', '2023-08-28 16:15:57', 1, 3, '::1'),
(194, 'Login: Gautam Hotel   logged in.', '2023-08-29 11:14:23', 1, 1, '::1'),
(195, 'Sub Package \'Superior Room\' has added successfully.', '2023-08-29 11:16:41', 1, 3, '::1'),
(196, 'Menu [Superior Room] CreatedData has added successfully.', '2023-08-29 11:17:12', 1, 3, '::1'),
(197, 'Sub Package Image [Superior Room]Data has added successfully.', '2023-08-29 11:18:02', 1, 3, '::1'),
(198, 'Sub Package Image [Superior Room]Data has added successfully.', '2023-08-29 11:18:02', 1, 3, '::1'),
(199, 'Changes on Sub Package \'Superior Room\' has been saved successfully.', '2023-08-29 11:18:30', 1, 4, '::1'),
(200, 'Menu  [Semi-deluxe Room]Data has deleted successfully.', '2023-08-29 11:18:59', 1, 6, '::1'),
(201, 'Menu  [Executive Room]Data has deleted successfully.', '2023-08-29 11:19:08', 1, 6, '::1'),
(202, 'Sub Package \'Deluxe with Balcony Room\' has added successfully.', '2023-08-29 11:21:47', 1, 3, '::1'),
(203, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(204, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(205, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(206, 'Sub Package Image [Deluxe with Balcony Room]Data has added successfully.', '2023-08-29 11:22:20', 1, 3, '::1'),
(207, 'Sub Package \'Consulate Suite\' has added successfully.', '2023-08-29 11:24:14', 1, 3, '::1'),
(208, 'Changes on Sub Package \'Consulate Suite\' has been saved successfully.', '2023-08-29 11:24:26', 1, 4, '::1'),
(209, 'Sub Package Image [Consulate Suite]Data has added successfully.', '2023-08-29 11:24:55', 1, 3, '::1'),
(210, 'Sub Package Image [Consulate Suite]Data has added successfully.', '2023-08-29 11:24:55', 1, 3, '::1'),
(211, 'Sub Package \'Ambassador Suite\' has added successfully.', '2023-08-29 11:25:41', 1, 3, '::1'),
(212, 'Sub Package Image [Ambassador Suite]Data has added successfully.', '2023-08-29 11:26:11', 1, 3, '::1'),
(213, 'Sub Package Image [Ambassador Suite]Data has added successfully.', '2023-08-29 11:26:11', 1, 3, '::1'),
(214, 'Menu [Deluxe with Balcony] CreatedData has added successfully.', '2023-08-29 11:27:08', 1, 3, '::1'),
(215, 'Menu [Consulate Suite] CreatedData has added successfully.', '2023-08-29 11:27:29', 1, 3, '::1'),
(216, 'Menu [Ambassador Suite] CreatedData has added successfully.', '2023-08-29 11:27:52', 1, 3, '::1'),
(217, 'Changes on Sub Package \'Superior Room\' has been saved successfully.', '2023-08-29 11:30:12', 1, 4, '::1'),
(218, 'Changes on Sub Package \'Deluxe with Balcony Room\' has been saved successfully.', '2023-08-29 11:30:45', 1, 4, '::1'),
(219, 'Changes on Sub Package \'Consulate Suite\' has been saved successfully.', '2023-08-29 11:31:04', 1, 4, '::1'),
(220, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-29 11:31:17', 1, 4, '::1'),
(221, 'SocialNetworking [Facebook] Edit Successfully', '2023-08-29 11:32:43', 1, 4, '::1'),
(222, 'SocialNetworking  [Linkedin]Data has deleted successfully.', '2023-08-29 11:32:46', 1, 6, '::1'),
(223, 'SocialNetworking  [Linkedin]Data has deleted successfully.', '2023-08-29 11:32:46', 1, 6, '::1'),
(224, 'SocialNetworking  []Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(225, 'SocialNetworking  []Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(226, 'SocialNetworking  [Trip Advisor]Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(227, 'SocialNetworking  [Trip Advisor]Data has deleted successfully.', '2023-08-29 11:32:49', 1, 6, '::1'),
(228, 'SocialNetworking [Instagram] Edit Successfully', '2023-08-29 11:32:57', 1, 4, '::1'),
(229, 'Gallery Image [Interior] Edit Successfully', '2023-08-29 11:33:20', 1, 4, '::1'),
(230, 'Gallery Image [Shops] Edit Successfully', '2023-08-29 11:33:40', 1, 4, '::1'),
(231, 'Gallery Image [Delicious] Edit Successfully', '2023-08-29 11:33:53', 1, 4, '::1'),
(232, 'Gallery Image [Interior] Edit Successfully', '2023-08-29 11:34:05', 1, 4, '::1'),
(233, 'Gallery Image [Cuisine] Edit Successfully', '2023-08-29 11:34:14', 1, 4, '::1'),
(234, 'Gallery Image [Building] Edit Successfully', '2023-08-29 11:34:44', 1, 4, '::1'),
(235, 'Gallery Image [Events] Edit Successfully', '2023-08-29 11:34:53', 1, 4, '::1'),
(236, 'Gallery Image [Food ] Edit Successfully', '2023-08-29 11:35:14', 1, 4, '::1'),
(237, 'Gallery Image [Decorations] Edit Successfully', '2023-08-29 11:35:52', 1, 4, '::1'),
(238, 'Gallery Image [Luxury] Edit Successfully', '2023-08-29 11:36:04', 1, 4, '::1'),
(239, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(240, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(241, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(242, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(243, 'Sub Gallery Image [Rooms]Data has added successfully.', '2023-08-29 11:37:29', 1, 3, '::1'),
(244, 'Sub Gallery Image [Exterior]Data has added successfully.', '2023-08-29 11:38:01', 1, 3, '::1'),
(245, 'Sub Gallery Image [Exterior]Data has added successfully.', '2023-08-29 11:38:01', 1, 3, '::1'),
(246, 'Sub Gallery Image [Exterior]Data has added successfully.', '2023-08-29 11:38:01', 1, 3, '::1'),
(247, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(248, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(249, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(250, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(251, 'Sub Gallery Image [Mice]Data has added successfully.', '2023-08-29 11:38:26', 1, 3, '::1'),
(252, 'Gallery [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:38:48', 1, 3, '::1'),
(253, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(254, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(255, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(256, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(257, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(258, 'Sub Gallery Image [Restaurant/Shops]Data has added successfully.', '2023-08-29 11:39:42', 1, 3, '::1'),
(259, 'Gallery [Interior]Data has added successfully.', '2023-08-29 11:40:32', 1, 3, '::1'),
(260, 'Sub Gallery Image [Interior]Data has added successfully.', '2023-08-29 11:40:49', 1, 3, '::1'),
(261, 'Sub Gallery Image [Interior]Data has added successfully.', '2023-08-29 11:40:49', 1, 3, '::1'),
(262, 'Sub Gallery Image [Interior]Data has added successfully.', '2023-08-29 11:40:49', 1, 3, '::1'),
(263, 'Vacency [Receptionist]Data has added successfully.', '2023-08-29 11:42:43', 1, 3, '::1'),
(264, 'Vacency [Intern]Data has added successfully.', '2023-08-29 11:43:18', 1, 3, '::1'),
(265, 'FAQ \'Up to what age are they considered children?\' has added successfully.', '2023-08-29 11:44:10', 1, 3, '::1'),
(266, 'FAQ \'Do you have any discount code?\' has added successfully.', '2023-08-29 11:44:28', 1, 3, '::1'),
(267, 'FAQ \'test\' has added successfully.', '2023-08-29 11:47:41', 1, 3, '::1'),
(268, 'Testimonial [Alexander]Data has added successfully.', '2023-08-29 11:52:41', 1, 3, '::1'),
(269, 'Testimonial [Annabel Chong]Data has added successfully.', '2023-08-29 11:53:15', 1, 3, '::1'),
(270, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-29 12:03:20', 1, 4, '::1'),
(271, 'Login: Hotel Ambassador   logged in.', '2023-08-29 12:03:24', 1, 1, '::1'),
(272, 'Testimonial [Annabel Chong] Edit Successfully', '2023-08-29 12:22:33', 1, 4, '::1'),
(273, 'Login: Hotel Ambassador   logged in.', '2023-08-29 14:31:53', 1, 1, '::1'),
(274, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-29 14:50:28', 1, 4, '::1'),
(275, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-29 15:45:20', 1, 4, '::1'),
(276, 'Popup  [Popup1]Data has deleted successfully.', '2023-08-29 15:45:30', 1, 6, '::1'),
(277, 'Popup \'Popup Test\' has added successfully.', '2023-08-29 15:48:48', 1, 3, '::1'),
(278, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-29 15:59:42', 1, 4, '::1'),
(279, 'Articles  [About Us]Data has deleted successfully.', '2023-08-29 16:06:30', 1, 6, '::1'),
(280, 'Articles  [About Us]Data has deleted successfully.', '2023-08-29 16:08:25', 1, 6, '::1'),
(281, 'Article \'test\' has added successfully.', '2023-08-29 16:10:02', 1, 3, '::1'),
(282, 'Articles  [test]Data has deleted successfully.', '2023-08-29 16:10:17', 1, 6, '::1'),
(283, 'Article \'Pashupatinath Temple\' has added successfully.', '2023-08-29 16:18:19', 1, 3, '::1'),
(284, 'Login: Hotel Ambassador   logged in.', '2023-08-30 12:02:47', 1, 1, '::1'),
(285, 'Article \'Kathmandu Durbar Square\' has added successfully.', '2023-08-30 12:04:19', 1, 3, '::1'),
(286, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:04:59', 1, 4, '::1'),
(287, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:06:18', 1, 4, '::1'),
(288, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:07:57', 1, 4, '::1'),
(289, 'Article \'Budanilkantha\' has added successfully.', '2023-08-30 12:09:31', 1, 3, '::1'),
(290, 'Article \'Boudhanath Stupa\' has added successfully.', '2023-08-30 12:10:30', 1, 3, '::1'),
(291, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-08-30 12:16:18', 1, 4, '::1'),
(292, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-08-30 12:17:06', 1, 4, '::1'),
(293, 'Changes on Article \'Boudhanath Stupa\' has been saved successfully.', '2023-08-30 12:18:14', 1, 4, '::1'),
(294, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:18:23', 1, 4, '::1'),
(295, 'Changes on Article \'Budanilkantha\' has been saved successfully.', '2023-08-30 12:18:30', 1, 4, '::1'),
(296, 'Changes on Article \'Boudhanath Stupa\' has been saved successfully.', '2023-08-30 12:18:36', 1, 4, '::1'),
(297, 'Changes on Article \'Kathmandu Durbar Square\' has been saved successfully.', '2023-08-30 12:18:57', 1, 4, '::1'),
(298, 'Changes on Article \'Budanilkantha\' has been saved successfully.', '2023-08-30 12:19:04', 1, 4, '::1'),
(299, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-30 12:20:27', 1, 4, '::1'),
(300, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-08-30 12:20:39', 1, 4, '::1'),
(301, 'Login: Hotel Ambassador   logged in.', '2023-08-30 15:12:41', 1, 1, '::1'),
(302, 'User [Hotel Ambassador  ] Edit Successfully', '2023-08-30 15:13:07', 1, 4, '::1'),
(303, 'Login: Hotel Ambassador   logged in.', '2023-08-30 15:13:30', 1, 1, '::1'),
(304, 'Vacency [test]Data has added successfully.', '2023-08-30 15:28:03', 1, 3, '::1'),
(305, 'Vacency [test] Edit Successfully', '2023-08-30 15:28:26', 1, 4, '::1'),
(306, 'Vacency [Intern] Edit Successfully', '2023-08-30 15:29:00', 1, 4, '::1'),
(307, 'Vacency  [test]Data has deleted successfully.', '2023-08-30 15:29:07', 1, 6, '::1'),
(308, 'Package [test]Data has added successfully.', '2023-08-30 15:33:40', 1, 3, '::1'),
(309, 'Sub Package \'abc\' has added successfully.', '2023-08-30 15:33:54', 1, 3, '::1'),
(310, 'Sub Package \'asdasdasd\' has added successfully.', '2023-08-30 15:57:19', 1, 3, '::1'),
(311, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:02:32', 1, 4, '::1'),
(312, 'Sub Package [asdasdasd]Data has deleted successfully.', '2023-08-30 16:03:13', 1, 6, '::1'),
(313, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:03:28', 1, 4, '::1'),
(314, 'Changes on Sub Package \'Consulate Suite\' has been saved successfully.', '2023-08-30 16:03:51', 1, 4, '::1'),
(315, 'Changes on Sub Package \'Deluxe with Balcony Room\' has been saved successfully.', '2023-08-30 16:04:01', 1, 4, '::1'),
(316, 'Changes on Sub Package \'Superior Room\' has been saved successfully.', '2023-08-30 16:04:20', 1, 4, '::1'),
(317, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-08-30 16:04:33', 1, 4, '::1'),
(318, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-08-30 16:04:45', 1, 4, '::1'),
(319, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:05:47', 1, 4, '::1'),
(320, 'Sub Package \'asdasdasdasd\' has added successfully.', '2023-08-30 16:06:06', 1, 3, '::1'),
(321, 'Changes on Sub Package \'asdasdasdasd\' has been saved successfully.', '2023-08-30 16:08:54', 1, 4, '::1'),
(322, 'Changes on Sub Package \'asdasdasdasd\' has been saved successfully.', '2023-08-30 16:09:35', 1, 4, '::1'),
(323, 'Sub Package [asdasdasdasd]Data has deleted successfully.', '2023-08-30 16:11:07', 1, 6, '::1'),
(324, 'Sub Package \'qweqwe\' has added successfully.', '2023-08-30 16:12:06', 1, 3, '::1'),
(325, 'Sub Package [qweqwe]Data has deleted successfully.', '2023-08-30 16:12:17', 1, 6, '::1'),
(326, 'Sub Package \'asdasd\' has added successfully.', '2023-08-30 16:12:33', 1, 3, '::1'),
(327, 'Applicant  [sharan]Data has deleted successfully.', '2023-08-30 16:29:35', 1, 6, '::1'),
(328, 'Applicant  []Data has deleted successfully.', '2023-08-30 16:29:39', 1, 6, '::1'),
(329, 'Applicant  [asdasdasd]Data has deleted successfully.', '2023-08-30 16:29:39', 1, 6, '::1'),
(330, 'Applicant  [Rooms & Suites]Data has deleted successfully.', '2023-08-30 16:29:48', 1, 6, '::1'),
(331, 'Applicant  [Mice]Data has deleted successfully.', '2023-08-30 16:29:54', 1, 6, '::1'),
(332, 'Article \'asdasdsad\' has added successfully.', '2023-08-30 16:31:42', 1, 3, '::1'),
(333, 'Articles  [asdasdsad]Data has deleted successfully.', '2023-08-30 16:31:55', 1, 6, '::1'),
(334, 'Changes on Sub Package \'Ambassador Suite\' has been saved successfully.', '2023-08-30 16:33:28', 1, 4, '::1'),
(335, 'Login: Hotel Ambassador   logged in.', '2023-11-08 15:08:21', 1, 1, '::1'),
(336, 'Vacency [Senior Executive Assistant] Edit Successfully', '2023-11-08 15:08:53', 1, 4, '::1'),
(337, 'Changes on Article \'About Us\' has been saved successfully.', '2023-11-08 15:11:56', 1, 4, '::1'),
(338, 'Changes on Article \'About Us\' has been saved successfully.', '2023-11-08 15:11:59', 1, 4, '::1'),
(339, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-08 15:46:20', 1, 4, '::1'),
(340, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-08 15:53:37', 1, 4, '::1'),
(341, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-11-08 16:13:14', 1, 4, '::1'),
(342, 'Login: Hotel Ambassador   logged in.', '2023-11-08 16:18:37', 1, 1, '::1'),
(343, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-11-08 16:19:38', 1, 4, '::1'),
(344, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-11-08 16:19:42', 1, 4, '::1'),
(345, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-11-08 16:20:02', 1, 4, '::1'),
(346, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-11-08 16:20:06', 1, 4, '::1'),
(347, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-11-08 16:20:29', 1, 4, '::1'),
(348, 'Changes on Popup \'Popup Test\' has been saved successfully.', '2023-11-08 16:33:48', 1, 4, '::1'),
(349, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-08 16:40:31', 1, 4, '::1'),
(350, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-08 16:40:39', 1, 4, '::1'),
(351, 'Login: Hotel Ambassador   logged in.', '2023-11-08 16:54:46', 1, 1, '::1'),
(352, 'Login: Hotel Ambassador   logged in.', '2023-11-09 22:17:23', 1, 1, '::1'),
(353, 'Login: Hotel Ambassador   logged in.', '2023-11-10 00:36:54', 1, 1, '::1'),
(354, 'Login: Longtail   logged in.', '2023-11-10 00:53:14', 1, 1, '::1'),
(355, 'Login: Hotel Ambassador   logged in.', '2023-11-10 00:59:19', 1, 1, '::1'),
(356, 'Login: Longtail   logged in.', '2023-11-10 00:59:32', 1, 1, '::1'),
(357, 'Login: Hotel Ambassador   logged in.', '2023-11-10 01:01:20', 1, 1, '::1'),
(358, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 01:34:26', 1, 4, '::1'),
(359, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 01:34:32', 1, 4, '::1'),
(360, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 02:06:16', 1, 4, '::1'),
(361, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 02:18:13', 1, 4, '::1'),
(362, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 02:18:27', 1, 4, '::1'),
(363, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 02:27:50', 1, 4, '::1'),
(364, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-10 02:35:41', 1, 4, '::1'),
(365, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-10 02:40:24', 1, 4, '::1'),
(366, 'SocialNetworking [Instagram] Edit Successfully', '2023-11-10 02:41:58', 1, 4, '::1'),
(367, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-10 02:42:07', 1, 4, '::1'),
(368, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-10 02:44:29', 1, 4, '::1'),
(369, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-10 02:45:08', 1, 4, '::1'),
(370, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:01:25', 1, 4, '::1'),
(371, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:01:40', 1, 4, '::1'),
(372, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:04:45', 1, 4, '::1'),
(373, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:06:09', 1, 4, '::1'),
(374, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:10:38', 1, 4, '::1'),
(375, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:11:53', 1, 4, '::1'),
(376, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:12:01', 1, 4, '::1'),
(377, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:16:46', 1, 4, '::1'),
(378, 'Changes on Config \'Hotel Ambassador by ACE Hotels | Deluxe Hotel at Kathmandu\' has been saved succes', '2023-11-10 03:18:51', 1, 4, '::1'),
(379, 'Login: Hotel Ambassador   logged in.', '2023-11-17 11:41:58', 1, 1, '::1'),
(380, 'Package Rooms & Suites Edit Successfully', '2023-11-17 12:04:39', 1, 4, '::1'),
(381, 'Login: Longtail   logged in.', '2023-11-17 12:05:44', 1, 1, '::1'),
(382, 'Login: Hotel Ambassador   logged in.', '2023-11-17 12:17:31', 1, 1, '::1'),
(383, 'Login: Hotel Ambassador   logged in.', '2023-11-17 14:46:33', 1, 1, '::1'),
(384, 'Login: Hotel Ambassador   logged in.', '2023-11-18 11:13:10', 1, 1, '::1'),
(385, 'Login: Hotel Ambassador   logged in.', '2023-11-19 18:20:53', 1, 1, '::1'),
(386, 'Login: Hotel Ambassador   logged in.', '2023-11-19 18:27:36', 1, 1, '::1'),
(387, 'Login: Hotel Ambassador   logged in.', '2023-11-24 17:24:29', 1, 1, '::1'),
(388, 'Login: Hotel Ambassador   logged in.', '2023-12-06 22:23:49', 1, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bgcolor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(1, 'Home', 'home', 0, '0', 1, 1, '2022-09-08 12:09:03', 1, ''),
(2, 'About Us', 'about-us', 0, '0', 1, 2, '2022-09-08 12:09:15', 1, ''),
(3, 'Rooms & Suites', 'rooms-suites', 0, '0', 1, 3, '2022-09-08 12:09:24', 1, ''),
(7, 'Restaurants  Shops', 'the-restaurant', 0, '0', 1, 5, '2022-09-08 12:10:17', 1, ''),
(8, 'Mice', 'meeting-events', 0, '0', 1, 4, '2022-09-08 12:10:24', 1, ''),
(9, 'Facilities', 'facilities-list', 0, '0', 1, 6, '2022-09-08 12:10:32', 1, ''),
(10, 'Gallery', 'gallery-list', 0, '0', 1, 7, '2022-09-08 12:10:39', 1, ''),
(11, 'Contact', 'contact-us', 0, '0', 1, 9, '2022-09-08 12:10:50', 1, ''),
(12, 'Home', 'home', 0, '0', 1, 10, '2023-08-13 15:38:44', 2, ''),
(13, 'Rooms & Suites', 'rooms-suites', 0, '0', 1, 11, '2023-08-13 15:39:16', 2, ''),
(14, 'Restaurant', 'the-restaurant', 0, '0', 1, 12, '2023-08-13 15:39:38', 2, ''),
(15, 'About Hotel', 'about-us', 0, '0', 1, 15, '2023-08-13 15:40:01', 2, ''),
(16, 'Contact', 'contact-us', 0, '0', 1, 14, '2023-08-13 15:40:10', 2, ''),
(17, 'Standard Room', 'standard-room', 3, '0', 1, 11, '2023-08-14 13:05:24', 1, ''),
(19, 'Deluxe Room', 'deluxe-room', 3, '0', 1, 13, '2023-08-15 12:06:44', 1, ''),
(21, 'Career', 'career', 0, '0', 1, 8, '2023-08-25 13:22:30', 1, ''),
(22, 'Career', 'career', 0, '0', 1, 13, '2023-08-28 12:59:15', 2, ''),
(23, 'Superior Room', 'superior-room', 3, '0', 1, 12, '2023-08-29 11:17:12', 1, ''),
(24, 'Deluxe with Balcony', 'deluxe-with-balcony-room', 3, '0', 1, 14, '2023-08-29 11:27:08', 1, ''),
(25, 'Consulate Suite', 'consulate-suite', 3, '0', 1, 15, '2023-08-29 11:27:29', 1, ''),
(26, 'Ambassador Suite', 'ambassador-suite', 3, '0', 1, 16, '2023-08-29 11:27:52', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Subpackage', 'deluxe-room', 38),
('Package', 'rooms-suites', 3),
('Subpackage', 'standard-room', 39),
('Package', 'other-services', 4),
('Subpackage', 'meeting-events', 40),
('Subpackage', 'the-restaurant', 41),
('Package', 'rooms-suites', 1),
('Subpackage', 'special-offer', 42),
('Subpackage', 'superior-room', 43),
('Subpackage', 'deluxe-with-balcony-room', 44),
('Subpackage', 'consulate-suite', 45),
('Subpackage', 'ambassador-suite', 46),
('Article', 'pashupatinath-temple', 9),
('Article', 'kathmandu-durbar-square', 10),
('Article', 'budanilkantha', 11),
('Article', 'boudhanath-stupa', 12),
('Package', 'test', 5),
('Subpackage', 'abc', 47),
('Subpackage', 'asdasd', 51),
('Article', 'about-us', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `icon_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 0, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 3, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 0, 5, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"675\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 19, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 10, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 0, 13, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 22, '0000-00-00', ''),
(11, 0, 'Social Link Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 11, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 21, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:3:\"125\";s:10:\"simgheight\";s:2:\"80\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 0, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 0, 18, '2015-05-20', 'a:2:{s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 16, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 2, '2016-06-17', 'a:2:{s:8:\"imgwidth\";s:3:\"400\";s:9:\"imgheight\";s:3:\"350\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', '', '', 'icon-bullhorn', 1, 9, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\n\r\n\r\n\r\nicon-list-alt', 0, 8, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 0, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 0, 1, '2021-11-25', ''),
(100, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 1, 5, '2023-08-28', ''),
(200, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 8, '2023-08-29', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 1, 8, '2023-08-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nearby`
--

INSERT INTO `tbl_nearby` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `distance`) VALUES
(9, 0, 'pashupatinath-temple', 'Pashupatinath Temple', 'Pashupatinath Temple', '<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img src=\"template/web/img/gallery/temple.jpg\" /></div>\r\n	<div class=\"col-md-8\">\r\n		<p class=\"text-modal\">\r\n			Pashupatinath Temple (Nepali: श्री पशुपतिनाथ मन्दिर) is a Hindu temple dedicated to Lord Pashupati, and is located in Kathmandu, Nepal near the Bagmati River. This is currently the largest temple in the world as well as one of the Oldest Temple</p>\r\n	</div>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2023-08-29 16:18:19', '2023-11-08 16:20:29', 3, 0, '', '', '', '10 km'),
(10, 0, 'kathmandu-durbar-square', 'Kathmandu Durbar Square', 'Kathmandu Durbar Square', '<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img src=\"template/web/img/gallery/durbar.png\" /></div>\r\n	<div class=\"col-md-8\">\r\n		<p class=\"text-modal\">\r\n			Kathmandu Durbar Square (Nepal Bhasa: येँ लायकु/???????????? ????????????????????, Nepali: हनुमानढोका दरबार/ Basantapur Durbar Kshetra) is located in front of the old royal palace of the former Kathmandu Kingdom and is one of three Durbar (royal palace) Squares in the Kathmandu Valley in Nepal, all of which are UNESCO World Heritage Sites.</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2023-08-30 12:04:19', '2023-08-30 12:18:57', 1, 0, 0x613a303a7b7d, '', '', '4 km'),
(11, 0, 'budanilkantha', 'Budanilkantha', 'Budanilkantha', '<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img src=\"template/web/img/gallery/palace.jpg\" /></div>\r\n	<div class=\"col-md-8\">\r\n		<p class=\"text-modal\">\r\n			Budhanilkantha is a sprawling suburb that stretches into Shivapuri Nagarjun National Park, a forested area home to leopards, monkeys, and bears, plus many species of local and migratory birds. At Bhuijasi Narayan Temple, a black basalt carving of the Hindu god Vishnu, draped in marigolds and reclining on a bed of serpents, lies in a small pond.</p>\r\n	</div>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2023-08-30 12:09:31', '2023-08-30 12:19:04', 0, 0, 0x613a303a7b7d, '', '', '10 km'),
(12, 0, 'boudhanath-stupa', 'Boudhanath Stupa', 'Boudhanath Stupa', '<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img src=\"template/web/img/gallery/bhauddha.jpg\" /></div>\r\n	<div class=\"col-md-8\">\r\n		<p class=\"text-modal\">\r\n			Bouddha (Nepali: बौद्धनाथ; Nepal bhasa: खास्ति चैत्य; Standard Tibetan: བྱ་རུང་ཁ་ཤོར།, romanized: Jarung Khashor, Wylie: bya rung kha shor), also known as Boudhanath, Khasti Chaitya and Khāsa Chaitya is a stupa in Kathmandu, Nepal.[2] Located about 11 km (6.8 mi) from the center and northeastern outskirts of Kathmandu, its massive mandala makes it one of the largest spherical stupas in Nepal[3] and the world.</p>\r\n	</div>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2023-08-30 12:10:30', '2023-08-30 12:18:36', 2, 0, 0x613a303a7b7d, '', '', '15 km');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brief` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`) VALUES
(1, 'rooms-suites', 'Rooms & Suites', 'AMBASSADOR HOTEL', '', '', 'a:0:{}', '', '', '', '', '', 1, 1, '2023-08-25 15:05:20', '2023-11-17 12:04:39', 1),
(2, 'other-services', 'Other Services', 'Luxury Hotel', '', '', 'a:0:{}', '', '', '', '', '', 1, 0, '2023-08-25 16:50:21', '2023-08-25 16:50:21', 0),
(5, 'test', 'test', 'test', '', '', 'a:0:{}', '', '<p>\r\n	asdasd</p>\r\n', '', '', '', 0, 2, '2023-08-30 15:33:40', '2023-08-30 15:33:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `facility_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` int(11) NOT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` int(11) NOT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serve` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theatre_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_room_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shape` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `round_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clusture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cocktail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seats` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `below_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `seminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meeting` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `events` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `conference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catering` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celebration` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `organic_food` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `occupancy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `live_music` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bed` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `airport_pickup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `private_balcony` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `checkinout` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `image2`, `image3`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `oneb_price`, `twob_price`, `threeb_price`, `extra_bed`, `short_title`, `time`, `location`, `serve`, `theatre_style`, `class_room_style`, `shape`, `round_table`, `clusture`, `cocktail`, `seats`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`, `below_content`, `seminar`, `meeting`, `events`, `conference`, `catering`, `celebration`, `organic_food`, `occupancy`, `view`, `size`, `service`, `live_music`, `bed`, `room_size`, `room_service`, `airport_pickup`, `private_balcony`, `checkinout`) VALUES
(38, 'deluxe-room', 'Deluxe Room', '', '', 'a:1:{i:0;s:11:\"gDLl1-4.jpg\";}', '', '', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a333a22313336223b693a313b733a333a22313432223b693a323b733a333a22313431223b693a333b733a333a22313430223b693a343b733a333a22313338223b693a353b733a333a22313337223b7d7d7d, '	<p class=\"mb-30\">\r\n		Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum. Duisteyerion venenatis lacus gravida eros ut turpis interdum ornare.</p>\r\n	<p class=\"mb-30\">\r\n		Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero. Hotel non lorem acer suscipit bibendum vulla facilisi nedeuter nunc volutpa mollis sapien velet conseyer turpeutionyer masin libero sempe mollis.</p>\r\n	<div class=\"row\">\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-in</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-in from 9:00 AM - anytime</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Early check-in subject to availability</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-out</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-out before noon</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Express check-out</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Special check-in instructions</h6>\r\n			<p>\r\n				Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Children and extra beds</h6>\r\n			<p>\r\n				Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>\r\n		</div>\r\n	</div>\r\n', '', 0, '\\$', 0, 0, 250, 0, 0, 0, 0, 0, '', 'LUXURY HOTEL', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 6, '2023-08-25 15:08:01', '2023-08-30 16:04:33', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 'standard-room', 'Standard Room', '', '', 'a:1:{i:0;s:11:\"0QMZf-3.jpg\";}', '', '', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a333a22313336223b693a313b733a333a22313432223b693a323b733a333a22313431223b693a333b733a333a22313430223b693a343b733a333a22313338223b693a353b733a333a22313337223b7d7d7d, '	<p class=\"mb-30\">\r\n		Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum. Duisteyerion venenatis lacus gravida eros ut turpis interdum ornare.</p>\r\n	<p class=\"mb-30\">\r\n		Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero. Hotel non lorem acer suscipit bibendum vulla facilisi nedeuter nunc volutpa mollis sapien velet conseyer turpeutionyer masin libero sempe mollis.</p>\r\n	<div class=\"row\">\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-in</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-in from 9:00 AM - anytime</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Early check-in subject to availability</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-out</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-out before noon</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Express check-out</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Special check-in instructions</h6>\r\n			<p>\r\n				Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Children and extra beds</h6>\r\n			<p>\r\n				Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>\r\n		</div>\r\n	</div>\r\n', '', 0, '\\$', 0, 0, 150, 0, 0, 0, 0, 0, '', 'Luxury Hotel', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 4, '2023-08-25 15:48:02', '2023-08-30 16:04:45', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 'meeting-events', 'Meeting & Events', '', '', 'a:1:{i:0;s:11:\"ZQioy-2.jpg\";}', '', '', '', 0x613a303a7b7d, '<div class=\"col-md-12\">\r\n	<p class=\"mb-30\">\r\n		Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent volutpat nibh ac sodales sodales. Nunc tincidunt erat sed nisi faucibus, eget sagittis libero imperdiet. Nunc risus magna, imperdiet gravida ultricies in, aliquam a tortor. Vestibulum tristique posuere magna, quis elementum neque luctus non. Aenean sed arcu efficitur, commodo justo ut, accumsan massa. Vivamus ac risus in felis imperdiet mollis id sit amet odio. Vestibulum dignissim finibus diam a commodo. Nulla quis miss dururana egestas semper. In sit amet nunc sed felis lacinia tempus sed quis ipsum.</p>\r\n</div>\r\n<div class=\"col-md-12\">\r\n	<table class=\"table table-hover table-bordered text-center\">\r\n		<thead>\r\n			<tr>\r\n				<th>\r\n					Outlets</th>\r\n				<th>\r\n					Theater<br />\r\n					<img alt=\"\" src=\"template/web/img/icons/theator.jpg\" /></th>\r\n				<th>\r\n					U Shape<br />\r\n					<img alt=\"\" src=\"template/web/img/icons/u.jpg\" /></th>\r\n				<th>\r\n					Round Table<br />\r\n					<img alt=\"\" src=\"template/web/img/icons/round-table.png\" /></th>\r\n				<th class=\"text-center\">\r\n					Fixed Seating<br />\r\n					<img alt=\"\" src=\"template/web/img/icons/roundtable.jpg\" /></th>\r\n			</tr>\r\n		</thead>\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					The Envoy Room</td>\r\n				<td>\r\n					-</td>\r\n				<td>\r\n					-</td>\r\n				<td>\r\n					-</td>\r\n				<td>\r\n					13 pax</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					The Consulate Hall</td>\r\n				<td>\r\n					80 Pax</td>\r\n				<td>\r\n					34 Pax</td>\r\n				<td>\r\n					64 Pax</td>\r\n				<td>\r\n					-</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'AN EXPERIENCE FOR THE SENSES', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2023-08-25 16:52:45', '2023-08-28 12:01:59', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 'the-restaurant', 'The Restaurant', '', '', 'a:1:{i:0;s:11:\"1pplE-1.jpg\";}', '', '', '', 0x613a303a7b7d, '<div class=\"col-md-12\">\r\n	<p class=\"mb-30\">\r\n		The Diplomat Restaurant located on the first floor is the Hotels main venue for Breakfast, Lunch, Hi-tea and Dinner. A timeless &amp; unique venue which delivers an array of signature cocktails, wine, freshly brewed coffee &amp; the famous Masala tea. The Diplomat Restaurant serves South Asian &amp; Continental cuisines.</p>\r\n	<h6>\r\n		Hours</h6>\r\n	<ul class=\"list-unstyled page-list mb-30\">\r\n		<li>\r\n			<div class=\"page-list-icon\">\r\n				&nbsp;</div>\r\n			<div class=\"page-list-text\">\r\n				<p>\r\n					Breakfast: 7.00 am &ndash; 11.00 am (daily)</p>\r\n			</div>\r\n		</li>\r\n		<li>\r\n			<div class=\"page-list-icon\">\r\n				&nbsp;</div>\r\n			<div class=\"page-list-text\">\r\n				<p>\r\n					Lunch: 12.00 noon &ndash; 2.00 pm (daily)</p>\r\n			</div>\r\n		</li>\r\n		<li>\r\n			<div class=\"page-list-icon\">\r\n				&nbsp;</div>\r\n			<div class=\"page-list-text\">\r\n				<p>\r\n					Dinner: open from 6.30 pm, last order at 10.00 pm (daily)</p>\r\n			</div>\r\n		</li>\r\n	</ul>\r\n	<h6>\r\n		Dress Code</h6>\r\n	<p>\r\n		Smart casual (no shorts, hats, or sandals permitted)</p>\r\n	<h6>\r\n		Terrace</h6>\r\n	<p>\r\n		Open for drinks only</p>\r\n</div>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'An Experience for the Senses', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 3, '2023-08-25 17:06:40', '2023-08-28 12:01:45', 2, '<section class=\"pricing section-padding bg-cream food-section1\">\r\n	<div class=\"container\">\r\n		<div class=\"row justify-content-center\">\r\n			<div class=\"col-md-12 text-center\">\r\n				<div class=\"section-subtitle\">\r\n					From hand tossed pizzas to fresh sushi</div>\r\n				<div class=\"section-title\">\r\n					Five On-site Dining Option</div>\r\n			</div>\r\n			<div class=\"col-md-4\">\r\n				<div class=\"pricing-card\">\r\n					<img alt=\"\" src=\"template/web/img/restaurant/Diplomat.jpg\" />\r\n					<div class=\"desc\">\r\n						<div class=\"name\">\r\n							The Diplomat Restaurant</div>\r\n						<p>\r\n							The Diplomat Restaurant located on the first floor is the Hotels main venue for Breakfast, Lunch, Hi-tea and Dinner. A timeless &amp; unique venue which delivers an array of signature cocktails, wine, freshly brewed coffee &amp; the famous Masala tea. The Diplomat Restaurant serves South Asian &amp; Continental cuisines.</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md-4\">\r\n				<div class=\"pricing-card\">\r\n					<img alt=\"\" src=\"template/web/img/restaurant/lamari.png\" />\r\n					<div class=\"desc\">\r\n						<div class=\"name\">\r\n							La-Mari: Parisian Flair, Baked here!</div>\r\n						<p>\r\n							La-Mari is located at the base of Hotel Ambassador by ACE Hotels introducing freshly &amp; high quality French baked goods to KTM which brings contemporary flair to traditional Patisserie &amp; Boulangerie staples.</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md-4\">\r\n				<div class=\"pricing-card\">\r\n					<img alt=\"\" src=\"template/web/img/restaurant/foreign.png\" />\r\n					<div class=\"desc\">\r\n						<div class=\"name\">\r\n							Foreign Affairs</div>\r\n						<p>\r\n							Foreign Affairs is a rooftop bar &amp; lounge with sundeck having 360&deg; views of the valley located on the 9th floor. It specializes in South Asian cuisine, possibly some of the best in the city and also has classic bar tapas available. Also, it is an ideal venue for an official and private event.</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md-4\">\r\n				<div class=\"pricing-card\">\r\n					<img alt=\"\" src=\"template/web/img/restaurant/kotestu.png\" />\r\n					<div class=\"desc\">\r\n						<div class=\"name\">\r\n							Kotetsu</div>\r\n						<p>\r\n							Kotetsu offers the authentic Japanese experience. A beautifully designed restaurant with a glass facade looking out into to the city, Kotetsu serves freshly made Japanese delicacies that are a treat to the palate. Its rising popularity with the Japanese Embassy down the road is a stamp of approval to the inimitable ad authentic quality of the food and the stunning ambiance.</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n			<div class=\"col-md-4\">\r\n				<div class=\"pricing-card\">\r\n					<img alt=\"\" src=\"template/web/img/restaurant/flatiron.png\" />\r\n					<div class=\"desc\">\r\n						<div class=\"name\">\r\n							Flat Iron Grill</div>\r\n						<p>\r\n							Flat Iron Logo serves gourmet style sandwiches, soups and salads made from fresh ingredients. It is the perfect spot for a quick lunch and possibly the only place to satisfy the intense cravings for an amazing sandwich.</p>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</section>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 'special-offer', 'Special offer', '', '', 'a:1:{i:0;s:11:\"dkL1J-3.jpg\";}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 5, '2023-08-28 12:02:13', '2023-08-28 12:02:13', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'superior-room', 'Superior Room', '', '', 'a:1:{i:0;s:11:\"byO91-1.jpg\";}', '', '', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a333a22313432223b693a313b733a333a22313431223b693a323b733a333a22313430223b693a333b733a333a22313338223b693a343b733a333a22313337223b693a353b733a333a22313336223b7d7d7d, '	<p class=\"mb-30\">\r\n		Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum. Duisteyerion venenatis lacus gravida eros ut turpis interdum ornare.</p>\r\n	<p class=\"mb-30\">\r\n		Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero. Hotel non lorem acer suscipit bibendum vulla facilisi nedeuter nunc volutpa mollis sapien velet conseyer turpeutionyer masin libero sempe mollis.</p>\r\n	<div class=\"row\">\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-in</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-in from 9:00 AM - anytime</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Early check-in subject to availability</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-out</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-out before noon</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Express check-out</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Special check-in instructions</h6>\r\n			<p>\r\n				Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Children and extra beds</h6>\r\n			<p>\r\n				Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>\r\n		</div>\r\n	</div>\r\n', '', 0, '\\$', 0, 0, 200, 0, 0, 0, 0, 0, '', 'Luxury Hotel', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 7, '2023-08-29 11:16:41', '2023-08-30 16:04:20', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'deluxe-with-balcony-room', 'Deluxe with Balcony Room', '', '', 'a:1:{i:0;s:11:\"d7pEP-5.jpg\";}', '', '', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a333a22313432223b693a313b733a333a22313431223b693a323b733a333a22313430223b693a333b733a333a22313338223b693a343b733a333a22313337223b693a353b733a333a22313336223b7d7d7d, '	<p class=\"mb-30\">\r\n		Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum. Duisteyerion venenatis lacus gravida eros ut turpis interdum ornare.</p>\r\n	<p class=\"mb-30\">\r\n		Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero. Hotel non lorem acer suscipit bibendum vulla facilisi nedeuter nunc volutpa mollis sapien velet conseyer turpeutionyer masin libero sempe mollis.</p>\r\n	<div class=\"row\">\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-in</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-in from 9:00 AM - anytime</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Early check-in subject to availability</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-out</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-out before noon</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Express check-out</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Special check-in instructions</h6>\r\n			<p>\r\n				Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Children and extra beds</h6>\r\n			<p>\r\n				Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>\r\n		</div>\r\n	</div>\r\n', '', 0, '\\$', 0, 0, 300, 0, 0, 0, 0, 0, '', 'Luxury Hotel', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 8, '2023-08-29 11:21:47', '2023-08-30 16:04:01', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 'consulate-suite', 'Consulate Suite', '', '', 'a:1:{i:0;s:11:\"7tIKb-6.jpg\";}', '', '', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a333a22313432223b693a313b733a333a22313431223b693a323b733a333a22313430223b693a333b733a333a22313338223b693a343b733a333a22313337223b693a353b733a333a22313336223b7d7d7d, '	<p class=\"mb-30\">\r\n		Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum. Duisteyerion venenatis lacus gravida eros ut turpis interdum ornare.</p>\r\n	<p class=\"mb-30\">\r\n		Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero. Hotel non lorem acer suscipit bibendum vulla facilisi nedeuter nunc volutpa mollis sapien velet conseyer turpeutionyer masin libero sempe mollis.</p>\r\n	<div class=\"row\">\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-in</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-in from 9:00 AM - anytime</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Early check-in subject to availability</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-out</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-out before noon</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						&nbsp;</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Express check-out</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Special check-in instructions</h6>\r\n			<p>\r\n				Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Children and extra beds</h6>\r\n			<p>\r\n				Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>\r\n		</div>\r\n	</div>\r\n', '', 0, '\\$', 0, 0, 350, 0, 0, 0, 0, 0, '', 'Luxury Hotel', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 9, '2023-08-29 11:24:14', '2023-08-30 16:03:51', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 'ambassador-suite', 'Ambassador Suite', '', '', 'a:1:{i:0;s:11:\"GmyJ0-7.jpg\";}', '', '', '', 0x613a313a7b693a3133343b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a333a22313432223b693a313b733a333a22313431223b693a323b733a333a22313430223b693a333b733a333a22313338223b693a343b733a333a22313337223b693a353b733a333a22313336223b7d7d7d, '<p class=\"mb-30\">\r\n	Hotel non lorem ac erat suscipit bibendum nulla facilisi. Sedeuter nunc volutpat miss sapien vel conseyen turpeutionyer masin libero sevenion vusetion viventa augue sit amet hendrerit vestibulum. Duisteyerion venenatis lacus gravida eros ut turpis interdum ornare.</p>\r\n<p class=\"mb-30\">\r\n	Interdum et malesu they adamale fames ac anteipsu pimsine faucibus curabitur arcu site feugiat in tortor in, volutpat sollicitudin libero. Hotel non lorem acer suscipit bibendum vulla facilisi nedeuter nunc volutpa mollis sapien velet conseyer turpeutionyer masin libero sempe mollis.</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-in</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					&nbsp;</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-in from 9:00 AM - anytime</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					&nbsp;</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Early check-in subject to availability</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-out</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					&nbsp;</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-out before noon</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					&nbsp;</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Express check-out</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Special check-in instructions</h6>\r\n		<p>\r\n			Guests will receive an email 5 days before arrival with check-in instructions; front desk staff will greet guests on arrival For more details, please contact the property using the information on the booking confirmation.</p>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Children and extra beds</h6>\r\n		<p>\r\n			Children are welcome Kids stay free! Children stay free when using existing bedding; children may not be eligible for complimentary breakfast Rollaway/extra beds are available for $ 10 per day.</p>\r\n	</div>\r\n</div>\r\n', '', 0, '\\$', 0, 0, 400, 0, 0, 0, 0, 0, '', 'Luxury Hotel', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 10, '2023-08-29 11:25:41', '2023-08-30 16:33:28', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 'abc', 'abc', '', '', 'a:0:{}', '', '', '', 0x613a303a7b7d, '<p>\r\n	aasadfsadf</p>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'abc', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 2, '2023-08-30 15:33:54', '2023-08-30 15:33:54', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 'asdasd', 'asdasd', '', '', 'a:0:{}', '', '', '', 0x613a303a7b7d, '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 6, '2023-08-30 16:12:33', '2023-08-30 16:12:33', 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(3, 'Popup Test', '2023-08-23', '2023-12-13', 'a:1:{i:0;s:11:\"9VE8Z-8.jpg\";}', '', '0', '', 1, 1, 1, 1, 'popup-test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `title`, `content`, `img_thumb`, `img_jpg`, `img_png`, `img_svg`, `status`, `sortorder`, `added_date`, `modified_date`) VALUES
(2, 'test', 'test ', '<p>\r\n	dfcgvhhjbk</p>\r\n', '', '', '', '', 1, 1, '2021-11-24 12:47:12', '2021-11-24 12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `sub_title`, `image`, `icon`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`, `brief`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(39, 'pick-up-drop', 'Pick Up & Drop', '', 'a:0:{}', 'flaticon-world', '', 0, '', 1, '2023-08-25 13:16:44', 1, 0, '', 0, 0, 0),
(40, 'parking-space', 'Parking Space', '', 'a:0:{}', 'flaticon-car', '', 0, '', 1, '2023-08-28 16:06:26', 2, 0, '', 0, 0, 0),
(41, 'room-service', 'Room Service', '', 'a:0:{}', 'flaticon-bed', '', 0, '', 1, '2023-08-28 16:06:41', 3, 0, '', 0, 0, 0),
(42, 'free-wifi', 'Free Wifi', '', 'a:0:{}', 'flaticon-wifi', '', 0, '', 1, '2023-08-28 16:06:53', 4, 0, '', 0, 0, 0),
(43, 'breakfast', 'Breakfast', '', 'a:0:{}', 'flaticon-breakfast', '', 0, '', 1, '2023-08-28 16:07:06', 5, 0, '', 0, 0, 0),
(44, 'safety-deposit-box', 'Safety Deposit Box', '', 'a:1:{i:0;s:17:\"sZZVu-safebox.png\";}', '', '', 0, '', 1, '2023-08-28 16:09:51', 6, 0, '', 0, 0, 0),
(45, 'triple-gazed-sound-proof-windows', 'Triple Gazed Sound Proof Windows', '', 'a:1:{i:0;s:17:\"L9HB8-windows.png\";}', '', '', 0, '', 1, '2023-08-28 16:10:15', 7, 0, '', 0, 0, 0),
(46, 'ev-charging-station', 'EV charging station', '', 'a:1:{i:0;s:26:\"T43x1-charging-station.png\";}', '', '', 0, '', 1, '2023-08-28 16:10:40', 8, 0, '', 0, 0, 0),
(47, 'emergency-torch', 'Emergency Torch', '', 'a:1:{i:0;s:20:\"sMRnK-flashlight.png\";}', '', '', 0, '', 1, '2023-08-28 16:12:14', 9, 0, '', 0, 0, 0),
(48, 'five-on-site-dining-options', 'Five on-site dining options', '', 'a:1:{i:0;s:15:\"WXHOm-table.png\";}', '', '', 0, '', 1, '2023-08-28 16:12:27', 10, 0, '', 0, 0, 0),
(49, 'meeting-hall', 'Meeting Hall', '', 'a:1:{i:0;s:17:\"D9Cih-meeting.png\";}', '', '', 0, '', 1, '2023-08-28 16:12:39', 11, 0, '', 0, 0, 0),
(50, 'iron-and-ironing-board', 'Iron and Ironing Board', '', 'a:1:{i:0;s:14:\"ohvpB-iron.png\";}', '', '', 0, '', 1, '2023-08-28 16:14:01', 12, 0, '', 0, 0, 0),
(51, 'upcoming-gym-spa', 'Upcoming Gym & Spa', '', 'a:1:{i:0;s:13:\"u77MH-gym.png\";}', '', '', 0, '', 1, '2023-08-28 16:14:20', 13, 0, '', 0, 0, 0),
(52, 'coffee-maker', 'Coffee Maker', '', 'a:1:{i:0;s:16:\"eWGSn-coffee.png\";}', '', '', 0, '', 1, '2023-08-28 16:14:47', 14, 0, '', 0, 0, 0),
(53, '24hrs-front-desk', '24hrs Front Desk', '', 'a:1:{i:0;s:14:\"198wO-desk.png\";}', '', '', 0, '', 1, '2023-08-28 16:14:58', 15, 0, '', 0, 0, 0),
(54, 'bathtub', 'Bathtub', '', 'a:1:{i:0;s:17:\"Aryc0-bathtub.png\";}', '', '', 0, '', 1, '2023-08-28 16:15:08', 16, 0, '', 0, 0, 0),
(55, 'minibar', 'Minibar', '', 'a:1:{i:0;s:17:\"WNVju-minibar.png\";}', '', '', 0, '', 1, '2023-08-28 16:15:19', 17, 0, '', 0, 0, 0),
(56, 'room-slippers', 'Room Slippers', '', 'a:1:{i:0;s:18:\"vqu7s-slippers.png\";}', '', '', 0, '', 1, '2023-08-28 16:15:29', 18, 0, '', 0, 0, 0),
(57, 'hair-dryer', 'Hair Dryer', '', 'a:1:{i:0;s:19:\"fLh2d-hairdryer.png\";}', '', '', 0, '', 1, '2023-08-28 16:15:38', 19, 0, '', 0, 0, 0),
(58, 'led-tv', 'LED Tv', '', 'a:1:{i:0;s:12:\"8y2j1-tv.png\";}', '', '', 0, '', 1, '2023-08-28 16:15:47', 20, 0, '', 0, 0, 0),
(59, 'vanity-mirror', 'Vanity Mirror', '', 'a:1:{i:0;s:16:\"wF9ny-mirror.png\";}', '', '', 0, '', 1, '2023-08-28 16:15:57', 21, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `linksrc`, `status`, `sortorder`, `registered`, `icon`) VALUES
(2, 'Instagram', 'ti-instagram', 'https://www.instagram.com', 1, 2, '', 'ti-instagram'),
(4, 'Facebook', 'Pu7iq-defaultlogo.jpeg', 'https://www.facebook.com/ambassadornepal/', 1, 1, '', 'ti-facebook');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(64, 'Conference Hall', 33, '', 1, 1, '2023-08-14 12:52:01', 'dNMUF-1.jpg'),
(65, 'Conference Hall', 33, '', 1, 29, '2023-08-14 12:52:01', 'QGPvY-2.jpg'),
(66, 'Conference Hall', 33, '', 1, 33, '2023-08-14 12:52:01', 'iUVrT-3.jpg'),
(71, 'Semi-deluxe Room', 35, '', 1, 10, '2023-08-15 11:54:56', 'WSN2T-2.jpg'),
(72, 'Semi-deluxe Room', 35, '', 1, 30, '2023-08-15 11:54:56', 'rdPKh-2a.jpg'),
(73, 'Deluxe Room', 36, '', 1, 19, '2023-08-15 11:57:51', 'Bd6Vi-3a.jpg'),
(74, 'Deluxe Room', 36, '', 1, 31, '2023-08-15 11:57:51', 'B6Ogh-3.jpg'),
(75, 'Deluxe Room', 36, '', 1, 34, '2023-08-15 11:57:51', 'CLAn8-3b.jpg'),
(76, 'Executive Room', 37, '', 1, 25, '2023-08-15 12:00:19', 'H9DY0-4a.jpg'),
(77, 'Executive Room', 37, '', 1, 32, '2023-08-15 12:00:19', 'Jolyb-4.jpg'),
(89, 'Deluxe Room', 38, '', 1, 2, '2023-08-27 14:27:15', 'NevfB-dee-1.jpg'),
(90, 'Deluxe Room', 38, '', 1, 11, '2023-08-27 14:27:15', 'cvyBx-del.jpg'),
(91, 'Deluxe Room', 38, '', 1, 20, '2023-08-27 14:27:15', 'YQAu4-dee.jpg'),
(92, 'The Restaurant', 41, '', 1, 3, '2023-08-28 12:47:53', 'wPs1N-for.jpg'),
(93, 'The Restaurant', 41, '', 1, 12, '2023-08-28 12:47:53', 'BllGw-dip-1.jpg'),
(94, 'The Restaurant', 41, '', 1, 21, '2023-08-28 12:47:53', 'dFfPC-for-1.jpg'),
(95, 'The Restaurant', 41, '', 1, 26, '2023-08-28 12:47:53', '4XDAs-restro.jpg'),
(96, 'Meeting & Events', 40, '', 1, 4, '2023-08-28 12:49:22', 'qdvre-envo.jpg'),
(97, 'Meeting & Events', 40, '', 1, 13, '2023-08-28 12:49:22', 'vDiPW-envo-1.jpg'),
(98, 'Meeting & Events', 40, '', 1, 22, '2023-08-28 12:49:22', 'xp1vQ-halll1.jpg'),
(99, 'Meeting & Events', 40, '', 1, 27, '2023-08-28 12:49:22', 'M54gd-halll.jpg'),
(100, 'Standard Room', 39, '', 1, 5, '2023-08-28 12:50:14', 'fJHBx-s-2.jpg'),
(101, 'Standard Room', 39, '', 1, 14, '2023-08-28 12:50:14', 'gZtl2-s-1.jpg'),
(102, 'Standard Room', 39, '', 1, 23, '2023-08-28 12:50:14', 'I8PAi-stand.jpg'),
(103, 'Superior Room', 43, '', 1, 6, '2023-08-29 11:18:02', '6LGFD-su-1.jpg'),
(104, 'Superior Room', 43, '', 1, 15, '2023-08-29 11:18:02', 'yt4Dk-su-2.jpg'),
(105, 'Deluxe with Balcony Room', 44, '', 1, 7, '2023-08-29 11:22:20', 'MSzWI-baal.jpg'),
(106, 'Deluxe with Balcony Room', 44, '', 1, 16, '2023-08-29 11:22:20', 'FOvPr-baal-1.jpg'),
(107, 'Deluxe with Balcony Room', 44, '', 1, 24, '2023-08-29 11:22:20', 'Qs4Lx-baal-2.jpg'),
(108, 'Deluxe with Balcony Room', 44, '', 1, 28, '2023-08-29 11:22:20', '8z5bk-del-bal.jpg'),
(109, 'Consulate Suite', 45, '', 1, 8, '2023-08-29 11:24:55', 'qWwo5-con-1.jpg'),
(110, 'Consulate Suite', 45, '', 1, 17, '2023-08-29 11:24:55', 'vfE02-con-2.jpg'),
(111, 'Ambassador Suite', 46, '', 1, 9, '2023-08-29 11:26:11', '9oCO7-am-1.jpg'),
(112, 'Ambassador Suite', 46, '', 1, 18, '2023-08-29 11:26:11', 'yRpza-am.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` text COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `via_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `rating`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(8, 0, 'Arthur Sacramento', 'xG4Kd-4.jpg', '', '<p>\r\n	This hotel has recently been renovated.Hotel has spacious rooms,very good linen and good bathrooms.It is centrally located .Hotel is very well maintained.</p>\r\n', 5, 1, 1, '', 'Brazil', 0),
(9, 0, 'Alexander', 'L0TfP-1.jpg', '', '<p>\r\n	We were the first to book through booking.com. We found the staff to be very helpful and accommodating.</p>\r\n', 5, 2, 1, '', 'USA', 0),
(10, 0, 'Annabel Chong', 'MZ4b1-5.jpg', '', '<p>\r\n	Clean, quiet Hotel which is newly refurbished and ideally situated for tourists or business travellers. Breakfast is good, rooms are spacious, modern and well-maintained.</p>\r\n', 5, 3, 1, '', 'Singapore', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `optional_email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `accesskey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_accesstoken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'Hotel Ambassador', '', '', '', 'support@longtail.info', 'support@longtail.info;sharan@longtail.info', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', 'ZEVubYjPJ4OJYUZSkggSSkaqK', '', 1, 'jx3PtXqKso', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a31373a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a333a22313030223b693a343b733a313a2235223b693a353b733a333a22333030223b693a363b733a333a22323030223b693a373b733a323a223235223b693a383b733a323a223234223b693a393b733a323a223233223b693a31303b733a323a223131223b693a31313b733a323a223137223b693a31323b733a323a223230223b693a31333b733a323a223238223b693a31343b733a323a223132223b693a31353b733a323a223133223b693a31363b733a323a223134223b7d),
(2, 'Longtail', '', '', '', 'support@longtail.info', 'support@longtail.info;sharan@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', 'ZEVubYjPJ4OJYUZSkggSSkaqK', '', 1, 'jx3PtXqKso', '', '', '2023-11-09 19:07:56', 1, 1, '2023-03-29', 0x613a31373a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a333a22313030223b693a343b733a313a2235223b693a353b733a333a22333030223b693a363b733a333a22323030223b693a373b733a323a223235223b693a383b733a323a223234223b693a393b733a323a223233223b693a31303b733a323a223131223b693a31313b733a323a223137223b693a31323b733a323a223230223b693a31333b733a323a223238223b693a31343b733a323a223132223b693a31353b733a323a223133223b693a31363b733a323a223134223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Senior Executive Assistant', 'Manager', 'Kathmandu, Nepal', 'senior-executive-assistant', '10', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-12-29', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Receptionist', 'Employer', 'Kathmandu, Nepal', 'receptionist', '10', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 2, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(11, 'Intern', 'Intern', 'Patan, Nepal', 'intern', '10', '<p>\r\n	Masters Completed</p>\r\n', '0000-00-00', '2023-10-30', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumb_image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
