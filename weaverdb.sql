-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: weaverdb
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

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
-- Table structure for table `available_vehicles`
--

DROP TABLE IF EXISTS `available_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `available_vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelType` varchar(255) NOT NULL,
  `plateNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_vehicles`
--

LOCK TABLES `available_vehicles` WRITE;
/*!40000 ALTER TABLE `available_vehicles` DISABLE KEYS */;
INSERT INTO `available_vehicles` VALUES (1,'Toyota Probox','KCA 359B'),(2,'Toyota Probox','KBS 456F'),(4,'Mini Bus Isuzu','KBA 345T');
/*!40000 ALTER TABLE `available_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `unitPrice` int NOT NULL,
  `availableUnits` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2020-11-08 19:25:40.538117','2020-11-08 19:25:40.538117','Trace 250ml',140,10),(2,'2020-11-08 19:31:56.060934','2020-11-08 19:31:56.060934','Drinking Water 500ml',50,100),(3,'2020-11-08 19:32:14.749719','2020-11-08 19:32:14.749719','Best 750ml',700,10),(4,'2020-11-11 16:31:45.730954','2020-11-11 16:31:45.730954','Fanta Orange 300ml',30,20),(5,'2020-11-11 16:36:48.121560','2020-11-11 16:36:48.121560','Sprite 300ml',30,10),(6,'2020-11-11 19:38:26.015431','2020-11-11 19:38:26.015431','Celar Cask',120,700),(7,'2020-11-11 19:38:43.462476','2020-11-11 19:38:43.462476','4h Street',100,700),(8,'2020-11-11 19:39:34.132264','2020-11-11 19:39:34.132264','Red Label',1200,100),(9,'2020-11-11 20:00:40.512934','2020-11-11 20:00:40.512934','Best 1lt',800,50);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `openStatus` tinyint NOT NULL DEFAULT '0',
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'umoja','the first shop called umoja',0,'2020-11-08 13:32:43.202965','2020-11-21 22:24:09.000000'),(2,'fair','the second shop owned by peter called fair',0,'2020-11-08 13:32:47.049166','2020-11-20 12:16:12.000000');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_info`
--

DROP TABLE IF EXISTS `stock_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `productName` varchar(255) NOT NULL,
  `unitPrice` int NOT NULL,
  `openingUnits` int NOT NULL,
  `addedUnits` int NOT NULL DEFAULT '0',
  `closingUnits` int NOT NULL,
  `soldUnits` int NOT NULL DEFAULT '0',
  `shopId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_921ab0a52a781d897d43272f252` (`shopId`),
  CONSTRAINT `FK_921ab0a52a781d897d43272f252` FOREIGN KEY (`shopId`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_info`
--

LOCK TABLES `stock_info` WRITE;
/*!40000 ALTER TABLE `stock_info` DISABLE KEYS */;
INSERT INTO `stock_info` VALUES (17,'2020-11-11 19:58:15.482281','Red Label',700,20,0,10,10,1),(18,'2020-11-11 19:58:15.480229','Sprite 300ml',40,100,0,50,50,1),(19,'2020-11-11 19:58:15.485407','Celar Cask',700,10,0,5,5,1),(20,'2020-11-12 12:06:06.012939','Best 1lt',700,100,0,0,100,1),(21,'2020-11-12 13:12:13.918570','Celar Cask',700,100,0,60,40,2),(22,'2020-11-12 13:12:13.929196','Red Label',800,10,0,1,9,2),(23,'2020-11-12 13:12:13.931420','4h Street',700,10,0,1,9,2),(24,'2020-11-12 13:12:13.932666','Best 750ml',650,100,0,10,90,2),(25,'2020-11-12 13:12:13.934162','Best 1lt',1200,10,0,1,9,2),(26,'2020-11-12 13:12:13.936128','Sprite 300ml',40,100,0,60,40,2),(27,'2020-11-12 13:28:28.812954','Sprite 300ml',30,10,0,1,9,1),(28,'2020-11-12 13:35:22.791612','4h Street',700,20,0,2,18,1),(29,'2020-11-12 13:55:53.753354','4h Street',700,10,0,1,9,1),(30,'2020-11-12 14:47:08.026222','Best 1lt',1200,10,0,10,0,1),(31,'2020-11-12 14:50:14.359651','Best 1lt',140,2,0,2,0,2),(32,'2020-11-12 14:51:17.293215','Best 1lt',1300,12,0,12,0,2),(33,'2020-11-20 01:21:20.070303','Red Label',800,3,0,1,2,1),(34,'2020-11-20 01:21:20.071692','4h Street',700,3,0,0,3,1),(35,'2020-11-20 01:21:20.074443','Best 1lt',1200,5,0,2,3,1),(36,'2020-11-20 01:24:52.703107','Red Label',1500,10,0,10,0,1),(37,'2020-11-20 01:27:19.845574','Best 1lt',100,1,0,1,0,1),(38,'2020-11-20 01:29:08.432973','Red Label',1500,2,0,2,0,2),(39,'2020-11-20 01:30:05.522969','Best 1lt',1000,2,0,2,0,1),(40,'2020-11-20 09:52:16.252744','Best 1lt',1500,4,0,1,3,1),(41,'2020-11-20 11:42:53.446961','Sprite 300ml',50,100,0,50,50,2),(42,'2020-11-20 11:42:53.447608','Fanta Orange 300ml',50,100,0,20,80,2),(43,'2020-11-20 11:42:53.448321','Best 1lt',1000,10,0,1,9,2),(44,'2020-11-20 11:42:53.448950','Best 750ml',800,10,0,10,0,2),(45,'2020-11-20 11:42:53.451001','Trace 250ml',140,100,0,80,20,2),(46,'2020-11-20 11:50:07.168011','Red Label',1000,10,0,10,0,1),(47,'2020-11-20 11:50:07.169350','Sprite 300ml',30,100,0,10,90,1),(48,'2020-11-20 11:50:07.171580','Fanta Orange 300ml',20,100,0,50,50,1),(49,'2020-11-20 11:52:26.502352','4h Street',700,100,0,10,90,1),(50,'2020-11-20 11:54:51.304230','4h Street',1000,100,0,10,90,2),(51,'2020-11-20 11:58:00.638683','Fanta Orange 300ml',10,10,0,10,0,2),(52,'2020-11-20 11:58:55.096652','Celar Cask',100,0,0,0,0,1),(53,'2020-11-20 12:09:22.880261','4h Street',100,10,0,10,0,1),(54,'2020-11-20 12:12:34.076815','Celar Cask',100,10,0,10,0,1),(55,'2020-11-20 12:16:05.815482','4h Street',10,10,0,10,0,2),(56,'2020-11-20 12:22:51.597576','Red Label',100,10,0,10,0,1),(57,'2020-11-20 12:23:56.966870','Celar Cask',10,100,0,100,0,1),(58,'2020-11-20 12:30:38.301744','Red Label',1000,10,0,10,0,1),(59,'2020-11-20 19:11:01.867290','Red Label',150,10,0,10,0,1),(60,'2020-11-21 22:21:23.759685','4h Street',100,10,0,2,8,1),(61,'2020-11-21 22:23:39.578846','Fanta Orange 300ml',30,100,0,10,90,1);
/*!40000 ALTER TABLE `stock_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `idNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Baraka','Baraka','driver','34628197'),(2,'Someone','Else','dassistant','12345678'),(3,'James','Mutisya','driver','12346535'),(4,'Joseph','Mutinda','driver','76542345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_route_driver`
--

DROP TABLE IF EXISTS `vehicle_route_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_route_driver` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `vehicle` varchar(255) NOT NULL,
  `driver` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_route_driver`
--

LOCK TABLES `vehicle_route_driver` WRITE;
/*!40000 ALTER TABLE `vehicle_route_driver` DISABLE KEYS */;
INSERT INTO `vehicle_route_driver` VALUES (1,'2020-11-21 18:34:24.599507','KCA 359B','James Mutisya','Machakos - Kitui'),(2,'2020-11-23 08:56:39.990364','KCA 359B','Joseph Mutinda','Machakos - Kitui'),(3,'2020-11-23 09:04:12.623252','KCA 359B','Joseph Mutinda','Nairobi - Machakos'),(4,'2020-11-23 09:39:03.190661','KCA 359B','James Mutisya','Nairobi - Voi'),(5,'2020-11-23 09:42:11.730046','KDA','James Mutisya','Nairobi - Voi'),(6,'2020-11-23 09:43:24.730452','KBA 345T','Baraka Baraka','Nairobi - Machakos'),(7,'2020-11-23 09:44:56.381612','KAF 234R','Baraka Baraka','Machakos - Kitui');
/*!40000 ALTER TABLE `vehicle_route_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_routes`
--

DROP TABLE IF EXISTS `vehicle_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_routes`
--

LOCK TABLES `vehicle_routes` WRITE;
/*!40000 ALTER TABLE `vehicle_routes` DISABLE KEYS */;
INSERT INTO `vehicle_routes` VALUES (1,'Machakos - Kitui','SouthEastern Region'),(2,'Nairobi - Machakos','Metropol Area'),(3,'Nairobi - Voi','Mombasa Road');
/*!40000 ALTER TABLE `vehicle_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_stock_info`
--

DROP TABLE IF EXISTS `vehicle_stock_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_stock_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `productName` varchar(255) NOT NULL,
  `unitPrice` int NOT NULL,
  `openingUnits` int NOT NULL,
  `closingUnits` int NOT NULL,
  `soldUnits` int NOT NULL DEFAULT '0',
  `vehicleId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_637bbb8f9fc3467c266e7709a96` (`vehicleId`),
  CONSTRAINT `FK_637bbb8f9fc3467c266e7709a96` FOREIGN KEY (`vehicleId`) REFERENCES `available_vehicles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_stock_info`
--

LOCK TABLES `vehicle_stock_info` WRITE;
/*!40000 ALTER TABLE `vehicle_stock_info` DISABLE KEYS */;
INSERT INTO `vehicle_stock_info` VALUES (1,'2020-11-23 09:04:12.657567','',1000,0,0,0,1),(2,'2020-11-23 09:39:03.220242','',50,0,0,0,1),(3,'2020-11-23 09:39:03.221385','',1200,0,0,0,1),(5,'2020-11-23 09:43:24.760557','',2500,0,0,0,4);
/*!40000 ALTER TABLE `vehicle_stock_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23 15:54:27
