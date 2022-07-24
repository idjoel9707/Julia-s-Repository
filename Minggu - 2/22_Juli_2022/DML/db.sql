-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: alta_online_shop
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `detail_transaction`
--

DROP TABLE IF EXISTS `detail_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qty` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `detail_transaction_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`),
  CONSTRAINT `detail_transaction_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_transaction`
--

LOCK TABLES `detail_transaction` WRITE;
/*!40000 ALTER TABLE `detail_transaction` DISABLE KEYS */;
INSERT INTO `detail_transaction` VALUES (1,1,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),(2,1,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(3,1,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(4,2,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(5,2,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(6,2,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(7,3,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(8,3,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(9,3,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),(10,4,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(11,4,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(12,4,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(13,5,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(14,5,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(15,5,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(16,6,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(17,6,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),(18,6,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(19,7,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(20,7,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(21,7,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(22,8,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(23,8,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(24,8,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(25,9,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),(26,9,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(27,9,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(28,10,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(29,10,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(30,10,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(31,11,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(32,11,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(33,11,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),(34,12,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(35,12,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(36,12,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(37,13,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(38,13,6,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(39,13,7,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(40,14,8,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(41,14,1,'2022-07-23 11:07:13','2022-07-23 18:18:54',3),(42,14,2,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(43,15,3,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(44,15,4,'2022-07-23 11:07:13','2022-07-23 18:07:13',1),(45,15,5,'2022-07-23 11:07:13','2022-07-23 18:07:13',1);
/*!40000 ALTER TABLE `detail_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operator` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator`
--

LOCK TABLES `operator` WRITE;
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
INSERT INTO `operator` VALUES (1,'Telkomsel','2022-07-23 10:11:36','2022-07-23 17:11:36'),(2,'Indosat','2022-07-23 10:11:36','2022-07-23 17:11:36'),(3,'XL','2022-07-23 10:11:36','2022-07-23 17:11:36'),(4,'Smartfren','2022-07-23 10:11:36','2022-07-23 17:11:36'),(5,'Esia','2022-07-23 10:11:36','2022-07-23 17:11:36');
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `method` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Debit','2022-07-23 10:35:18','2022-07-23 17:35:18'),(2,'Kredit','2022-07-23 10:35:18','2022-07-23 17:35:18'),(3,'Tunai','2022-07-23 10:35:18','2022-07-23 17:35:18');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `product_type_id` int NOT NULL,
  `operator_id` int NOT NULL,
  `prod_desc_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_type_id` (`product_type_id`),
  KEY `product_desc_id` (`prod_desc_id`),
  KEY `operator_id` (`operator_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`prod_desc_id`) REFERENCES `product_desc` (`id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'product_dummy',1,3,1,'2022-07-23 10:23:48','2022-07-23 18:15:11'),(2,'30K Pulsa',1,3,2,'2022-07-23 10:23:48','2022-07-23 17:27:55'),(3,'10G Data',2,1,3,'2022-07-23 10:23:48','2022-07-23 17:28:01'),(4,'Kartu Paket Data dan Pulsa',2,1,4,'2022-07-23 10:23:48','2022-07-23 17:32:21'),(5,'100K Pulsa',2,1,5,'2022-07-23 10:23:48','2022-07-23 17:32:22'),(6,'5K Pulsa',3,4,6,'2022-07-23 10:23:48','2022-07-23 17:32:22'),(7,'Kartu Data 18GB',3,4,7,'2022-07-23 10:23:48','2022-07-23 17:32:22'),(8,'15G Data',3,4,8,'2022-07-23 10:23:48','2022-07-23 17:32:24');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_desc`
--

DROP TABLE IF EXISTS `product_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_desc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_desc`
--

LOCK TABLES `product_desc` WRITE;
/*!40000 ALTER TABLE `product_desc` DISABLE KEYS */;
INSERT INTO `product_desc` VALUES (1,'3GB Data','2022-07-23 10:26:14','2022-07-23 17:26:14'),(2,'30K Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),(3,'10G Data','2022-07-23 10:26:14','2022-07-23 17:26:14'),(4,'Kartu Paket Data dan Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),(5,'100K Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),(6,'5K Pulsa','2022-07-23 10:26:14','2022-07-23 17:26:14'),(7,'Kartu Data 18GB','2022-07-23 10:26:14','2022-07-23 17:26:14'),(8,'15G Data','2022-07-23 10:26:14','2022-07-23 17:26:14');
/*!40000 ALTER TABLE `product_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Pulsa','2022-07-23 10:12:19','2022-07-23 17:12:19'),(2,'Data','2022-07-23 10:12:19','2022-07-23 17:12:19'),(3,'Kartu','2022-07-23 10:12:19','2022-07-23 17:12:19');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_method_id` int NOT NULL,
  `status` int DEFAULT NULL,
  `total_qty` int DEFAULT NULL,
  `total_price` decimal(25,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,1,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,150000.00),(2,1,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,210000.00),(3,1,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00),(4,2,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,1,10000.00),(5,2,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,17000.00),(6,2,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,2,100000.00),(7,3,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,10000.00),(8,3,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,8000.00),(9,3,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00),(10,4,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,70000.00),(11,4,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,50000.00),(12,4,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00),(13,5,'2022-07-23 10:50:07','2022-07-23 17:50:07',1,1,1,10000.00),(14,5,'2022-07-23 10:50:07','2022-07-23 17:50:07',3,1,1,20000.00),(15,5,'2022-07-23 10:50:07','2022-07-23 17:50:07',2,1,2,10000.00);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'1996-07-31','Perempuan','2022-07-23 10:07:00','2022-07-23 17:07:00','Ani'),(2,1,'1996-08-31','Laki-laki','2022-07-23 10:08:21','2022-07-23 17:08:21','Budi'),(3,0,'1996-08-31','Laki-laki','2022-07-23 10:08:21','2022-07-23 17:08:21','Danu'),(4,0,'1996-08-31','Perempuan','2022-07-23 10:08:21','2022-07-23 17:08:21','Siti'),(5,1,'1995-07-31','Perempuan','2022-07-23 10:36:56','2022-07-23 17:36:56','Arunika');
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

-- Dump completed on 2022-07-24 12:34:22
