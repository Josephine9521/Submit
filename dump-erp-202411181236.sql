-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: erp
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `companycode`
--

DROP TABLE IF EXISTS `companycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companycode` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `company_code` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companycode`
--

LOCK TABLES `companycode` WRITE;
/*!40000 ALTER TABLE `companycode` DISABLE KEYS */;
INSERT INTO `companycode` VALUES (1,'10000','Rock.co.ltd'),(2,'20000','Jubjub.co.Ltd'),(3,'30000','BombBomb.co.Ltd'),(4,'40000','Jjang.co.Ltd');
/*!40000 ALTER TABLE `companycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `department_code` int unsigned DEFAULT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`department_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,100,'C.E.O'),(2,200,'Administer'),(3,300,'Account'),(4,400,'Business');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `material_code` varchar(255) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_price` int unsigned DEFAULT NULL,
  `material_supplier_code` varchar(255) DEFAULT NULL,
  `material_supplier_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'R_SCRW1','SCREW-1',200,'20000',NULL),(2,'R_SCRW2','SCREW-2',200,'20000',NULL),(3,'R_SCRW3','SCREW-3',300,'20000',NULL),(4,'R_RUBBER1','RUBBER-1',200,'30000',NULL),(5,'R_RUBBER2','RUBBER-2',200,'30000',NULL),(6,'R_RUBBER3','RUBBER-3',300,'30000',NULL),(7,'R_TAPE1','TAPE-1',100,'40000',NULL),(8,'R_TAPE2','TAPE-2',100,'40000',NULL),(9,'R_TAPE3','TAPE-3',300,'40000',NULL),(10,'R_BOX1','BOX-1',200,'10000',NULL),(11,'R_BOX2','BOX-2',200,'10000',NULL),(12,'R_BOX3','BOX-3',300,'10000',NULL);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialorder`
--

DROP TABLE IF EXISTS `materialorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialorder` (
  `order_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `idx` int unsigned DEFAULT NULL,
  `material_code` varchar(255) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_price` int unsigned DEFAULT NULL,
  `productAmount` int unsigned DEFAULT NULL,
  `material_supplier_code` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialorder`
--

LOCK TABLES `materialorder` WRITE;
/*!40000 ALTER TABLE `materialorder` DISABLE KEYS */;
INSERT INTO `materialorder` VALUES (1,1,'R_SCRW1','SCREW-1',200,3,'20000','Jubjub.co.Ltd'),(2,2,'R_SCRW2','SCREW-2',200,2,'20000','Jubjub.co.Ltd'),(3,3,'R_SCRW3','SCREW-3',300,4,'20000','Jubjub.co.Ltd'),(4,4,'R_RUBBER1','RUBBER-1',200,5,'30000','BombBomb.co.Ltd'),(5,5,'R_RUBBER2','RUBBER-2',200,5,'30000','BombBomb.co.Ltd'),(6,6,'R_RUBBER3','RUBBER-3',300,6,'30000','BombBomb.co.Ltd'),(7,9,'R_TAPE3','TAPE-3',300,3,'40000','Jjang.co.Ltd'),(8,11,'R_BOX2','BOX-2',200,5,'10000','Rock.co.ltd'),(9,9,'R_TAPE3','TAPE-3',300,14,'40000','Jjang.co.Ltd'),(10,12,'R_BOX3','BOX-3',300,22,'10000','Rock.co.ltd'),(11,2,'R_SCRW2','SCREW-2',200,4,'20000','Jubjub.co.Ltd'),(12,5,'R_RUBBER2','RUBBER-2',200,2,'30000','BombBomb.co.Ltd');
/*!40000 ALTER TABLE `materialorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positioncode`
--

DROP TABLE IF EXISTS `positioncode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positioncode` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `position_code` varchar(255) DEFAULT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positioncode`
--

LOCK TABLES `positioncode` WRITE;
/*!40000 ALTER TABLE `positioncode` DISABLE KEYS */;
INSERT INTO `positioncode` VALUES (1,'1000','C.E.O'),(2,'2000','Vice Presidenet'),(3,'3000','Director'),(4,'4000','Senior Manager'),(5,'5000','Section Chief'),(6,'6000','Assistant Manager');
/*!40000 ALTER TABLE `positioncode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idx` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_start_date` varchar(255) DEFAULT NULL,
  `user_company_code` varchar(100) DEFAULT NULL,
  `user_department_code` varchar(100) DEFAULT NULL,
  `user_position` varchar(100) DEFAULT NULL,
  `user_salary` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jieun','jjingzang@gmail.com','1111','2024-11-07','10000','100','C.E.O',50000000),(2,'Jake','Jubjub@gmail.com',NULL,'2024-11-07','20000','100','C.E.O',60000000),(3,'Rob','robbomb@gmail.com',NULL,'2024-11-07','20000','100','C.E.O',50000000),(4,'Jueun','jueun@gmail.com',NULL,'2024-11-08','10000','200','Director',50000000),(5,'Hangkyu','kyu@gmail.com',NULL,'2024-11-08','10000','400','Vice Presidenet',60000000),(6,'Jjangdol','jjangdol@gmail.com',NULL,'2024-11-15','40000','100','C.E.O',50000000),(7,'Jjangbap','jjangbap@gmail.com',NULL,'2024-11-15','40000','100','Vice Presidenet',40000000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'erp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 12:36:18
