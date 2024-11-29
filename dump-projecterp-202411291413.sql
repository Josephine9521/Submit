-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: projecterp
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
-- Table structure for table `completeproducts`
--

DROP TABLE IF EXISTS `completeproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `completeproducts` (
  `completeP_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `completeP_code` varchar(255) DEFAULT NULL,
  `completeP_name` varchar(255) DEFAULT NULL,
  `completeP_price` int DEFAULT NULL,
  PRIMARY KEY (`completeP_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completeproducts`
--

LOCK TABLES `completeproducts` WRITE;
/*!40000 ALTER TABLE `completeproducts` DISABLE KEYS */;
INSERT INTO `completeproducts` VALUES (1,'P_NX4Y_ICM','IMPACT CROSS MEMBER',100),(2,'P_NX4L_ICM','IMPACT CROSS MEMBER',1000),(3,'P_NX4B_ICM','IMPACT CROSS MEMBER',3000);
/*!40000 ALTER TABLE `completeproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components`
--

DROP TABLE IF EXISTS `components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components` (
  `components_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `completeP_idx` int unsigned DEFAULT NULL,
  PRIMARY KEY (`components_idx`),
  KEY `completeP_idx` (`completeP_idx`),
  CONSTRAINT `components_ibfk_1` FOREIGN KEY (`completeP_idx`) REFERENCES `completeproducts` (`completeP_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components`
--

LOCK TABLES `components` WRITE;
/*!40000 ALTER TABLE `components` DISABLE KEYS */;
INSERT INTO `components` VALUES (1,'RUBBER-2',1,1),(4,'RUBBER-2',4,2),(5,'TAPE-3',2,3);
/*!40000 ALTER TABLE `components` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'R_SCRW1','SCREW-1',200,'20000',NULL),(2,'R_SCRW2','SCREW-2',200,'20000',NULL),(3,'R_SCRW3','SCREW-3',300,'20000',NULL),(4,'R_RUBBER1','RUBBER-1',200,'30000',NULL),(5,'R_RUBBER2','RUBBER-2',200,'30000',NULL),(6,'R_RUBBER3','RUBBER-3',300,'30000',NULL),(7,'R_TAPE1','TAPE-1',100,'40000',NULL),(8,'R_TAPE2','TAPE-2',100,'40000',NULL),(9,'R_TAPE3','TAPE-3',300,'40000',NULL),(10,'R_BOX1','BOX-1',200,'10000',NULL),(11,'R_BOX2','BOX-2',200,'10000',NULL),(12,'R_BOX3','BOX-3',300,'10000',NULL),(13,'P_NX4Y_ICM','IMPACT CROSS MEMBER',2000,'10000','null'),(14,'P_NX4B_ICM','IMPACT CROSS MEMBER',2000,'10000','null'),(15,'P_NX4W_ICM','IMPACT CROSS MEMBER',2000,'10000','null'),(16,'P_CN7Y_ICM','IMPACT CROSS MEMBER',1000,'10000',NULL),(17,'P_CN7B_ICM','IMPACT CROSS MEMBER',1000,'10000',NULL),(18,'P_CN7W_ICM','IMPACT CROSS MEMBER',1000,'10000',NULL);
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
  `material_code` varchar(255) NOT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `material_price` int unsigned DEFAULT NULL,
  `productAmount` int unsigned DEFAULT NULL,
  `material_supplier_code` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_idx`,`material_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialorder`
--

LOCK TABLES `materialorder` WRITE;
/*!40000 ALTER TABLE `materialorder` DISABLE KEYS */;
INSERT INTO `materialorder` VALUES (1,1,'R_SCRW1','SCREW-1',200,10,'20000','Jubjub.co.Ltd'),(2,2,'R_SCRW2','SCREW-2',200,10,'20000','Jubjub.co.Ltd'),(3,3,'R_SCRW3','SCREW-3',300,20,'20000','Jubjub.co.Ltd'),(4,5,'R_RUBBER2','RUBBER-2',200,10,'30000','BombBomb.co.Ltd'),(5,4,'R_RUBBER1','RUBBER-1',200,10,'30000','BombBomb.co.Ltd'),(6,6,'R_RUBBER3','RUBBER-3',300,20,'30000','BombBomb.co.Ltd'),(7,1,'R_SCRW1','SCREW-1',200,10,'20000','Jubjub.co.Ltd');
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_idx` int unsigned NOT NULL AUTO_INCREMENT,
  `idx` int unsigned DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_amount` int unsigned DEFAULT NULL,
  `product_price` int unsigned DEFAULT NULL,
  `total_profit` int DEFAULT NULL,
  PRIMARY KEY (`product_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,13,'P_NX4Y_ICM','IMPACT CROSS MEMBER',1,2000,2000),(2,14,'P_NX4B_ICM','IMPACT CROSS MEMBER',2,2000,4000),(3,15,'P_NX4W_ICM','IMPACT CROSS MEMBER',3,2000,6000),(4,16,'P_CN7Y_ICM','IMPACT CROSS MEMBER',4,1000,4000),(5,15,'P_NX4W_ICM','IMPACT CROSS MEMBER',5,2000,10000),(6,18,'P_CN7W_ICM','IMPACT CROSS MEMBER',6,1000,6000),(7,15,'P_NX4W_ICM','IMPACT CROSS MEMBER',10,2000,20000),(8,17,'P_CN7B_ICM','IMPACT CROSS MEMBER',10,1000,10000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'jieun','jjingzang@gmail.com',NULL,'2024-11-26','10000','100','C.E.O',100000000),(2,'Jake','Jubjub@gmail.com',NULL,'2024-11-26','20000','100','C.E.O',100000000),(3,'Rob','Robomb@gmail.com',NULL,'2024-11-27','30000','100','C.E.O',100000000),(4,'HangKyu','kyu@gmail.com',NULL,'2024-11-28','10000','200','Vice Presidenet',100000000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'projecterp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-29 14:13:01
