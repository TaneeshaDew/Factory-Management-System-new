-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: factory_management_system
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `distributeditemlist`
--

DROP TABLE IF EXISTS `distributeditemlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `distributeditemlist` (
  `distributedCode` char(10) NOT NULL,
  `itemCode` char(5) NOT NULL,
  `shopId` char(5) NOT NULL,
  `distributedCount` int(11) DEFAULT NULL,
  `returnCount` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`distributedCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributeditemlist`
--

LOCK TABLES `distributeditemlist` WRITE;
/*!40000 ALTER TABLE `distributeditemlist` DISABLE KEYS */;
INSERT INTO `distributeditemlist` VALUES ('DC001','IC001','SI001',200,10,1980,'2019-01-01'),('DC002','IC001','S0001',5,3,10,'2019-01-01'),('DC003','IC001','S0001',4,5,4,'2019-02-02'),('DC004','IC001','S0002',4,4,0,'2019-12-01');
/*!40000 ALTER TABLE `distributeditemlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoplist`
--

DROP TABLE IF EXISTS `shoplist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shoplist` (
  `shopId` char(5) NOT NULL,
  `shopName` varchar(45) NOT NULL,
  `ownerName` varchar(50) NOT NULL,
  `contactNo` char(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  PRIMARY KEY (`shopId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoplist`
--

LOCK TABLES `shoplist` WRITE;
/*!40000 ALTER TABLE `shoplist` DISABLE KEYS */;
INSERT INTO `shoplist` VALUES ('S0001','Test','Test','0710761680','test@gmail.com','malabe'),('S0003','Test','Test','01122248','test@gmail.com','llnn');
/*!40000 ALTER TABLE `shoplist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockinflow`
--

DROP TABLE IF EXISTS `stockinflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stockinflow` (
  `productName` varchar(10) NOT NULL,
  `productCode` char(5) NOT NULL,
  `addedStockCount` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockinflow`
--

LOCK TABLES `stockinflow` WRITE;
/*!40000 ALTER TABLE `stockinflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockinflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclelist`
--

DROP TABLE IF EXISTS `vehiclelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehiclelist` (
  `vehicleNumber` varchar(10) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `area` varchar(45) NOT NULL,
  `driverCode` char(5) NOT NULL,
  `assistantCode` char(5) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`vehicleNumber`),
  UNIQUE KEY `vehicleNumber_UNIQUE` (`vehicleNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclelist`
--

LOCK TABLES `vehiclelist` WRITE;
/*!40000 ALTER TABLE `vehiclelist` DISABLE KEYS */;
INSERT INTO `vehiclelist` VALUES ('DAC-1234','Lorry-Dimo','Colombo','D0001','A0001','2019-12-31'),('DAC-1235','Lorry-Dimo','Colombo','D0001','A0001','2019-12-01');
/*!40000 ALTER TABLE `vehiclelist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-04 19:35:36
