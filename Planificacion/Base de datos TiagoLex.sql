CREATE DATABASE  IF NOT EXISTS `chat` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `chat`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: chat
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `emoji`
--

DROP TABLE IF EXISTS `emoji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emoji` (
  `id_emoji` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_emoji`),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `tipo` (`tipo`),
  CONSTRAINT `tiagolex` FOREIGN KEY (`tipo`) REFERENCES `tipoemoji` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emoji`
--

LOCK TABLES `emoji` WRITE;
/*!40000 ALTER TABLE `emoji` DISABLE KEYS */;
/*!40000 ALTER TABLE `emoji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salauser`
--

DROP TABLE IF EXISTS `salauser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salauser` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sala` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password_sala` blob NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `nombre_sala` (`nombre_sala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salauser`
--

LOCK TABLES `salauser` WRITE;
/*!40000 ALTER TABLE `salauser` DISABLE KEYS */;
/*!40000 ALTER TABLE `salauser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoemoji`
--

DROP TABLE IF EXISTS `tipoemoji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoemoji` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tipo`),
  UNIQUE KEY `tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoemoji`
--

LOCK TABLES `tipoemoji` WRITE;
/*!40000 ALTER TABLE `tipoemoji` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoemoji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-23 10:10:23
