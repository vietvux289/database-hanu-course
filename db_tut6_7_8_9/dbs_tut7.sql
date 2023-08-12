-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 03:45 AM
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
-- Database: `dbs_tut7`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` char(8) NOT NULL,
  `CourseName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseName`) VALUES
('ISM 3112', 'Syst Design'),
('ISM 3113', 'Syst Analysis'),
('ISM 4212', 'Database'),
('ISM 4930', 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` int(11) NOT NULL,
  `FacultyName` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `FacultyName`) VALUES
(2143, 'Birkin'),
(3467, 'Berndt'),
(4756, 'Collins');

-- --------------------------------------------------------

--
-- Table structure for table `qualified`
--

CREATE TABLE `qualified` (
  `FacultyID` int(11) NOT NULL,
  `CourseID` char(8) NOT NULL,
  `DateQualified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qualified`
--

INSERT INTO `qualified` (`FacultyID`, `CourseID`, `DateQualified`) VALUES
(2143, 'ISM 3112', '1988-09-01'),
(2143, 'ISM 3113', '1988-09-01'),
(3467, 'ISM 4212', '1995-09-01'),
(3467, 'ISM 4930', '1996-09-01'),
(4756, 'ISM 3112', '1991-09-01'),
(4756, 'ISM 3113', '1991-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `StudentID` int(11) NOT NULL,
  `SectionNo` int(11) NOT NULL,
  `Semester` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`StudentID`, `SectionNo`, `Semester`) VALUES
(38214, 2714, 'I-2008'),
(54907, 2714, 'I-2008'),
(54907, 2715, 'I-2008'),
(66324, 2713, 'I-2008');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `SectionNo` int(11) NOT NULL,
  `Semester` char(6) NOT NULL,
  `CourseID` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `StudentName` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `StudentName`) VALUES
(38214, 'Letersky'),
(54907, 'ALtvater'),
(66324, 'Aiken'),
(70542, 'Marra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`);

--
-- Indexes for table `qualified`
--
ALTER TABLE `qualified`
  ADD PRIMARY KEY (`FacultyID`,`CourseID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`StudentID`,`SectionNo`,`Semester`);

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
