CREATE DATABASE  IF NOT EXISTS `tlsphoto` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tlsphoto`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: tlsphoto
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `assign_assign`
--

DROP TABLE IF EXISTS `assign_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assign_assign` (
  `staffer_sid` int(10) unsigned NOT NULL,
  `assignment_aid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`staffer_sid`,`assignment_aid`),
  KEY `fk_assign_assign_assignment1_idx` (`assignment_aid`),
  CONSTRAINT `fk_assign_assign_staffer1` FOREIGN KEY (`staffer_sid`) REFERENCES `staffer` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_assign_assign_assignment1` FOREIGN KEY (`assignment_aid`) REFERENCES `assignment` (`aid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign_assign`
--

LOCK TABLES `assign_assign` WRITE;
/*!40000 ALTER TABLE `assign_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `assign_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `issue` varchar(45) NOT NULL,
  `section` varchar(4) NOT NULL,
  `dline` varchar(45) NOT NULL,
  `desc` mediumtext,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `aid_UNIQUE` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,'vxcvxcv','11/2012','UNIV','11/14/2012',NULL),(2,'Hot Momma','11/2012','MNAG','11/14/2012',NULL);
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `eid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `venue` varchar(45) NOT NULL,
  `sdate` varchar(45) NOT NULL,
  `edate` varchar(45) NOT NULL,
  `stime` varchar(45) NOT NULL,
  `etime` varchar(45) NOT NULL,
  `desc` mediumtext,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `eid_UNIQUE` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'ASD','ASD','11/12/2012','11/12/2012','13:00','16:00',NULL),(2,'QEWUOQEWUIOQEW','ASMDNM,','11/14/2012','11/14/2012','02:00','03:00',NULL),(3,'sadsds','wewqewe','11/14/2012','11/14/2012','01:30','03:30',NULL),(4,'sadsds','wewqewe','11/14/2012','11/14/2012','01:30','03:30',NULL),(5,'vcxcx','tretre','11/14/2012','11/14/2012','00:00','03:30',NULL),(6,'cxvcv','jghjgh','11/14/2012','11/14/2012','02:30','05:30',NULL),(7,'cxvcv','jghjgh','11/14/2012','11/14/2012','02:30','05:30',NULL),(8,'cxvcv','mnmmnbnm','11/14/2012','11/14/2012','02:00','06:30',NULL),(9,'PhotoMarket PH','TYA','11/29/2012','11/30/2012','11:30','14:30',NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_assign`
--

DROP TABLE IF EXISTS `event_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_assign` (
  `staffer_sid` int(10) unsigned NOT NULL,
  `event_eid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`staffer_sid`,`event_eid`),
  KEY `fk_event_assign_event1_idx` (`event_eid`),
  CONSTRAINT `fk_event_assign_staffer1` FOREIGN KEY (`staffer_sid`) REFERENCES `staffer` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_event_assign_event1` FOREIGN KEY (`event_eid`) REFERENCES `event` (`eid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_assign`
--

LOCK TABLES `event_assign` WRITE;
/*!40000 ALTER TABLE `event_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `staffer_sid` int(10) unsigned NOT NULL,
  `term` tinyint(4) DEFAULT NULL,
  `ay` varchar(45) DEFAULT NULL,
  `course` varchar(7) DEFAULT NULL,
  `tstart` time DEFAULT NULL,
  `tend` time DEFAULT NULL,
  PRIMARY KEY (`staffer_sid`),
  CONSTRAINT `fk_schedule_staffer` FOREIGN KEY (`staffer_sid`) REFERENCES `staffer` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffer`
--

DROP TABLE IF EXISTS `staffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffer` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `sname` varchar(45) DEFAULT NULL,
  `idno` int(11) DEFAULT NULL,
  `pnum` varchar(45) DEFAULT NULL,
  `snum` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `sid_UNIQUE` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffer`
--

LOCK TABLES `staffer` WRITE;
/*!40000 ALTER TABLE `staffer` DISABLE KEYS */;
INSERT INTO `staffer` VALUES (1,'Ramon','Bautista',1234567,'69696969','77777','ramonbautista@pogi.ako'),(3,'Pedro','Penduko',12345677,'1233455','','dodongba@gg.com');
/*!40000 ALTER TABLE `staffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlist`
--

DROP TABLE IF EXISTS `userlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlist` (
  `uname` varchar(45) NOT NULL,
  `pword` varchar(45) DEFAULT NULL,
  `isadmin` tinyint(1) NOT NULL,
  `staffer_sid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`uname`,`staffer_sid`),
  UNIQUE KEY `uname_UNIQUE` (`uname`),
  KEY `fk_userlist_staffer1_idx` (`staffer_sid`),
  CONSTRAINT `fk_userlist_staffer1` FOREIGN KEY (`staffer_sid`) REFERENCES `staffer` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlist`
--

LOCK TABLES `userlist` WRITE;
/*!40000 ALTER TABLE `userlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-28  6:44:56
