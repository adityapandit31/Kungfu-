-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2017 at 01:49 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kungfu`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `SID` int(100) NOT NULL,
  `levels` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`SID`, `levels`) VALUES
(24, 'Intermediate'),
(26, 'Beginner');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `SID` int(100) NOT NULL,
  `MF` varchar(100) NOT NULL,
  `TF` varchar(100) NOT NULL,
  `SF` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `date_fees` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`SID`, `MF`, `TF`, `SF`, `total`, `date_fees`) VALUES
(24, '100', '120', '150', '370', '2017-04-16'),
(26, '100', '20', '200', '320', '2017-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `PID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `mobnum` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `SID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`PID`, `Name`, `mobnum`, `email`, `SID`) VALUES
(8, 'nareshbhai', '121322', 'dfncdsj@dfeuf.com', 23),
(9, 'Anil', '12331231231', 'Anilpandit@gmail.com', 26);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `SID` int(100) NOT NULL,
  `Rank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`SID`, `Rank`) VALUES
(23, 'Black'),
(24, 'White'),
(26, 'White');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SID` int(100) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `DOJ` varchar(36) NOT NULL,
  `mobnum` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SID`, `Fname`, `Lname`, `DOB`, `DOJ`, `mobnum`, `emailid`, `Address`) VALUES
(23, 'aditya', 'pandit', '2017-04-21', '2017-04-11', '3069142921', 'pandit11@uwindsor.ca', 'unit 209, 3650 sandwich street'),
(24, 'harsh ', 'Patel', '2017-05-11', '2017-04-19', '12322323', 'sdsvsd@ddvnv.com', 'parginton '),
(25, 'aditya', 'pandit', '', '', '3069142921', 'pandit11@uwindsor.ca', 'unit 209, 3650 sandwich street'),
(26, 'Aditya', 'Pandit', '1993-01-31', '2017-04-24', '3069142921', 'adityapandit31@gmail.com', '3650 sandwich street ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD UNIQUE KEY `SID` (`SID`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD UNIQUE KEY `SID` (`SID`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`PID`) USING BTREE,
  ADD KEY `SID` (`SID`) USING BTREE;

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD UNIQUE KEY `SID` (`SID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`SID`),
  ADD UNIQUE KEY `SID` (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `PID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `SID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`);

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `student` (`SID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
