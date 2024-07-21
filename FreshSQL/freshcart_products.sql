-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: freshcart
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_description` varchar(500) DEFAULT NULL,
  `product_discount` double DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_rating` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1cf90etcu98x1e6n9aks3tel3` (`category_id`),
  KEY `FK9ked8me9rhc6c5s0r489qwm85` (`seller_id`),
  CONSTRAINT `FK1cf90etcu98x1e6n9aks3tel3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `FK9ked8me9rhc6c5s0r489qwm85` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (10,'Elevate Your Dishes: Shop Fresh Coriander Online Now!',0,'corinader-powder.webp','Coriander Powder',25,5,1200,4,3,'g'),(12,'Add a Zing to Your Cuisine: Buy Fresh Green Chillies Online!',0,'green chilly.webp','Green Chilly',60,5,50,4,3,'kg'),(13,'Fresh from farm.',0,'cabbage.jpg','Cabbage',24,4,35,2,5,'kg'),(14,'Full with vitamins.',0,'carrot.webp','Carrot',40,4,55,2,5,'kg'),(16,'Green and fresh.',0,'green peas.webp','Green Peas',60,5,30,2,5,'kg'),(17,'Full with protains.',0,'milk-bottle-realistic_1284-6148.avif','Milk',55,5,300,3,2,'l'),(18,'Full with protains.',0,'cheese.jpg','Cheese',250,5,300,3,2,'kg'),(19,'Full with protains.',0,'curd.jpg','Curd',25,5,65,3,2,'ml'),(20,'Full with protains.',0,'ghee.jpg','Ghee',700,5,65,3,2,'ml'),(21,'Fresh From kashmir.',0,'apple.jpg','Apple',150,4,200,5,4,'kg'),(22,'Fresh From jalgaon.',0,'banana.jpeg','Banana',50,4,200,5,4,'kg'),(23,'Fresh From mahana.',0,'kiwi.jpg','Kiwi',160,4,200,5,4,'kg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29 21:33:42
