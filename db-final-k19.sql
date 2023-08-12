-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 08:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` int(11) NOT NULL,
  `FacultyName` varchar(25) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `FacultyName`, `Description`) VALUES
(2143, 'Birkin', NULL),
(3467, 'Berndt', NULL),
(4756, 'Collins', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualifed`
--

CREATE TABLE `qualifed` (
  `FacultyID` int(11) DEFAULT NULL,
  `CourseID` char(8) DEFAULT NULL,
  `DateQualifed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualifed`
--

INSERT INTO `qualifed` (`FacultyID`, `CourseID`, `DateQualifed`) VALUES
(2143, 'ISM 3112', '1988-09-01'),
(2143, 'ISM 3113', '1988-09-01'),
(3467, 'ISM 4212', '1995-09-01'),
(3467, 'ISM 4930', '1996-09-01'),
(4756, 'ISM 3113', '1991-09-01'),
(4756, 'ISM 3112', '1991-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `SectionNo` int(11) NOT NULL,
  `Semester` char(7) NOT NULL,
  `CourseID` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`SectionNo`, `Semester`, `CourseID`) VALUES
(2712, 'I-2008', 'ISM 3113'),
(2713, 'I-2008', 'ISM 3113'),
(2714, 'I-2008', 'ISM 4212'),
(2715, 'I-2008', 'ISM 4930');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(11) NOT NULL,
  `StudentName` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `StudentName`) VALUES
(38214, 'Letersky'),
(54907, 'Altvater'),
(66324, 'Aiken'),
(70542, 'Marra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`SectionNo`,`Semester`,`CourseID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
