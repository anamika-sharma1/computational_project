-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 05:59 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `computational_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `hashed_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `hashed_password`) VALUES
(1, 'admin', '$2y$10$xnoH7zsd19xfOvrKDnpPl.iPt7Q/S1YpdmbOtOOIOLCCBtKxI11LC');

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `id` varchar(7) DEFAULT NULL,
  `battery_model` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `battery_model`, `quantity`) VALUES
('MCL', 39, 64),
('CL-1', 39, 32),
('ECE', 39, 32),
('SOR', 40, 3),
('CL-1', 41, 15),
('SR', 42, 16);

-- --------------------------------------------------------

--
-- Table structure for table `computational_items`
--

CREATE TABLE `computational_items` (
  `id` int(11) NOT NULL,
  `reg_page_no` varchar(8) DEFAULT NULL,
  `item_type` varchar(23) DEFAULT NULL,
  `Model` varchar(41) DEFAULT NULL,
  `date_of_purchase` date DEFAULT NULL,
  `quantity_received` int(11) NOT NULL DEFAULT 0,
  `rate` varchar(8) DEFAULT NULL,
  `amount` varchar(8) DEFAULT NULL,
  `balance_instock` int(11) NOT NULL DEFAULT 0,
  `quantity_issued` int(11) NOT NULL DEFAULT 0,
  `writeoff` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `computational_items`
--

INSERT INTO `computational_items` (`id`, `reg_page_no`, `item_type`, `Model`, `date_of_purchase`, `quantity_received`, `rate`, `amount`, `balance_instock`, `quantity_issued`, `writeoff`) VALUES
(1, '104-7', 'printer', 'HP Laserjet 1108P', '2012-05-15', 4, '5585', '23457', 2, 2, 0),
(2, '104-8', 'printer', 'CANON MFP Printer 4450', '2012-05-28', 1, '14250', '14963', 0, 1, 0),
(3, '104-8', 'printer', 'CANON MFP Printer 3010', '2015-03-31', 2, '10190', '20,380', 0, 2, 0),
(4, '104-28', 'laptop', 'HP 440 G3', '2016-03-23', 8, '58300', '466,400', 0, 8, 0),
(5, '104-32', 'printer', 'HP Laserjet Printer 128-FN', '2016-11-21', 1, '17100', '17,955', 0, 1, 0),
(6, '104-36', 'ups', '1 K.V.A Offline UPS', '2017-03-23', 17, '5425', '99,603', 0, 17, 0),
(7, '104-45', 'printer', 'Canon LBP 6230dn', '2018-01-11', 1, '9989', '9989', 0, 1, 0),
(8, '104-45', 'printer', 'HP MFP Deskjet GT 5810', '2018-01-11', 1, '11,190', '11,190', 0, 1, 0),
(9, '104-50', 'laptop', 'Dell Latitude 3480', '2018-04-09', 7, '62400', '436800', 0, 7, 0),
(10, '104-56', 'printer', 'Brother DCP-B7500D ', '2021-07-28', 33, '13717', '452661', 1, 32, 0),
(11, '104-62', 'graphic_tablet', 'Star G960', '2021-08-18', 43, '3047.46', '154628', 2, 41, 0),
(12, '104-73', 'printer', 'Brother DCP-B7500D ', '2022-06-09', 13, '13900', '180700', 1, 12, 0),
(13, '71-4', 'computer', 'HP Compaq dx2280', '2010-06-25', 33, '18000', '594000', 14, 18, 1),
(14, '71-30', 'computer', 'HP Compaq dx2480', '2012-09-10', 2, '7000', '14000', 1, 1, 0),
(15, '71-80', 'computer', 'HP Compaq Desktop d330', '2010-08-16', 13, '', '', 4, 9, 0),
(16, '71', 'printer', 'HP LaserJet P1007', '2009-02-10', 5, '4900', '24600', 3, 2, 0),
(17, '71', 'printer', 'HP LaserJet P1007', '2010-04-12', 6, '', '32850', 2, 4, 0),
(18, '71', 'printer', 'HP LaserJet P1007', '2011-02-23', 6, '5710', '35973', 2, 4, 0),
(19, '71', 'printer', 'HP LaserJet P1007', '2011-04-15', 5, '5710', '29978', 1, 4, 0),
(20, '71', 'printer', 'HP LaserJet P1007', '2012-01-23', 2, '5710', '11991', 0, 2, 0),
(21, '71', 'computer', 'HP Compaq 6200P', '2012-05-15', 7, '34000', '249900', 6, 1, 0),
(22, '71', 'computer', 'HP Desktop 6120', '2012-05-15', 6, '', '', 3, 2, 1),
(23, '104-32', 'printer', 'HP LaserJet 1108P', '2016-09-07', 2, '7150', '15015', 2, 0, 0),
(24, '104-26', 'printer', 'Canon LBP 6230dn', '2016-03-15', 4, '8232', '32928', 0, 4, 0),
(25, '104-22', 'notice_board', 'Display Board (4\'x3\'x4\')', '2016-06-26', 1, '6000', '6750', 1, 0, 0),
(26, '104-25', 'patch_cod', 'Patch Cod (1m)', '2015-12-31', 100, '138', '14500', 0, 100, 0),
(27, '104-19', 'computer', 'HP Computer - intel core i7', '2015-03-31', 21, '51401', '1079421', 0, 21, 0),
(28, '104-19', 'computer', 'HP intel core i7', '2016-03-16', 25, '51401', '1285025', 0, 25, 0),
(29, '104 - 48', 'projector_accessories', 'Projector Screen 4x6', '2018-03-26', 7, '3815', '26705', 0, 7, 0),
(30, '104 - 48', 'projector_accessories', 'Projector Screen 6x8', '2018-03-26', 2, '5508', '11016', 0, 2, 0),
(31, '104 - 48', 'projector_accessories', 'Ceiling Mounting Kit', '2018-03-26', 9, '2050', '18450', 9, 0, 0),
(32, '104 - 48', 'projector_accessories', 'VGA Cable', '2018-03-26', 135, '75', '10125', 135, 0, 0),
(33, '104 - 48', 'projector_accessories', 'HDMI Cable', '2018-03-26', 135, '120', '16200', 135, 0, 0),
(34, '104 - 48', 'projector_accessories', 'Power Cable', '2018-03-26', 135, '35', '4725', 135, 0, 0),
(35, '104 - 48', 'projector_accessories', 'Batton', '2018-03-26', 180, '15', '2700', 180, 0, 0),
(36, '104 - 48', 'projector_accessories', 'Projector Security Cage', '2018-03-26', 9, '1750', '24750', 0, 9, 0),
(37, '71-80', 'optical_mouse', 'Microsoft 3-Button Optical Scroll Mouse', '2012-12-05', 1, '350', '350', 0, 1, 0),
(38, '104-15', 'optical_mouse', 'HP Optical Mouse', '2014-10-14', 35, '319.05', '11725.35', 0, 35, 0),
(39, '104-2', 'battery', '12V 7Ah CS make Exide Chloride', '2012-03-20', 160, '530', '84800', 0, 160, 0),
(40, '104-3', 'battery', '12V 26Ah SMF Battery Make Exide Powersafe', '2012-03-20', 3, '1775', '5325', 0, 3, 0),
(41, '104-4', 'battery', '12v 42Ah SMF Battery Make Exide Powersafe', '2012-03-20', 15, '2950', '44250', 0, 15, 0),
(42, '104-4', 'battery', '42AH Make Okaya', '2012-09-28', 16, '3350', '60300', 0, 16, 0),
(43, '104-13', 'extension_board', 'Extension Board', '2013-03-28', 20, '300', '6000', 2, 18, 0),
(44, '104-40', 'ups', 'Delta 2 K.V.A. Online UPS', '2017-04-21', 5, '49722', '248610', 2, 3, 0),
(45, '104-27', 'digital_podium', 'Digital Podium with TFT Screen', '2016-06-23', 1, '1,46,418', '1,64,721', 0, 1, 0),
(46, '104-40', 'ups', 'Delta 5 K.V.A. Online UPS', '2017-04-21', 21, '95110', '1997310', 0, 21, 0),
(47, '104-5', 'laptop', 'HP 430', '2012-04-20', 1, '33700', '35385', 0, 1, 0),
(48, '104-20', 'computer', 'HP Desptop 2480', '2015-03-31', 1, '7000', '7000', 1, 0, 0),
(49, '104-24', 'pendrive', 'HP Steel 16 GB', '2015-08-15', 3, '650', '2047', 0, 3, 0),
(50, '104-43', 'gpu', 'CPU Intel core i7', '2018-02-16', 1, '24,300', '24,300', 0, 1, 0),
(51, '104-43', 'gpu', 'Motherboard Assock', '2018-08-16', 1, '4650', '4650', 0, 1, 0),
(52, '104-43', 'gpu', 'HDD 2TB Seegate', '2018-02-16', 1, '2850', '2850', 0, 1, 0),
(53, '104-43', 'gpu', 'Deep cool cabinate', '2018-02-16', 1, '2750', '2750', 0, 1, 0),
(54, '104-43', 'gpu', 'Cooler Master Smps', '2018-02-16', 1, '3300', '3300', 0, 1, 0),
(55, '104-43', 'gpu', '8GB DDR 4', '2018-02-16', 1, '4850', '4850', 0, 1, 0),
(56, '104-43', 'gpu', 'PCI Express ', '2018-02-16', 1, '70089.83', '70089.83', 0, 1, 0),
(57, '104-43', 'gpu', 'WinPro 1064', '2018-02-16', 1, '13500', '13500', 0, 1, 0),
(58, '71-44', 'laptop', 'HP nx 9010', '2010-07-09', 3, '', '', 3, 0, 0),
(59, '104-46', 'projector', 'Multimedia Projector 3500 Lumens', '2018-02-28', 9, '32500', '292500', 0, 9, 0),
(60, '71-33', 'laptop', 'HP Compaq 6530b', '2011-10-25', 5, '', '', 5, 0, 0),
(61, '71-50', 'laptop', 'Wipro WLG 9110', '2010-07-27', 4, '', '', 4, 0, 0),
(62, '71-2', 'laptop', 'HP 8570P', '2010-06-25', 1, '73000', '73000', 1, 0, 0),
(63, '71-2', 'laptop', 'HP Probook 4411S', '2010-08-25', 1, '66996', '70346', 1, 0, 0),
(64, '104-70', 'networking_item', 'Logitech Webcam', '2021-08-04', 1, '10923', '12889', 0, 1, 0),
(65, '104-70', 'networking_item', 'Speaker Wireless', '2021-08-04', 1, '4152', '4900', 0, 1, 0),
(66, '104-12', 'network_switch', 'D-Link DGS-1024D 24 port network switch', '2013-05-01', 4, '8200', '34440', 4, 0, 0),
(67, '104-10', 'patch_cod', 'Fiber Patch Cod', '2013-02-05', 1, '1225', '1286', 0, 1, 0),
(68, '104-10', 'network_switch', '24 Port Network Switch ', '2013-01-21', 1, '18,900', '19,845', 0, 1, 0),
(69, '104-17', 'wifi_access_point', 'Cisco Buisness Wireless', '2015-01-03', 2, '8500', '17000', 0, 2, 0),
(70, '104-10', 'network_switch', '24 Port Network Switch ', '2013-03-19', 2, '18,900', '36,690', 2, 0, 0),
(71, '104-16', 'keyboard', 'Keyboard HP Make', '2010-10-14', 5, '404.76', '2,125', 0, 5, 0),
(72, '104-70', 'networking_item', 'USB Extender 3 mtr', '2021-08-04', 1, '381', '449', 1, 0, 0),
(73, '104-71', 'networking_item', 'Crimping Tool DLink', '2021-08-04', 1, '1000', '1050', 1, 0, 0),
(74, '104-72', 'networking_item', 'Lan Tester', '2021-08-04', 1, '974', '1140', 1, 0, 0),
(75, '104-72', 'networking_item', 'Screw Driver Kit', '2021-08-04', 1, '966', '1140', 1, 0, 0),
(76, '104-72', 'networking_item', 'Wire Cutter', '2021-08-04', 1, '474', '559', 1, 0, 0),
(77, '104-72', 'networking_item', 'Wired Speaker', '2021-08-04', 1, '1686', '1990', 1, 0, 0),
(78, '104-73', 'networking_item', 'BAG', '2021-08-04', 1, '1059', '1250', 1, 0, 0),
(79, '104-73', 'networking_item', 'Presenter', '2021-08-04', 1, '4194', '4944', 1, 0, 0),
(80, '104-73', 'networking_item', 'Wifi Dongle', '2021-08-04', 1, '2499', '2499', 1, 0, 0),
(81, '71-4', 'ups', 'Supra 1 K.V.A. Online UPS', '2010-06-25', 14, '26698', '373772', 6, 8, 0),
(82, '71-4', 'pendrive', 'Kingston 4 GB ', '2010-06-25', 1, '690', '690', 0, 1, 0),
(83, '104-20', 'projector_mounting_kit', 'Ceiling Kit with security Case', '2015-03-31', 2, '6650', '13300', 0, 2, 0),
(84, '104-20', 'projector_mounting_kit', 'VGA Cable', '2015-03-31', 2, '975', '1950', 0, 2, 0),
(85, '104-20', 'projector_mounting_kit', 'PVC Button', '2015-03-31', 2, '15', '30', 0, 2, 0),
(86, '104-20', 'projector_mounting_kit', 'Power Cable', '2015-03-31', 2, '375', '750', 0, 2, 0),
(87, '71-2', 'printer', 'HP LaserJet2600N', '2010-06-25', 2, '19848', '59544', 0, 0, 2),
(88, '71-4', 'printer', 'HP LaserJet 1160', '2010-06-25', 5, '9877', '39508', 1, 2, 2),
(89, '71-8', 'printer', 'HP LaserJet 1320', '2010-10-04', 2, '22561', '45122', 0, 1, 1),
(90, '71-156', 'computer', 'HP 6200p Desktop', '0000-00-00', 1, '', '', 0, 1, 0),
(91, '104-20', 'projector_mounting_kit', 'Projector Screen 6*8', '2015-10-05', 4, '6500', '26000', 1, 3, 0),
(92, '104-20', 'projector_mounting_kit', 'Projector Screen 5*7 with tripod', '2015-10-05', 1, '5950', '5950', 1, 0, 0),
(93, '104-20', 'projector_mounting_kit', 'Ceiling Kit with security Case', '2015-10-05', 2, '6650', '13300', 0, 2, 0),
(94, '71-24', 'printer', 'HP LaserJet 1000', '2010-06-30', 2, '12064', '24128', 1, 0, 1),
(95, '71-26', 'printer', 'HP LaserJet 1022', '2010-06-30', 1, '', '', 1, 0, 0),
(96, '71-40', 'printer', 'HP LaserJet 1015', '2010-08-09', 2, '', '', 1, 1, 0),
(97, '104-14', 'power_adapter', '48V 0.4amp', '2014-03-21', 10, '1200', '12600', 0, 10, 0),
(98, '104-23', 'external_hard_disk', 'HDD 1TB', '2015-08-25', 1, '4620', '4851', 1, 0, 0),
(99, '104-9', 'wireless_keyboard_mouse', 'wireless keyboard & mouse', '2012-03-15', 1, '', '', 1, 0, 0),
(100, '104-11', 'battery', 'Battery for laptop HP 4410 Pro', '2013-03-20', 1, '2350', '2350', 1, 0, 0),
(101, '104-11', 'notice_board', 'White board', '2014-02-01', 1, '3725', '3725', 0, 1, 0),
(102, '104-21', 'networking_item', 'RJ45 connector', '2015-03-31', 118, '5.24', '618.32', 118, 0, 0),
(103, '104-21', 'networking_item', 'UTP cable', '2015-03-31', 1, '1850', '1850', 1, 0, 0),
(104, '104-35', 'digital_podium', 'Visualizer GVP-401', '2012-03-24', 5, '41225', '231841', 1, 4, 0),
(105, '', 'ups', '10 K.V.A Online Supra', '2008-12-06', 1, '118246', '118246', 0, 0, 1),
(106, '', 'ups', '5 K.V.A Online Supra', '2008-06-08', 1, '63812', '63812', 0, 0, 1),
(107, '', 'ups', '1 K.V.A Online', '2005-12-21', 3, '26698', '53396', 0, 0, 3),
(108, '', 'printer', 'DeskJet HP 3325', '2003-02-23', 7, '2850', '19950', 0, 0, 7),
(109, '', 'printer', 'LaserJet HP 2200dn', '2003-03-09', 2, '58607', '117214', 0, 0, 2),
(110, '', 'printer', 'Dot Matrix', '2007-01-16', 3, '8125', '16250', 0, 0, 3),
(111, '71-6', 'extension_board', '4 point extension', '2010-07-26', 1, '', '', 0, 1, 0),
(112, '71-26', 'networking_item', '2.1 Speaker (creative)', '2010-06-30', 1, '1150', '1150', 0, 1, 0),
(113, '71-116', 'printer', 'HP LaserJet Pro CP1525n Color', '2012-10-10', 1, '21500', '21500', 0, 1, 0),
(114, '71-138', 'computer', 'Desktop Lenovo ThinkCentre', '2010-05-08', 1, '40945', '40945', 0, 1, 0),
(115, '71-154', 'networking_item', '2.1 Speaker (intex)', '2012-01-02', 1, '', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `computer`
--

CREATE TABLE `computer` (
  `id` varchar(6) DEFAULT NULL,
  `computer_model` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`id`, `computer_model`, `quantity`) VALUES
('CIV-06', 13, 1),
('ECE-06', 15, 1),
('19', 13, 1),
('20', 13, 1),
('21', 14, 1),
('22', 13, 1),
('14', 13, 1),
('ECE-09', 15, 1),
('23', 13, 1),
('24', 13, 1),
('34', 15, 1),
('CSE-13', 15, 1),
('89', 15, 1),
('27', 15, 1),
('91', 13, 1),
('AS-05', 13, 1),
('59', 114, 1),
('MECH', 22, 1),
('10', 13, 1),
('55', 13, 1),
('56', 13, 1),
('57', 13, 1),
('58', 13, 1),
('AS-02', 15, 1),
('61', 13, 1),
('62', 13, 1),
('65', 15, 1),
('68', 13, 1),
('AS', 90, 1),
('84', 22, 1),
('COMM', 15, 1),
('5', 21, 1),
('CL-5', 28, 25),
('CSE', 27, 21),
('CC', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` varchar(7) DEFAULT NULL,
  `dept_type` varchar(11) DEFAULT NULL,
  `dept_name` varchar(13) DEFAULT NULL,
  `designation` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_type`, `dept_name`, `designation`) VALUES
('AS-01', 'teaching', 'AppSci', 'Professor and HOD'),
('AS-02', 'teaching', 'AppSci', 'Assistant Professor'),
('AS-03', 'teaching', 'AppSci', 'Assistant Professor'),
('AS-04', 'teaching', 'AppSci', 'Assistant Professor'),
('CIV-01', 'teaching', 'CE', 'Professor and HOD'),
('CIV-02', 'teaching', 'CE', 'Associate Professor'),
('CIV-03', 'teaching', 'CE', 'Assistant Professor'),
('CIV-04', 'teaching', 'CE', 'Assistant Professor'),
('CIV-05', 'teaching', 'CE', 'Assistant Professor'),
('CIV-06', 'teaching', 'CE', 'Assistant Professor'),
('CIV-07', 'teaching', 'CE', 'Assistant Professor'),
('CSE-01', 'teaching', 'CSE', 'Principal'),
('CSE-02', 'teaching', 'CSE', 'Professor and HOD'),
('CSE-03', 'teaching', 'CSE', 'Professor'),
('CSE-04', 'teaching', 'CSE', 'Professor'),
('CSE-05', 'teaching', 'CSE', 'Professor'),
('CSE-06', 'teaching', 'CSE', 'Assistant Professor'),
('CSE-07', 'teaching', 'CSE', 'Assistant Professor'),
('CSE-08', 'teaching', 'CSE', 'Assistant Professor'),
('CSE-09', 'teaching', 'CSE', 'Assistant Professor'),
('CSE-10', 'teaching', 'CSE', 'Assistant Professor'),
('CSE-11', 'teaching', 'CSE', 'Assistant Professor'),
('CSE-12', 'teaching', 'CSE', 'Assistant Professor'),
('ECE-01', 'teaching', 'ECE', 'Professor and HOD'),
('ECE-02', 'teaching', 'ECE', 'Professor'),
('ECE-03', 'teaching', 'ECE', 'Professor'),
('ECE-04', 'teaching', 'ECE', 'Professor'),
('ECE-05', 'teaching', 'ECE', 'Assistant Professor'),
('ECE-06', 'teaching', 'ECE', 'Assistant Professor'),
('ECE-07', 'teaching', 'ECE', 'Assistant Professor'),
('ECE-08', 'teaching', 'ECE', 'Assistant Professor'),
('ECE-09', 'teaching', 'ECE', 'Assistant Professor'),
('ECE-10', 'teaching', 'ECE', 'Assistant Professor'),
('ECE-11', 'teaching', 'ECE', 'Assistant Professor'),
('MECH-01', 'teaching', 'ME', 'Professor and HOD'),
('MECH-02', 'teaching', 'ME', 'Assistant Professor'),
('MECH-03', 'teaching', 'ME', 'Assistant Professor'),
('MECH-04', 'teaching', 'ME', 'Assistant Professor'),
('MECH-05', 'teaching', 'ME', 'Assistant Professor'),
('MECH-06', 'teaching', 'ME', 'Assistant Professor'),
('MECH-07', 'teaching', 'ME', 'Assistant Professor'),
('MECH-08', 'teaching', 'ME', 'Assistant Professor'),
('1', 'nonteaching', 'Establishment', 'SPA'),
('2', 'nonteaching', 'Establishment', 'TPO'),
('3', 'nonteaching', 'Establishment', 'Bill Clerk'),
('4', 'nonteaching', 'AC&FA', 'PA'),
('5', 'nonteaching', 'Establishment', 'Clerk(SW)'),
('6', 'nonteaching', 'Establishment', 'Stenotypist'),
('7', 'nonteaching', 'Academics', 'Clerk'),
('8', 'nonteaching', 'Academics', 'Clerk'),
('9', 'nonteaching', 'AC&FA', NULL),
('10', 'nonteaching', 'Accounts', 'Dealing Officer'),
('11', 'nonteaching', 'Admin Branch', 'Clerk'),
('12', 'nonteaching', 'Admin Branch', 'Clerk'),
('13', 'nonteaching', 'Admin Branch', 'Store Keeper'),
('14', 'nonteaching', 'AC(F&A)', 'Consultant'),
('15', 'nonteaching', 'PPL', 'Steno'),
('16', 'nonteaching', 'Academics', 'Clerk'),
('17', 'nonteaching', 'Admin Branch', 'Clerk'),
('18', 'nonteaching', 'Library', 'Librarian'),
('19', 'nonteaching', NULL, 'Section Officer'),
('20', 'nonteaching', 'T.P.O', NULL),
('21', 'nonteaching', 'AC(F&A)', NULL),
('22', 'nonteaching', NULL, NULL),
('23', 'nonteaching', NULL, 'Superintendent'),
('24', 'nonteaching', NULL, 'Senior Assistant'),
('25', 'nonteaching', NULL, 'Clerk'),
('26', 'nonteaching', 'EECE', 'HOD'),
('27', 'nonteaching', NULL, 'Lecturer'),
('28', 'nonteaching', NULL, NULL),
('29', 'nonteaching', NULL, 'Lecturer'),
('31', 'nonteaching', 'AC(F&A)', 'Resigned'),
('32', 'nonteaching', 'AC(F&A)', 'Retired'),
('33', 'nonteaching', NULL, 'Senior Assistant'),
('34', 'nonteaching', NULL, NULL),
('35', 'nonteaching', NULL, 'Steno'),
('36', 'nonteaching', NULL, 'Clerk'),
('37', 'nonteaching', NULL, 'Receptionist'),
('38', 'nonteaching', NULL, 'Clerk'),
('39', 'nonteaching', NULL, NULL),
('41', 'nonteaching', NULL, 'Clerk'),
('42', 'nonteaching', NULL, NULL),
('43', 'nonteaching', NULL, 'Lecturer'),
('44', 'nonteaching', NULL, 'Lecturer'),
('45', 'nonteaching', NULL, 'Lecturer'),
('46', 'nonteaching', 'Admin Branch', 'Cashier'),
('47', 'nonteaching', NULL, 'Lecturer'),
('48', 'nonteaching', NULL, 'Lecturer'),
('49', 'nonteaching', NULL, 'Lecturer'),
('50', 'nonteaching', NULL, 'Lecturer'),
('51', 'nonteaching', NULL, 'Programmer'),
('52', 'nonteaching', NULL, 'Lecturer'),
('53', 'nonteaching', NULL, NULL),
('54', 'nonteaching', NULL, 'Lecturer'),
('55', 'nonteaching', NULL, 'Lab Technician'),
('56', 'nonteaching', NULL, 'Lab Assistant'),
('57', 'nonteaching', NULL, 'Lab Assistant'),
('58', 'nonteaching', NULL, NULL),
('59', 'nonteaching', NULL, 'Lab Technician'),
('60', 'nonteaching', NULL, NULL),
('61', 'nonteaching', NULL, 'Lecturer'),
('62', 'nonteaching', NULL, NULL),
('63', 'nonteaching', NULL, NULL),
('64', 'nonteaching', NULL, 'Lecturer'),
('65', 'nonteaching', NULL, NULL),
('66', 'nonteaching', NULL, 'Lecturer'),
('67', 'nonteaching', NULL, 'Lecturer'),
('68', 'nonteaching', NULL, 'A.P'),
('69', 'nonteaching', NULL, 'Lecturer'),
('70', 'nonteaching', NULL, 'Programmer'),
('CSE-14', 'teaching', 'CSE', 'Assistant Professor'),
('71', 'nonteaching', NULL, 'Programmer'),
('72', 'nonteaching', 'CSE', 'AP'),
('73', 'nonteaching', NULL, 'Lecturer'),
('74', 'nonteaching', NULL, 'Lecturer'),
('75', 'nonteaching', NULL, 'Lecturer'),
('76', 'nonteaching', NULL, 'Programmer'),
('77', 'nonteaching', NULL, 'Lab Technician'),
('78', 'nonteaching', NULL, 'Clerk'),
('79', 'nonteaching', 'Workshop', 'Consultant'),
('80', 'nonteaching', NULL, NULL),
('81', 'nonteaching', NULL, 'Lecturer'),
('82', 'nonteaching', NULL, 'Lecturer'),
('83', 'nonteaching', 'Academic Cell', 'Clerk'),
('84', 'nonteaching', 'AppSci', 'Computational Incharge'),
('85', 'nonteaching', NULL, NULL),
('86', 'nonteaching', NULL, NULL),
('87', 'nonteaching', NULL, NULL),
('88', 'nonteaching', NULL, 'Lecturer'),
('89', 'nonteaching', 'EECE', 'Assistant Professor'),
('90', 'nonteaching', NULL, 'Lecturer'),
('CSE-13', 'teaching', 'CSE', 'Assistant Professor'),
('91', 'nonteaching', NULL, 'Lab Technician'),
('92', 'nonteaching', 'EECE', 'Lecturer'),
('93', 'nonteaching', NULL, 'Lecturer'),
('30', 'nonteaching', '', 'Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `digital_podium`
--

CREATE TABLE `digital_podium` (
  `id` varchar(4) DEFAULT NULL,
  `digital_podium_model` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `digital_podium`
--

INSERT INTO `digital_podium` (`id`, `digital_podium_model`, `quantity`) VALUES
('CL-7', 27, 1),
('MECH', 104, 1),
('ECE', 104, 1),
('CIV', 104, 1),
('CSE', 104, 1);

-- --------------------------------------------------------

--
-- Table structure for table `extension_board`
--

CREATE TABLE `extension_board` (
  `id` varchar(7) DEFAULT NULL,
  `extension_board_model` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extension_board`
--

INSERT INTO `extension_board` (`id`, `extension_board_model`, `quantity`) VALUES
('2', 43, 1),
('70', 43, 1),
('CSE-07', 43, 1),
('71', 43, 1),
('72', 43, 1),
('CSE-11', 43, 1),
('76', 43, 1),
('77', 43, 1),
('CC', 43, 2),
('LL', 43, 1),
('SR', 43, 1),
('CSE-02', 43, 1),
('78', 43, 1),
('3', 43, 1),
('BH', 43, 2),
('GH1', 43, 1),
('19', 111, 1);

-- --------------------------------------------------------

--
-- Table structure for table `external_hard_disk`
--

CREATE TABLE `external_hard_disk` (
  `id` varchar(10) DEFAULT NULL,
  `external_hard_disk_model` varchar(10) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` varchar(7) DEFAULT NULL,
  `name` varchar(26) DEFAULT NULL,
  `contact_number` bigint(10) DEFAULT NULL,
  `email_id` varchar(24) DEFAULT NULL,
  `room_number` varchar(31) DEFAULT NULL,
  `resigned` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `contact_number`, `email_id`, `room_number`, `resigned`) VALUES
('AS-01', 'Dr. Varun Gupta', 9646047091, 'varungupta@ccet.ac.in', 'A-109', 0),
('AS-02', 'Dr. Parul Aggarwal', 8437911722, 'parul@ccet.ac.in', 'A-115', 0),
('AS-03', 'Dr. Manveen Kaur', 9988957007, 'manveenkaur@ccet.ac.in', 'A-Ground Floor', 0),
('AS-04', 'Ms. Neha', 9646614209, 'neha@ccet.ac.in', 'A-Chemistry Lab', 0),
('CIV-01', 'Dr. Rajesh Kumar', 9478548248, 'rajeshaastha@ccet.ac.in', 'B-305', 0),
('CIV-02', 'Dr. Aradhana Mehta', 8054977561, 'amehta@ccet.ac.in', NULL, 0),
('CIV-03', 'Mohammad Sakib Perwez Khan', 7839452836, 'sakib786@ccet.ac.in', 'B-418', 0),
('CIV-04', 'Poonam', 8968399719, 'poonam@ccet.ac.in', 'B-318', 0),
('CIV-05', 'Anil Kumar', 9816290720, 'anilkumar@ccet.ac.in', 'B-326', 0),
('CIV-06', 'Karuna Sharma', 8283833589, 'karunasharma@ccet.ac.in', 'B-204', 0),
('CIV-07', 'Arfat Ahmed', 8860736206, 'arfat@ccet.ac.in', 'B-Block', 0),
('CSE-01', 'Dr. Manpreet Singh Gujral', 1722750943, 'principal@ccet.ac.in', 'A-Principal Office(First Floor)', 0),
('CSE-02', 'Dr. Sunil K. Singh', 9818182457, 'sksingh@ccet.ac.in', 'A-415', 0),
('CSE-03', 'Dr. R.B. Patel', 9416932840, 'rbpatel@ccet.ac.in', 'A-404', 0),
('CSE-04', 'Dr. Varun Gupta', 9646047091, 'varungupta@ccet.ac.in', 'A-109', 0),
('CSE-05', 'Dr. Dheerendra Singh', 9876439071, 'dsingh@ccet.ac.in', 'A-414', 0),
('CSE-06', 'Dr. Gulshan Goyal', 9417506206, 'gulshangoyal@ccet.ac.in', 'A-425', 0),
('CSE-07', 'Dr. Sunita Prashar', 9041059379, 'sunita@ccet.ac.in', 'A-424', 0),
('CSE-08', 'Dr. Amit Chhabra', 9888623825, 'amitchhabra@ccet.ac.in', 'A-421', 0),
('CSE-09', 'Dr. Ankit Gupta', 9412314479, 'ankit@ccet.ac.in', 'A-423', 0),
('CSE-10', 'Dr. Sarabjeet Singh', 9463739413, 'ssingh@ccet.ac.in', 'A-426', 0),
('CSE-11', 'Er. Sudhakar Kumar', 8434518635, 'sudhakar@ccet.ac.in', 'A-416', 0),
('CSE-12', 'Er. Animesh Singh', 9584035345, 'animeshsingh@ccet.ac.in', 'A-422', 0),
('ECE-01', 'Dr. Davinder Singh Saini', 8146730369, 'dssaini@ccet.ac.in', 'A-315', 0),
('ECE-02', 'Dr. Krishna Gopal Sharma', 9414403565, 'kgsharma@ccet.ac.in', 'H.No.-783', 0),
('ECE-03', 'Dr. Bhasker Gupta', 9855908643, 'bgupta@ccet.ac.in', '#B298', 0),
('ECE-04', 'Dr. Anil Kumar', 9416234853, 'anilrose@ccet.ac.in', 'A-314', 0),
('ECE-05', 'Dr. Parvinder Kaur', 8295688911, 'pkaur@ccet.ac.in', 'A-322', 0),
('ECE-06', 'Dr. Shilpa Jindal', 9463328881, 'shilpajindal@ccet.ac.in', 'A-324', 0),
('ECE-07', 'Dr. Dinesh Sharma', 9671721850, 'dsharma@ccet.ac.in', 'A-323', 0),
('ECE-08', 'Dr. Irfan Ahmad Khan', 7835847022, 'iakhan@ccet.ac.in', 'A-325', 0),
('ECE-09', 'Dr. Sarita Sharma', 9988292611, 's_saritasharma@yahoo.com', '#C25 BEL OFFICERS COLONY SEC-14', 0),
('ECE-10', 'Hardeep Saini', 9914611106, 'hsaini@ccet.ac.in', 'A-321', 0),
('ECE-11', 'Dr. Anil Kumar Vaghmare', 6284561607, 'anilvaghmare@ccet.ac.in', 'A-303', 0),
('MECH-01', 'Dr. Jatinder Madan', 9041291970, 'jatindermadan@ccet.ac.in', 'B-308', 0),
('MECH-02', 'Dr. Vettivel S C', 9865822376, 'scvettivel@ccet.ac.in', 'B-310', 0),
('MECH-03', 'Dr. Radhey Sham', 9888040982, 'radheysham@ccet.ac.in', 'B-325', 0),
('MECH-04', 'Dr. Ashwani Kumar', 9872823250, 'ashwanikumar@ccet.ac.in', 'B-301 (CAD Lab-1)', 0),
('MECH-05', 'Er. Vinod Chauhan', 9466736896, 'vinodchauhan@ccet.ac.in', 'B-314', 0),
('MECH-06', 'Dr. Mukesh Kumar', 9478420561, 'mukeshkumar@ccet.ac.in', 'B-417', 0),
('MECH-07', 'Mr. Rajiv Kumar', 9877887402, 'rajivkumar@ccet.ac.in', 'B-317', 0),
('MECH-08', 'Nipun Sharma', 9877726260, 'nipun@ccet.ac.in', 'B-Block', 0),
('1', 'Sh. Gurjinder Singh', NULL, NULL, NULL, 0),
('2', 'Mr. Puneet Garg', NULL, NULL, NULL, 0),
('3', 'Ms. Garima', NULL, NULL, NULL, 0),
('4', 'Ms. Monika', NULL, NULL, NULL, 0),
('5', 'Sh. Davinder Kumar', NULL, NULL, NULL, 0),
('6', 'Ms. Lalita Sharma', NULL, NULL, NULL, 0),
('7', 'Sh. Manish Kumar', NULL, NULL, NULL, 0),
('8', 'Sh. Ashish Kumar', NULL, NULL, NULL, 0),
('9', 'Sh. Sunil Dutt Sharma', NULL, NULL, NULL, 0),
('10', 'Sh. Mange Ram', NULL, NULL, NULL, 0),
('11', 'Mr. Parmesh', NULL, NULL, NULL, 0),
('12', 'Mr. Sandeep', NULL, NULL, NULL, 0),
('13', 'Mr. Harinder Kumar', NULL, NULL, NULL, 0),
('14', 'Sh. Rajkumar', NULL, NULL, NULL, 0),
('15', 'Mr. Nar Singh', NULL, NULL, NULL, 0),
('16', 'Mr. Sudhir Kumar', NULL, NULL, NULL, 0),
('17', 'Mr. Lakhwinder Singh', NULL, NULL, NULL, 0),
('18', 'Dr. Shalini Wasen', NULL, NULL, NULL, 0),
('19', 'Sh. Mahinder Singh', NULL, NULL, NULL, 0),
('20', 'Mr. R.K. Kapoor', NULL, NULL, NULL, 0),
('21', 'Ms. Neelam Khanna', NULL, NULL, NULL, 0),
('22', 'Ms. Sugandha Sharma', NULL, NULL, NULL, 0),
('23', 'Sh. Bidhi Chand', NULL, NULL, NULL, 0),
('24', 'Sh. Riwalsar Nath', NULL, NULL, NULL, 0),
('25', 'Sh. Paramjeet Singh', NULL, NULL, NULL, 0),
('26', 'Ms. Sarita Sharma', NULL, NULL, NULL, 0),
('27', 'Ms. Shivani Goyal', NULL, NULL, NULL, 0),
('28', 'Sh. Rajesh Sharma', NULL, NULL, NULL, 0),
('29', 'Sh. Vikramjit Pawar', NULL, NULL, NULL, 0),
('31', 'Sh. Sudhir Prashar', NULL, NULL, NULL, 1),
('32', 'Sh. V.K. Bali', NULL, NULL, NULL, 1),
('33', 'S. Baldev Singh', NULL, NULL, NULL, 1),
('34', 'Sh. Parmjeet Singh', NULL, NULL, NULL, 0),
('35', 'Mr. Diwakar', NULL, NULL, NULL, 0),
('36', 'Mr. Amandeep', NULL, NULL, NULL, 0),
('37', 'Ms. Diptee Katoch', NULL, NULL, NULL, 1),
('38', 'Ms. Prema Kumari', NULL, NULL, NULL, 1),
('39', 'Ms. Monika Thukral', NULL, NULL, NULL, 0),
('41', 'Mr. Mahesh Kataria', NULL, NULL, NULL, 0),
('42', 'Ms. Jaspreet Kaur', NULL, NULL, NULL, NULL),
('43', 'Ms. Pooja Singla', NULL, NULL, NULL, 1),
('44', 'Mr. Ashish Kalia', NULL, NULL, NULL, NULL),
('45', 'Ms. Madhavi Arora', NULL, NULL, NULL, NULL),
('46', 'Mr. Maven Singh', NULL, NULL, NULL, NULL),
('47', 'Mr. Paramjeet Rana', NULL, NULL, NULL, NULL),
('48', 'Mr. Surinder Singh Khurana', NULL, NULL, NULL, 1),
('49', 'Ms. Navdeep Kaur', NULL, NULL, NULL, 1),
('50', 'Mr. Amit Nayer', NULL, NULL, NULL, 1),
('51', 'Mr. Balram Sooder', NULL, NULL, NULL, 1),
('52', 'Ms. Kshipra Kapoor', NULL, NULL, NULL, 1),
('53', 'Ms. Bhawna Rani', NULL, NULL, NULL, 1),
('54', 'Ms. Aarti', NULL, NULL, NULL, 1),
('55', 'Ms. Vandana Sharma', NULL, NULL, NULL, NULL),
('56', 'Ms. Romika', NULL, NULL, NULL, NULL),
('57', 'Mr. Sumit Rana', NULL, NULL, NULL, NULL),
('58', 'Ms. Rupa Poddar', NULL, NULL, NULL, 1),
('59', 'Mr. Rahul Sharma', NULL, NULL, NULL, NULL),
('60', 'Mr. Guljit Singh', NULL, NULL, NULL, NULL),
('61', 'Ms. Sushma', NULL, NULL, NULL, NULL),
('62', 'Ms. Karuna Sharma', NULL, NULL, NULL, NULL),
('63', 'Ms. Poonam Verma', NULL, NULL, NULL, NULL),
('64', 'Sh. Vinod Rohilla', NULL, NULL, NULL, 0),
('65', 'Sh. Pamkaj Rana', NULL, NULL, NULL, NULL),
('66', 'Sh. Nipun Sharma', NULL, NULL, NULL, NULL),
('67', 'Sh. Rajiv Kumar', NULL, NULL, NULL, NULL),
('68', 'Sh. Gagandeep Singh', NULL, NULL, NULL, 1),
('69', 'Sh. Pankaj Rana', NULL, NULL, NULL, NULL),
('70', 'Mr. Mayank Arora', NULL, NULL, NULL, NULL),
('CSE-14', 'Ms. Sheetal Dabra', NULL, NULL, NULL, 1),
('72', 'Ms. Seema Bansal', NULL, NULL, NULL, 1),
('73', 'Ms. Neetu Sharma', NULL, NULL, NULL, NULL),
('74', 'Ms. Jagmeet Kaur', NULL, NULL, NULL, NULL),
('75', 'Ms. Bikramjeet Kaur', NULL, NULL, NULL, NULL),
('76', 'Ms. Shaveta Garg', NULL, NULL, NULL, NULL),
('77', 'Mr. Harmeet Singh', NULL, NULL, NULL, NULL),
('78', 'Ms. Geetika', NULL, NULL, NULL, 0),
('79', 'Sh. M.L. Kundan', NULL, NULL, NULL, NULL),
('80', 'Sh. Devendra Kumar', NULL, NULL, NULL, NULL),
('81', 'Sh. Naveen Sharma', NULL, NULL, NULL, NULL),
('82', 'Ms. Prakriti Ranjan', NULL, NULL, NULL, NULL),
('83', 'Mr. Vivek', NULL, NULL, NULL, NULL),
('84', 'Ms. Astha', NULL, NULL, NULL, NULL),
('85', 'Ms. Shalini', NULL, NULL, NULL, NULL),
('86', 'Shaveta Goyal', NULL, NULL, NULL, NULL),
('87', 'PA to PPL', NULL, NULL, NULL, NULL),
('88', 'Ms. Jayshree Shelka', NULL, NULL, NULL, 1),
('89', 'Ms. Karman HP Singh', NULL, NULL, NULL, 1),
('90', 'Mr. Ashish Sachdeva', NULL, NULL, NULL, 1),
('CSE-13', 'Mr. Usvir Kaur', NULL, NULL, NULL, 1),
('71', 'Mr. Atul Tiwari', NULL, NULL, NULL, 1),
('91', 'Mr. Ashok Kumar', NULL, NULL, NULL, NULL),
('92', 'Ms. Itinder Kaur', NULL, NULL, NULL, NULL),
('93', 'Sh. Abhishek Chauhan', NULL, NULL, NULL, 1),
('30', 'Neha Rani', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `id` varchar(3) DEFAULT NULL,
  `gpu_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`id`, `gpu_model`, `quantity`) VALUES
('CSE', 50, 1),
('CSE', 51, 1),
('CSE', 52, 1),
('CSE', 53, 1),
('CSE', 54, 1),
('CSE', 55, 1),
('CSE', 56, 1),
('CSE', 57, 1);

-- --------------------------------------------------------

--
-- Table structure for table `graphic_tablet`
--

CREATE TABLE `graphic_tablet` (
  `id` varchar(7) DEFAULT NULL,
  `graphic_tablet_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `graphic_tablet`
--

INSERT INTO `graphic_tablet` (`id`, `graphic_tablet_model`, `quantity`) VALUES
('AS-02', 11, 1),
('AS-03', 11, 1),
('AS-04', 11, 1),
('CIV-01', 11, 1),
('CIV-02', 11, 1),
('CIV-03', 11, 1),
('CIV-04', 11, 1),
('CIV-05', 11, 1),
('CIV-06', 11, 1),
('CIV-07', 11, 1),
('CSE-02', 11, 1),
('CSE-03', 11, 1),
('CSE-04', 11, 1),
('CSE-05', 11, 1),
('CSE-06', 11, 1),
('CSE-07', 11, 1),
('CSE-08', 11, 1),
('CSE-09', 11, 1),
('CSE-10', 11, 1),
('CSE-11', 11, 1),
('CSE-12', 11, 1),
('ECE-01', 11, 1),
('ECE-02', 11, 1),
('ECE-03', 11, 1),
('ECE-04', 11, 1),
('ECE-05', 11, 1),
('ECE-06', 11, 1),
('ECE-07', 11, 1),
('ECE-08', 11, 1),
('ECE-10', 11, 1),
('ECE-11', 11, 1),
('MECH-01', 11, 1),
('MECH-02', 11, 1),
('MECH-03', 11, 1),
('MECH-04', 11, 1),
('MECH-05', 11, 1),
('MECH-06', 11, 1),
('MECH-07', 11, 1),
('MECH-08', 11, 1),
('87', 11, 1),
('ECE-09', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `keyboard`
--

CREATE TABLE `keyboard` (
  `id` varchar(2) DEFAULT NULL,
  `keyboard_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keyboard`
--

INSERT INTO `keyboard` (`id`, `keyboard_model`, `quantity`) VALUES
('CC', 71, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `lab_no` varchar(6) DEFAULT NULL,
  `room_no` varchar(41) DEFAULT NULL,
  `ups` int(11) DEFAULT 0,
  `patch_cod` int(11) DEFAULT 0,
  `battery` int(11) DEFAULT 0,
  `computer` int(11) DEFAULT 0,
  `digital_podium` int(11) DEFAULT 0,
  `extension_board` int(11) DEFAULT 0,
  `gpu` int(11) DEFAULT 0,
  `graphic_tablet` int(11) DEFAULT 0,
  `printer` int(11) DEFAULT 0,
  `laptop` int(11) DEFAULT 0,
  `networking_item` int(11) DEFAULT 0,
  `network_switch` int(11) DEFAULT 0,
  `notice_board` int(11) DEFAULT 0,
  `optical_mouse` int(11) DEFAULT 0,
  `pendrive` int(11) DEFAULT 0,
  `projector` int(11) DEFAULT 0,
  `wifi_access_point` int(11) DEFAULT 0,
  `power_adapter` int(11) DEFAULT 0,
  `projector_accessories` int(11) DEFAULT 0,
  `keyboard` int(11) DEFAULT 0,
  `projector_mounting_kit` int(11) DEFAULT 0,
  `external_hard_disk` int(11) DEFAULT 0,
  `wireless_keyboard_mouse` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`lab_no`, `room_no`, `ups`, `patch_cod`, `battery`, `computer`, `digital_podium`, `extension_board`, `gpu`, `graphic_tablet`, `printer`, `laptop`, `networking_item`, `network_switch`, `notice_board`, `optical_mouse`, `pendrive`, `projector`, `wifi_access_point`, `power_adapter`, `projector_accessories`, `keyboard`, `projector_mounting_kit`, `external_hard_disk`, `wireless_keyboard_mouse`) VALUES
('CL-1', NULL, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CL-2', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CL-3', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CL-4', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CL-5', '407', 2, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('CL-6', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CL-7', '215', 2, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0),
('CL-8', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CL-9', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CC', '409', 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0),
('ACFA', 'AC(F&A) room', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH', 'Mech Department Stock Register', 2, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE', 'CSE Department Stock Register', 1, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0),
('MUL', 'Multimedia stock', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE', 'ECE Department Stock Register', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0),
('BH', 'Boys Hostel', 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
('AS', 'Applied Science Department Stock Register', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0),
('LL', 'Linux Lab', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('SR', 'Server Room', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
('GH1', 'Girls Hostel 1', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
('MCL', 'Mech Cad Lab', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('SOR', 'Section Officer Room 217', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('SPA', 'SPA system', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('LH-7', 'Lecture Hall 7', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0),
('LH-8', 'Lecture Hall 8', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
('CIV', 'Civil Department Stock Register', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('COMM', 'Communication Skill Lab', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` varchar(7) DEFAULT NULL,
  `laptop_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `laptop_model`, `quantity`) VALUES
('AS-01', 9, 1),
('CIV-01', 4, 1),
('CIV-02', 9, 1),
('CSE-01', 4, 1),
('CSE-02', 4, 1),
('CSE-03', 4, 1),
('CSE-05', 9, 1),
('CSE-06', 4, 1),
('CSE-08', 4, 1),
('ECE-01', 4, 1),
('ECE-02', 9, 1),
('ECE-03', 9, 1),
('ECE-04', 9, 1),
('MECH-01', 4, 1),
('10', 9, 1),
('MUL', 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `networking_item`
--

CREATE TABLE `networking_item` (
  `id` varchar(5) DEFAULT NULL,
  `networking_item_model` int(3) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `networking_item`
--

INSERT INTO `networking_item` (`id`, `networking_item_model`, `quantity`) VALUES
('87', 64, 1),
('87', 65, 1),
('39', 112, 1),
('AS-02', 115, 1);

-- --------------------------------------------------------

--
-- Table structure for table `network_switch`
--

CREATE TABLE `network_switch` (
  `id` varchar(3) DEFAULT NULL,
  `network_switch_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `network_switch`
--

INSERT INTO `network_switch` (`id`, `network_switch_model`, `quantity`) VALUES
('GH1', 68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` varchar(2) DEFAULT NULL,
  `notice_board_model` int(3) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice_board`
--

INSERT INTO `notice_board` (`id`, `notice_board_model`, `quantity`) VALUES
('LL', 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `no_items_assigned`
--

CREATE TABLE `no_items_assigned` (
  `id` varchar(7) NOT NULL,
  `laptop` int(11) DEFAULT 0,
  `computer` int(11) DEFAULT 0,
  `printer` int(11) DEFAULT 0,
  `ups` int(11) DEFAULT 0,
  `graphic_tablet` int(11) DEFAULT 0,
  `external_hard_disk` int(11) DEFAULT 0,
  `pendrive` int(11) DEFAULT 0,
  `projector_accessories` int(11) DEFAULT 0,
  `wireless_keyboard_mouse` int(11) DEFAULT 0,
  `patch_cod` int(11) DEFAULT 0,
  `battery` int(11) DEFAULT 0,
  `digital_podium` int(11) DEFAULT 0,
  `extension_board` int(11) DEFAULT 0,
  `networking_item` int(11) DEFAULT 0,
  `network_switch` int(11) DEFAULT 0,
  `notice_board` int(11) DEFAULT 0,
  `optical_mouse` int(11) DEFAULT 0,
  `projector` int(11) DEFAULT 0,
  `wifi_access_point` int(11) DEFAULT 0,
  `power_adapter` int(11) DEFAULT 0,
  `keyboard` int(11) DEFAULT 0,
  `projector_mounting_kit` int(11) DEFAULT 0,
  `gpu` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `no_items_assigned`
--

INSERT INTO `no_items_assigned` (`id`, `laptop`, `computer`, `printer`, `ups`, `graphic_tablet`, `external_hard_disk`, `pendrive`, `projector_accessories`, `wireless_keyboard_mouse`, `patch_cod`, `battery`, `digital_podium`, `extension_board`, `networking_item`, `network_switch`, `notice_board`, `optical_mouse`, `projector`, `wifi_access_point`, `power_adapter`, `keyboard`, `projector_mounting_kit`, `gpu`) VALUES
('1', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('10', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('11', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('12', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('13', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('14', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('15', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('16', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('17', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('18', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('19', 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('20', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('21', 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('22', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('23', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('24', 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('25', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('26', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('27', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('28', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('3', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('30', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('31', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('32', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('33', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('34', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('35', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('36', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('37', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('39', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('4', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('41', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('42', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('43', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('44', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('45', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('46', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('47', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('49', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('5', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('50', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('51', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('52', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('53', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('54', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('55', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('56', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('57', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('58', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('59', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('6', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('60', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('61', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('62', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('63', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('64', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('65', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('66', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('67', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('68', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('69', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('7', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('70', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('71', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('72', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('73', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('74', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('75', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('76', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('77', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('78', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('79', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('8', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('80', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('81', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('82', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('83', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('84', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('85', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('86', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('87', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('88', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('89', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('9', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('90', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('91', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('92', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('93', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('AS-01', 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('AS-02', 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('AS-03', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('AS-04', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-01', 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-02', 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-03', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-04', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-05', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-06', 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CIV-07', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-01', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-02', 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-03', 1, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-04', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-05', 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-06', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-07', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-08', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-09', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-10', 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-11', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-12', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-13', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('CSE-14', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-01', 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-02', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-03', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-04', 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-05', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-06', 0, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
('ECE-07', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-08', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-09', 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-10', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ECE-11', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-01', 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-02', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-03', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-04', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-05', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-06', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-07', 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('MECH-08', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `optical_mouse`
--

CREATE TABLE `optical_mouse` (
  `id` varchar(6) DEFAULT NULL,
  `optical_mouse_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `optical_mouse`
--

INSERT INTO `optical_mouse` (`id`, `optical_mouse_model`, `quantity`) VALUES
('ECE-06', 37, 1),
('CC', 38, 35);

-- --------------------------------------------------------

--
-- Table structure for table `patch_cod`
--

CREATE TABLE `patch_cod` (
  `id` varchar(4) DEFAULT NULL,
  `patch_cod_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patch_cod`
--

INSERT INTO `patch_cod` (`id`, `patch_cod_model`, `quantity`) VALUES
('CC', 26, 34),
('CL-5', 26, 33),
('CL-7', 26, 33),
('BH', 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendrive`
--

CREATE TABLE `pendrive` (
  `id` varchar(6) DEFAULT NULL,
  `pendrive_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pendrive`
--

INSERT INTO `pendrive` (`id`, `pendrive_model`, `quantity`) VALUES
('CSE-02', 49, 1),
('CSE-05', 49, 1),
('AS-01', 49, 1),
('31', 82, 1);

-- --------------------------------------------------------

--
-- Table structure for table `power_adapter`
--

CREATE TABLE `power_adapter` (
  `id` varchar(3) DEFAULT NULL,
  `power_adapter_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `power_adapter`
--

INSERT INTO `power_adapter` (`id`, `power_adapter_model`, `quantity`) VALUES
('GH1', 97, 5),
('SR', 97, 5);

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `id` varchar(7) DEFAULT NULL,
  `printer_model` int(3) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`id`, `printer_model`, `quantity`) VALUES
('AS-01', 12, 1),
('AS-02', 12, 1),
('AS-03', 12, 1),
('AS-04', 12, 1),
('CIV-02', 10, 1),
('CIV-04', 10, 1),
('CIV-07', 10, 1),
('CSE-02', 3, 1),
('CSE-03', 3, 1),
('CSE-03', 10, 1),
('CSE-05', 8, 1),
('CSE-06', 10, 1),
('CSE-07', 10, 1),
('CSE-08', 12, 1),
('CSE-09', 10, 1),
('CSE-10', 7, 1),
('CSE-10', 12, 1),
('CSE-11', 10, 1),
('CSE-12', 10, 1),
('ECE-01', 5, 1),
('ECE-02', 12, 1),
('ECE-03', 12, 1),
('ECE-04', 12, 1),
('ECE-05', 10, 1),
('ECE-06', 10, 1),
('ECE-07', 10, 1),
('ECE-08', 10, 1),
('ECE-09', 10, 1),
('ECE-10', 10, 1),
('ECE-11', 10, 1),
('MECH-01', 12, 1),
('MECH-02', 10, 1),
('MECH-03', 10, 1),
('MECH-04', 10, 1),
('MECH-05', 10, 1),
('MECH-06', 10, 1),
('MECH-07', 12, 1),
('1', 10, 1),
('2', 10, 1),
('3', 10, 1),
('5', 10, 1),
('6', 10, 1),
('7', 10, 1),
('8', 10, 1),
('9', 10, 1),
('11', 12, 1),
('14', 1, 1),
('AS', 1, 1),
('19', 10, 1),
('4', 10, 1),
('19', 16, 1),
('24', 18, 1),
('25', 17, 1),
('23', 20, 1),
('27', 18, 1),
('26', 17, 1),
('69', 113, 1),
('1', 20, 1),
('MECH', 19, 1),
('10', 18, 1),
('CL-3', 17, 1),
('CL-6', 24, 1),
('CL-7', 24, 1),
('CL-8', 24, 1),
('CL-5', 24, 1),
('ACFA', 2, 1),
('18', 10, 1),
('CL-4', 89, 1),
('83', 88, 1),
('6', 17, 1),
('CSE-01', 19, 1),
('61', 18, 1),
('22', 19, 1),
('20', 19, 1),
('91', 96, 1),
('ECE-06', 96, 1),
('MECH', 88, 1),
('30', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projector`
--

CREATE TABLE `projector` (
  `id` varchar(3) DEFAULT NULL,
  `projector_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projector`
--

INSERT INTO `projector` (`id`, `projector_model`, `quantity`) VALUES
('AS', 59, 2),
('ECE', 59, 4),
('CSE', 59, 3);

-- --------------------------------------------------------

--
-- Table structure for table `projector_accessories`
--

CREATE TABLE `projector_accessories` (
  `id` varchar(3) DEFAULT NULL,
  `projector_accessories_model` int(2) DEFAULT NULL,
  `quantity` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projector_accessories`
--

INSERT INTO `projector_accessories` (`id`, `projector_accessories_model`, `quantity`) VALUES
('ECE', 36, 4),
('AS', 36, 2),
('CSE', 36, 3),
('AS', 30, 2),
('ECE', 29, 4),
('CSE', 29, 3);

-- --------------------------------------------------------

--
-- Table structure for table `projector_mounting_kit`
--

CREATE TABLE `projector_mounting_kit` (
  `id` varchar(4) NOT NULL,
  `projector_mounting_kit_model` int(2) NOT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projector_mounting_kit`
--

INSERT INTO `projector_mounting_kit` (`id`, `projector_mounting_kit_model`, `quantity`) VALUES
('CL-7', 83, 1),
('CL-7', 84, 1),
('CL-7', 85, 1),
('CL-7', 86, 1),
('LH-7', 83, 1),
('LH-7', 84, 1),
('LH-7', 85, 1),
('LH-7', 86, 1),
('CL-5', 91, 1),
('LH-7', 91, 1),
('LH-8', 91, 1),
('CL-5', 93, 1),
('LH-8', 93, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ups`
--

CREATE TABLE `ups` (
  `id` varchar(7) NOT NULL,
  `ups_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ups`
--

INSERT INTO `ups` (`id`, `ups_model`, `quantity`) VALUES
('11', 6, 1),
('12', 6, 1),
('46', 6, 1),
('4', 6, 1),
('13', 6, 1),
('15', 6, 1),
('16', 6, 1),
('MECH-01', 6, 1),
('CIV-01', 6, 1),
('CSE-02', 6, 1),
('AS-01', 6, 1),
('ECE-01', 6, 1),
('CSE-03', 6, 1),
('17', 6, 1),
('3', 6, 1),
('CL-5', 6, 1),
('MECH', 44, 2),
('CL-7', 44, 1),
('ECE', 46, 8),
('MECH', 46, 5),
('CL-5', 46, 1),
('CL-8', 46, 1),
('CL-7', 46, 1),
('CL-6', 46, 1),
('CSE', 46, 4),
('32', 81, 1),
('24', 81, 1),
('39', 81, 1),
('21', 81, 1),
('26', 81, 1),
('CIV-02', 81, 1),
('18', 81, 1),
('SPA', 6, 1),
('28', 81, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wifi_access_point`
--

CREATE TABLE `wifi_access_point` (
  `id` varchar(2) DEFAULT NULL,
  `wifi_access_point_model` int(2) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wifi_access_point`
--

INSERT INTO `wifi_access_point` (`id`, `wifi_access_point_model`, `quantity`) VALUES
('BH', 69, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wireless_keyboard_mouse`
--

CREATE TABLE `wireless_keyboard_mouse` (
  `id` varchar(7) NOT NULL,
  `wireless_keyboard_mouse_model` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `computational_items`
--
ALTER TABLE `computational_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `no_items_assigned`
--
ALTER TABLE `no_items_assigned`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
