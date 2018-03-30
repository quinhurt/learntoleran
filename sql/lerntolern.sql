-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 03:30 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lerntolern`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `drop` ()  NO SQL
DELETE FROM `logs`
    WHERE datestamp < DATE_SUB(NOW(), INTERVAL 1 hour)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `assigment`
--

CREATE TABLE `assigment` (
  `assigmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigment`
--

INSERT INTO `assigment` (`assigmentID`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `lessonID` int(11) DEFAULT NULL,
  `assigmentID` int(11) DEFAULT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collectbox`
--

CREATE TABLE `collectbox` (
  `collectboxid` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `file` mediumblob NOT NULL,
  `assigmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collectbox`
--

INSERT INTO `collectbox` (`collectboxid`, `content`, `file`, `assigmentID`) VALUES
(3, 'hellow', 0x7175696e6c616e2068757274207465737420322e646f6378, 1),
(4, 'new', 0x74657374322e646f6378, 2);

-- --------------------------------------------------------

--
-- Table structure for table `dropbox`
--

CREATE TABLE `dropbox` (
  `dropboxID` int(11) NOT NULL,
  `comassigment` varchar(100) NOT NULL,
  `assigmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `gradeID` int(11) NOT NULL,
  `assigmentID` int(11) DEFAULT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `LessonID` int(11) NOT NULL,
  `lessonNAME` varchar(30) NOT NULL,
  `tutorial` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`LessonID`, `lessonNAME`, `tutorial`) VALUES
(1, 'lesson 1', 'this ia a new lesson');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginID` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginID`, `username`, `password`) VALUES
(4, 'admin', 'administrator'),
(27, 'reddy', 'fredy'),
(28, 'reddy', 'fredy'),
(29, 'teach', 'teach'),
(42, 'jess', 'password'),
(43, 'qhurt', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ID` int(10) UNSIGNED NOT NULL,
  `session_ID` varchar(256) NOT NULL,
  `URL` varchar(512) NOT NULL,
  `IP` varchar(16) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `DOB` date NOT NULL,
  `username` varchar(255) NOT NULL,
  `pasword` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `surname`, `DOB`, `username`, `pasword`, `roll`, `active`) VALUES
(1, 'quin', 'hurt', '0000-00-00', 'admin', 'pasword', 1, 1),
(25, 'bob', 'smith', '0000-00-00', 'bob', 'bob', 2, 1),
(26, 'fin', '', '0000-00-00', 'ted', 'ted', 2, 1),
(27, 'quin', 'hurt', '0000-00-00', 'qhurt1', 'qwerty', 2, 1),
(28, 'bill', 'lee', '0000-00-00', 'bill1', 'pop', 3, 1),
(29, 'ethan', 'houley', '0000-00-00', 'ethan2', 'ethan', 3, 1),
(34, 'fred', 'fred', '0000-00-00', 'fred', 'freddy', 3, 1),
(36, 'fill', 'clark', '0000-00-00', 'fill2', 'phillip', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigment`
--
ALTER TABLE `assigment`
  ADD PRIMARY KEY (`assigmentID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassID`),
  ADD UNIQUE KEY `grade` (`grade`),
  ADD KEY `lesson` (`lessonID`),
  ADD KEY `assigmentID` (`assigmentID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `collectbox`
--
ALTER TABLE `collectbox`
  ADD PRIMARY KEY (`collectboxid`),
  ADD KEY `collect` (`assigmentID`);

--
-- Indexes for table `dropbox`
--
ALTER TABLE `dropbox`
  ADD PRIMARY KEY (`dropboxID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeID`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`LessonID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigment`
--
ALTER TABLE `assigment`
  MODIFY `assigmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `collectbox`
--
ALTER TABLE `collectbox`
  MODIFY `collectboxid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`assigmentID`) REFERENCES `assigment` (`assigmentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`grade`) REFERENCES `grade` (`gradeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lesson` FOREIGN KEY (`lessonID`) REFERENCES `lesson` (`LessonID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collectbox`
--
ALTER TABLE `collectbox`
  ADD CONSTRAINT `collect` FOREIGN KEY (`assigmentID`) REFERENCES `assigment` (`assigmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dropbox`
--
ALTER TABLE `dropbox`
  ADD CONSTRAINT `drop` FOREIGN KEY (`dropboxID`) REFERENCES `assigment` (`assigmentID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
