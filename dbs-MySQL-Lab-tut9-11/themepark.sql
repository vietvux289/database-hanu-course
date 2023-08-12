-- MySQL dump 10.13  Distrib 5.5.39, for Win32 (x86)
--
-- Host: localhost    Database: themepark
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attraction`
--

DROP TABLE IF EXISTS `attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attraction` (
  `ATTRACT_NO` decimal(10,0) NOT NULL,
  `ATTRACT_NAME` varchar(35) DEFAULT NULL,
  `ATTRACT_AGE` decimal(3,0) NOT NULL DEFAULT '0',
  `ATTRACT_CAPACITY` decimal(3,0) NOT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ATTRACT_NO`),
  KEY `PARK_CODE` (`PARK_CODE`),
  CONSTRAINT `FK_ATTRACT_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EMP_NUM` decimal(4,0) NOT NULL,
  `EMP_TITLE` varchar(4) DEFAULT NULL,
  `EMP_LNAME` varchar(15) NOT NULL,
  `EMP_FNAME` varchar(15) NOT NULL,
  `EMP_DOB` date NOT NULL,
  `EMP_HIRE_DATE` date DEFAULT NULL,
  `EMP_AREA_CODE` varchar(4) NOT NULL,
  `EMP_PHONE` varchar(12) NOT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EMP_NUM`),
  KEY `PARK_CODE` (`PARK_CODE`),
  KEY `EMP_LNAME_INDEX` (`EMP_LNAME`(8)),
  CONSTRAINT `FK_EMP_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

--
-- Table structure for table `hours`
--

DROP TABLE IF EXISTS `hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hours` (
  `EMP_NUM` decimal(4,0) NOT NULL DEFAULT '0',
  `ATTRACT_NO` decimal(10,0) NOT NULL DEFAULT '0',
  `HOURS_PER_ATTRACT` decimal(2,0) NOT NULL,
  `HOUR_RATE` decimal(4,2) NOT NULL,
  `DATE_WORKED` date NOT NULL,
  PRIMARY KEY (`EMP_NUM`,`ATTRACT_NO`,`DATE_WORKED`),
  KEY `EMP_NUM` (`EMP_NUM`),
  KEY `ATTRACT_NO` (`ATTRACT_NO`),
  CONSTRAINT `FK_HOURS_EMP` FOREIGN KEY (`EMP_NUM`) REFERENCES `employee` (`EMP_NUM`),
  CONSTRAINT `FK_HOURS_ATTRACT` FOREIGN KEY (`ATTRACT_NO`) REFERENCES `attraction` (`ATTRACT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hours`
--

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `TRANSACTION_NO` decimal(10,0) NOT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL,
  `SALE_DATE` date NOT NULL,
  PRIMARY KEY (`TRANSACTION_NO`),
  KEY `PARK_CODE` (`PARK_CODE`),
  CONSTRAINT `FK_SALES_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

--
-- Table structure for table `sales_line`
--

DROP TABLE IF EXISTS `sales_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_line` (
  `TRANSACTION_NO` decimal(10,0) NOT NULL,
  `LINE_NO` decimal(2,0) NOT NULL,
  `TICKET_NO` decimal(10,0) NOT NULL,
  `LINE_QTY` decimal(4,0) NOT NULL DEFAULT '0',
  `LINE_PRICE` decimal(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`TRANSACTION_NO`,`LINE_NO`),
  KEY `TRANSACTION_NO` (`TRANSACTION_NO`),
  KEY `TICKET_NO` (`TICKET_NO`),
  CONSTRAINT `FK_SALES_LINE_SALES` FOREIGN KEY (`TRANSACTION_NO`) REFERENCES `sales` (`TRANSACTION_NO`) ON DELETE CASCADE,
  CONSTRAINT `FK_SALES_LINE_TICKET` FOREIGN KEY (`TICKET_NO`) REFERENCES `ticket` (`TICKET_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_line`
--


--
-- Table structure for table `themepark`
--

DROP TABLE IF EXISTS `themepark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themepark` (
  `PARK_CODE` varchar(10) NOT NULL,
  `PARK_NAME` varchar(35) NOT NULL,
  `PARK_CITY` varchar(50) NOT NULL,
  `PARK_COUNTRY` char(2) NOT NULL,
  PRIMARY KEY (`PARK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themepark`
--


--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `TICKET_NO` decimal(10,0) NOT NULL,
  `TICKET_PRICE` decimal(4,2) NOT NULL DEFAULT '0.00',
  `TICKET_TYPE` varchar(10) DEFAULT NULL,
  `PARK_CODE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TICKET_NO`),
  KEY `PARK_CODE` (`PARK_CODE`),
  CONSTRAINT `FK_TICKET_PARK` FOREIGN KEY (`PARK_CODE`) REFERENCES `themepark` (`PARK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-11 10:40:43
