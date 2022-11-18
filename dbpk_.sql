-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: db_pk
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `bacsi`
--

DROP TABLE IF EXISTS `bacsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bacsi` (
  `idbacsi` int NOT NULL,
  `tenbacsi` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioitinh` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdtbacsi` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idbacsi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bacsi`
--

LOCK TABLES `bacsi` WRITE;
/*!40000 ALTER TABLE `bacsi` DISABLE KEYS */;
INSERT INTO `bacsi` VALUES (1,'Châu','Nữ','1111111111'),(2,'Hoàng','nam','22222222'),(3,'Lộc','Nam','333333333');
/*!40000 ALTER TABLE `bacsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benhnhan`
--

DROP TABLE IF EXISTS `benhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhnhan` (
  `idbenhnhan` int NOT NULL,
  `tenbenhnhan` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuoi` int DEFAULT NULL,
  `sdtbenhnhan` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioitinh` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baohiem` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idbenhnhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhnhan`
--

LOCK TABLES `benhnhan` WRITE;
/*!40000 ALTER TABLE `benhnhan` DISABLE KEYS */;
INSERT INTO `benhnhan` VALUES (1,'Phan',34,'000000000001','Nữ','Có'),(2,'Trần',45,'00000000002','Nữ','Có'),(3,'Thị',19,'0000000003','Nữ','Không'),(4,'Thư',5,'0000000004','Nữ','Có'),(5,'Bảo',12,'0000000005','Nam',NULL);
/*!40000 ALTER TABLE `benhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `idbooking` int NOT NULL,
  `idbacsi` int DEFAULT NULL,
  `idbenhnhan` int DEFAULT NULL,
  `idpk` int DEFAULT NULL,
  `ngaygio` datetime DEFAULT NULL,
  PRIMARY KEY (`idbooking`),
  KEY `idbacsi` (`idbacsi`),
  KEY `idbenhnhan` (`idbenhnhan`),
  KEY `idpk` (`idpk`),
  CONSTRAINT `idbacsi` FOREIGN KEY (`idbacsi`) REFERENCES `bacsi` (`idbacsi`),
  CONSTRAINT `idbenhnhan` FOREIGN KEY (`idbenhnhan`) REFERENCES `benhnhan` (`idbenhnhan`),
  CONSTRAINT `idpk` FOREIGN KEY (`idpk`) REFERENCES `pk` (`idpk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1,1,NULL),(2,2,2,2,NULL),(3,3,3,3,NULL),(4,2,4,1,NULL),(5,1,5,NULL,NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pk`
--

DROP TABLE IF EXISTS `pk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pk` (
  `idpk` int NOT NULL,
  `diachi` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdtpk` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idpk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pk`
--

LOCK TABLES `pk` WRITE;
/*!40000 ALTER TABLE `pk` DISABLE KEYS */;
INSERT INTO `pk` VALUES (1,'1 Hoàng Văn thụ quận Phú nhuận','0909090909'),(2,'Tầng 81 LM 81 quận Bình Thạnh','9999999999'),(3,'31 Nguyễn Văn Linh quận 7',NULL);
/*!40000 ALTER TABLE `pk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 22:42:49
