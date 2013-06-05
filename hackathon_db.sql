-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 05, 2013 at 09:44 AM
-- Server version: 5.5.20-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hackathon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `nepal_telecom_data`
--

CREATE TABLE IF NOT EXISTS `nepal_telecom_data` (
  `year` int(4) DEFAULT NULL,
  `tele` int(6) DEFAULT NULL,
  `ndlc` int(7) DEFAULT NULL,
  `ncell` varchar(7) DEFAULT NULL,
  `utl` varchar(6) DEFAULT NULL,
  `smart` varchar(6) DEFAULT NULL,
  `nstpl` varchar(6) DEFAULT NULL,
  `internet` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nepal_telecom_data`
--

INSERT INTO `nepal_telecom_data` (`year`, `tele`, `ndlc`, `ncell`, `utl`, `smart`, `nstpl`, `internet`) VALUES
(2004, 386267, 103481, '0', '0', '0', '0', 150000),
(2005, 422456, 243579, '0', '0', '0', '0', 225000),
(2006, 470212, 299140, '86844', '  0', '0', '0', 240000),
(2007, 502615, 690369, '351450', '0', '0', '0', 249385),
(2008, 611742, 1601261, '1038701', '0', '0', '0', 356231),
(2009, 720870, 2512153, '1725959', '122878', '0', '0', 549830),
(2010, 819463, 4168830, '2218366', '259975', '0', '0', 730359),
(2011, 842230, 4691858, '5349641', '468581', '90329', '75023', 2267831),
(2012, 847724, 6596033, '7008777', '526195', '212630', '133922', 4047665),
(2013, 833370, 7952386, '9790860', '626612', '645571', '146758', 6494007);

-- --------------------------------------------------------

--
-- Table structure for table `saarc_internet_data`
--

CREATE TABLE IF NOT EXISTS `saarc_internet_data` (
  `country` int(4) DEFAULT NULL,
  `afghanistan` decimal(2,1) DEFAULT NULL,
  `bangladesh` decimal(2,1) DEFAULT NULL,
  `bhutan` decimal(3,1) DEFAULT NULL,
  `india` decimal(3,1) DEFAULT NULL,
  `maldives` decimal(3,1) DEFAULT NULL,
  `nepal` decimal(2,1) DEFAULT NULL,
  `pakistan` decimal(2,1) DEFAULT NULL,
  `sri_lanka` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saarc_internet_data`
--

INSERT INTO `saarc_internet_data` (`country`, `afghanistan`, `bangladesh`, `bhutan`, `india`, `maldives`, `nepal`, `pakistan`, `sri_lanka`) VALUES
(2001, '0.0', '0.1', '0.9', '0.7', '3.6', '0.2', '1.3', '0.8'),
(2002, '0.0', '0.1', '1.7', '1.5', '5.3', '0.3', '2.6', '1.1'),
(2003, '0.1', '0.2', '2.4', '1.7', '6.0', '0.4', '5.0', '1.5'),
(2004, '0.1', '0.2', '3.2', '2.0', '6.6', '0.4', '6.2', '1.4'),
(2005, '1.2', '0.2', '3.8', '2.4', '6.9', '0.8', '6.3', '1.8'),
(2006, '2.1', '1.0', '4.5', '2.8', '11.0', '1.1', '6.5', '2.5'),
(2007, '1.9', '1.8', '5.9', '4.0', '16.3', '1.4', '6.8', '3.9'),
(2008, '1.8', '2.5', '6.6', '4.4', '23.2', '1.7', '7.0', '5.8'),
(2009, '3.6', '3.1', '7.2', '5.1', '24.8', '2.0', '7.5', '8.8'),
(2010, '4.0', '3.7', '13.6', '7.5', '28.3', '7.9', '8.0', '12.0'),
(2011, '5.0', '5.0', '21.0', '10.1', '34.0', '9.0', '9.0', '15.0');

-- --------------------------------------------------------

--
-- Table structure for table `saarc_internet_penetration_data`
--

CREATE TABLE IF NOT EXISTS `saarc_internet_penetration_data` (
  `country` varchar(10) DEFAULT NULL,
  `population` varchar(10) DEFAULT NULL,
  `internet_users` varchar(9) DEFAULT NULL,
  `user_peneration` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saarc_internet_penetration_data`
--

INSERT INTO `saarc_internet_penetration_data` (`country`, `population`, `internet_users`, `user_peneration`) VALUES
('Afganistan', '30419928', '1520996', '0.84'),
('Bangladesh', '161083804', '8054190', '4.43'),
('Bhutan', '716896', '150548', '0.08'),
('India', '1205073612', '137000000', '75.3'),
('Maldives', '394451', '134860', '0.07'),
('Nepal', '29890686', '2690162', '1.48'),
('Pakistan', '190291129', '29128970', '16.0'),
('Sri Lanka', '21481334', '3222200', '1.77');

-- --------------------------------------------------------

--
-- Table structure for table `saarc_internet_pie_data`
--

CREATE TABLE IF NOT EXISTS `saarc_internet_pie_data` (
  `country` varchar(10) DEFAULT NULL,
  `percent` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saarc_internet_pie_data`
--

INSERT INTO `saarc_internet_pie_data` (`country`, `percent`) VALUES
('Afganistan', '4.32'),
('Bangladesh', '4.32'),
('Bhutan', '18.12'),
('India', '9.81'),
('Maldives', '29.51'),
('Nepal', '7.77'),
('Pakistan', '13.21'),
('Sri Lanka', '12.95');

-- --------------------------------------------------------

--
-- Table structure for table `saarc_mobile_subscription_data`
--

CREATE TABLE IF NOT EXISTS `saarc_mobile_subscription_data` (
  `country` int(4) DEFAULT NULL,
  `afganistan` int(2) DEFAULT NULL,
  `bangladesh` int(2) DEFAULT NULL,
  `bhutan` int(2) DEFAULT NULL,
  `india` int(2) DEFAULT NULL,
  `maldives` int(3) DEFAULT NULL,
  `nepal` int(2) DEFAULT NULL,
  `pakistan` int(2) DEFAULT NULL,
  `sri Lanka` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saarc_mobile_subscription_data`
--

INSERT INTO `saarc_mobile_subscription_data` (`country`, `afganistan`, `bangladesh`, `bhutan`, `india`, `maldives`, `nepal`, `pakistan`, `sri Lanka`) VALUES
(2001, 0, 0, 0, 1, 7, 0, 1, 4),
(2002, 0, 1, 0, 1, 15, 0, 1, 5),
(2003, 1, 1, 0, 3, 23, 0, 2, 7),
(2004, 2, 2, 3, 5, 39, 0, 3, 11),
(2005, 4, 6, 5, 8, 69, 1, 8, 17),
(2006, 9, 13, 12, 14, 91, 4, 21, 27),
(2007, 16, 24, 22, 20, 103, 12, 38, 39),
(2008, 26, 31, 36, 29, 142, 15, 53, 54),
(2009, 34, 35, 47, 43, 147, 19, 55, 79),
(2010, 41, 46, 54, 61, 156, 31, 57, 83),
(2011, 54, 56, 66, 72, 166, 44, 62, 87);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
