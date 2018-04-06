-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 02:07 PM
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
  `assigmentID` int(11) NOT NULL,
  `ClassID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` int(11) NOT NULL,
  `className` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassID`, `className`) VALUES
(11, 'maths'),
(12, 'english');

-- --------------------------------------------------------

--
-- Table structure for table `collectbox`
--

CREATE TABLE `collectbox` (
  `collectboxid` int(11) NOT NULL,
  `text` mediumtext NOT NULL,
  `file` longblob NOT NULL,
  `assigmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `tutorial` varchar(45) DEFAULT NULL,
  `ClassID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`ID`, `session_ID`, `URL`, `IP`, `datestamp`) VALUES
(539, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-03-30 03:06:54'),
(540, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-02 08:04:34'),
(541, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-02 08:05:50'),
(542, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-03 07:31:40'),
(543, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 00:34:52'),
(544, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 00:36:45'),
(545, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 00:37:05'),
(546, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 00:39:01'),
(547, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 00:39:26'),
(548, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 00:41:09'),
(549, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 01:40:34'),
(550, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 01:43:20'),
(551, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 01:53:15'),
(552, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 02:20:31'),
(553, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 02:20:32'),
(554, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 09:56:26'),
(555, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 09:56:50'),
(556, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 09:56:51'),
(557, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:22:44'),
(558, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:23:36'),
(559, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:23:37'),
(560, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:23:48'),
(561, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:23:52'),
(562, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:24:40'),
(563, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:25:42'),
(564, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:25:43'),
(565, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:25:45'),
(566, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:25:50'),
(567, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:26:21'),
(568, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 10:32:44'),
(569, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/index.php', 'localhost', '2018-04-06 11:48:26'),
(570, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-04-06 11:48:35'),
(571, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 11:48:35'),
(572, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 11:50:36'),
(573, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 11:51:45'),
(574, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 11:51:45'),
(575, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 11:51:47'),
(576, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 11:52:51'),
(577, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 12:00:28'),
(578, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 12:01:53'),
(579, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 12:04:32'),
(580, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 12:04:35'),
(581, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php?', 'localhost', '2018-04-06 12:05:38'),
(582, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php', 'localhost', '2018-04-06 12:06:45'),
(583, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php', 'localhost', '2018-04-06 12:06:57'),
(584, '313jjtq75vh5u8od3j6gj4chtk', '/learntoleran/modle/send.php', 'localhost', '2018-04-06 12:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `username` varchar(255) NOT NULL,
  `pasword` varchar(255) NOT NULL,
  `userClassID` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `surname`, `DOB`, `username`, `pasword`, `userClassID`, `roll`, `active`) VALUES
(38, 'quin', 'hurt', '2018-04-10', 'qhurt1', 'qwerty', 11, 1, 1),
(44, 'bill', 'bc', '0000-00-00', 'bob', 'b', 12, 2, 1),
(45, 'bOb', 'bob', '0000-00-00', 'bob', 'bob', 11, 2, 1),
(46, 'fred', 'freddy', '0000-00-00', 'fred01', 'fredfredy', 11, 2, 1),
(50, 'w', 'w', '0000-00-00', 'w', 'w', 12, 2, 1),
(51, 'w', 'w', '0000-00-00', 'w', 'w', 12, 3, 1),
(52, 'g', 'g', '0000-00-00', 'g', 'g', 11, 3, 1),
(53, 'a', 'a', '0000-00-00', 'a', 'a', 12, 3, 1),
(54, 'z', 'z', '0000-00-00', 'z', 'z', 12, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigment`
--
ALTER TABLE `assigment`
  ADD PRIMARY KEY (`assigmentID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `collectbox`
--
ALTER TABLE `collectbox`
  ADD PRIMARY KEY (`collectboxid`),
  ADD KEY `assigmentID` (`assigmentID`);

--
-- Indexes for table `dropbox`
--
ALTER TABLE `dropbox`
  ADD PRIMARY KEY (`dropboxID`),
  ADD KEY `assigmentID` (`assigmentID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`gradeID`),
  ADD KEY `assigmentID` (`assigmentID`),
  ADD KEY `assigmentID_2` (`assigmentID`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`LessonID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `ClassID` (`userClassID`);

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
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigment`
--
ALTER TABLE `assigment`
  ADD CONSTRAINT `assigment_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `class` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collectbox`
--
ALTER TABLE `collectbox`
  ADD CONSTRAINT `collectbox_ibfk_1` FOREIGN KEY (`assigmentID`) REFERENCES `assigment` (`assigmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dropbox`
--
ALTER TABLE `dropbox`
  ADD CONSTRAINT `dropbox_ibfk_1` FOREIGN KEY (`assigmentID`) REFERENCES `assigment` (`assigmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`assigmentID`) REFERENCES `assigment` (`assigmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `class` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userClassID`) REFERENCES `class` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
