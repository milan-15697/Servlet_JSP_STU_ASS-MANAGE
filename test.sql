-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2018 at 03:36 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `name` varchar(15) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `mname` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `prog_lang` varchar(15) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`name`, `fname`, `mname`, `dob`, `email`, `prog_lang`, `ID`) VALUES
('Diksha S', 'Dev S', 'Tanu S', '06-07-96', 'abc@gmail.com', 'Python', 0),
('Yuvraj', 'Arun', 'Anju', '16-12-09', 'yuvi@gmail.com', 'JAVA', 10),
('nidhi', 'suresh', 'veena', '25-06-98', 'gupta@gmail.com', 'JAVA', 248),
('Sarbi', 'disods', 'nfnf', '28-08-1974', 'anju@gmail.com', 'JAVA', 392);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `name` varchar(10) NOT NULL,
  `pass` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`name`, `pass`) VALUES
('Akshay', 454),
('Diksha', 2018),
('Milan', 222),
('nidhi', 248),
('Paaji', 335),
('Paaji1', 392),
('Pankaj268', 268),
('rahul', 1611981292),
('Sarthak', 3390),
('Shubham', 365),
('Yuvi', 10);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `ID` int(5) NOT NULL,
  `name` varchar(10) NOT NULL,
  `marks` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`ID`, `name`, `marks`) VALUES
(0, 'Diksha', 10),
(10, 'Yuvraj', 8.33),
(222, 'Milan', 9.02),
(248, 'Nidhi', 9),
(268, 'Pankaj', 8.86),
(335, 'Paaji', 10),
(365, 'Shubham', 9.23),
(392, 'Paaji1', 8.55),
(454, 'Akshay', 7.56),
(1234, 'Ashok', 100),
(1611981292, 'rahul', 9.88);

-- --------------------------------------------------------

--
-- Table structure for table `pwd_recover`
--

CREATE TABLE `pwd_recover` (
  `pass` int(15) NOT NULL,
  `pet_name` varchar(15) NOT NULL,
  `veh_reg_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pwd_recover`
--

INSERT INTO `pwd_recover` (`pass`, `pet_name`, `veh_reg_no`) VALUES
(222, 'max', 694),
(339, 'sarbi', 9999);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `name` varchar(8) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`name`, `pass`, `role`) VALUES
('admin', '999', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pwd_recover`
--
ALTER TABLE `pwd_recover`
  ADD PRIMARY KEY (`pass`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
