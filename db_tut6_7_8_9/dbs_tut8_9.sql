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
-- Database: `dbs_tut8_9`
--

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `ATTRACT_NO` decimal(10,0) NOT NULL,
  `ATTRACT_NAME` varchar(35) DEFAULT NULL,
  `ATTRACT_AGE` decimal(3,0) NOT NULL DEFAULT 0,
  `ATTRACT_CAPACITY` decimal(3,0) NOT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`ATTRACT_NO`, `ATTRACT_NAME`, `ATTRACT_AGE`, `ATTRACT_CAPACITY`, `PARK_CODE`) VALUES
('10034', 'ThunderCoaster', '11', '34', 'FR1001'),
('10056', 'SpinningTeacups', '4', '62', 'FR1001'),
('10067', 'FlightToStars', '11', '24', 'FR1001'),
('10078', 'Ant-Trap', '23', '30', 'FR1001'),
('10082', NULL, '10', '40', 'ZA1342'),
('10098', 'Carnival', '3', '120', 'FR1001'),
('20056', '3D-Lego_Show', '3', '200', 'UK3452'),
('30011', 'BlackHole2', '12', '34', 'UK3452'),
('30012', 'Pirates', '10', '42', 'UK3452'),
('30044', 'UnderSeaWord', '4', '80', 'UK3452'),
('98764', 'GoldRush', '5', '80', 'ZA1342');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_NUM` decimal(4,0) NOT NULL,
  `EMP_TITLE` varchar(4) DEFAULT NULL,
  `EMP_LNAME` varchar(15) NOT NULL,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_DOB` date NOT NULL,
  `EMP_HIRE_DATE` date DEFAULT NULL,
  `EMP_AREA_CODE` varchar(4) NOT NULL,
  `EMP_PHONE` varchar(12) NOT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_NUM`, `EMP_TITLE`, `EMP_LNAME`, `EMP_FNAME`, `EMP_DOB`, `EMP_HIRE_DATE`, `EMP_AREA_CODE`, `EMP_PHONE`, `PARK_CODE`) VALUES
('100', 'Ms', 'Calderdale', 'Emma', '1972-06-15', '1992-03-15', '0181', '324-9134', 'FR1001'),
('101', 'Ms', 'Ricardo', 'Marshel', '1978-03-19', '1996-04-25', '0181', '324-4472', 'UK3452'),
('102', 'Mr', 'Arshad', 'Arif', '1969-11-14', '1990-12-20', '7253', '675-8993', 'FR1001'),
('103', 'Ms', 'Roberts', 'Anne', '1974-10-16', '1994-08-16', '0181', '898-3456', 'UK3452'),
('104', 'Mr', 'Denver', 'Enrica', '1980-11-08', '2001-10-20', '7253', '504-4434', 'ZA1342'),
('105', 'Ms', 'Namowa', 'Mirrelle', '1990-03-14', '2006-11-08', '0181', '890-3243', 'FR1001'),
('106', 'Mrs', 'Smith', 'Gemma', '1968-02-12', '1989-01-05', '0181', '324-7845', 'ZA1342');

-- --------------------------------------------------------

--
-- Table structure for table `hours`
--

CREATE TABLE `hours` (
  `EMP_NUM` decimal(4,0) NOT NULL DEFAULT 0,
  `ATTRACT_NO` decimal(10,0) NOT NULL DEFAULT 0,
  `HOURS_PER_ATTRACT` decimal(2,0) NOT NULL,
  `HOUR_RATE` decimal(4,2) NOT NULL,
  `DATE_WORKED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hours`
--

INSERT INTO `hours` (`EMP_NUM`, `ATTRACT_NO`, `HOURS_PER_ATTRACT`, `HOUR_RATE`, `DATE_WORKED`) VALUES
('100', '10034', '6', '6.50', '2007-05-18'),
('100', '10034', '6', '6.50', '2007-05-20'),
('101', '10034', '6', '6.50', '2007-05-18'),
('102', '30012', '3', '5.99', '2007-05-23'),
('102', '30044', '6', '5.99', '2007-05-21'),
('102', '30044', '3', '5.99', '2007-05-22'),
('104', '30011', '6', '7.20', '2007-05-21'),
('104', '30012', '6', '7.20', '2007-05-22'),
('105', '10078', '3', '8.50', '2007-05-18'),
('105', '10098', '3', '8.50', '2007-05-18'),
('105', '10098', '6', '8.50', '2007-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `TRANSACTION_NO` decimal(10,0) NOT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL,
  `SALE_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`TRANSACTION_NO`, `PARK_CODE`, `SALE_DATE`) VALUES
('12781', 'FR1001', '2007-05-18'),
('12782', 'FR1001', '2007-05-18'),
('12783', 'FR1001', '2007-05-18'),
('12784', 'FR1001', '2007-05-18'),
('12785', 'FR1001', '2007-05-18'),
('12786', 'FR1001', '2007-05-18'),
('34534', 'UK3452', '2007-05-18'),
('34535', 'UK3452', '2007-05-18'),
('34536', 'UK3452', '2007-05-18'),
('34537', 'UK3452', '2007-05-18'),
('34538', 'UK3452', '2007-05-18'),
('34539', 'UK3452', '2007-05-18'),
('34540', 'UK3452', '2007-05-18'),
('34541', 'UK3452', '2007-05-18'),
('67589', 'ZA1342', '2007-05-18'),
('67590', 'ZA1342', '2007-05-18'),
('67591', 'ZA1342', '2007-05-18'),
('67592', 'ZA1342', '2007-05-18'),
('67593', 'ZA1342', '2007-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `sales_line`
--

CREATE TABLE `sales_line` (
  `TRANSACTION_NO` decimal(10,0) NOT NULL,
  `LINE_NO` decimal(2,0) NOT NULL,
  `TICKET_NO` decimal(10,0) NOT NULL,
  `LINE_QTY` decimal(4,0) NOT NULL DEFAULT 0,
  `LINE_PRICE` decimal(9,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_line`
--

INSERT INTO `sales_line` (`TRANSACTION_NO`, `LINE_NO`, `TICKET_NO`, `LINE_QTY`, `LINE_PRICE`) VALUES
('12781', '1', '13002', '2', '69.98'),
('12781', '2', '13001', '1', '14.99'),
('12782', '1', '13002', '2', '69.98'),
('12783', '1', '13003', '2', '41.98'),
('12784', '2', '13001', '1', '14.99'),
('12785', '1', '13001', '1', '14.99'),
('12785', '2', '13002', '1', '34.99'),
('12785', '3', '13002', '4', '139.96'),
('34534', '1', '88568', '4', '168.40'),
('34534', '2', '88567', '1', '22.50'),
('34534', '3', '89720', '2', '21.98'),
('34535', '1', '88568', '2', '84.20'),
('34536', '1', '89720', '2', '21.98'),
('34537', '1', '88568', '2', '84.20'),
('34537', '2', '88567', '1', '22.50'),
('34538', '1', '89720', '2', '21.98'),
('34539', '1', '89720', '2', '21.98'),
('34539', '2', '88568', '2', '84.20'),
('34540', '1', '88568', '4', '168.40'),
('34540', '2', '88567', '1', '22.50'),
('34540', '3', '89720', '2', '21.98'),
('34541', '1', '88568', '2', '84.20'),
('67589', '1', '67833', '2', '57.34'),
('67589', '2', '67832', '2', '37.12'),
('67590', '1', '67833', '2', '57.34'),
('67590', '2', '67832', '2', '37.12'),
('67591', '1', '67832', '1', '18.56'),
('67591', '2', '67855', '1', '12.12'),
('67592', '1', '67833', '4', '114.68'),
('67593', '1', '67833', '2', '57.34'),
('67593', '2', '67832', '2', '37.12');

-- --------------------------------------------------------

--
-- Table structure for table `themepark`
--

CREATE TABLE `themepark` (
  `PARK_CODE` varchar(10) NOT NULL,
  `PARK_NAME` varchar(35) NOT NULL,
  `PARK_CITY` varchar(50) NOT NULL,
  `PARK_COUNTRY` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themepark`
--

INSERT INTO `themepark` (`PARK_CODE`, `PARK_NAME`, `PARK_CITY`, `PARK_COUNTRY`) VALUES
('FR1001', 'FairyLand', 'PARIS', 'FR'),
('NL1202', 'Efling', 'NOORD', 'NL'),
('SP4533', 'AdventurePort', 'BARCELONA', 'SP'),
('SW2323', 'Labyrinthe', 'LAUSANNE', 'SW'),
('UK2622', 'MiniLand', 'WINDSOR', 'UK'),
('UK3452', 'PleasureLand', 'STOKE', 'UK'),
('ZA1342', 'GoldTown', 'JOHANNESBURG', 'ZA');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TICKET_NO` decimal(10,0) NOT NULL,
  `TICKET_PRICE` decimal(4,2) NOT NULL DEFAULT 0.00,
  `TICKET_TYPE` varchar(10) DEFAULT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TICKET_NO`, `TICKET_PRICE`, `TICKET_TYPE`, `PARK_CODE`) VALUES
('11001', '24.99', 'Adult', 'SP4533'),
('11002', '14.99', 'Child', 'SP4533'),
('11003', '10.99', 'Senior', 'SP4533'),
('13001', '18.99', 'Child', 'FR1001'),
('13002', '34.99', 'Adult', 'FR1001'),
('13003', '20.99', 'Senior', 'FR1001'),
('67832', '18.56', 'Child', 'ZA1342'),
('67833', '28.67', 'Adult', 'ZA1342'),
('67855', '12.12', 'Senior', 'ZA1342'),
('88567', '22.50', 'Child', 'UK3452'),
('88568', '42.10', 'Adult', 'UK3452'),
('89720', '10.99', 'Senior', 'UK3452');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ticket_sales`
-- (See below for the actual view)
--
CREATE TABLE `ticket_sales` (
`PARK_NAME` varchar(35)
,`min(LINE_PRICE)` decimal(9,2)
,`max(LINE_PRICE)` decimal(9,2)
,`AVG(LINE_PRICE)` decimal(13,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tparkssold`
-- (See below for the actual view)
--
CREATE TABLE `tparkssold` (
`PARK_CODE` varchar(10)
,`PARK_NAME` varchar(35)
,`PARK_CITY` varchar(50)
,`PARK_COUNTRY` char(2)
);

-- --------------------------------------------------------

--
-- Structure for view `ticket_sales`
--
DROP TABLE IF EXISTS `ticket_sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ticket_sales`  AS SELECT `themepark`.`PARK_NAME` AS `PARK_NAME`, min(`sales_line`.`LINE_PRICE`) AS `min(LINE_PRICE)`, max(`sales_line`.`LINE_PRICE`) AS `max(LINE_PRICE)`, avg(`sales_line`.`LINE_PRICE`) AS `AVG(LINE_PRICE)` FROM ((`sales_line` join `sales` on(`sales_line`.`TRANSACTION_NO` = `sales`.`TRANSACTION_NO`)) join `themepark` on(`sales`.`PARK_CODE` = `themepark`.`PARK_CODE`)) WHERE `themepark`.`PARK_CODE` = (select `sales`.`PARK_CODE` from DUAL where `sales_line`.`TRANSACTION_NO` = `sales`.`TRANSACTION_NO`) GROUP BY `themepark`.`PARK_NAME``PARK_NAME`  ;

-- --------------------------------------------------------

--
-- Structure for view `tparkssold`
--
DROP TABLE IF EXISTS `tparkssold`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tparkssold`  AS SELECT `themepark`.`PARK_CODE` AS `PARK_CODE`, `themepark`.`PARK_NAME` AS `PARK_NAME`, `themepark`.`PARK_CITY` AS `PARK_CITY`, `themepark`.`PARK_COUNTRY` AS `PARK_COUNTRY` FROM `themepark` WHERE exists(select `sales`.`PARK_CODE` from `sales` where `sales`.`PARK_CODE` = `themepark`.`PARK_CODE` limit 1)  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`ATTRACT_NO`),
  ADD KEY `PARK_CODE` (`PARK_CODE`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_NUM`),
  ADD KEY `PARK_CODE` (`PARK_CODE`),
  ADD KEY `EMP_LNAME_INDEX` (`EMP_LNAME`(8));

--
-- Indexes for table `hours`
--
ALTER TABLE `hours`
  ADD PRIMARY KEY (`EMP_NUM`,`ATTRACT_NO`,`DATE_WORKED`),
  ADD KEY `EMP_NUM` (`EMP_NUM`),
  ADD KEY `ATTRACT_NO` (`ATTRACT_NO`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`TRANSACTION_NO`),
  ADD KEY `PARK_CODE` (`PARK_CODE`);

--
-- Indexes for table `sales_line`
--
ALTER TABLE `sales_line`
  ADD PRIMARY KEY (`TRANSACTION_NO`,`LINE_NO`),
  ADD KEY `TRANSACTION_NO` (`TRANSACTION_NO`),
  ADD KEY `TICKET_NO` (`TICKET_NO`);

--
-- Indexes for table `themepark`
--
ALTER TABLE `themepark`
  ADD PRIMARY KEY (`PARK_CODE`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TICKET_NO`),
  ADD KEY `PARK_CODE` (`PARK_CODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attraction`
--
ALTER TABLE `attraction`
  ADD CONSTRAINT `FK_ATTRACT_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_EMP_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`);

--
-- Constraints for table `hours`
--
ALTER TABLE `hours`
  ADD CONSTRAINT `FK_HOURS_ATTRACT` FOREIGN KEY (`ATTRACT_NO`) REFERENCES `attraction` (`ATTRACT_NO`),
  ADD CONSTRAINT `FK_HOURS_EMP` FOREIGN KEY (`EMP_NUM`) REFERENCES `employee` (`EMP_NUM`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `FK_SALES_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`);

--
-- Constraints for table `sales_line`
--
ALTER TABLE `sales_line`
  ADD CONSTRAINT `FK_SALES_LINE_SALES` FOREIGN KEY (`TRANSACTION_NO`) REFERENCES `sales` (`TRANSACTION_NO`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_SALES_LINE_TICKET` FOREIGN KEY (`TICKET_NO`) REFERENCES `ticket` (`TICKET_NO`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK_TICKET_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
