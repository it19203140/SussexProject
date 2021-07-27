-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: sussex_db
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `payment_slip`
--

DROP TABLE IF EXISTS `payment_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_slip` (
  `bankreference` varchar(45) NOT NULL,
  `prg` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `initials` varchar(45) DEFAULT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `paymentfor` varchar(45) DEFAULT NULL,
  `additionalnote` varchar(45) DEFAULT NULL,
  `imagefilepath` longblob,
  `submissiondate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bankreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_slip`
--

LOCK TABLES `payment_slip` WRITE;
/*!40000 ALTER TABLE `payment_slip` DISABLE KEYS */;
INSERT INTO `payment_slip` VALUES ('REF-0029139-1293','IT192031220','Hasith Bandara ','H.M.H.K Bandara','Kadawatha','Registration fee','Amount : 25000/rs\r\nRemaining : 75000/rs',_binary 'C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\WEB-INF\\UploadedImages\\IT192031220___REF-0029139-1293___5150293.png','2021-07-26 19:51:49'),('REF-00299123','IT19203140','Kushan Sanka Jayasekera','K.S. Jayasekera','Rajagiriya','2nd term','Second Semester',_binary 'C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\WEB-INF\\UploadedImages\\IT19203140___REF-00299123___teahub.io-wallpaper-laptop-anime-1664538.png','2021-07-26 13:58:33'),('REF-200021991231','IT19203140','Kushan Sanka Jayasekera','K.S. Jayasekera','Kiribathgoda','1st term','The full payment has been made',_binary 'C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\WEB-INF\\UploadedImages\\IT19203140___REF-200021991231___teahub.io-wallpaper-laptop-anime-1664538.png','2021-07-26 13:52:34'),('REF-Kiri-2003123','IT19203140','Kushan Sanka Jayasekera','K.S. Jayasekera','Kiribathgoda','1st term','uigydbciweodpclds',_binary 'C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\WEB-INF\\UploadedImages\\IT19203140___REF-Kiri-2003123___tumblr_41fff5d825cdbe388cd33ae1f4d32420_65b758d3_1280.jpg','2021-07-26 14:02:04'),('REFERENCE2','IT19203140','Kushan Sanka Jayasekera','K.S. Jayasekera','Kiribathgoda','1st term','',_binary 'C:\\Users\\Kushan Jayasekera\\eclipse-workspace\\Sussex_project\\src\\main\\webapp\\WEB-INF\\UploadedImages\\IT19203140___REFERENCE2___9adeced89ab0df6b60c9dcabaaacd0ef505b6f8fd497ddda22ad155be2e9f302423b77dd5e4746f8a6d49b8fd346380a384fb31e8b0196936f7851_1280.jpg','2021-07-26 20:56:08');
/*!40000 ALTER TABLE `payment_slip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-26 20:57:55
