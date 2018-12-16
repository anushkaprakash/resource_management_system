-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: resource_management
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `bID` int(11) NOT NULL AUTO_INCREMENT,
  `cID` varchar(20) DEFAULT NULL,
  `rID` int(5) DEFAULT NULL,
  `bQty` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING',
  `fromDate` date DEFAULT NULL,
  `toDate` date DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (9,'16ucs001',1,1,'PENDING','2018-12-13','2018-12-14'),(11,'16ucs001',2,1,'PENDING','2018-12-01','2018-12-07'),(14,'16ucs002',3,1,'PENDING','2018-12-20','2018-12-21'),(33,'16ucs004',12,2,'PENDING','2018-12-21','2018-12-22'),(35,'16ucs004',7,1,'PENDING','2018-12-21','2018-12-28'),(36,'16ucs003',15,1,'APPROVED','2018-12-29','2018-12-31'),(38,'16ucs003',11,2,'PENDING','2018-12-20','2018-12-27'),(41,'16ucs001',5,1,'PENDING','2018-12-20','2018-12-22'),(42,'16ucs001',5,1,'PENDING','2018-12-20','2018-12-22'),(43,'16ucs001',5,1,'PENDING','2018-12-20','2018-12-22');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `consumer` (
  `cID` varchar(20) NOT NULL,
  `cName` varchar(20) DEFAULT NULL,
  `cPhn` varchar(10) DEFAULT NULL,
  `cEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES ('16ucs001','ram','9412356734','16ucs226@lnmiit.ac.in'),('16ucs002','shyam','9419563337','16ucs225@lnmiit.ac.in'),('16ucs003','sita','9412356734','16ucs223@lnmiit.ac.in'),('16ucs004','gita','9412356734','16ucs224@lnmiit.ac.in');
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_login`
--

DROP TABLE IF EXISTS `consumer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `consumer_login` (
  `cid` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_login`
--

LOCK TABLES `consumer_login` WRITE;
/*!40000 ALTER TABLE `consumer_login` DISABLE KEYS */;
INSERT INTO `consumer_login` VALUES ('16ucs001','16ucs001'),('16ucs002','16ucs002'),('16ucs003','16ucs003'),('16ucs004','16ucs004');
/*!40000 ALTER TABLE `consumer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log` (
  `bID` int(11) DEFAULT NULL,
  `cID` varchar(20) DEFAULT NULL,
  `rID` int(5) DEFAULT NULL,
  `bQty` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `fromDate` date DEFAULT NULL,
  `toDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (2,'16ucs003',5,4,'RETURNED','2018-01-23','2018-01-24'),(27,'16ucs003',5,4,'RETURNED','2018-01-23','2018-01-24'),(6,'16ucs006',5,7,'DECLINED','2018-06-23','2018-07-24'),(2,'16ucs003',5,1,'RETURNED','2018-04-13','2018-04-15'),(3,'16ucs003',5,4,'CANCELLED','2018-01-23','2018-01-24'),(15,'16ucs002',6,1,'RETURNED','2018-12-03','2018-12-08'),(16,'16ucs001',6,1,'RETURNED','2018-12-04','2018-12-08'),(17,'16ucs001',6,1,'RETURNED','2018-12-06','2018-12-08'),(18,'16ucs001',6,1,'RETURNED','2018-12-09','2018-12-11'),(19,'16ucs001',6,1,'RETURNED','2018-12-04','2018-12-06'),(20,'16ucs001',6,1,'RETURNED','2018-12-04','2018-12-06'),(21,'16ucs001',6,1,'RETURNED','2018-12-02','2018-12-06'),(22,'16ucs001',6,1,'RETURNED','2018-12-02','2018-12-08'),(23,'16ucs001',6,1,'RETURNED','2018-12-02','2018-12-10'),(24,'16ucs001',6,1,'RETURNED','2018-12-05','2018-12-10'),(25,'16ucs001',6,1,'RETURNED','2018-12-13','2018-12-14'),(26,'16ucs004',7,1,'RETURNED','2018-12-07','2018-12-08'),(27,'16ucs004',6,1,'RETURNED','2018-12-04','2018-12-05'),(28,'16ucs001',14,1,'RETURNED','2018-12-02','2018-12-06'),(29,'16ucs001',6,1,'RETURNED','2018-12-10','2018-12-11'),(10,'16ucs001',3,1,'RETURNED','2018-12-20','2018-12-21'),(30,'16ucs003',15,1,'RETURNED','2018-12-04','2018-12-10'),(12,'16ucs003',3,2,'CANCELLED','2018-12-20','2018-12-22'),(32,'16ucs003',15,1,'CANCELLED','2018-12-12','2018-12-20'),(31,'16ucs003',14,1,'CANCELLED','2018-12-12','2018-12-19'),(34,'16ucs001',14,1,'DECLINED','2018-12-26','2018-12-28'),(37,'16ucs003',11,5,'CANCELLED','2018-12-18','2018-12-20'),(39,'16ucs003',11,2,'RETURNED','2018-12-20','2018-12-27'),(40,'16ucs001',5,1,'RETURNED','2018-12-20','2018-12-22');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owner` (
  `oID` varchar(20) NOT NULL,
  `oName` varchar(20) DEFAULT NULL,
  `deptName` varchar(20) DEFAULT NULL,
  `oPhn` varchar(10) DEFAULT NULL,
  `oEmail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('16ucs001','ram','CSE','9412356734','ram@lnmiit.ac.in'),('16ucs002','shyam','LT','9419563337','shyam@lnmiit.ac.in'),('16ucs223','anushka','SPORTS','9412566734','16ucs223@lnmiit.ac.in'),('16ucs224','kajol','ECE','9414563334','16ucs224@lnmiit.ac.in'),('16ucs225','mahima','MME','9413456334','16ucs225@lnmiit.ac.in'),('16ucs226','prashant','PHY','9414563337','16ucs226@lnmiit.ac.in');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_login`
--

DROP TABLE IF EXISTS `owner_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `owner_login` (
  `id` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_login`
--

LOCK TABLES `owner_login` WRITE;
/*!40000 ALTER TABLE `owner_login` DISABLE KEYS */;
INSERT INTO `owner_login` VALUES ('16ucs223','16ucs223'),('16ucs224','16ucs224'),('16ucs225','16ucs225'),('16ucs226','16ucs226'),('16ucs001','16ucs001'),('16ucs002','16ucs002'),('16ucs003','16ucs003'),('16ucs004','16ucs004');
/*!40000 ALTER TABLE `owner_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resource` (
  `rID` int(11) NOT NULL AUTO_INCREMENT,
  `rName` varchar(20) DEFAULT NULL,
  `fine_rate` int(3) DEFAULT NULL,
  `rQty` int(3) DEFAULT NULL,
  `oID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rID`),
  KEY `oID` (`oID`),
  CONSTRAINT `resource_ibfk_1` FOREIGN KEY (`oID`) REFERENCES `owner` (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'CP Lab',20,1,'16ucs001'),(2,'CP Lab 2',25,1,'16ucs001'),(3,'Microphone',30,5,'16ucs002'),(5,'E1 Lab',10,3,'16ucs224'),(7,'PHY Lab',50,1,'16ucs226'),(8,'E2 Lab',34,1,'16ucs224'),(10,'Transistor',80,5,'16ucs224'),(11,'Shuttle',40,4,'16ucs223'),(12,'TT Balls',10,5,'16ucs223'),(14,'MME LAB2',50,1,'16ucs225'),(15,'MME LAB3',50,1,'16ucs225');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-16 11:34:09
