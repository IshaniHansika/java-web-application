-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 15, 2023 at 05:51 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynewdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addemp`
--

DROP TABLE IF EXISTS `addemp`;
CREATE TABLE IF NOT EXISTS `addemp` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `empname` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `sallary` int(11) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addemp`
--

INSERT INTO `addemp` (`empid`, `empname`, `job`, `sallary`) VALUES
(2, 'Dinith', 'Repair', 12000),
(3, 'Malindu', 'Repair', 12000),
(4, 'bhanuka', 'Cashier', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

DROP TABLE IF EXISTS `allocation`;
CREATE TABLE IF NOT EXISTS `allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(50) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocation`
--

INSERT INTO `allocation` (`id`, `CustomerName`, `EmployeeName`, `price`) VALUES
(4, 'Theekshana', 'bhanuka', 14000),
(3, 'malindu', 'Dinith', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `home` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `CustomerName`, `type`, `address`, `contact`, `email`, `home`, `price`, `month`) VALUES
(2, 'malindu', 'social media advertisements campaigns', 'homagama', 1234, 'abc@gmail.com', 'homa', 12000, 4),
(3, 'dinith', 'social media advertisements campaigns', 'homagama', 1234, 'abc@gmail.com', 'homa', 12000, 4),
(4, 'Theekshana', 'Select the correct job', 'homagama', 123456, 'abc@gmail.com', 'homagama', 13000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `itemtable`
--

DROP TABLE IF EXISTS `itemtable`;
CREATE TABLE IF NOT EXISTS `itemtable` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(30) NOT NULL,
  `itemsize` int(11) NOT NULL,
  `itemprice` int(11) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemtable`
--

INSERT INTO `itemtable` (`itemid`, `itemname`, `itemsize`, `itemprice`) VALUES
(1, 'malindu', 23, 11);

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
CREATE TABLE IF NOT EXISTS `mobile` (
  `mobileid` int(11) NOT NULL AUTO_INCREMENT,
  `mobilename` varchar(50) NOT NULL,
  `mobilesize` int(11) NOT NULL,
  `mobileprice` int(11) NOT NULL,
  PRIMARY KEY (`mobileid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobileid`, `mobilename`, `mobilesize`, `mobileprice`) VALUES
(1, 'my', 80, 66);

-- --------------------------------------------------------

--
-- Table structure for table `notifi`
--

DROP TABLE IF EXISTS `notifi`;
CREATE TABLE IF NOT EXISTS `notifi` (
  `CustomerName` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `month` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifi`
--

INSERT INTO `notifi` (`CustomerName`, `type`, `contact`, `email`, `price`, `month`) VALUES
('malindu', 'social media advertisements campaigns', 1234, 'abc@gmail.com', 12000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `CustomerName` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`CustomerName`, `type`, `contact`, `email`, `price`, `month`) VALUES
('dinith', 'social media advertisements campaigns', 1234, 'abc@gmail.com', 12000, '4'),
('malindu', 'social media advertisements campaigns', 1234, 'abc@gmail.com', 12000, '4');

-- --------------------------------------------------------

--
-- Table structure for table `sup_table`
--

DROP TABLE IF EXISTS `sup_table`;
CREATE TABLE IF NOT EXISTS `sup_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sup_table`
--

INSERT INTO `sup_table` (`id`, `name`, `address`, `email`, `contact`) VALUES
(1, 'Malindu', 'abc@gmail.com', 'homagama', 1234512345);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
