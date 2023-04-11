-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 08:27 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbenrolment`
--

-- --------------------------------------------------------

--
-- Table structure for table `ay`
--

CREATE TABLE `ay` (
  `AY_ID` int(11) NOT NULL,
  `ACADYR` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ay`
--

INSERT INTO `ay` (`AY_ID`, `ACADYR`) VALUES
(4, '2012-2013'),
(1, '2013-2014'),
(2, '2014-2015'),
(3, '2015-2016'),
(5, '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `INST_ID` int(11) NOT NULL,
  `SYID` int(30) NOT NULL,
  `PRE` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `FIN` int(11) NOT NULL,
  `FIN_AVE` int(11) NOT NULL,
  `REMARKS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GRADE_ID`, `IDNO`, `SUBJ_ID`, `INST_ID`, `SYID`, `PRE`, `MID`, `FIN`, `FIN_AVE`, `REMARKS`) VALUES
(1, 20004277, 11, 0, 1, 0, 0, 0, 0, ''),
(2, 20004277, 12, 0, 1, 0, 0, 0, 0, ''),
(3, 20004277, 13, 0, 1, 0, 0, 0, 0, ''),
(4, 20004277, 15, 0, 1, 0, 0, 0, 0, ''),
(5, 20004277, 437, 0, 1, 0, 0, 0, 0, ''),
(6, 20004207, 11, 0, 2, 0, 0, 0, 0, ''),
(7, 20004207, 12, 0, 2, 0, 0, 0, 0, ''),
(8, 20004207, 13, 0, 2, 0, 0, 0, 0, ''),
(9, 20004207, 15, 0, 2, 0, 0, 0, 0, ''),
(10, 20004207, 437, 0, 2, 0, 0, 0, 0, ''),
(11, 20004180, 11, 0, 3, 0, 0, 0, 0, ''),
(12, 20004180, 12, 0, 3, 0, 0, 0, 0, ''),
(13, 20004180, 13, 0, 3, 0, 0, 0, 0, ''),
(14, 20004180, 15, 0, 3, 0, 0, 0, 0, ''),
(15, 20004180, 437, 0, 3, 0, 0, 0, 0, ''),
(16, 20002251, 11, 0, 4, 0, 0, 0, 0, ''),
(17, 20002251, 12, 0, 4, 0, 0, 0, 0, ''),
(18, 20002251, 13, 0, 4, 0, 0, 0, 0, ''),
(19, 20002251, 15, 0, 4, 0, 0, 0, 0, ''),
(20, 20002251, 437, 0, 4, 0, 0, 0, 0, ''),
(21, 20004407, 11, 0, 5, 0, 0, 0, 0, ''),
(22, 20004407, 12, 0, 5, 0, 0, 0, 0, ''),
(23, 20004407, 13, 0, 5, 0, 0, 0, 0, ''),
(24, 20004407, 15, 0, 5, 0, 0, 0, 0, ''),
(25, 20004407, 437, 0, 5, 0, 0, 0, 0, ''),
(26, 20004749, 11, 0, 6, 0, 0, 0, 0, ''),
(27, 20004749, 12, 0, 6, 0, 0, 0, 0, ''),
(28, 20004749, 13, 0, 6, 0, 0, 0, 0, ''),
(29, 20004749, 15, 0, 6, 0, 0, 0, 0, ''),
(30, 20004749, 437, 0, 6, 0, 0, 0, 0, ''),
(31, 20002838, 11, 0, 8, 0, 0, 0, 0, ''),
(32, 20002838, 12, 0, 8, 0, 0, 0, 0, ''),
(33, 20002838, 13, 0, 8, 0, 0, 0, 0, ''),
(34, 20002838, 15, 0, 8, 0, 0, 0, 0, ''),
(35, 20002838, 437, 0, 8, 0, 0, 0, 0, ''),
(36, 20001057, 11, 0, 9, 0, 0, 0, 0, ''),
(37, 20001057, 12, 0, 9, 0, 0, 0, 0, ''),
(38, 20001057, 13, 0, 9, 0, 0, 0, 0, ''),
(39, 20001057, 15, 0, 9, 0, 0, 0, 0, ''),
(40, 20001057, 437, 0, 9, 0, 0, 0, 0, ''),
(41, 20001484, 11, 0, 10, 0, 0, 0, 0, ''),
(42, 20001484, 12, 0, 10, 0, 0, 0, 0, ''),
(43, 20001484, 13, 0, 10, 0, 0, 0, 0, ''),
(44, 20001484, 15, 0, 10, 0, 0, 0, 0, ''),
(45, 20001484, 437, 0, 10, 0, 0, 0, 0, ''),
(46, 2001497, 11, 0, 11, 0, 0, 0, 0, ''),
(47, 2001497, 12, 0, 11, 0, 0, 0, 0, ''),
(48, 2001497, 13, 0, 11, 0, 0, 0, 0, ''),
(49, 2001497, 15, 0, 11, 0, 0, 0, 0, ''),
(50, 2001497, 437, 0, 11, 0, 0, 0, 0, ''),
(56, 20001057, 11, 0, 9, 0, 0, 0, 0, ''),
(57, 20001057, 11, 0, 14, 0, 0, 0, 0, ''),
(58, 20001057, 12, 0, 9, 0, 0, 0, 0, ''),
(59, 20001057, 12, 0, 14, 0, 0, 0, 0, ''),
(60, 20001057, 13, 0, 9, 0, 0, 0, 0, ''),
(61, 20001057, 13, 0, 14, 0, 0, 0, 0, ''),
(62, 20001057, 15, 0, 9, 0, 0, 0, 0, ''),
(63, 20001057, 15, 0, 14, 0, 0, 0, 0, ''),
(64, 20001057, 437, 0, 9, 0, 0, 0, 0, ''),
(65, 20001057, 437, 0, 14, 0, 0, 0, 0, ''),
(66, 20001853, 11, 0, 17, 0, 0, 0, 0, ''),
(67, 20001853, 12, 0, 17, 0, 0, 0, 0, ''),
(68, 20001853, 13, 0, 17, 0, 0, 0, 0, ''),
(69, 20001853, 15, 0, 17, 0, 0, 0, 0, ''),
(70, 20001853, 437, 0, 17, 0, 0, 0, 0, ''),
(71, 20004425, 11, 0, 18, 0, 0, 0, 0, ''),
(72, 20004425, 12, 0, 18, 0, 0, 0, 0, ''),
(73, 20004425, 13, 0, 18, 0, 0, 0, 0, ''),
(74, 20004425, 15, 0, 18, 0, 0, 0, 0, ''),
(75, 20004425, 437, 0, 18, 0, 0, 0, 0, ''),
(76, 20001937, 11, 0, 19, 0, 0, 0, 0, ''),
(77, 20001937, 12, 0, 19, 0, 0, 0, 0, ''),
(78, 20001937, 13, 0, 19, 0, 0, 0, 0, ''),
(79, 20001937, 15, 0, 19, 0, 0, 0, 0, ''),
(80, 20001937, 437, 0, 19, 0, 0, 0, 0, ''),
(81, 20004623, 11, 0, 21, 0, 0, 0, 0, ''),
(82, 20004623, 12, 0, 21, 0, 0, 0, 0, ''),
(83, 20004623, 13, 0, 21, 0, 0, 0, 0, ''),
(84, 20004623, 15, 0, 21, 0, 0, 0, 0, ''),
(85, 20004623, 437, 0, 21, 0, 0, 0, 0, ''),
(86, 20004510, 11, 0, 22, 0, 0, 0, 0, ''),
(87, 20004510, 12, 0, 22, 0, 0, 0, 0, ''),
(88, 20004510, 13, 0, 22, 0, 0, 0, 0, ''),
(89, 20004510, 15, 0, 22, 0, 0, 0, 0, ''),
(90, 20004510, 437, 0, 22, 0, 0, 0, 0, ''),
(91, 20001779, 11, 0, 24, 0, 0, 0, 0, ''),
(92, 20001779, 12, 0, 24, 0, 0, 0, 0, ''),
(93, 20001779, 13, 0, 24, 0, 0, 0, 0, ''),
(94, 20001779, 15, 0, 24, 0, 0, 0, 0, ''),
(95, 20001779, 20, 0, 24, 0, 0, 0, 0, ''),
(96, 20001779, 56, 0, 24, 0, 0, 0, 0, ''),
(97, 20001779, 437, 0, 24, 0, 0, 0, 0, ''),
(98, 20001779, 439, 0, 24, 0, 0, 0, 0, ''),
(99, 20001779, 440, 0, 24, 0, 0, 0, 0, ''),
(100, 20001779, 441, 0, 24, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `YR_ID` int(11) NOT NULL,
  `LEVEL` varchar(30) NOT NULL,
  `LEVEL_DESCRIPTION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`YR_ID`, `LEVEL`, `LEVEL_DESCRIPTION`) VALUES
(1, 'Grade 7', ''),
(2, 'Grade VII', ''),
(3, 'Grade VIII', '');

-- --------------------------------------------------------

--
-- Table structure for table `schoolyr`
--

CREATE TABLE `schoolyr` (
  `SYID` int(11) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `YR` varchar(30) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `IDNO` int(30) NOT NULL,
  `CATEGORY` varchar(30) NOT NULL DEFAULT 'INROLLED',
  `STATUS` varchar(30) NOT NULL DEFAULT 'New'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolyr`
--

INSERT INTO `schoolyr` (`SYID`, `AY`, `YR`, `SECTION`, `IDNO`, `CATEGORY`, `STATUS`) VALUES
(1, '2013-2014', 'Grade 7', 'A', 20004277, 'INROLLED', 'New'),
(2, '2013-2014', 'Grade 7', 'A', 20004207, 'INROLLED', 'New'),
(3, '2013-2014', 'Grade 7', 'A', 20004180, 'INROLLED', 'New'),
(4, '2013-2014', 'Grade 7', 'A', 20002251, 'INROLLED', 'New'),
(5, '2012-2013', 'Grade 7', 'A', 20004407, 'INROLLED', 'New'),
(6, '2012-2013', 'Grade 7', 'A', 20004749, 'INROLLED', 'New'),
(7, '2014-2015', '3rd Year', 'A', 20004623, 'INROLLED', 'New'),
(8, '2013-2014', 'Grade 7', 'A', 20002838, 'INROLLED', 'New'),
(9, '2013-2014', 'Grade 7', 'A', 20001057, 'INROLLED', 'New'),
(10, '2013-2014', 'Grade 7', 'B', 20001484, 'INROLLED', 'New'),
(11, '2013-2014', 'Grade 7', 'A', 2001497, 'INROLLED', 'New'),
(13, '2013-2014', '3rd Year', 'A', 20002106, 'INROLLED', 'New'),
(14, '2013-2014', 'Grade 7', 'A', 20001057, 'INROLLED', 'Old'),
(15, '2013-2014', 'Grade 8', 'C', 20001057, 'INROLLED', 'Old'),
(16, '2014-2015', 'Grade VIII', 'B', 20004277, 'INROLLED', 'Old'),
(17, '2013-2014', 'Grade 7', 'A', 20001853, 'INROLLED', 'New'),
(18, '2013-2014', 'Grade 7', 'A', 20004425, 'INROLLED', 'New'),
(19, '2013-2014', 'Grade 7', 'A', 20001937, 'INROLLED', 'New'),
(20, '2014-2015', 'Grade VII', 'B', 20002251, 'INROLLED', 'Old'),
(21, '2014-2015', 'Grade 7', 'A', 20004623, 'INROLLED', 'Old'),
(22, '2013-2014', 'Grade 7', 'A', 20004510, 'INROLLED', 'New'),
(23, '2013-2014', 'Grade VII', 'a', 20004277, 'INROLLED', ''),
(24, '2012-2013', 'Grade 7', 'a', 20001779, 'INROLLED', '');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubjects`
--

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsubjects`
--

INSERT INTO `studentsubjects` (`STUDSUBJ_ID`, `IDNO`, `SUBJ_ID`, `LEVEL`, `SEMESTER`, `SY`) VALUES
(6, 20004207, 11, 1, 'First', '2013-2014'),
(8, 20004207, 13, 1, 'First', '2013-2014'),
(9, 20004207, 14, 1, 'First', '2013-2014'),
(10, 20004207, 15, 1, 'First', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `YR` varchar(30) NOT NULL,
  `AY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBJ_ID`, `SUBJ_CODE`, `SUBJ_DESCRIPTION`, `UNIT`, `YR`, `AY`) VALUES
(11, 'Theology 1', 'Faith and Creed and Basic Catholic Doctrine', 3, 'Grade 7', '2013-2014'),
(12, 'English 0', 'English Plus ', 3, 'Grade 7', '2013-2014'),
(13, 'English 1', 'Developmental Reading', 3, 'Grade 7', '2013-2014'),
(14, 'Theology 1', 'Faith and Creed and Basic Catholic Doctrine', 3, 'Gade 8', '2013-2014'),
(15, 'History 1', 'Philippine History and Culture', 3, 'Grade 7', '2013-2014'),
(16, 'Psychology 1a', 'General Psychology with Moral Regen & Drug Abuse Ed.', 3, '22', '2013-2014'),
(17, 'Chem. 1', 'General and Organic Chemistry', 5, '22', '2013-2014'),
(18, 'Philosophy 1', 'Introduction to Philosophy', 3, '22', '2013-2014'),
(19, 'PE 1', 'Physical Education', 2, '22', '2013-2014'),
(20, 'NSTP 1', 'NSTP', 3, 'Grade 7', '2013-2014'),
(21, 'Theology 2', 'Bible and Salvation History ', 3, '22', '2013-2014'),
(22, 'English 1', 'Study and Thinking Skills ', 3, '22', '2013-2014'),
(23, 'English 02', 'Developmental Reading 2', 3, '22', '2013-2014'),
(24, 'Math 2', 'Modern College Algebra ', 3, '22', '2013-2014'),
(25, 'Nat. Sci. 3', 'Physical Science', 3, '22', '2013-2014'),
(26, 'Philo. 3', 'Logic', 3, '22', '2013-2014'),
(28, 'PE 2', 'Rhythmic Activities', 3, '22', '2013-2014'),
(29, 'NSTP 2', 'NSTP', 3, '22', '2013-2014'),
(30, 'Theology 3', 'Liturgy and Sacraments in General', 3, '23', '2013-2014'),
(31, 'English 2 ', 'Writing in the Decipline', 3, '23', '2013-2014'),
(32, 'English 3', 'Speech Communication', 3, '23', '2013-2014'),
(33, 'English 4', 'Interactive English', 3, '23', '2013-2014'),
(34, 'Filipino 1', 'Komunikasyon sa Akademikong Filipino', 3, '23', '2013-2014'),
(35, 'Math 2', 'Plane and Spherical Trig.', 3, '23', '2013-2014'),
(36, 'Philo. 5', 'Philosophy of being', 3, '23', '2013-2014'),
(37, 'Philo. 2', 'General Ethics', 3, '23', '2013-2014'),
(38, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '23', '2013-2014'),
(39, 'Theology 4', 'Commandments and Christian Morality ', 3, '23', '2013-2014'),
(40, 'English 15', 'Philippine Literature', 3, '23', '2013-2014'),
(41, 'English 7a', 'Effective Writing', 3, '23', '2013-2014'),
(42, 'Filipino 2', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '23', '2013-2014'),
(43, 'Nat. Sci. 4', 'Ecology', 3, '23', '2013-2014'),
(44, 'Philo. 6', 'Philosophy of Nature', 3, '23', '2013-2014'),
(45, 'Philo. 17', 'Special Ethics', 3, '23', '2013-2014'),
(46, 'PE 4', 'Team Sports and Games', 2, '22', '2013-2014'),
(47, 'Theology 5', 'Church History and Church Today', 3, '24', '2013-2014'),
(48, 'Filipino 3', 'Masining na Pagpapahayag', 3, '24', '2013-2014'),
(49, 'Nat. Sci. 2 ', 'Biological Science', 3, '24', '2013-2014'),
(50, 'Philo. 4', 'Theodicy', 3, '24', '2013-2014'),
(51, 'Philo. 13', 'History of Ancient Philosophy', 3, '24', '2013-2014'),
(52, 'Philo. 8a', 'Philosophical Pyschology', 3, '24', '2013-2014'),
(53, 'Educ. 104', 'Principles of Teaching 1', 3, '24', '2013-2014'),
(54, 'Computer 1', 'Basic Computer', 3, '24', '2013-2014'),
(55, 'Theology 6', 'Social Teaching of the Church', 3, '24', '2013-2014'),
(56, 'English 5', 'Business English and Correspondence', 3, 'Grade 7', '2013-2014'),
(57, 'English 17', 'World Literature', 3, '24', '2013-2014'),
(58, 'Philo. 14', 'History of Medieval Philosophy', 3, '24', '2013-2014'),
(59, 'Philo. 7', 'Philosophy of Knowledge', 3, '24', '2013-2014'),
(60, 'Philo. 19', 'Philosophy of Education', 3, '24', '2013-2014'),
(61, 'Computer 2', 'Software Application', 3, '24', '2013-2014'),
(62, 'Humanities 2', 'Art Education', 3, '24', '2013-2014'),
(63, 'Pol. Sci. 4', 'Politics and Governance with PC', 3, '25', '2013-2014'),
(64, 'Philo.  51', 'Philosophy of Religion', 3, '25', '2013-2014'),
(65, 'Philo.  16', 'History of  Modern Philosophy', 3, '25', '2013-2014'),
(66, 'Philo.  31', 'Oriental Philosophy', 3, '25', '2013-2014'),
(67, 'Economics 1', 'Principles of Economics with TAR', 3, '25', '2013-2014'),
(68, 'Educ. 102', 'Facilitating Learning', 3, '25', '2013-2014'),
(69, 'Soc. Sci. 19', 'Society and Culture', 3, '25', '2013-2014'),
(70, 'Philo. 18 ', 'History of Contemporary Philosophy ', 3, '25', '2013-2014'),
(71, 'Philo.  9a', 'Social Phylosophy', 3, '25', '2013-2014'),
(72, 'Philo.  20', 'Elements of Filipino Phylosophy', 3, '25', '2013-2014'),
(73, 'Philo.  11', 'Social Phylosophy II: Values Identification & Inculcation (lncl. Institution & Ideologies)', 3, '25', '2013-2014'),
(74, 'Rizal', 'Life, Works and Writings of Doctor Jose Rizal', 3, '25', '2013-2014'),
(75, 'Theology 1', 'Faith and Creed and Basic Catholic Doctrine', 3, '14', '2013-2014'),
(76, 'English 0', 'English Plus', 3, '26', '2013-2014'),
(77, 'English 01 ', 'Developmental Reading', 3, '26', '2013-2014'),
(78, 'History 1', 'Philipine History and Culture', 3, '26', '2013-2014'),
(79, 'Psycho. 1a', 'General Psychology with Moral Regen & Drug Abuse Ed.', 3, '26', '2013-2014'),
(80, 'Chem. 1', 'General & Inorganic Chemistry', 3, '26', '2013-2014'),
(81, 'Economics 1', 'Principles of Economics with TAR', 3, '26', '2013-2014'),
(82, 'PE 1', 'Physical Fitness', 2, '14', '2013-2014'),
(83, 'NSTP 1', 'NSTP', 3, '26', '2013-2014'),
(84, 'Theology 2', 'Bible & Salvation History', 3, '26', '2013-2014'),
(85, 'English 1', 'Study and Thinking Skills', 3, '26', '2013-2014'),
(86, 'English 02', 'Developmental Reading 2', 3, '26', '2013-2014'),
(87, 'Math 2', 'Modern College Algebra', 3, '26', '2013-2014'),
(88, 'Soc. Sci. 19', 'Society and Culture with FP ', 3, '26', '2013-2014'),
(89, 'Nat. Sci. 1', 'Physical Science', 3, '26', '2013-2014'),
(90, 'Educ. 2', 'Child & Adolescent Development', 3, '26', '2013-2014'),
(91, 'PE 2', 'Rhythmic Activities', 2, '26', '2013-2014'),
(92, 'NSTP 2', 'NSTP', 3, '26', '2013-2014'),
(93, 'Theology 3', 'Liturgy and Sacraments in General', 3, '27', '2013-2014'),
(94, 'English 2', 'Writing in the Decipline', 3, '27', '2013-2014'),
(95, 'English 3', 'Speech and Communication', 3, '27', '2013-2014'),
(96, 'English 33a', 'Introduction to Language Study', 3, '27', '2013-2014'),
(97, 'Filipino 1', 'Komunikasyon sa Akademikong Filipino', 3, '27', '2013-2014'),
(98, 'Math 2', 'Plane and Spherical Trigonometry', 3, '27', '2013-2014'),
(99, 'Nat. Sci. 2', 'Biological Science', 3, '27', '2013-2014'),
(100, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '27', '2013-2014'),
(101, 'Theology 4', 'Commandments and Christian Morality', 3, '27', '2013-2014'),
(102, 'English 15', 'Philippine Literature', 3, '27', '2013-2014'),
(103, 'English 38', 'Mythology and Folklore', 3, '27', '2013-2014'),
(104, 'English 50', 'Structure of the English Laguage', 3, '27', '2013-2014'),
(105, 'English 40a', 'Applied Linguistics', 3, '27', '2013-2014'),
(106, 'English 7a', 'Effective Writing', 3, '27', '2013-2014'),
(107, 'Filipino 2', 'Pagbasa at Pagsulat tungo sa Pananaliksik', 3, '27', '2013-2014'),
(108, 'PE 4', 'Team Sports and Games', 2, '27', '2013-2014'),
(109, 'Theology 5', 'Church History and Church Today', 3, '28', '2013-2014'),
(110, 'English 51', 'Language and Society', 3, '28', '2013-2014'),
(111, 'English 52', 'Cross-Culture Communication', 3, '28', '2013-2014'),
(112, 'English 53', 'Literary History of the Philippines', 3, '28', '2013-2014'),
(113, 'Filipino 3', 'Masining na Pagpapahalaga', 3, '28', '2013-2014'),
(114, 'English ', 'Interactive English', 3, '28', '2013-2014'),
(115, 'Educ. 104', 'Principles of Teaching', 3, '28', '2013-2014'),
(116, 'Computer 1', 'Basic computer', 3, '28', '2013-2014'),
(117, 'Theology 6', 'Social Teaching of the Church', 3, '28', '2013-2014'),
(118, 'English 5', 'Business English and Correspondence', 3, '28', '2013-2014'),
(119, 'English 17a', 'Afro-Asian Literature', 3, '28', '2013-2014'),
(120, 'English 54', 'Structure of the Filipino Language', 3, '28', '2013-2014'),
(121, 'English 37', 'Creative Writing', 3, '28', '2013-2014'),
(122, 'Nat. Sci. 4', 'Ecology', 3, '28', '2013-2014'),
(123, 'Humanities 2', 'Art Education', 3, '28', '2013-2014'),
(124, 'Computer 2', 'Software Application', 3, '28', '2013-2014'),
(125, 'English 55', 'Language and culture', 3, '29', '2013-2014'),
(126, 'English 14a', 'Anglo- American Literature', 3, '29', '2013-2014'),
(127, 'English 56', 'European Literature', 3, '29', '2013-2014'),
(128, 'Educ. 102 ', 'Facilitating Learning', 3, '29', '2013-2014'),
(129, 'Pol. Sci. 4', 'Politics & Governance with PC', 3, '29', '2013-2014'),
(130, 'English 57', 'Register in English', 3, '29', '2013-2014'),
(131, 'English 9a', 'Argumentation', 3, '29', '2013-2014'),
(132, 'English 58', 'Approaches in college English Teaching', 3, '29', '2013-2014'),
(133, 'Rizal', 'Life, Works and Writings of Doctor Jose Rizal', 3, '29', '2013-2014'),
(134, 'English 17', 'World Literature', 3, '29', '2013-2014'),
(135, 'Phylosophy 11', 'Social Phylosophy II: Values Identification & Inculcation (lncl. Institution & Ideologies)', 3, '29', '2013-2014'),
(136, 'Theology 1', 'Faith and Creed and Basic Catholic Doctrine', 3, '30', '2013-2014'),
(137, 'English 0', 'English Plus', 3, '30', '2013-2014'),
(138, 'Filipino 1', 'Komunikasyon sa Akademikong Filipino', 3, '30', '2013-2014'),
(139, 'Math 01', 'Fundamentals of Mathematics', 3, '30', '2013-2014'),
(140, 'Nat. Sci. 2b', 'Biological Science', 3, '30', '2013-2014'),
(141, 'Psycho. 1a', 'General Psychology with Moral Regen & Drug Abuse Ed.', 3, '30', '2013-2014'),
(142, 'ICT ', 'Basic computer', 3, '30', '2013-2014'),
(143, 'Educ. ', 'Developmental Reading', 3, '30', '2013-2014'),
(144, 'PE 1', 'Physical Fitness', 2, '30', '2013-2014'),
(145, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '30', '2013-2014'),
(146, 'Theology 2', 'Bible & Salvation History', 3, '30', '2013-2014'),
(147, 'English 2', 'Study and Thinking Skills', 3, '30', '2013-2014'),
(148, 'Filipino 02', 'Pagbasa at Pagsulat tungo sa Pananaliksik', 3, '30', '2013-2014'),
(149, 'Math 02', 'Contemporary Mathematics', 3, '30', '2013-2014'),
(150, 'Humanities 1', 'Art Education', 3, '30', '2013-2014'),
(151, 'Educ. 101', 'Child & Adolescent Development', 3, '30', '2013-2014'),
(152, 'Major', 'Structure of the English Laguage', 3, '30', '2013-2014'),
(153, 'Rizal', 'Life, Works and Writings of Doctor Jose Rizal', 3, '30', '2013-2014'),
(154, 'PE 2', 'Rhythmic Activities', 2, '30', '2013-2014'),
(155, 'NSTP 2', 'ROTC 2/ CWTS 2', 3, '30', '2013-2014'),
(156, 'Theology 3', 'Liturgy and Sacraments in General', 3, '31', '2013-2014'),
(157, 'English 2', 'Writing in the Decipline', 3, '31', '2013-2014'),
(158, 'Filipino 03', 'Masining na Pagpapahalaga', 3, '31', '2013-2014'),
(159, 'Educ. 102', 'Facilitating Learning', 3, '31', '2013-2014'),
(160, 'Educ. 103', 'Educational Technology 1', 3, '31', '2013-2014'),
(161, 'Educ. 104', 'Principles of Teaching 1', 3, '31', '2013-2014'),
(162, 'FS', 'Field Study 1 (Learning Dev\'t Environment)', 1, '31', '2013-2014'),
(163, 'Major', 'Social Dimension of  Education', 3, '31', '2013-2014'),
(164, 'Major', 'Teaching of Listening & Reading', 3, '31', '2013-2014'),
(165, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '31', '2013-2014'),
(166, 'Theology 4', 'Commandments and Christian Morality', 3, '31', '2013-2014'),
(167, 'English Literature', 'Philippine Literature', 3, '31', '2013-2014'),
(168, 'Educ. 105', 'Educational Technology 2', 3, '31', '2013-2014'),
(169, 'Educ. 106', 'Principles of Teaching 2', 3, '31', '2013-2014'),
(170, 'FS 2', 'Field Study 2 (Experience the Technology Learning Process )', 1, '31', '2013-2014'),
(171, 'FS 3', 'Field Study 3 (Tech. in the Learning Environment)', 1, '31', '2013-2014'),
(172, 'Major', 'Teaching of Speaking', 3, '31', '2013-2014'),
(173, 'Major', 'ESP', 3, '31', '2013-2014'),
(174, 'Major', 'Intro to Linguistics', 3, '31', '2013-2014'),
(175, 'Major', 'Mythology and Folklore', 3, '31', '2013-2014'),
(176, 'PE 4', 'Team Sports and Games', 2, '31', '2013-2014'),
(177, 'English 3', 'Speech and Oral Communication', 3, '31', '2013-2014'),
(178, 'English Literature', 'World Literature', 3, '31', '2013-2014'),
(179, 'Pol. Sci. 4', 'Politics & Governance with PC', 3, '31', '2013-2014'),
(180, 'Theology 6', 'Church History and Church Today', 3, '32', '2013-2014'),
(181, 'Educ. 108', 'Curriculum Development', 3, '32', '2013-2014'),
(182, 'History 1', 'Philipine History: Roots and Development', 3, '32', '2013-2014'),
(183, 'Educ. 109', 'Assessment of students Learning 1', 3, '32', '2013-2014'),
(184, 'FS 4', 'Field Study 4(Understanding Curriculum Development)', 1, '32', '2013-2014'),
(185, 'ST 1', 'Integrated Teaching Strategies', 1, '32', '2013-2014'),
(186, 'Major', 'Teaching Literature', 3, '32', '2013-2014'),
(187, 'Major', 'Speech and Stage Art', 3, '32', '2013-2014'),
(188, 'Major', 'Mass Communication and Campus Journalism', 3, '32', '2013-2014'),
(189, 'Major', 'Prep. & Eval. of Instruc. Materials', 3, '32', '2013-2014'),
(190, 'Theology 6', 'Social Teaching of the Church', 3, '32', '2013-2014'),
(191, 'Economics 1b', 'Principles of Economics with TAR', 3, '32', '2013-2014'),
(192, 'Educ. 109', 'Assessment of students Learning 2', 3, '32', '2013-2014'),
(193, 'FS 5', 'Field Study 5(Learning Assessment Strategies)', 1, '32', '2013-2014'),
(194, 'ST 2', 'Use of Popular Media in teaching', 1, '32', '2013-2014'),
(195, 'Major', 'Creative Writing', 3, '32', '2013-2014'),
(196, 'Major', 'Remedial Instruction in English', 3, '32', '2013-2014'),
(197, 'Major', 'Language Curriculum for Sec. Schools', 3, '32', '2013-2014'),
(198, 'Major', 'Afro-Asian Literature', 3, '32', '2013-2014'),
(199, 'Major', 'English & American Literature', 3, '32', '2013-2014'),
(200, 'Nat. Sci. 2', 'Physical Science', 3, '32', '2013-2014'),
(201, 'Philo.  3', 'Logic', 3, '32', '2013-2014'),
(202, 'Soc. Sci. 19', 'Social & Culture with AP', 3, '32', '2013-2014'),
(203, 'Educ.', 'The Teaching Profession', 3, '33', '2013-2014'),
(204, 'FS 6', 'Field Study 6', 1, '33', '2013-2014'),
(205, 'ST 3', 'Research', 3, '33', '2013-2014'),
(206, 'Major', 'Language and Literature Assessment', 3, '33', '2013-2014'),
(207, 'Major', 'Intro to Stylistic', 3, '33', '2013-2014'),
(208, 'Major', 'Literary Criticism', 3, '33', '2013-2014'),
(209, 'Major', 'Language Research', 3, '33', '2013-2014'),
(210, 'Major', 'Translation & Editing of Text', 3, '33', '2013-2014'),
(211, 'Students Teaching', 'Practice Teaching', 6, '33', '2013-2014'),
(212, 'Theology 1', 'Faith and  Creed & Basic Catholic Doctrine', 3, '34', '2013-2014'),
(213, 'English 0', 'English Plus', 3, '34', '2013-2014'),
(214, 'Filipino 01', 'Komunikasyon sa Akademikong Filipino', 3, '34', '2013-2014'),
(215, 'Math 01', 'Fundamentals of Mathematics', 3, '34', '2013-2014'),
(216, 'Nat. Sci. 2b', 'Biological Science', 3, '34', '2013-2014'),
(217, 'Psychology 1a', 'General Psy. with Moral Regen & Drug Abuse Ed.', 3, '34', '2013-2014'),
(218, 'ICT', 'Basic Computer', 3, '34', '2013-2014'),
(219, 'Educ. ', 'Developmental Reading', 3, '34', '2013-2014'),
(220, 'PE 1', 'Physical Fitness', 2, '34', '2013-2014'),
(221, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '34', '2013-2014'),
(222, 'Theology 2', 'Bible and Salvation History', 3, '34', '2013-2014'),
(223, 'English 2', 'Study and Thinking Skills ', 3, '34', '2013-2014'),
(224, 'Filipino 02', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '34', '2013-2014'),
(225, 'Math 02', 'Contemporary Mathematics', 3, '34', '2013-2014'),
(226, 'Humanities 1', 'Art Education', 3, '34', '2013-2014'),
(227, 'Educ. 101', 'Child and Adolescent Development', 3, '34', '2013-2014'),
(228, 'Rizal ', 'Life, Works & Writings of Dr. Jose Rizal', 3, '34', '2013-2014'),
(229, 'Major', 'Advance Algebra', 3, '34', '2013-2014'),
(230, 'PE 2', 'Rhythmic Activities', 2, '34', '2013-2014'),
(231, 'NSTP 2', 'ROTC 2/ CWTS 2', 3, '34', '2013-2014'),
(232, 'Theology 3', 'Liturgy and Sacraments in General', 3, '35', '2013-2014'),
(233, 'Filipino 03', 'Masining na Pagpapahalaga', 3, '35', '2013-2014'),
(234, 'English 2', 'Writing & Discipline', 3, '35', '2013-2014'),
(235, 'Educ. 102', 'Facilitating and Learning', 3, '35', '2013-2014'),
(236, 'Educ. 103', 'Educational Technology', 3, '35', '2013-2014'),
(237, 'Educ. 104', 'Principles of Teaching 1', 3, '35', '2013-2014'),
(238, 'FS 1', 'Field Study 1 (Learning Dev\'t Environment)', 1, '35', '2013-2014'),
(239, 'Educ. ', 'Social Dimension of Education', 3, '35', '2013-2014'),
(240, 'Major', 'Plane Geometry', 3, '35', '2013-2014'),
(241, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '35', '2013-2014'),
(242, 'Theology 4', 'Commandments and Christian Morality', 3, '35', '2013-2014'),
(243, 'English Literature', 'Philippine Literature', 3, '35', '2013-2014'),
(244, 'Educ. 105', 'Educational Technology 2', 3, '35', '2013-2014'),
(245, 'Educ. 106', 'Principles of Teaching 2', 3, '35', '2013-2014'),
(246, 'FS 2', 'Field Study 2 (Experiencing the Tech. Learning Process)', 1, '35', '2013-2014'),
(247, 'FS 3', 'Field Study 3 (Tech. in the Learning Environment)', 1, '35', '2013-2014'),
(248, 'Major', 'Trigonometry', 3, '35', '2013-2014'),
(249, 'Major', 'Solid Geometry', 3, '35', '2013-2014'),
(250, 'Major', 'Analytic Geometry', 3, '35', '2013-2014'),
(251, 'Major', 'Abstract Algebra', 3, '35', '2013-2014'),
(252, 'PE 4', 'Team Sports and Games', 3, '35', '2013-2014'),
(253, 'English 3', 'Speech and Oral Communication', 3, '35', '2013-2014'),
(254, 'English Literature', 'World Literature', 3, '35', '2013-2014'),
(255, 'Pol. Sci. 4', 'Politics and Governance with PC', 3, '35', '2013-2014'),
(256, 'Theology 5', 'Church History and Church Today', 3, '36', '2013-2014'),
(257, 'Educ. 108', 'Curriculum Development', 3, '36', '2013-2014'),
(258, 'Educ. 109', 'Assessment of Student Learning 1', 3, '36', '2013-2014'),
(259, 'FS 4', 'Field Study 4 (Understanding Curriculum Development)', 1, '36', '2013-2014'),
(260, 'ST 1', 'Integrated Teaching Strategies', 1, '36', '2013-2014'),
(261, 'History 1', 'Philippine History', 3, '35', '2013-2014'),
(262, 'Major', 'Calculus', 3, '36', '2013-2014'),
(263, 'Major', 'Elementary Statistics', 3, '36', '2013-2014'),
(264, 'Major', 'Probability', 3, '36', '2013-2014'),
(265, 'Major', 'Linear Algebra', 3, '36', '2013-2014'),
(266, 'Theology 6', 'Social Teaching of the Church', 3, '36', '2013-2014'),
(267, 'Economics 1b', 'Principles of Economics with TAR', 3, '36', '2013-2014'),
(268, 'Educ. 110', 'Assessment of Student Learning 2', 3, '36', '2013-2014'),
(269, 'Major', 'Calculus 2', 3, '36', '2013-2014'),
(270, 'Major', 'Advance Statistics', 3, '36', '2013-2014'),
(271, 'Major', 'Modern Geometry', 3, '36', '2013-2014'),
(272, 'Major', 'Number Theory', 3, '36', '2013-2014'),
(273, 'Major', 'Math Investigation and Modeling', 3, '36', '2013-2014'),
(274, 'Nat. Sci. 3', 'Physical Science', 3, '36', '2013-2014'),
(275, 'Philo. 3', 'Logic', 3, '36', '2013-2014'),
(276, 'S. Sc. 19', 'Society and Culture with FP', 3, '36', '2013-2014'),
(277, 'Ed. ', 'The Teaching Profession', 3, '37', '2013-2014'),
(278, 'FS 6', 'Field Study', 1, '37', '2013-2014'),
(279, 'ST 3', 'Research', 1, '37', '2013-2014'),
(280, 'FS 5', 'Field Study 5 (Learning Assest Strategies)', 1, '36', '2013-2014'),
(281, 'ST 2', 'Use of Popular Media in Teaching', 1, '37', '2013-2014'),
(282, 'Major', 'Action Research in Math', 3, '37', '2013-2014'),
(283, 'Major', 'Seminar on Problem Solving', 3, '37', '2013-2014'),
(284, 'Major', 'Seminar on Technology in Math', 3, '37', '2013-2014'),
(285, 'Major', 'Instrumentation in Math', 3, '37', '2013-2014'),
(286, 'Major', 'History of Math', 3, '37', '2013-2014'),
(287, 'Student Teaching', 'Practice Teaching', 6, '37', '2013-2014'),
(288, 'Theology 1', 'Faith and  Creed & Basic Catholic Doctrine', 3, '38', '2013-2014'),
(289, 'English 1', 'English Plus', 3, '38', '2013-2014'),
(290, 'Filipino 01', 'Komunikasyon sa Akademikong Filipino', 3, '38', '2013-2014'),
(291, 'Math 01', 'Fundamentals of Mathematics', 3, '38', '2013-2014'),
(292, 'Nat. Sci. 2b', 'Biological Science', 3, '38', '2013-2014'),
(293, 'Psychology 1a', 'General Psy. with Moral Regen & Drug Abuse Ed.', 3, '38', '2013-2014'),
(294, 'ICT', 'Basic Computer', 3, '38', '2013-2014'),
(295, 'Educ. ', 'Developmental Reading', 3, '38', '2013-2014'),
(296, 'PE 1', 'Physical Fitness', 2, '38', '2013-2014'),
(297, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '38', '2013-2014'),
(298, 'Theology 2', 'Bible and Salvation History', 3, '38', '2013-2014'),
(299, 'English 1', 'Study and Thinking Skills ', 3, '38', '2013-2014'),
(300, 'Filipino 02', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '38', '2013-2014'),
(301, 'Math 02', 'Contemporary Mathematics', 3, '38', '2013-2014'),
(302, 'Humanities 1', 'Art Education', 3, '38', '2013-2014'),
(303, 'Educ. 101', 'Child and Adolescent Development', 3, '38', '2013-2014'),
(304, 'Major', 'Kulrurang Popular', 3, '38', '2013-2014'),
(305, 'Rizal ', 'Life, Works & Writings of Dr. Jose Rizal', 3, '38', '2013-2014'),
(306, 'PE 2', 'Rhythmic Activities', 2, '38', '2013-2014'),
(307, 'Theology 3', 'Liturgy and Sacraments in General', 3, '39', '2013-2014'),
(308, 'English 2', 'Writing & Discipline', 3, '39', '2013-2014'),
(309, 'Filipino 03', 'Masining na Pagpapahalaga', 3, '39', '2013-2014'),
(310, 'Educ. 102', 'Facilitating and Learning', 3, '39', '2013-2014'),
(311, 'Educ. 103', 'Educational Technology 1', 3, '39', '2013-2014'),
(312, 'Educ. 104', 'Principles of Teaching 1', 3, '39', '2013-2014'),
(313, 'FS 1', 'Field Study 1 (Learning Dev\'t Environment)', 1, '39', '2013-2014'),
(314, 'Educ. ', 'Social Dimension of Education', 3, '39', '2013-2014'),
(315, 'Major', 'Panitikang Rehiyon', 3, '39', '2013-2014'),
(316, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '39', '2013-2014'),
(317, 'Theology 4', 'Commandments and Christian Morality', 3, '39', '2013-2014'),
(318, 'English Literature', 'Philippine Literature', 3, '39', '2013-2014'),
(319, 'Educ. 105', 'Educational Technology 2', 3, '39', '2013-2014'),
(320, 'Educ. 106', 'Principles of Teaching 2', 3, '39', '2013-2014'),
(321, 'FS 2', 'Field Study 2 (Experiencing the Tech. Learning Process)', 1, '39', '2013-2014'),
(322, 'FS 3', 'Field Study 3 (Tech. in the Learning Environment)', 1, '39', '2013-2014'),
(323, 'Major', 'Instratura ng Wikang Filipino', 3, '39', '2013-2014'),
(324, 'Major', 'Maikling Kuwentong Filipino', 3, '39', '2013-2014'),
(325, 'Major', 'Pagtuturo at Pagtataya sa Pakikinig at Pagsasalita', 3, '39', '2013-2014'),
(326, 'Major', 'lnrod sa Pag-aaral ng Wika', 3, '39', '2013-2014'),
(327, 'PE 4', 'Team Sports and Games', 2, '39', '2013-2014'),
(328, 'English 3', 'Speech and Oral Communication', 3, '39', '2013-2014'),
(329, 'English Literature', 'World Literature', 3, '39', '2013-2014'),
(330, 'Pol. Sci. 4', 'Politics and Governance with PC', 3, '39', '2013-2014'),
(331, 'Theology 5', 'Church History and Church Today', 3, '40', '2013-2014'),
(332, 'History 1', 'Philippine History', 3, '40', '2013-2014'),
(333, 'Educ. 108', 'Curriculum Development', 3, '40', '2013-2014'),
(334, 'Educ. 109', 'Assessment of Student Learning 1', 3, '40', '2013-2014'),
(335, 'FS 4', 'Field Study 4 (Understanding Curriculum Development)', 1, '40', '2013-2014'),
(336, 'ST 1', 'Integrated Teaching Strategies', 1, '40', '2013-2014'),
(337, 'Major', 'Sanaysay at Talumpati', 3, '40', '2013-2014'),
(338, 'Major', 'Pagtuturo at Paglalaya sa Pagbasa at Pagsulat', 3, '40', '2013-2014'),
(339, 'Major', 'Panimulang Linguistika', 3, '40', '2013-2014'),
(340, 'Major', 'Intro. sa Pagsasalin', 3, '40', '2013-2014'),
(341, 'Theology 6', 'Social Teaching of the Church', 3, '40', '2013-2014'),
(342, 'Economics 1b', 'Principles of Economics with TAR', 3, '40', '2013-2014'),
(343, 'Educ. 110', 'Assessment of Student Learning 2', 3, '40', '2013-2014'),
(344, 'FS 5', 'Field Study 5 (Learning Assest Strategies)', 1, '40', '2013-2014'),
(345, 'ST 2', 'Use of Popular Media in Teaching', 1, '40', '2013-2014'),
(346, 'Major', 'Panunuring Pampanitikan', 3, '40', '2013-2014'),
(347, 'Major', 'Ang Fil. sa Kul. ng Bantayng Antas ng Edukasyon', 3, '40', '2013-2014'),
(348, 'Major', 'Paghahanda at Ebalwasyon ng kagamitang Pantuturo', 3, '40', '2013-2014'),
(349, 'Major', 'Pagbasa at Obramaestra sa Filipino', 3, '40', '2013-2014'),
(350, 'Major', 'Intro sa Pananaliksik: Wika at Panitikan', 3, '40', '2013-2014'),
(351, 'Nat. Sci. 3', 'Physical Science', 3, '40', '2013-2014'),
(352, 'Philo. 3', 'Logic', 3, '40', '2013-2014'),
(353, 'S. Sc. 19', 'Society and Culture with FP', 3, '40', '2013-2014'),
(354, 'Educ. ', 'The Teaching Profession', 3, '41', '2013-2014'),
(355, 'FS 6', 'Field Study', 1, '41', '2013-2014'),
(356, 'ST 3', 'Research', 1, '41', '2013-2014'),
(357, 'Major', 'Pagpahalaga ng Pampanitikan', 3, '41', '2013-2014'),
(358, 'Major', 'Intro sa Pamamahayag', 3, '41', '2013-2014'),
(359, 'Major', 'Panitikan ng Umuunlad na Bansa', 3, '41', '2013-2014'),
(360, 'Major', 'Pagtuturo at Pagtataya sa Panitikan', 3, '41', '2013-2014'),
(361, 'Major', 'Panulaang Filipino', 3, '41', '2013-2014'),
(362, 'Student Teaching', 'Practice Teaching', 6, '41', '2013-2014'),
(363, 'Theology 1', 'Faith and  Creed & Basic Catholic Doctrine', 3, '42', '2013-2014'),
(364, 'English 0', 'English Plus', 3, '42', '2013-2014'),
(365, 'Filipino 01', 'Komunikasyon sa Akademikong Filipino', 3, '42', '2013-2014'),
(366, 'Math 01', 'Fundamentals of Mathematics', 3, '42', '2013-2014'),
(367, 'Nat. Sci. 2b', 'Biological Science', 3, '42', '2013-2014'),
(368, 'ICT', 'Basic Computer', 3, '42', '2013-2014'),
(369, 'Educ. ', 'Developmental Reading', 3, '42', '2013-2014'),
(370, 'Geography', 'Basic Geography', 3, '42', '2013-2014'),
(371, 'PE 1', 'Physical Fitness', 3, '42', '2013-2014'),
(372, 'NSTP 1', 'ROTC 1/ CWTS 1', 3, '42', '2013-2014'),
(373, 'Theology 2', 'Bible and Salvation History', 3, '42', '2013-2014'),
(374, 'English 1', 'Study and Thinking Skills', 3, '42', '2013-2014'),
(375, 'Filipino 02', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 3, '42', '2013-2014'),
(376, 'Math 02', 'Contemporary Mathematics', 3, '42', '2013-2014'),
(377, 'Educ. 101', 'Child & Adolescents Development', 3, '42', '2013-2014'),
(378, 'Math ', 'Advance Algebra & Trigonometry', 3, '42', '2013-2014'),
(379, 'Rizal ', 'Life, Works & Writings of Dr. Jose Rizal', 3, '42', '2013-2014'),
(380, 'PE 2', 'Rhythmic Activities', 2, '42', '2013-2014'),
(381, 'NSTP 2', 'ROTC 2/ CWTS 2', 3, '42', '2013-2014'),
(382, 'Theology 3', 'Liturgy and Sacraments in General', 3, '43', '2013-2014'),
(383, 'English 2', 'Writing in the Discipline', 3, '43', '2013-2014'),
(384, 'Filipino 03', 'Masining na Pamamahayag', 3, '43', '2013-2014'),
(385, 'Educ. 102', ' Facilitating and Learning', 3, '43', '2013-2014'),
(386, 'Educ. 103', 'Educational Technology 1', 3, '43', '2013-2014'),
(387, 'Educ. 104', 'Principles in Teaching 1', 3, '43', '2013-2014'),
(388, 'FS 1', 'Field Study 1', 1, '43', '2013-2014'),
(389, 'Educ.', 'Social Dimension of Education', 3, '43', '2013-2014'),
(390, 'PE 3', 'Individual/ Dual Sports/ Games', 2, '43', '2013-2014'),
(391, 'Theology 3', 'Commandments and Christian Morality', 3, '43', '2013-2014'),
(392, 'English Literature ', 'Philippine Literature', 3, '43', '2013-2014'),
(393, 'English ', 'Thinking Skills 2', 3, '43', '2013-2014'),
(394, 'Math ', 'Plane and Solid Geometry', 3, '43', '2013-2014'),
(395, 'Soc. Sci. ', 'Geography 3', 3, '43', '2013-2014'),
(396, 'Educ. 105 ', 'Educational Technology 2', 3, '43', '2013-2014'),
(397, 'Educ. 106', 'Principles in Teaching 2', 3, '43', '2013-2014'),
(398, 'FS 2', 'Field Study 2', 1, '43', '2013-2014'),
(399, 'FS 3', 'Field Study 3', 1, '43', '2013-2014'),
(400, 'History 1', 'Philippine History', 3, '43', '2013-2014'),
(401, 'PE 4', 'Team Sports and Games', 2, '43', '2013-2014'),
(402, 'English 3', 'Speech and Oral Communication', 3, '31', '2013-2014'),
(403, 'English Literature ', 'World Literature', 3, '43', '2013-2014'),
(404, 'Pol. Sci.', 'Politics & Governance PC', 3, '43', '2013-2014'),
(405, 'Theology 5', 'Church History and Church Today', 3, '44', '2013-2014'),
(406, 'English ', 'Interactive English', 3, '44', '2013-2014'),
(407, 'English ', 'Children\'s Literature', 3, '44', '2013-2014'),
(408, 'Filipino ', 'Pagpahalaga ng Pampanitikan', 3, '44', '2013-2014'),
(409, 'Math ', 'Analytic Geometry and Intro. Calculus', 3, '44', '2013-2014'),
(410, 'Science', 'Inorganic Chemistry', 3, '44', '2013-2014'),
(411, 'Educ. 108', 'Curriculum Development', 3, '44', '2013-2014'),
(412, 'Educ. 109', 'Assessment of student Learning 1', 3, '44', '2013-2014'),
(413, 'FS 4', 'Field Study 4', 1, '44', '2013-2014'),
(414, 'ST 1', 'Integrated Teaching Strategies', 1, '44', '2013-2014'),
(415, 'Theology 6', 'Social Teaching of the Church', 3, '44', '2013-2014'),
(416, 'English ', 'Mythology and Folklore', 3, '44', '2013-2014'),
(417, 'Filipino ', 'Panitikan ng Filipino', 3, '44', '2013-2014'),
(418, 'Humanities', 'Art Education', 3, '44', '2013-2014'),
(419, 'Science', 'Ecology', 3, '44', '2013-2014'),
(420, 'Economics 1b', 'Principles of Economics with TAR', 3, '44', '2013-2014'),
(421, 'Educ. 110', 'Assessment of student Learning 2', 3, '44', '2013-2014'),
(422, 'Educ.', 'Developmental Reading 2', 3, '44', '2013-2014'),
(423, 'ST 2', 'Use of Popular Media in teaching', 1, '44', '2013-2014'),
(424, 'FS 5', 'Field Study 5', 1, '44', '2013-2014'),
(425, 'Nat. Sci. 3', 'Physical Science', 3, '44', '2013-2014'),
(426, 'Philo. 3', 'Logic', 3, '44', '2013-2014'),
(427, 'S. Sc. 19', 'Society & Culture with FP', 3, '44', '2013-2014'),
(428, 'Educ.', 'The Teaching Profession', 3, '45', '2013-2014'),
(429, 'Nat. Sci. 3', 'Astronomy', 3, '41', '2013-2014'),
(430, 'Nat. Sci. 3', 'Physics', 3, '45', '2013-2014'),
(431, 'Values', 'Values Education', 3, '45', '2013-2014'),
(432, 'HELE', 'Home Economics & Livelihood Education', 3, '45', '2013-2014'),
(433, 'MAPEH', 'Music Art & Physical Ed.', 3, '45', '2013-2014'),
(434, 'FS 6', 'Field Study 6', 1, '45', '2013-2014'),
(435, 'ST 3', 'Research', 3, '45', '2013-2014'),
(436, 'Math ', 'Probling Solving', 3, '45', '2013-2014'),
(437, 'Student Teaching', 'Practice Teaching', 6, 'Grade 7', '2014-2015'),
(439, 'English 02', 'Developmental Reading 2', 0, 'Grade 7', '2013-2014'),
(440, 'Psychology 1a', 'General Psychology with Moral Regen & Drug Abuse Ed.', 0, 'Grade 7', '2013-2014'),
(441, 'English 40', 'Applied Linguistics', 0, 'Grade 7', '2013-2014');

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `AutoID` int(11) NOT NULL,
  `Autonumber` varchar(90) NOT NULL,
  `Incrementvalue` int(11) NOT NULL,
  `EndValue` int(11) NOT NULL,
  `Remarks` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`AutoID`, `Autonumber`, `Incrementvalue`, `EndValue`, `Remarks`) VALUES
(1, '000', 1, 1, 'StudentID'),
(2, '0', 1, 1, 'TransNo'),
(3, '1518', 1, 9, 'ORNO');

-- --------------------------------------------------------

--
-- Table structure for table `tblbackaccount`
--

CREATE TABLE `tblbackaccount` (
  `BackAccountID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `BackAccount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbackaccount`
--

INSERT INTO `tblbackaccount` (`BackAccountID`, `IDNO`, `BackAccount`) VALUES
(1, '20004207', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblessentialfees`
--

CREATE TABLE `tblessentialfees` (
  `EsentialID` int(11) NOT NULL,
  `Description` varchar(90) NOT NULL,
  `Fees` double NOT NULL,
  `YearLevel` varchar(90) NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblessentialfees`
--

INSERT INTO `tblessentialfees` (`EsentialID`, `Description`, `Fees`, `YearLevel`, `Remarks`) VALUES
(8, 'Laboratory', 3000, 'Grade 7', ''),
(9, 'Tution Fee', 4500, 'Grade VII', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblnonessentialfees`
--

CREATE TABLE `tblnonessentialfees` (
  `NoneEssentialID` int(11) NOT NULL,
  `Description` varchar(90) NOT NULL,
  `Fees` double NOT NULL,
  `YearLevel` varchar(90) NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `PaymentID` int(11) NOT NULL,
  `ORNO` varchar(90) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `Fullname` varchar(90) NOT NULL,
  `Level` varchar(30) NOT NULL,
  `AmountPaid` double NOT NULL,
  `BalAmount` double NOT NULL,
  `DatePaid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`PaymentID`, `ORNO`, `IDNO`, `Fullname`, `Level`, `AmountPaid`, `BalAmount`, `DatePaid`) VALUES
(1, '', '20004207', 'lhenyl Grace Amparado', 'Grade 7', 2000, 1000, '2018-10-08'),
(2, '', '20004207', 'lhenyl Grace Amparado', 'Grade 7', 1000, 1000, '2018-10-08'),
(3, '', '20004207', 'lhenyl Grace Amparado', 'Grade 7', 1000, 1000, '2018-10-08'),
(4, '', '20001779', 'Joevel Herrera', 'Grade 7', 1000, 3000, '2018-10-13'),
(5, '', '20001779', 'Joevel Herrera', 'Grade 7', 1000, 3000, '2018-10-13'),
(6, '', '20001779', 'Joevel Herrera', 'Grade 7', 1000, 2000, '2018-10-13'),
(7, '201815181', '20004277', 'Jesterramy Da-anoy ', 'Grade VII', 1000, 4500, '2018-10-18'),
(8, '201815182', '20004277', 'Jesterramy Da-anoy ', 'Grade VII', 1500, 3500, '2018-10-18'),
(9, '201815183', '20004277', 'Jesterramy Da-anoy ', 'Grade VII', 500, 1500, '2018-10-18'),
(10, '201815184', '20004277', 'Jesterramy Da-anoy ', 'Grade VII', 500, 1000, '2018-10-18'),
(11, '201815185', '20004207', 'lhenyl Grace Amparado', 'Grade 7', 1000, 2000, '2018-10-18'),
(12, '201815186', '20004180', 'mylene ferrer', 'Grade 7', 1000, 2000, '2018-10-18'),
(13, '201815187', '20004180', 'mylene ferrer', 'Grade 7', 1000, 1000, '2018-10-18'),
(14, '201815188', '20004180', 'mylene ferrer', 'Grade 7', 1000, 1000, '2018-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequirements`
--

CREATE TABLE `tblrequirements` (
  `REQ_ID` int(30) NOT NULL,
  `NSO` varchar(5) NOT NULL DEFAULT 'no',
  `PICID` varchar(5) NOT NULL,
  `REPORTCARD` varchar(5) NOT NULL DEFAULT 'no',
  `CERTIFICATE_OF_TRANSFER` varchar(5) NOT NULL DEFAULT 'no',
  `IDNO` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequirements`
--

INSERT INTO `tblrequirements` (`REQ_ID`, `NSO`, `PICID`, `REPORTCARD`, `CERTIFICATE_OF_TRANSFER`, `IDNO`) VALUES
(20, 'Yes', 'Yes', 'Yes', 'Yes', 20004277),
(21, 'Yes', 'No', 'Yes', 'Yes', 20004207),
(22, 'Yes', 'No', 'Yes', 'No', 20004180),
(23, 'Yes', 'No', 'Yes', 'No', 20004425),
(24, 'Yes', 'No', 'No', 'No', 20002251),
(25, 'Yes', 'No', 'Yes', 'No', 20002838),
(26, 'Yes', 'No', 'Yes', 'No', 20004623),
(27, 'Yes', 'No', 'Yes', 'No', 2001497),
(28, 'Yes', 'No', 'Yes', 'No', 20001057),
(29, 'Yes', '0', 'Yes', 'No', 20004407),
(30, 'Yes', '0', 'Yes', 'Yes', 20004749),
(31, 'Yes', 'No', 'No', 'No', 20001484),
(32, 'Yes', 'No', 'Yes', 'Yes', 20003333),
(33, 'Yes', '0', 'Yes', 'No', 20004510),
(34, 'Yes', '0', 'Yes', 'No', 20001779),
(35, 'Yes', 'No', 'Yes', 'No', 20001482),
(36, 'Yes', '0', 'Yes', 'Yes', 20001937),
(37, 'Yes', '0', 'Yes', 'No', 20001648),
(38, 'Yes', '0', 'Yes', 'Yes', 20002408),
(39, 'Yes', '0', 'Yes', 'Yes', 20005936),
(40, 'No', '0', 'No', 'No', 20001550),
(41, 'Yes', '0', 'Yes', 'No', 20002270),
(42, 'Yes', '0', 'Yes', 'No', 20001932),
(43, 'Yes', 'No', 'Yes', 'Yes', 20001498),
(45, 'Yes', '0', 'Yes', 'Yes', 20001503),
(46, 'Yes', '0', 'Yes', 'No', 20001925),
(47, 'Yes', '0', 'Yes', 'No', 20001658),
(48, 'Yes', '0', 'No', 'No', 20001550),
(49, 'Yes', '0', 'Yes', 'No', 20001957),
(50, 'No', '0', 'No', 'No', 20001456),
(51, 'Yes', '0', 'Yes', 'Yes', 20001673),
(52, 'Yes', '0', 'Yes', 'Yes', 20001557),
(53, 'Yes', '0', 'Yes', 'No', 20002311),
(54, 'Yes', 'No', 'Yes', 'Yes', 20001742),
(55, 'Yes', 'No', 'Yes', 'Yes', 20002106),
(56, 'Yes', '0', 'Yes', 'No', 20001853),
(57, 'Yes', '0', 'No', 'Yes', 20001645),
(59, 'No', 'No', 'No', 'No', 0),
(60, 'No', 'No', 'No', 'No', 0),
(61, 'No', 'No', 'No', 'No', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE `tblsection` (
  `SECTIONID` int(11) NOT NULL,
  `SECTION` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`SECTIONID`, `SECTION`) VALUES
(3, 'a'),
(4, 'b'),
(5, 'c'),
(6, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `tblstatementofaccounts`
--

CREATE TABLE `tblstatementofaccounts` (
  `AccountID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `Fullname` varchar(90) NOT NULL,
  `CurrentAmount` double NOT NULL,
  `BackAccount` double NOT NULL,
  `TotalAmount` double NOT NULL,
  `AmountPaid` double NOT NULL,
  `CurrentBalance` double NOT NULL,
  `SchoolYear` varchar(90) NOT NULL,
  `YearLevel` varchar(90) NOT NULL,
  `DateEnrolled` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstatementofaccounts`
--

INSERT INTO `tblstatementofaccounts` (`AccountID`, `IDNO`, `Fullname`, `CurrentAmount`, `BackAccount`, `TotalAmount`, `AmountPaid`, `CurrentBalance`, `SchoolYear`, `YearLevel`, `DateEnrolled`) VALUES
(1, '20004207', 'lhenyl Grace Amparado', 3000, 0, 3000, 1000, 0, '2013-2014', 'Grade 7', '2018-10-01'),
(4, '20004277', 'Jesterramy Da-anoy ', 4500, 0, 4500, 500, 1000, '2013-2014', 'Grade VII', '2018-10-01'),
(5, '20004207', 'lhenyl Grace Amparado', 3000, 0, 3000, 1000, 2000, '2013-2014', 'Grade 7', '2018-10-18'),
(6, '20004180', 'mylene ferrer', 3000, 0, 3000, 2000, 1000, '2013-2014', 'Grade 7', '2018-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `tblstuddetails`
--

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL,
  `FATHER_FNAME` varchar(255) NOT NULL,
  `FATHER_MNAME` varchar(255) NOT NULL,
  `FATHER_LNAME` varchar(255) NOT NULL,
  `FADDRESS` text NOT NULL,
  `FMONTHINCOME` int(11) NOT NULL,
  `FATHER_OCCU` varchar(255) NOT NULL,
  `MOTHER_FNAME` varchar(255) NOT NULL,
  `MOTHER_MNAME` varchar(255) NOT NULL,
  `MOTHER_LNAME` varchar(255) NOT NULL,
  `MOTHER_OCCU` varchar(255) NOT NULL,
  `MADDRESS` text NOT NULL,
  `MMONTHINCOME` int(11) NOT NULL,
  `IDNO` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstuddetails`
--

INSERT INTO `tblstuddetails` (`DETAIL_ID`, `FATHER_FNAME`, `FATHER_MNAME`, `FATHER_LNAME`, `FADDRESS`, `FMONTHINCOME`, `FATHER_OCCU`, `MOTHER_FNAME`, `MOTHER_MNAME`, `MOTHER_LNAME`, `MOTHER_OCCU`, `MADDRESS`, `MMONTHINCOME`, `IDNO`) VALUES
(20, 'Walter', '', 'Da-anoy', '', 0, 'Employee', 'Jessielyn', '', 'Da-anoy', 'Housewife', '', 0, 20004277),
(21, 'Mario P. Amparado', '', '', '', 0, 'OFW', 'Yolly D. Odasco', '', '', 'Housewife', '', 0, 20004207),
(22, 'robert P. ferrer', '', '', '', 0, 'fisherman', 'josephene b. ferrer', '', '', 'Housewife', '', 0, 20004180),
(23, 'Renelio Pintuan', '', '', '', 0, 'Driver', 'Nanette Pintuan', '', '', 'OFW', '', 0, 20004425),
(24, '', '', '', '', 0, '', 'dionalita apawan', '', '', 'housewife', '', 0, 20002251),
(25, 'Pablito Vicente', '', '', '', 0, 'Laborer', 'Crislie Vicente', '', '', 'Laborer', '', 0, 20002838),
(26, 'Luis ', '', 'Balico', '', 0, 'N/A', 'Leonisa Balico', '', '', 'N/A', '', 0, 20004623),
(27, 'Panfilo Catalan Buendia', '', '', '', 0, 'Vendors', 'Gloria Aspan Buendia', '', '', 'Vendors', '', 0, 2001497),
(28, 'Ramar salazar', '', '', '', 0, 'hair stylist', 'Kathryn Lucy salazar', '', '', 'none', '', 0, 20001057),
(29, 'Ronald Martisano', '', '', '', 0, 'laxborer', 'Jean Martisano', '', '', 'Housewife', '', 0, 20004407),
(30, 'Rollen Gealon', '', '', '', 0, 'Laborer', 'Marife Gealon', '', '', 'Housewife', '', 0, 20004749),
(31, 'James Andrew Benedicto', '', '', '', 0, 'Cook', 'Ma. Sheila Benedicto', '', '', 'DH', '', 0, 20001484),
(32, 'Leve Voluntate', '', '', '', 0, 'Farmer', 'Lerma Voluntate', '', '', 'Deceased', 'Bacolod City', 0, 20003333),
(33, 'Rudy B. Magada, Jr', '', '', '', 0, 'Fish Dealer', 'Mary I. Magada', '', '', 'Housewife', 'Libon, Tuyom, Cauayan, Negros Occidental', 0, 20004510),
(34, 'Dionisio C. Herrera', '', '', '', 0, 'Farmer', 'Rubylan O. Herrera', '', '', 'plane housewife', '', 0, 20001779),
(35, 'Adriano Bayog', '', '', '', 0, 'Farmer', 'Mamerna Dulana', '', '', 'housekeeper', 'La Castellana', 0, 20001482),
(36, 'Ruben J. Principe', '', '', '', 0, '', 'Evelina Gumawa Principe', '', '', '', '', 0, 20001937),
(37, 'Deceased', '', '', '', 0, 'Deceased', 'Lorna Bandolos', '', '', 'Housewife', 'Brgy Dancalan Ilog Negros Occidental', 0, 20001648),
(38, 'AMBROCIO SERION', '', '', '', 0, 'FARMER', 'NORMENDA SERION', '', '', 'HOUSE WIFE', 'KABANKALAN CITY', 0, 20002408),
(39, 'no', '', '', '', 0, '', 'Merlita Macurio', '', '', 'housewife', '', 0, 20005936),
(40, 'b', '', '', '', 0, '', '', '', '', '', '', 0, 20001550),
(41, 'Mr. Edgar C. Macario', '', '', '', 0, 'Farmer', 'Mrs. Hilda F. Macario', '', '', 'Housewife', 'Brgy. Salong Kabankalan City', 0, 20002270),
(42, 'Virgilio Puyogao', '', '', '', 0, 'Carpenter', 'Angelica Puyogao', '', '', 'Housewife', 'Dancalan, Ilog, Negros Occidental', 0, 20001932),
(43, 'William ', '', 'Bulgado', 'magsaysay tabu,ilog negros occidental', 0, 'Driver', 'Lolita ', '', 'Bulgado', 'Housewife', 'magsaysay tabu,ilog negros occidental', 0, 20001498),
(45, 'Ricardo Tayoba Cabiten', '', '', '', 0, 'Farmer', 'Nelly Cuenca Cabiten', '', '', 'Housewife', 'Mambugsay, Cauayan, Negros Occidental', 0, 20001503),
(46, 'Joenarie CastaÃ±o', '', '', '', 0, 'Laborer', 'Jeanly CastaÃ±o', '', '', 'Housewife', 'N.A', 0, 20001925),
(47, 'Alex Flores', '', '', '', 0, 'Carpenter', 'Nelfa L. Flores', '', '', 'Brgy. Custodian', 'Brgy. Camugao, Kabankalan City', 0, 20001658),
(48, 'BENIGNO B. CORTEZ', '', '', '', 0, 'FARMER', 'TERESITA P. CORTEZ', '', '', 'HOUSE WIFE', 'NONE', 0, 20001550),
(49, 'Samuel Daulong', '', '', '', 0, 'Construction Worker', 'Mariles Daulong', '', '', 'Office employee', 'Brgy. Binicuil, Kabankalan City', 0, 20001957),
(50, 'Diosdado Arillo', '', '', '', 0, 'Employee', 'Jesusa Arillo', '', '', 'House Wife', 'Adela St. Kabankalan City', 0, 20001456),
(51, 'Jesus M. Gamala', '', '', '', 0, 'Farmer', 'Carmen N. Gamala', '', '', 'Housewife', 'DasmariÃ±as Cavite', 0, 20001673),
(52, 'Raul D. Deanon', '', '', '', 0, 'Driver', 'Jonah O. Deanon', '', '', 'Housewife', '', 0, 20001557),
(53, 'Ernesto Elijan', '', '', '', 0, 'Welder', 'Emilia Elijan', '', '', 'Vendor', 'Saudi Rihad', 0, 20002311),
(54, 'Edward E. Geria', '', '', '', 0, 'Seaman', 'Nilfa G. Geria', '', '', 'Agriculturist', '', 0, 20001742),
(55, 'Benjie Melanio Sr.', '', '', '', 0, 'Farmer', 'Delia Melanio', '', '', 'Housewife', '', 0, 20002106),
(56, 'Jose Romel T. Silleva', '', '', '', 0, 'Carpenter', 'Daisy O. Silleva', '', '', 'House Wife', 'iloilo City', 0, 20001853),
(57, 'Dionisio espadero', '', '', '', 0, 'Farming', 'Rosita Espadero', '', '', 'House wife', 'Tapi kab City', 0, 20001645),
(59, '', '', '', '', 0, '', '', '', '', '', '', 0, 0),
(60, '', '', '', '', 0, '', '', '', '', '', '', 0, 0),
(61, '', '', '', '', 0, '', '', '', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `AGE` int(30) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `GUARDIAN` text NOT NULL,
  `GUARDIAN_ADD` text NOT NULL,
  `GUARDIAN_TEL` int(11) NOT NULL,
  `LASTSCHOOLATTEND` text NOT NULL,
  `HEIGTH` int(11) NOT NULL,
  `WEIGTH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`S_ID`, `IDNO`, `FNAME`, `LNAME`, `MNAME`, `SEX`, `BDAY`, `BPLACE`, `AGE`, `HOME_ADD`, `GUARDIAN`, `GUARDIAN_ADD`, `GUARDIAN_TEL`, `LASTSCHOOLATTEND`, `HEIGTH`, `WEIGTH`) VALUES
(17, 20004277, 'Jesterramy', 'Da-anoy ', 'Patete', 'MALE', '1995-06-12', 'Butuan City', 23, 'Brgy Camugao Kabankalan City', 'sadsad', 'sadasd', 231121, 'sdadasd', 0, 0),
(18, 20004207, 'lhenyl Grace', 'Amparado', 'odasco', 'MALE', '1995-08-27', 'Lancaan Dasmarinas Cavite', 18, 'Yao Yao Cauayan negros Occidental', '', '', 0, '', 0, 0),
(19, 20004180, 'mylene', 'ferrer', 'balucan', 'MALE', '1972-05-22', 'brgy.cayhagan,sipalay city,neg.occ.', 18, 'brgy.cayhagan,sipalay city,neg.occ.', '', '', 0, '', 0, 0),
(20, 20004425, 'John kenneth', 'Pintuan', 'Jaranilla', 'MALE', '1996-05-14', 'PGH Manila', 17, 'Villa San jose Brgy. 6 Kabankalan City Negros Occidental', '', '', 0, '', 0, 0),
(21, 20002251, 'adrian', 'apawan', 'elloran', 'MALE', '1995-10-26', 'bacolod city', 18, 'adela st. brgy.1z', '', '', 0, '', 0, 0),
(22, 20002838, 'Mark Anthony', 'Vicente', 'Titong', 'M', '1995-10-19', 'Kabankalan City', 18, 'Kabankalan City', 'dsad', 'sadsad', 2212, 'sda', 0, 0),
(23, 20004623, 'Sharah Mae', 'Balico', 'Pillones', 'MALE', '1990-11-01', 'Tagoloan Misamis Oriental', 23, 'Brgy Isidro Village, Talubangi Kabankalan City', '', '', 0, '', 0, 0),
(24, 2001497, 'Raffy', 'Buendia', 'Rendon', 'MALE', '1993-04-13', 'Tapi, Kabankalan City', 20, 'Brgy. Tapi, Kabankalan City, Negros Occidental', '', '', 0, '', 0, 0),
(25, 20001057, 'Evan Lloyd', 'Salazar', 'Ayalin', 'MALE', '1995-05-17', 'Kabankalan City', 18, '12 rizal St.kabankalan CIty', '', '', 0, '', 0, 0),
(26, 20004407, 'John Mark', 'Martisano', 'Depra', 'MALE', '1993-06-17', 'Ilog, Neg. Occ', 20, 'So. Malabong Andulauan Ilog, Neg. Occ.', '', '', 0, '', 0, 0),
(27, 20004749, 'Jamaica Jairah', 'Gealon', 'dela Cruz', 'FEMALE', '1994-01-12', 'Brgy.2 Ilog,Neg.Occ.', 19, 'Brgy.2 Ilog Negros Occidental', '', '', 0, '', 0, 0),
(28, 20001484, 'James Angelo', 'Benedicto', 'Garanganao', 'MALE', '1993-11-17', 'Bacolod City', 25, 'Dancalan Ilog, Negros Occidental', 'qeqweqwe', '', 0, '', 0, 0),
(29, 20003333, 'Jenebie', 'Voluntate', 'Tabucon', 'MALE', '1991-06-17', 'Kabankalan', 22, 'Brgy.Camansi,Kabankalan City,Neg.Occ.', '', '', 0, 'asdasdas', 0, 0),
(30, 20004510, 'Rudy', 'Magada, I', 'Itona', 'MALE', '1995-02-05', 'Calumpang, Cauayan, Negros Occidental', 18, 'Libon, Tuyom, Cauayan, Negros Occidental', '', '', 0, '', 0, 0),
(31, 20001779, 'Joevel', 'Herrera', 'Gonzales', 'MALE', '1993-05-16', 'Negros Occidental', 20, 'Brgy 1,Kab city ,Neg Occ', '', '', 0, '', 0, 0),
(32, 20001482, 'Aldren', 'Bayog', 'Dulana ', 'MALE', '1993-12-27', 'La Castellana', 20, 'Kabankalan City', '', '', 213123, 'sdasdasd', 0, 0),
(33, 20001937, 'Merry Grace', 'PRINCIPE', 'Gumawa', 'FEMALE', '1988-03-12', 'Candoni', 25, 'Pabera St.Brgy.East,Candoni, Negros Occidental', '', '', 0, '', 0, 0),
(34, 20001648, 'Shiela Marie', 'Bandolos', 'Tadaya', 'FEMALE', '1990-08-21', 'Brgy. Dancalan Ilog Negros Occidental', 22, 'Brgy. Dancalan Ilog Negros Occidental', '', '', 0, '', 0, 0),
(35, 20002408, 'ANALYN', 'SERION', 'ONLAGADA', 'FEMALE', '1993-10-30', 'Bry. TAMPALON KABANKALAN CITY', 20, 'Kabankalan City', '', '', 0, '', 0, 0),
(36, 20005936, 'Jean', 'MACURIO', 'Gondao', 'FEMALE', '1994-10-29', 'Brgy.Bantayan', 19, 'Brgy. Bantayan Kabankalan City', '', '', 0, '', 0, 0),
(37, 20001550, 'BENIGNO', 'CORTEZ', 'LACPAO', 'MALE', '1992-02-03', 'DUMAGUETE', 21, 'TABUGON,KABANKALAN CITY,NEGROS OCCIDENTAL', '', '', 0, '', 0, 0),
(38, 20002270, 'Arhil Jun', 'Macario', 'Fernandez', 'MALE', '1993-06-12', 'Cabintagan, Brgy. Linao', 20, 'Cabintagan, Brgy. Linao Kabankalan City, Negros Occidental', '', '', 0, '', 0, 0),
(39, 20001932, 'Ana Mae', 'Puyogao', 'Lacson', 'FEMALE', '1992-10-11', 'Dancalan, Ilog, Neg. Occ', 21, 'Brgy. Dancalan, Ilog, Negros Occidental', '', '', 0, '', 0, 0),
(40, 20001498, 'gina', 'bulgado', 'malabago', 'FEMALE', '1992-06-28', 'Magsaysay tabu ilog ', 21, 'magsaysay tabu,ilog negros occidental', '', '', 0, '', 0, 0),
(42, 20001503, 'Rhea May', 'Cabiten', 'Cuenca', 'FEMALE', '1992-05-01', 'Mambugsay, Cauayan, Negros Occidental', 21, 'Mambugsay, Cauayan, Negros Occidental', '', '', 0, '', 0, 0),
(43, 20001925, 'Jojean', 'CastaÃ±o', 'Soberano', 'FEMALE', '1994-09-27', 'Silay City', 19, 'Brgy. Daan Banua, Kabankalan City', '', '', 0, '', 0, 0),
(44, 20001658, 'Steve', 'Flores', 'Liper', 'MALE', '1993-01-02', 'Brgy. Camugao, Kabankalan City', 21, 'Brgy. Camugao, Kabankalan City', '', '', 0, '', 0, 0),
(46, 20001957, 'Ma. Lavinia', 'Daulong', 'Corsino', 'FEMALE', '1994-06-09', 'Caliling,Cauayan Neg. Occ', 19, 'Caliling,Cauayan Negros Occidental', '', '', 0, '', 0, 0),
(47, 20001456, 'Diwannie', 'Arillo', 'Pagunsan', 'FEMALE', '1992-10-12', 'Brgy.Tabugon Kabankalan City Neg. Occ.', 21, 'Brgy. Tabugon Kabankalan City Neg. Occ.', '', '', 0, '', 0, 0),
(48, 20001673, 'Carjei', 'Gamala', 'Nazareth', 'MALE', '1993-04-28', 'Bulata', 20, 'Bulata Cauyan Negros Occidental', '', '', 0, '', 0, 0),
(49, 20001557, 'Jenny Joy', 'Deanon', 'O.', 'FEMALE', '1992-12-16', 'Dancalan Ilog,Neg, Occ', 22, 'Dancalan Ilog Neg,Occ', '', '', 0, '', 0, 0),
(50, 20002311, 'Elsie', 'Elijan', 'Tabligan', 'FEMALE', '1989-10-08', 'Provincial Hospital Bacolod City', 24, 'Malinao, Dancalan, Ilog Negros Occidental', '', '', 0, '', 0, 0),
(51, 20001742, 'Gergen Mae', 'Geria', 'Gadot', 'MALE', '1994-05-19', 'BAcolod City', 19, 'Brgy.Guiljungan Cauayan Negros Occidental', '', '', 0, '', 0, 0),
(52, 20002106, 'Jerom', 'Melanio', 'Bandolon', 'MALE', '1992-10-12', 'Kabankalan City', 21, 'Brgy. Linao, Kabankalan City', 'sadas', '', 0, '', 0, 0),
(53, 20001853, 'Liezl', 'Silleva', 'OrdoÃ±a', 'FEMALE', '1994-05-19', 'Su-ay', 19, 'Mapait, Su-ay, Himamaylan City, Negros Occidental', '', '', 0, '', 0, 0),
(54, 20001645, 'roselyn', 'espadero', 'T', 'FEMALE', '1989-02-11', 'dancalan ilog', 24, 'tapi kab city', '', '', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudsiblings`
--

CREATE TABLE `tblstudsiblings` (
  `SIBLING_ID` int(11) NOT NULL,
  `NAMEB_F` text NOT NULL,
  `AGEB_F` int(11) NOT NULL,
  `NAMEB_S` text NOT NULL,
  `AGEB_S` int(11) NOT NULL,
  `NAMEB_T` text NOT NULL,
  `AGEB_T` int(11) NOT NULL,
  `NAMES_F` text NOT NULL,
  `AGES_F` int(11) NOT NULL,
  `NAMES_S` text NOT NULL,
  `AGES_S` int(11) NOT NULL,
  `NAMES_T` text NOT NULL,
  `AGES_T` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudsiblings`
--

INSERT INTO `tblstudsiblings` (`SIBLING_ID`, `NAMEB_F`, `AGEB_F`, `NAMEB_S`, `AGEB_S`, `NAMEB_T`, `AGEB_T`, `NAMES_F`, `AGES_F`, `NAMES_S`, `AGES_S`, `NAMES_T`, `AGES_T`, `IDNO`) VALUES
(1, 'xzcW', 121, 'xczW', 31, 'xczW', 61, '5W', 21, '2W', 21, '3W', 31, 20004277),
(2, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004207),
(3, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004180),
(4, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004425),
(5, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20002251),
(6, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20002838),
(7, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004623),
(8, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 2001497),
(9, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001057),
(10, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004407),
(11, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004749),
(12, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001484),
(13, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20003333),
(14, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20004510),
(15, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001779),
(16, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001482),
(17, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001937),
(18, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001648),
(19, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20002408),
(20, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20005936),
(21, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001550),
(22, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20002270),
(23, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001932),
(24, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001498),
(25, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001503),
(26, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001925),
(27, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001658),
(28, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001957),
(29, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001456),
(30, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001673),
(31, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001557),
(32, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20002311),
(33, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001742),
(34, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20002106),
(35, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001853),
(36, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 20001645),
(38, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 0),
(39, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 0),
(40, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudupdatelevel`
--

CREATE TABLE `tblstudupdatelevel` (
  `UPLEVEL_ID` int(11) NOT NULL,
  `IDNO` int(11) NOT NULL,
  `LEVEL` varchar(30) NOT NULL,
  `SECTION` varchar(10) NOT NULL,
  `AY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudupdatelevel`
--

INSERT INTO `tblstudupdatelevel` (`UPLEVEL_ID`, `IDNO`, `LEVEL`, `SECTION`, `AY`) VALUES
(1, 20004277, 'Grade VII', 'a', '2013-2014'),
(2, 20004207, 'Grade 7', 'A', '2013-2014'),
(3, 20004180, 'Grade 7', 'A', '2013-2014'),
(4, 20002251, 'Grade VII', 'B', '2014-2015'),
(5, 20004407, 'Grade 7', 'A', '2012-2013'),
(6, 20004749, 'Grade 7', 'A', '2012-2013'),
(7, 20004623, 'Grade 7', 'A', '2014-2015'),
(8, 20002838, 'Grade 7', 'A', '2013-2014'),
(9, 20001057, 'Grade 8', 'C', '2013-2014'),
(10, 20001484, 'Grade 7', 'B', '2013-2014'),
(11, 2001497, 'Grade 7', 'A', '2013-2014'),
(13, 20002106, '3rd Year', 'A', '2013-2014'),
(14, 20001853, 'Grade 7', 'A', '2013-2014'),
(15, 20004425, 'Grade 7', 'A', '2013-2014'),
(16, 20001937, 'Grade 7', 'A', '2013-2014'),
(17, 20004510, 'Grade 7', 'A', '2013-2014'),
(18, 20001779, 'Grade 7', 'a', '2012-2013');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`) VALUES
(21, 'Administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ay`
--
ALTER TABLE `ay`
  ADD PRIMARY KEY (`AY_ID`),
  ADD UNIQUE KEY `acadyr` (`ACADYR`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GRADE_ID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`YR_ID`);

--
-- Indexes for table `schoolyr`
--
ALTER TABLE `schoolyr`
  ADD PRIMARY KEY (`SYID`);

--
-- Indexes for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  ADD PRIMARY KEY (`STUDSUBJ_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBJ_ID`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`AutoID`);

--
-- Indexes for table `tblbackaccount`
--
ALTER TABLE `tblbackaccount`
  ADD PRIMARY KEY (`BackAccountID`);

--
-- Indexes for table `tblessentialfees`
--
ALTER TABLE `tblessentialfees`
  ADD PRIMARY KEY (`EsentialID`);

--
-- Indexes for table `tblnonessentialfees`
--
ALTER TABLE `tblnonessentialfees`
  ADD PRIMARY KEY (`NoneEssentialID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  ADD PRIMARY KEY (`REQ_ID`);

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`SECTIONID`);

--
-- Indexes for table `tblstatementofaccounts`
--
ALTER TABLE `tblstatementofaccounts`
  ADD PRIMARY KEY (`AccountID`);

--
-- Indexes for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  ADD PRIMARY KEY (`DETAIL_ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`S_ID`),
  ADD UNIQUE KEY `IDNO` (`IDNO`);

--
-- Indexes for table `tblstudsiblings`
--
ALTER TABLE `tblstudsiblings`
  ADD PRIMARY KEY (`SIBLING_ID`);

--
-- Indexes for table `tblstudupdatelevel`
--
ALTER TABLE `tblstudupdatelevel`
  ADD PRIMARY KEY (`UPLEVEL_ID`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ay`
--
ALTER TABLE `ay`
  MODIFY `AY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `YR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolyr`
--
ALTER TABLE `schoolyr`
  MODIFY `SYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `studentsubjects`
--
ALTER TABLE `studentsubjects`
  MODIFY `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbackaccount`
--
ALTER TABLE `tblbackaccount`
  MODIFY `BackAccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblessentialfees`
--
ALTER TABLE `tblessentialfees`
  MODIFY `EsentialID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnonessentialfees`
--
ALTER TABLE `tblnonessentialfees`
  MODIFY `NoneEssentialID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblrequirements`
--
ALTER TABLE `tblrequirements`
  MODIFY `REQ_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `SECTIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstatementofaccounts`
--
ALTER TABLE `tblstatementofaccounts`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstuddetails`
--
ALTER TABLE `tblstuddetails`
  MODIFY `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `S_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tblstudsiblings`
--
ALTER TABLE `tblstudsiblings`
  MODIFY `SIBLING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblstudupdatelevel`
--
ALTER TABLE `tblstudupdatelevel`
  MODIFY `UPLEVEL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
