CREATE DATABASE  IF NOT EXISTS `vaalikone` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vaalikone`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: vaalikone
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `EHDOKAS_ID` int(11) NOT NULL,
  `KYSYMYS_ID` int(11) NOT NULL,
  `VASTAUS` int(11) DEFAULT NULL,
  `KOMMENTTI` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EHDOKAS_ID`,`KYSYMYS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,2,'ehdokkaan 1 vastaus kysymykseen 1'),(1,2,4,'ehdokkaan 1 vastaus kysymykseen 2'),(1,3,3,'ehdokkaan 1 vastaus kysymykseen 3'),(1,4,2,'ehdokkaan 1 vastaus kysymykseen 4'),(1,5,1,'ehdokkaan 1 vastaus kysymykseen 5'),(1,6,2,'ehdokkaan 1 vastaus kysymykseen 6'),(1,7,5,'ehdokkaan 1 vastaus kysymykseen 7'),(1,8,2,'ehdokkaan 1 vastaus kysymykseen 8'),(1,9,4,'ehdokkaan 1 vastaus kysymykseen 9'),(1,10,1,'ehdokkaan 1 vastaus kysymykseen 10'),(1,11,1,'ehdokkaan 1 vastaus kysymykseen 11'),(1,12,2,'ehdokkaan 1 vastaus kysymykseen 12'),(1,13,4,'ehdokkaan 1 vastaus kysymykseen 13'),(1,14,5,'ehdokkaan 1 vastaus kysymykseen 14'),(1,15,3,'ehdokkaan 1 vastaus kysymykseen 15'),(1,16,1,'ehdokkaan 1 vastaus kysymykseen 16'),(1,17,4,'ehdokkaan 1 vastaus kysymykseen 17'),(1,18,4,'ehdokkaan 1 vastaus kysymykseen 18'),(1,19,3,'ehdokkaan 1 vastaus kysymykseen 19'),(2,1,3,'ehdokkaan 2 vastaus kysymykseen 1'),(2,2,4,'ehdokkaan 2 vastaus kysymykseen 2'),(2,3,5,'ehdokkaan 2 vastaus kysymykseen 3'),(2,4,1,'ehdokkaan 2 vastaus kysymykseen 4'),(2,5,2,'ehdokkaan 2 vastaus kysymykseen 5'),(2,6,3,'ehdokkaan 2 vastaus kysymykseen 6'),(2,7,4,'ehdokkaan 2 vastaus kysymykseen 7'),(2,8,5,'ehdokkaan 2 vastaus kysymykseen 8'),(2,9,1,'ehdokkaan 2 vastaus kysymykseen 9'),(2,10,2,'ehdokkaan 2 vastaus kysymykseen 10'),(2,11,3,'ehdokkaan 2 vastaus kysymykseen 11'),(2,12,4,'ehdokkaan 2 vastaus kysymykseen 12'),(2,13,5,'ehdokkaan 2 vastaus kysymykseen 13'),(2,14,1,'ehdokkaan 2 vastaus kysymykseen 14'),(2,15,2,'ehdokkaan 2 vastaus kysymykseen 15'),(2,16,3,'ehdokkaan 2 vastaus kysymykseen 16'),(2,17,4,'ehdokkaan 2 vastaus kysymykseen 17'),(2,18,5,'ehdokkaan 2 vastaus kysymykseen 18'),(2,19,1,'ehdokkaan 2 vastaus kysymykseen 19'),(3,1,1,'ehdokkaan 3 vastaus kysymykseen 1'),(3,2,3,'ehdokkaan 3 vastaus kysymykseen 2'),(3,3,5,'ehdokkaan 3 vastaus kysymykseen 3'),(3,4,2,'ehdokkaan 3 vastaus kysymykseen 4'),(3,5,4,'ehdokkaan 3 vastaus kysymykseen 5'),(3,6,1,'ehdokkaan 3 vastaus kysymykseen 6'),(3,7,3,'ehdokkaan 3 vastaus kysymykseen 7'),(3,8,5,'ehdokkaan 3 vastaus kysymykseen 8'),(3,9,2,'ehdokkaan 3 vastaus kysymykseen 9'),(3,10,4,'ehdokkaan 3 vastaus kysymykseen 10'),(3,11,1,'ehdokkaan 3 vastaus kysymykseen 11'),(3,12,3,'ehdokkaan 3 vastaus kysymykseen 12'),(3,13,5,'ehdokkaan 3 vastaus kysymykseen 13'),(3,14,2,'ehdokkaan 3 vastaus kysymykseen 14'),(3,15,4,'ehdokkaan 3 vastaus kysymykseen 15'),(3,16,1,'ehdokkaan 3 vastaus kysymykseen 16'),(3,17,3,'ehdokkaan 3 vastaus kysymykseen 17'),(3,18,5,'ehdokkaan 3 vastaus kysymykseen 18'),(3,19,2,'ehdokkaan 3 vastaus kysymykseen 19'),(4,1,5,'ehdokkaan 4 vastaus kysymykseen 1'),(4,2,4,'ehdokkaan 4 vastaus kysymykseen 2'),(4,3,3,'ehdokkaan 4 vastaus kysymykseen 3'),(4,4,2,'ehdokkaan 4 vastaus kysymykseen 4'),(4,5,1,'ehdokkaan 4 vastaus kysymykseen 5'),(4,6,5,'ehdokkaan 4 vastaus kysymykseen 6'),(4,7,4,'ehdokkaan 4 vastaus kysymykseen 7'),(4,8,3,'ehdokkaan 4 vastaus kysymykseen 8'),(4,9,2,'ehdokkaan 4 vastaus kysymykseen 9'),(4,10,1,'ehdokkaan 4 vastaus kysymykseen 10'),(4,11,5,'ehdokkaan 4 vastaus kysymykseen 11'),(4,12,4,'ehdokkaan 4 vastaus kysymykseen 12'),(4,13,3,'ehdokkaan 4 vastaus kysymykseen 13'),(4,14,2,'ehdokkaan 4 vastaus kysymykseen 14'),(4,15,1,'ehdokkaan 4 vastaus kysymykseen 15'),(4,16,5,'ehdokkaan 4 vastaus kysymykseen 16'),(4,17,4,'ehdokkaan 4 vastaus kysymykseen 17'),(4,18,3,'ehdokkaan 4 vastaus kysymykseen 18'),(4,19,2,'ehdokkaan 4 vastaus kysymykseen 19'),(5,1,4,'ehdokkaan 5 vastaus kysymykseen 1'),(5,2,3,'ehdokkaan 5 vastaus kysymykseen 2'),(5,3,2,'ehdokkaan 5 vastaus kysymykseen 3'),(5,4,1,'ehdokkaan 5 vastaus kysymykseen 4'),(5,5,2,'ehdokkaan 5 vastaus kysymykseen 5'),(5,6,5,'ehdokkaan 5 vastaus kysymykseen 6'),(5,7,2,'ehdokkaan 5 vastaus kysymykseen 7'),(5,8,4,'ehdokkaan 5 vastaus kysymykseen 8'),(5,9,1,'ehdokkaan 5 vastaus kysymykseen 9'),(5,10,1,'ehdokkaan 5 vastaus kysymykseen 10'),(5,11,2,'ehdokkaan 5 vastaus kysymykseen 11'),(5,12,4,'ehdokkaan 5 vastaus kysymykseen 12'),(5,13,5,'ehdokkaan 5 vastaus kysymykseen 13'),(5,14,3,'ehdokkaan 5 vastaus kysymykseen 14'),(5,15,1,'ehdokkaan 5 vastaus kysymykseen 15'),(5,16,4,'ehdokkaan 5 vastaus kysymykseen 16'),(5,17,4,'ehdokkaan 5 vastaus kysymykseen 17'),(5,18,3,'ehdokkaan 5 vastaus kysymykseen 18'),(5,19,2,'ehdokkaan 5 vastaus kysymykseen 19'),(6,1,3,'ehdokkaan 6 vastaus kysymykseen 1'),(6,2,2,'ehdokkaan 6 vastaus kysymykseen 2'),(6,3,4,'ehdokkaan 6 vastaus kysymykseen 3'),(6,4,3,'ehdokkaan 6 vastaus kysymykseen 4'),(6,5,2,'ehdokkaan 6 vastaus kysymykseen 5'),(6,6,1,'ehdokkaan 6 vastaus kysymykseen 6'),(6,7,2,'ehdokkaan 6 vastaus kysymykseen 7'),(6,8,5,'ehdokkaan 6 vastaus kysymykseen 8'),(6,9,2,'ehdokkaan 6 vastaus kysymykseen 9'),(6,10,4,'ehdokkaan 6 vastaus kysymykseen 10'),(6,11,1,'ehdokkaan 6 vastaus kysymykseen 11'),(6,12,1,'ehdokkaan 6 vastaus kysymykseen 12'),(6,13,2,'ehdokkaan 6 vastaus kysymykseen 13'),(6,14,4,'ehdokkaan 6 vastaus kysymykseen 14'),(6,15,5,'ehdokkaan 6 vastaus kysymykseen 15'),(6,16,3,'ehdokkaan 6 vastaus kysymykseen 16'),(6,17,1,'ehdokkaan 6 vastaus kysymykseen 17'),(6,18,4,'ehdokkaan 6 vastaus kysymykseen 18'),(6,19,4,'ehdokkaan 6 vastaus kysymykseen 19'),(7,1,1,'ehdokkaan 7 vastaus kysymykseen 1'),(7,2,1,'ehdokkaan 7 vastaus kysymykseen 2'),(7,3,1,'ehdokkaan 7 vastaus kysymykseen 3'),(7,4,1,'ehdokkaan 7 vastaus kysymykseen 4'),(7,5,1,'ehdokkaan 7 vastaus kysymykseen 5'),(7,6,1,'ehdokkaan 7 vastaus kysymykseen 6'),(7,7,1,'ehdokkaan 7 vastaus kysymykseen 7'),(7,8,1,'ehdokkaan 7 vastaus kysymykseen 8'),(7,9,1,'ehdokkaan 7 vastaus kysymykseen 9'),(7,10,1,'ehdokkaan 7 vastaus kysymykseen 10'),(7,11,1,'ehdokkaan 7 vastaus kysymykseen 11'),(7,12,1,'ehdokkaan 7 vastaus kysymykseen 12'),(7,13,1,'ehdokkaan 7 vastaus kysymykseen 13'),(7,14,1,'ehdokkaan 7 vastaus kysymykseen 14'),(7,15,1,'ehdokkaan 7 vastaus kysymykseen 15'),(7,16,1,'ehdokkaan 7 vastaus kysymykseen 16'),(7,17,1,'ehdokkaan 7 vastaus kysymykseen 17'),(7,18,1,'ehdokkaan 7 vastaus kysymykseen 18'),(7,19,1,'ehdokkaan 7 vastaus kysymykseen 19'),(8,1,2,'ehdokkaan 8 vastaus kysymykseen 1'),(8,2,2,'ehdokkaan 8 vastaus kysymykseen 2'),(8,3,2,'ehdokkaan 8 vastaus kysymykseen 3'),(8,4,2,'ehdokkaan 8 vastaus kysymykseen 4'),(8,5,2,'ehdokkaan 8 vastaus kysymykseen 5'),(8,6,2,'ehdokkaan 8 vastaus kysymykseen 6'),(8,7,2,'ehdokkaan 8 vastaus kysymykseen 7'),(8,8,2,'ehdokkaan 8 vastaus kysymykseen 8'),(8,9,2,'ehdokkaan 8 vastaus kysymykseen 9'),(8,10,2,'ehdokkaan 8 vastaus kysymykseen 10'),(8,11,2,'ehdokkaan 8 vastaus kysymykseen 11'),(8,12,2,'ehdokkaan 8 vastaus kysymykseen 12'),(8,13,2,'ehdokkaan 8 vastaus kysymykseen 13'),(8,14,2,'ehdokkaan 8 vastaus kysymykseen 14'),(8,15,2,'ehdokkaan 8 vastaus kysymykseen 15'),(8,16,2,'ehdokkaan 8 vastaus kysymykseen 16'),(8,17,2,'ehdokkaan 8 vastaus kysymykseen 17'),(8,18,2,'ehdokkaan 8 vastaus kysymykseen 18'),(8,19,2,'ehdokkaan 8 vastaus kysymykseen 19'),(9,1,3,'ehdokkaan 9 vastaus kysymykseen 1'),(9,2,3,'ehdokkaan 9 vastaus kysymykseen 2'),(9,3,3,'ehdokkaan 9 vastaus kysymykseen 3'),(9,4,3,'ehdokkaan 9 vastaus kysymykseen 4'),(9,5,3,'ehdokkaan 9 vastaus kysymykseen 5'),(9,6,3,'ehdokkaan 9 vastaus kysymykseen 6'),(9,7,3,'ehdokkaan 9 vastaus kysymykseen 7'),(9,8,3,'ehdokkaan 9 vastaus kysymykseen 8'),(9,9,3,'ehdokkaan 9 vastaus kysymykseen 9'),(9,10,3,'ehdokkaan 9 vastaus kysymykseen 10'),(9,11,3,'ehdokkaan 9 vastaus kysymykseen 11'),(9,12,3,'ehdokkaan 9 vastaus kysymykseen 12'),(9,13,3,'ehdokkaan 9 vastaus kysymykseen 13'),(9,14,3,'ehdokkaan 9 vastaus kysymykseen 14'),(9,15,3,'ehdokkaan 9 vastaus kysymykseen 15'),(9,16,3,'ehdokkaan 9 vastaus kysymykseen 16'),(9,17,3,'ehdokkaan 9 vastaus kysymykseen 17'),(9,18,3,'ehdokkaan 9 vastaus kysymykseen 18'),(9,19,3,'ehdokkaan 9 vastaus kysymykseen 19'),(10,1,4,'ehdokkaan 10 vastaus kysymykseen 1'),(10,2,4,'ehdokkaan 10 vastaus kysymykseen 2'),(10,3,4,'ehdokkaan 10 vastaus kysymykseen 3'),(10,4,4,'ehdokkaan 10 vastaus kysymykseen 4'),(10,5,4,'ehdokkaan 10 vastaus kysymykseen 5'),(10,6,4,'ehdokkaan 10 vastaus kysymykseen 6'),(10,7,4,'ehdokkaan 10 vastaus kysymykseen 7'),(10,8,4,'ehdokkaan 10 vastaus kysymykseen 8'),(10,9,4,'ehdokkaan 10 vastaus kysymykseen 9'),(10,10,4,'ehdokkaan 10 vastaus kysymykseen 10'),(10,11,4,'ehdokkaan 10 vastaus kysymykseen 11'),(10,12,4,'ehdokkaan 10 vastaus kysymykseen 12'),(10,13,4,'ehdokkaan 10 vastaus kysymykseen 13'),(10,14,4,'ehdokkaan 10 vastaus kysymykseen 14'),(10,15,4,'ehdokkaan 10 vastaus kysymykseen 15'),(10,16,4,'ehdokkaan 10 vastaus kysymykseen 16'),(10,17,4,'ehdokkaan 10 vastaus kysymykseen 17'),(10,18,4,'ehdokkaan 10 vastaus kysymykseen 18'),(10,19,4,'ehdokkaan 10 vastaus kysymykseen 19'),(11,1,5,'ehdokkaan 11 vastaus kysymykseen 1'),(11,2,5,'ehdokkaan 11 vastaus kysymykseen 2'),(11,3,5,'ehdokkaan 11 vastaus kysymykseen 3'),(11,4,5,'ehdokkaan 11 vastaus kysymykseen 4'),(11,5,5,'ehdokkaan 11 vastaus kysymykseen 5'),(11,6,5,'ehdokkaan 11 vastaus kysymykseen 6'),(11,7,5,'ehdokkaan 11 vastaus kysymykseen 7'),(11,8,5,'ehdokkaan 11 vastaus kysymykseen 8'),(11,9,5,'ehdokkaan 11 vastaus kysymykseen 9'),(11,10,5,'ehdokkaan 11 vastaus kysymykseen 10'),(11,11,5,'ehdokkaan 11 vastaus kysymykseen 11'),(11,12,5,'ehdokkaan 11 vastaus kysymykseen 12'),(11,13,5,'ehdokkaan 11 vastaus kysymykseen 13'),(11,14,5,'ehdokkaan 11 vastaus kysymykseen 14'),(11,15,5,'ehdokkaan 11 vastaus kysymykseen 15'),(11,16,5,'ehdokkaan 11 vastaus kysymykseen 16'),(11,17,5,'ehdokkaan 11 vastaus kysymykseen 17'),(11,18,5,'ehdokkaan 11 vastaus kysymykseen 18'),(11,19,5,'ehdokkaan 11 vastaus kysymykseen 19'),(12,1,3,'ehdokkaan 12 vastaus kysymykseen 1'),(12,2,4,'ehdokkaan 12 vastaus kysymykseen 2'),(12,3,3,'ehdokkaan 12 vastaus kysymykseen 3'),(12,4,4,'ehdokkaan 12 vastaus kysymykseen 4'),(12,5,1,'ehdokkaan 12 vastaus kysymykseen 5'),(12,6,3,'ehdokkaan 12 vastaus kysymykseen 6'),(12,7,1,'ehdokkaan 12 vastaus kysymykseen 7'),(12,8,2,'ehdokkaan 12 vastaus kysymykseen 8'),(12,9,4,'ehdokkaan 12 vastaus kysymykseen 9'),(12,10,3,'ehdokkaan 12 vastaus kysymykseen 10'),(12,11,4,'ehdokkaan 12 vastaus kysymykseen 11'),(12,12,5,'ehdokkaan 12 vastaus kysymykseen 12'),(12,13,1,'ehdokkaan 12 vastaus kysymykseen 13'),(12,14,1,'ehdokkaan 12 vastaus kysymykseen 14'),(12,15,1,'ehdokkaan 12 vastaus kysymykseen 15'),(12,16,4,'ehdokkaan 12 vastaus kysymykseen 16'),(12,17,2,'ehdokkaan 12 vastaus kysymykseen 17'),(12,18,5,'ehdokkaan 12 vastaus kysymykseen 18'),(12,19,2,'ehdokkaan 12 vastaus kysymykseen 19'),(13,1,2,'ehdokkaan 13 vastaus kysymykseen 1'),(13,2,4,'ehdokkaan 13 vastaus kysymykseen 2'),(13,3,2,'ehdokkaan 13 vastaus kysymykseen 3'),(13,4,5,'ehdokkaan 13 vastaus kysymykseen 4'),(13,5,2,'ehdokkaan 13 vastaus kysymykseen 5'),(13,6,1,'ehdokkaan 13 vastaus kysymykseen 6'),(13,7,4,'ehdokkaan 13 vastaus kysymykseen 7'),(13,8,1,'ehdokkaan 13 vastaus kysymykseen 8'),(13,9,3,'ehdokkaan 13 vastaus kysymykseen 9'),(13,10,5,'ehdokkaan 13 vastaus kysymykseen 10'),(13,11,4,'ehdokkaan 13 vastaus kysymykseen 11'),(13,12,2,'ehdokkaan 13 vastaus kysymykseen 12'),(13,13,4,'ehdokkaan 13 vastaus kysymykseen 13'),(13,14,2,'ehdokkaan 13 vastaus kysymykseen 14'),(13,15,5,'ehdokkaan 13 vastaus kysymykseen 15'),(13,16,4,'ehdokkaan 13 vastaus kysymykseen 16'),(13,17,2,'ehdokkaan 13 vastaus kysymykseen 17'),(13,18,3,'ehdokkaan 13 vastaus kysymykseen 18'),(13,19,2,'ehdokkaan 13 vastaus kysymykseen 19'),(14,1,4,'ehdokkaan 14 vastaus kysymykseen 1'),(14,2,4,'ehdokkaan 14 vastaus kysymykseen 2'),(14,3,5,'ehdokkaan 14 vastaus kysymykseen 3'),(14,4,1,'ehdokkaan 14 vastaus kysymykseen 4'),(14,5,2,'ehdokkaan 14 vastaus kysymykseen 5'),(14,6,1,'ehdokkaan 14 vastaus kysymykseen 6'),(14,7,3,'ehdokkaan 14 vastaus kysymykseen 7'),(14,8,3,'ehdokkaan 14 vastaus kysymykseen 8'),(14,9,2,'ehdokkaan 14 vastaus kysymykseen 9'),(14,10,2,'ehdokkaan 14 vastaus kysymykseen 10'),(14,11,3,'ehdokkaan 14 vastaus kysymykseen 11'),(14,12,1,'ehdokkaan 14 vastaus kysymykseen 12'),(14,13,3,'ehdokkaan 14 vastaus kysymykseen 13'),(14,14,3,'ehdokkaan 14 vastaus kysymykseen 14'),(14,15,1,'ehdokkaan 14 vastaus kysymykseen 15'),(14,16,3,'ehdokkaan 14 vastaus kysymykseen 16'),(14,17,5,'ehdokkaan 14 vastaus kysymykseen 17'),(14,18,1,'ehdokkaan 14 vastaus kysymykseen 18'),(14,19,1,'ehdokkaan 14 vastaus kysymykseen 19'),(15,1,1,'ehdokkaan 15 vastaus kysymykseen 1'),(15,2,3,'ehdokkaan 15 vastaus kysymykseen 2'),(15,3,5,'ehdokkaan 15 vastaus kysymykseen 3'),(15,4,3,'ehdokkaan 15 vastaus kysymykseen 4'),(15,5,2,'ehdokkaan 15 vastaus kysymykseen 5'),(15,6,3,'ehdokkaan 15 vastaus kysymykseen 6'),(15,7,3,'ehdokkaan 15 vastaus kysymykseen 7'),(15,8,1,'ehdokkaan 15 vastaus kysymykseen 8'),(15,9,5,'ehdokkaan 15 vastaus kysymykseen 9'),(15,10,3,'ehdokkaan 15 vastaus kysymykseen 10'),(15,11,4,'ehdokkaan 15 vastaus kysymykseen 11'),(15,12,5,'ehdokkaan 15 vastaus kysymykseen 12'),(15,13,3,'ehdokkaan 15 vastaus kysymykseen 13'),(15,14,4,'ehdokkaan 15 vastaus kysymykseen 14'),(15,15,1,'ehdokkaan 15 vastaus kysymykseen 15'),(15,16,2,'ehdokkaan 15 vastaus kysymykseen 16'),(15,17,4,'ehdokkaan 15 vastaus kysymykseen 17'),(15,18,2,'ehdokkaan 15 vastaus kysymykseen 18'),(15,19,1,'ehdokkaan 15 vastaus kysymykseen 19'),(16,1,5,'ehdokkaan 16 vastaus kysymykseen 1'),(16,2,2,'ehdokkaan 16 vastaus kysymykseen 2'),(16,3,4,'ehdokkaan 16 vastaus kysymykseen 3'),(16,4,5,'ehdokkaan 16 vastaus kysymykseen 4'),(16,5,1,'ehdokkaan 16 vastaus kysymykseen 5'),(16,6,3,'ehdokkaan 16 vastaus kysymykseen 6'),(16,7,5,'ehdokkaan 16 vastaus kysymykseen 7'),(16,8,1,'ehdokkaan 16 vastaus kysymykseen 8'),(16,9,3,'ehdokkaan 16 vastaus kysymykseen 9'),(16,10,3,'ehdokkaan 16 vastaus kysymykseen 10'),(16,11,5,'ehdokkaan 16 vastaus kysymykseen 11'),(16,12,4,'ehdokkaan 16 vastaus kysymykseen 12'),(16,13,3,'ehdokkaan 16 vastaus kysymykseen 13'),(16,14,3,'ehdokkaan 16 vastaus kysymykseen 14'),(16,15,5,'ehdokkaan 16 vastaus kysymykseen 15'),(16,16,5,'ehdokkaan 16 vastaus kysymykseen 16'),(16,17,5,'ehdokkaan 16 vastaus kysymykseen 17'),(16,18,2,'ehdokkaan 16 vastaus kysymykseen 18'),(16,19,5,'ehdokkaan 16 vastaus kysymykseen 19'),(17,1,2,'ehdokkaan 17 vastaus kysymykseen 1'),(17,2,4,'ehdokkaan 17 vastaus kysymykseen 2'),(17,3,5,'ehdokkaan 17 vastaus kysymykseen 3'),(17,4,5,'ehdokkaan 17 vastaus kysymykseen 4'),(17,5,1,'ehdokkaan 17 vastaus kysymykseen 5'),(17,6,1,'ehdokkaan 17 vastaus kysymykseen 6'),(17,7,3,'ehdokkaan 17 vastaus kysymykseen 7'),(17,8,5,'ehdokkaan 17 vastaus kysymykseen 8'),(17,9,4,'ehdokkaan 17 vastaus kysymykseen 9'),(17,10,5,'ehdokkaan 17 vastaus kysymykseen 10'),(17,11,3,'ehdokkaan 17 vastaus kysymykseen 11'),(17,12,3,'ehdokkaan 17 vastaus kysymykseen 12'),(17,13,5,'ehdokkaan 17 vastaus kysymykseen 13'),(17,14,3,'ehdokkaan 17 vastaus kysymykseen 14'),(17,15,1,'ehdokkaan 17 vastaus kysymykseen 15'),(17,16,3,'ehdokkaan 17 vastaus kysymykseen 16'),(17,17,2,'ehdokkaan 17 vastaus kysymykseen 17'),(17,18,4,'ehdokkaan 17 vastaus kysymykseen 18'),(17,19,1,'ehdokkaan 17 vastaus kysymykseen 19'),(18,1,2,'ehdokkaan 18 vastaus kysymykseen 1'),(18,2,4,'ehdokkaan 18 vastaus kysymykseen 2'),(18,3,1,'ehdokkaan 18 vastaus kysymykseen 3'),(18,4,3,'ehdokkaan 18 vastaus kysymykseen 4'),(18,5,5,'ehdokkaan 18 vastaus kysymykseen 5'),(18,6,1,'ehdokkaan 18 vastaus kysymykseen 6'),(18,7,1,'ehdokkaan 18 vastaus kysymykseen 7'),(18,8,3,'ehdokkaan 18 vastaus kysymykseen 8'),(18,9,1,'ehdokkaan 18 vastaus kysymykseen 9'),(18,10,5,'ehdokkaan 18 vastaus kysymykseen 10'),(18,11,2,'ehdokkaan 18 vastaus kysymykseen 11'),(18,12,1,'ehdokkaan 18 vastaus kysymykseen 12'),(18,13,5,'ehdokkaan 18 vastaus kysymykseen 13'),(18,14,4,'ehdokkaan 18 vastaus kysymykseen 14'),(18,15,4,'ehdokkaan 18 vastaus kysymykseen 15'),(18,16,4,'ehdokkaan 18 vastaus kysymykseen 16'),(18,17,5,'ehdokkaan 18 vastaus kysymykseen 17'),(18,18,4,'ehdokkaan 18 vastaus kysymykseen 18'),(18,19,5,'ehdokkaan 18 vastaus kysymykseen 19'),(19,1,3,'ehdokkaan 19 vastaus kysymykseen 1'),(19,2,5,'ehdokkaan 19 vastaus kysymykseen 2'),(19,3,3,'ehdokkaan 19 vastaus kysymykseen 3'),(19,4,1,'ehdokkaan 19 vastaus kysymykseen 4'),(19,5,3,'ehdokkaan 19 vastaus kysymykseen 5'),(19,6,3,'ehdokkaan 19 vastaus kysymykseen 6'),(19,7,5,'ehdokkaan 19 vastaus kysymykseen 7'),(19,8,5,'ehdokkaan 19 vastaus kysymykseen 8'),(19,9,5,'ehdokkaan 19 vastaus kysymykseen 9'),(19,10,2,'ehdokkaan 19 vastaus kysymykseen 10'),(19,11,4,'ehdokkaan 19 vastaus kysymykseen 11'),(19,12,1,'ehdokkaan 19 vastaus kysymykseen 12'),(19,13,5,'ehdokkaan 19 vastaus kysymykseen 13'),(19,14,3,'ehdokkaan 19 vastaus kysymykseen 14'),(19,15,3,'ehdokkaan 19 vastaus kysymykseen 15'),(19,16,3,'ehdokkaan 19 vastaus kysymykseen 16'),(19,17,1,'ehdokkaan 19 vastaus kysymykseen 17'),(19,18,3,'ehdokkaan 19 vastaus kysymykseen 18'),(19,19,5,'ehdokkaan 19 vastaus kysymykseen 19'),(20,1,5,'ehdokkaan 20 vastaus kysymykseen 1'),(20,2,4,'ehdokkaan 20 vastaus kysymykseen 2'),(20,3,2,'ehdokkaan 20 vastaus kysymykseen 3'),(20,4,5,'ehdokkaan 20 vastaus kysymykseen 4'),(20,5,2,'ehdokkaan 20 vastaus kysymykseen 5'),(20,6,2,'ehdokkaan 20 vastaus kysymykseen 6'),(20,7,2,'ehdokkaan 20 vastaus kysymykseen 7'),(20,8,4,'ehdokkaan 20 vastaus kysymykseen 8'),(20,9,3,'ehdokkaan 20 vastaus kysymykseen 9'),(20,10,1,'ehdokkaan 20 vastaus kysymykseen 10'),(20,11,1,'ehdokkaan 20 vastaus kysymykseen 11'),(20,12,4,'ehdokkaan 20 vastaus kysymykseen 12'),(20,13,4,'ehdokkaan 20 vastaus kysymykseen 13'),(20,14,1,'ehdokkaan 20 vastaus kysymykseen 14'),(20,15,5,'ehdokkaan 20 vastaus kysymykseen 15'),(20,16,4,'ehdokkaan 20 vastaus kysymykseen 16'),(20,17,4,'ehdokkaan 20 vastaus kysymykseen 17'),(20,18,4,'ehdokkaan 20 vastaus kysymykseen 18'),(20,19,4,'ehdokkaan 20 vastaus kysymykseen 19'),(24,1,3,'ehdokkaan 24 vastaus kysymykseen 1');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `ehdokas_id` int(11) NOT NULL AUTO_INCREMENT,
  `SUKUNIMI` varchar(25) DEFAULT NULL,
  `ETUNIMI` varchar(25) DEFAULT NULL,
  `PUOLUE` varchar(50) DEFAULT NULL,
  `KOTIPAIKKAKUNTA` varchar(25) DEFAULT NULL,
  `IKA` int(11) DEFAULT NULL,
  `MIKSI_EDUSKUNTAAN` varchar(250) DEFAULT NULL,
  `MITA_ASIOITA_HALUAT_EDISTAA` varchar(2000) DEFAULT NULL,
  `AMMATTI` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ehdokas_id`),
  KEY `ehdokkaat_user_id_fk` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Ahvenjärvi','Joel','Suomen Kristillisdemokraatit (KD)','Uurainen',86,'Mieluiten tekisin aivan muuta, mutta valtakunta on korjattava. Tulen toimeen noin kahdeksalla kielellä ja olen perehtynyt monen alan asioihin. Kaupunkilais- ja maalaisjärkeä.','Haluan edistaa Suomea, jossa kenenkään ei tarvitse kärsiä puutetta tai voimattomuuden tunnetta omiin asioihinsa vaikuttamisesta.','Kansanedustaja',NULL),(2,'Aintila','Henrik Jeremias','Suomen ruotsalainen kansanpuolue','Helsinki',47,'Olen puheeni pitävä, monipuolisesti asioita harkitseva, perusteellisesti asiat selvittävä, erilaisissa yhteisäissä, yritysmaailmassa ja julkishallinnossa toiminut kolmen lapsen äiti.','- Inhimillinen toimeentulo ja aito tasa-arvo kaikille statuksesta riippumatta  - Aito itsemääräämisoikeus ja puolueettomuus  - Kansan hyvinvointi yritysvoittojen edelle  - Avoimuus käsiteltävistä asioista!','Lähihoitaja',NULL),(3,'Aittakumpu','Alviina','Vasemmistoliitto','Jämsä',46,'Tiedän erilaisia vaiettuja epäkohtia. Esimerkiksi korruptioon ja epärehellisyyteen liittyviä asioita. Jotta demokratia toimisi niin on vaadittavaa täyttä rehellisyyttä.','Suomen markka euron rinnalle, ja sitä myätä Suomen sisäinen talous kuntoon. Tyäpaikkoja julkiselle ja yksityiselle sektorille; investointeja ja perustuloa Suomen markalla; yritysten toimintaedellytykset huomattavasti helpommiksi ja tyällistäminen kannustavaksi. Veroparatiisikikkailu kuriin mm. rinnakkaisvaluutan avulla.','Opettaja, kansanedustaja',NULL),(4,'Ala-Kokko','Henri','Vihreä liitto','Espoo',87,'Kuljen aate edellä, itsenäisyyden, maaseudun, suomalaisuuden ja sosiaalisen oikeudenmukaisuuden puolesta.','Vanhusten ja omaishoitajien asemaa täytyy parantaa tulevalla vaalikaudella. Vanhustenpalveluihin ei voida tehdä lisää leikkauksia ja ennaltaehkäiseviin palveluihin täytyy läytyä lisää rahaa. Omaishoidon tukea täytyy korottaa ja jokaiselle omaishoitajalle pitää järjestää tarpeeksi vapaapäiviä. Nuorten tyällistymistä pitää tukea ja heidän tyäolojaan täytyy valvoa. Meillä on paljon ahkeria nuoria, jotka tarvitsevat ensimmäisestä tyäpaikastaan positiivisen kokemuksen.','Räntgenhoitaja, pääluottamusmies',NULL),(5,'Ala-Nissilä','Benjamin','Suomen Keskusta','Lappajärvi',26,'Haluan muutosta nykyiseen hallitustoimintaan, toiminta ei ole vastannut Katainen-Stubb -hallituksen odotuksia, valtiolla on enemmän velkaa kuin koskaan','Suomen ero EU:sta. Kansallisen keskuspankin liikkeelle laskeman oman valuutan käyttäänotto Suomessa. Suomen ja NATO:n välillä solmitun isäntämaasopimuksen irtisanominen ja palaaminen puoluettomuuteen. Hyvinvointivaltion palvelujen turvaaminen oman keskuspankin, kansallisen valuutan ja itsenäisen talouspolitiikan avustuksella.','Metallimies',NULL),(6,'Ala-Reinikka','Karl-Mikael','Kansallinen Kokoomus','Mustasaari',37,'Koska olen rohkea ja rehellinen. - Ylipäänsäkin eduskuntaan pitäisi valita vain niitä, joilla on oikeanlainen kasvatus ja koulutus. Pissapäiset nousukkaat ovat tuhoneet Suomen.','- Uudistusta tyäelämään ja koulutuslaitoksiin - ihmisten yksilällisyys otettava huomioon joustavilla tyäajoilla, liikkuvalla tyällä, opettamismetodeilla. 8 h/pvä systemi on vanhanaikainen ja kaipaa uudistusta. Enemmän luovuutta tyäelämään! K','Liikunnan lehtori',NULL),(7,'Alametsä','Vilja','Vihreä liitto','Kotka',82,'Mikäli haluat saman menon jatkuvan seuraavankin vaalikauden, ohita tämä ehdokas. Mikäli haluat muutosta niin olet oikeassa osoitteessa.','Ehdottomasti päällimäisenä asiana on hyvien suhteiden rakentaminen muihinkin kuin EU-maihin. Tarvitsemme enemmän kaupankäyntiä jotta vientimme nousee ja saamme uusia tyäpaikkoja säilyttäen nykyisetkin.','Juniorijääkiekkoseuran yhteyspäällikkä',NULL),(8,'Alanko-Kahiluoto','Sara','Vihreä liitto','Nokia',21,'Haluan vaikuttaa politiikan kautta yhteiskunnan hyvinvointiin.','Pohjoismaisen hyvinvointiyhteiskunnan turvaaminen moderniin rahateoriaan (uuschartalismiin) perustuvalla talousjärjestelmällä.    Suomen sotilaallisen liittoutumattomuuden ja ulkopoliittisen puolueettomuuden puolustaminen.     Sivistysyliopiston ja voittoa tuottamattoman tutkimuksen tukeminen.     Mainittuihin asioihin sisältyvät EU-, EMU-, Nato- ja TTIP-jäsenyyksien vastustaminen.','äidinkielen ja kirjallisuuden lehtori',NULL),(9,'Alasalmi','Otto','Suomen Sosialidemokraattinen Puolue','Varkaus',30,'Suomi kaipaa uusia ideoita ja niitä minulta läytyy.  Tämä maa kaipaa yhteistyätä.  Katson eteenpäin, uskon parempaan ja puolustan heikoimpia.','EU:sta eroaminen on tärkeintä! En ole tehnyt koskaan palkkatyätä, joten yrittäjyys on myäs sydämmen asia! Ei NATO, ei EU, ei TTIP, ei GMO ei äuro! KYLLä ITSENäISYYS JA KANSANVALTA! Suomeen tulee saada myäs perustuslakituomioistuin joka valvoo hallituksen tekemisiä ja päätäksien laillisuutta! ETA-sopimus riittää meille! Se takaa koulutuksen, liikkumisen ja kaupankäynnin EU:n alueella!','Freelancer-kirjoittaja',NULL),(10,'Alatalo','Cosmo','Suomen Keskusta','Tampere',68,'Olen tarmokas yhteisten asioiden hoitaja ja minulla on 20 vuoden kokemus ihmisten asioiden hoitamisesta. Viime kunnallisvaaleissa sain luottamuksen osoituksena ääniharavan aseman kaupungissani.','Poliitikot eivät luo tyäpaikkoja, vaan rakentavat raamit. Tyällisyysaste on saatava nostettua Ruotsin tasolle, ja rakenteellisia uudistuksia julkisella sektorilla sekä myäs tyämarkkinoilla on tehtävä, jotta tyän verotusta ja tyällistymisen esteitä voidaan olennaisesti pienentää.     Turhaa yrittäjyyttä ja talouselämää kuristavaa sääntäjen ja kieltojen viidakkoa pitää vähentää.     Tulen paneutumaan tyättämyyden ja syrjäytymisen ehkäisemiseen.','Opiskelija / Tyäntekijä',NULL),(11,'Albert','Essi','Suomen Keskusta','Turku',47,'Vaikka se kliseiseltä kuulostaakin, ajaisin kaikkien asiota eduskunnassa, eikä minulla ole hämäriä motiiveja. Eduskunnassa haluan luoda yhteiskuntaa, jossa kaikille riittää rakkautta.','Tasapainoista valtiontaloutta, uskottavaa puolustuskykyä, turvallista arkea, koulutuksen monipuolisuutta ja suurempaa yksilänvapautta.','Närtti',NULL),(12,'Alän','Mikko','Itsenäisyyspuolue','Kuopio',82,'Tavoitteenani on tuode tuoreita ja moderneja ajatuksia valtaapitävien puolueiden kurjistamalle poliittiselle kentälle.  Pienen puoleen ehdokkaana vanhuksien määrittämä puoluekuri ei rajoita minua.','JäRKEä SääNTELYYN, TILAA TYäLLE JA VALINNOILLE.  Suomi tarvitsee tyätä ja liikettä. Turhaa byrokratiaa ja ylisääntelyä pitää purkaa, jotta yrittäjyydelle, toimeliaisuudelle ja arjen valinnoille syntyy tilaa. Esimerkiksi kaupan aukioloaikojen ja sijainnin sääntelyä tulee vapauttaa. Erityisesti pk-yritysten velvoitteita pitää keventää. Lakien vaikutukset on arvioitava paremmin.    LAPSILLE, NUORILLE JA PERHEILLE ASIAN AJAJA  Perheet tarvitsevat tukea ja joustoja tyän ja perheen yhteensovittamiseksi. Kotihoidontuen jakaminen on perheen oma asia. Suomalaisesta laadukkaasta varhaiskasvatuksesta ja koulutuksesta on pidettävä kiinni, eikä koulutuksesta ole enää varaa leikata.    ARJEN TURVALLISUUTTA JA VAHVEMPAA OIKEUSTURVAA  Arjen turvallisuutta ja oikeusturvaa tulee vahvistaa. Poliisin, oikeuslaitoksen ja puolustusvoimien toimintakyky on turvattava. Tämä edellyttää riittäviä voimavaroja ja uudistuksia. Vakavien henkeen ja terveyteen, erityisesti lapsiin kohdistuvien rikosten rangaistuksia tulee koventaa.','Esiintyvä taiteilija, showmies, itsensänolaaja',NULL),(13,'Alho','Inna ','Kansallinen Kokoomus','Kouvola',62,'Haluan edistää kokonaisvaltaisen hyvinvoinnin kasvua ilman eturyhmäpolittista suuntautumista.','Tahdon olla mukana rakentamassa vastuullista ja kannustavaa yhteiskuntaa, jossa sivistykseen panostetaan. Tyällisyyden edistäminen ja koulutukseen panostaminen ovat tulevaisuuden hyvinvoinnin kannalta keskeisiä asioita. Tyä on hyvinvoinnin tae niin yksilän kuin yhteisän tasolla. Siksi tyällistämisen esteitä pitää purkaa. Koulutus on avain tulevaisuuteen - nyt on aika alkaa kehittää suomalaista koulua ja oppimista!','Uuden ajan sekatyömies',NULL),(14,'Alhojärvi','Mikael ','Suomen Kommunistinen Puolue','Lappeenranta',19,'Toisin eduskuntaan en vain yhtä, vaan useita uusia näkäkulmia.','Perusoikeuksien puolesta taistelija. Läpinäkyvyyttä, luotettavuutta ja oikeudenmukaisuutta päätäksentekoon. Lupauksistaan kiinni pitävä, takki ei käänny vaalien jälkeenkään.','Everstiluutnantti evp, taksin kuljettaja',NULL),(15,'Alhonnoro','Jasmine ','Vihreä liitto','Tampere',53,'Olen valmis ajamaan suurempiakin rakenne uudistuksia suomen kilpailukyvyn parantamiseksi. Luotan suomalaisiin, että he itse tietävät mikä on parasta heille itselleen eikä niinkään valtiovalta.','Pitkäaikainen kokemus ihmisten parissa tomimisessa - tyä, yritys, urheilu sekä järjestäjen parissa. Kunnallispolitiikassa toimiminen jo 80 - 90 luvuilla...','Valokuvaaja, ark.yo',NULL),(16,'Alijärvi','Daniel','Suomen Sosialidemokraattinen Puolue','Helsinki',20,'Pidän sanani','Päätäksenteko kaipaa osaavia, yhteistyäkykyisiä, kokeneita ja hyvät johtamistaidot omaavia tulevia kansanedustajia.','erityisasiantuntija',NULL),(17,'Allahmoradi','Tuomas','Vasemmistoliitto','Inkoo',73,'Fär att det behäv nägon som fär fram de liberala borgerliga värderingarna och nägon som inte är rädd att fatta ocksä svära beslut.','Oma maa mansikka, muu maa mustikka','Mediapastori',NULL),(18,'Anderson','Otto','Suomen ruotsalainen kansanpuolue','Vantaa',45,'Minulla on erityisavustajatyäni kautta vankka kokemus valtakunnan poliitikasta. Hallitsen eri kiemurat ja tiedän miten asiat saadaan maaliin.','Eduskuntaan tarvitaan piraatti. Teknologinen kehitys on yhteiskunnan suurin muutosvoima ja se pitää huomioida päätäksentekoprosessissa. Olen DI/fyysikko sekä opettaja ja osaava vaikuttaja.','maa- ja metsätalouden harjoittaja, sijaispappi',NULL),(19,'Andersson ','Cosmo','Vasemmistoliitto','Joensuu',41,'Minusta saisi omistautuneet kansanedustajan jolla on vapauteen ja sosiaaliseen oikeudenmukaisuuteen pohjautuvat arvot, vahvat mielipiteet ja kykyä yhteistyähän.','Olen uskonnoton yksilänvapauden kannattaja.  NATO myänteinen, ydinvoiman kannattaja.','Kansanedustaja',NULL),(20,'Andersson','Essi','Suomen ruotsalainen kansanpuolue','Kouvola',63,'SUOMEN TALOUSNäKYMäT OVAT KATASTROFAALISIA  On tärkeä alkaa kohottamaan Suomen taloutta.   Sitä varten pitää saada päätäsvallan Suomeen  eroamalla EU:sta ja jostakin muista liitoista.','Mnulla on fysiikan tohtorina vahva tieteellinen koulutus ja ohjelmistoyrittäjänä paljon kokemusta yhteiskunnasta, ml. julkishallinnosta. Näkemys ja kyky uudistuksiin on vahvuuteni.','rakennusmestari',NULL),(24,'Ehdokas','Essi',NULL,NULL,NULL,NULL,NULL,NULL,7);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `KYSYMYS_ID` int(11) NOT NULL,
  `KYSYMYS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`KYSYMYS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Suomessa on liian helppo elää sosiaaliturvan varassa.'),(2,'Kaupan ja muiden liikkeiden aukioloajat on vapautettava.'),(3,'Suomessa on siirryttävä perustuloon joka korvaisi nykyisen sosiaaliturvan vähimmäistason.'),(4,'Työntekijälle on turvattava lailla minimityöaika.'),(5,'Ansiosidonnaisen työttömyysturvan kestoa pitää lyhentää.'),(6,'Euron ulkopuolella Suomi pärjäisi paremmin.'),(7,'Ruoan verotusta on varaa kiristää.'),(8,'Valtion ja kuntien taloutta on tasapainotettava ensisijaisesti leikkaamalla menoja.'),(9,'Lapsilisiä on korotettava ja laitettava verolle.'),(10,'Suomella ei ole varaa nykyisen laajuisiin sosiaali- ja terveyspalveluihin.'),(11,'Nato-jäsenyys vahvistaisi Suomen turvallisuuspoliittista asemaa.'),(12,'Suomeen tarvitaan enemmän poliiseja.'),(13,'Maahanmuuttoa Suomeen on rajoitettava terrorismin uhan vuoksi.'),(14,'Venäjän etupiiripolitiikka on uhka Suomelle.'),(15,'Verkkovalvonnassa valtion turvallisuus on tärkeämpää kuin kansalaisten yksityisyyden suoja.'),(16,'Suomen on osallistuttava Isisin vastaiseen taisteluun kouluttamalla Irakin hallituksen joukkoja.'),(17,'Parantumattomasti sairaalla on oltava oikeus avustettuun kuolemaan.'),(18,'Terveys- ja sosiaalipalvelut on tuotettava ensijaisesti julkisina palveluina.'),(19,'Viranomaisten pitää puuttua lapsiperheiden ongelmiin nykyistä herkemmin.');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin'),(7,'user','5f4dcc3b5aa765d61d8327deb882cf99','candidate');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-29 12:07:03
