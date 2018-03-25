-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2018 at 12:25 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `assigment`
--

CREATE TABLE `assigment` (
  `assigmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `assigmentID` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `file` mediumblob NOT NULL
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
  `tutorial` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `ID` int(11) NOT NULL,
  `session_ID` varchar(256) NOT NULL,
  `URL` varchar(512) NOT NULL,
  `IP` varchar(16) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`ID`, `session_ID`, `URL`, `IP`, `datestamp`) VALUES
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:23:34'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:23:34'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:23:47'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:23:52'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:25:38'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:26:59'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:28:14'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:29:58'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:30:17'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:32:57'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:33:59'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:34:01'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:34:23'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:35:16'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:21'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:22'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:23'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:30'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:31'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:31'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:31'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:52'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:36:54'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:37:13'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:37:14'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:37:15'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:37:37'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:37:56'),
(0, 'gdfjcaf2qove9qftl5et6kqt17', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:38:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-23 06:49:54'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:49:54'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:50:49'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:50:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:50:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:51:16'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:51:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:51:57'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 06:51:58'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:14:20'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:15:01'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:16:04'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:16:24'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:16:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:16:26'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:16:46'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:16:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:17:00'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:17:01'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:17:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:17:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:17:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:28'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:29'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:30'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:30'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:18:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:24:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:27:38'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:27:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:27:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:27:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:27:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:28:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:28:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:29:03'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-23 07:38:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:38:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:39:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:39:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:39:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:39:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:39:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:50:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:51:01'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:51:02'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:51:48'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:51:49'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:52:08'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:52:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:52:18'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:52:19'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:53:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:53:47'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:53:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:00'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:00'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:31'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:33'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:34'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:54:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:55:03'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:55:04'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 07:55:28'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-23 08:04:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:04:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:06:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:06:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:06:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:07:13'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:08:38'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-23 08:38:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:41:02'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:41:19'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:41:20'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:41:44'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:42:21'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:42:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-23 08:43:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:43:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-23 08:43:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-23 08:44:10'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:44:10'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 08:44:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:02:23'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:03:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:04:17'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:04'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:05'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:05'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:31'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-23 09:07:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:36:08'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:36:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:39:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:40:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:40:28'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:40:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:40:57'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:41:18'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/adminnav.php', 'localhost', '2018-03-23 10:42:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 07:37:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 07:39:30'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 07:40:05'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 07:40:05'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 07:42:18'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 07:42:49'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:03:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:05:12'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:09:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:09:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:10:08'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:10:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:10:43'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:11:12'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:22:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:22:10'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:22:58'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:23:47'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:23:47'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:24:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:24:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:24:55'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:25:42'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:25:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:25:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:26:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:26:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:26:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:26:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:27:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:27:10'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:27:34'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:27:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:27:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:27:56'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:28:15'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:28:15'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:36:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:36:12'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:36:13'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:38:08'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:08'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:10'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:11'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:11'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:13'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:38:16'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:20'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:38:32'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:38:32'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:38:34'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:38:55'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:38:55'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:38:58'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:39:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:39:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:40:03'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:40:03'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:40:05'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:40:12'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:40:12'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:40:14'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:41:38'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:41:39'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:41:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:41:42'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:41:42'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:41:57'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:41:57'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:42:11'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:42:11'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:42:14'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:43:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:43:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:43:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:44:00'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:44:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:44:09'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:44:12'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:46:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:46:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:46:54'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:46:58'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:46:58'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:47:15'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:47:16'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:47:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:47:28'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:47:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:47:35'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 10:47:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:47:41'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:47:43'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 10:47:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 10:47:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 10:47:53'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:08:49'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:02'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:03'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:06'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 11:09:14'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:14'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 11:09:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:09:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:09:47'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:12:52'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 11:12:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:12:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 11:13:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:13:07'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:13:10'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:16:46'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:16:50'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:16:51'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 11:16:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:16:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:17:17'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:17:17'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 11:17:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:17:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 11:17:38'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 11:17:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:17:45'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:17:47'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 11:17:57'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:17:57'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:18:00'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:18:04'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 11:18:18'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:18:18'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:18:32'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 11:26:13'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:26:18'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:26:19'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:26:19'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:26:19'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php', 'localhost', '2018-03-24 11:26:29'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update_process.php', 'localhost', '2018-03-24 11:26:31'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 11:26:36'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php', 'localhost', '2018-03-24 11:26:38'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:44:36'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:49:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:49:59'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/login_process.php', 'localhost', '2018-03-24 23:50:23'),
(0, '6hftvjhnrsp93ov9434l29totl', '/emailvalid/update.php?', 'localhost', '2018-03-24 23:50:23'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:50:25'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:55:54'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:56:22'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:57:11'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:57:31'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:57:31'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:57:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:57:40'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:57:47'),
(0, '6hftvjhnrsp93ov9434l29totl', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:57:47'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-24 23:58:08'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-24 23:58:08'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 00:15:57'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 04:25:37'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 04:25:37'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 05:56:09'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 05:56:22'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 05:56:22'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 07:43:15'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 07:43:15'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/update_process.php', 'localhost', '2018-03-25 07:43:28'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 07:44:21'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 07:44:53'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 07:44:53'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/update_process.php', 'localhost', '2018-03-25 07:45:03'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/update_process.php', 'localhost', '2018-03-25 07:45:42'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 07:45:45'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 07:45:56'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 07:46:16'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 07:46:16'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/update_process.php', 'localhost', '2018-03-25 07:46:24'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/update_process.php', 'localhost', '2018-03-25 07:47:14'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 09:23:53'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 09:24:06'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/loginprocess.php', 'localhost', '2018-03-25 09:51:27'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 09:51:27'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 09:51:27'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:15:46'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:16:14'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:16:37'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:16:50'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:17:10'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:17:36'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:22:06'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:22:26'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:22:27'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:22:28'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:23:39'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:24:08'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:24:09'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:25:05'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:25:06'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:28:09'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:28:22'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:28:43'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:29:05'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:29:46'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:29:56'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:30:01'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:31:12'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:31:13'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:31:13'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:31:14'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 10:42:14'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 11:05:01'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 11:05:01'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/modle/update_process.php', 'localhost', '2018-03-25 11:14:40'),
(0, 'c1vnmm49kndgbf99i0ofjolf74', '/learntoleran/view/about.php?', 'localhost', '2018-03-25 11:14:42');

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
(27, 'quin', 'hurt', '0000-00-00', 'qhurt1', 'qwerty', 2, 1);

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
  MODIFY `assigmentID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `ClassID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `collectbox`
--
ALTER TABLE `collectbox`
  MODIFY `collectboxid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
