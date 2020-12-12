-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: products
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `bacteria`
--

DROP TABLE IF EXISTS `bacteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bacteria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bacteria`
--

LOCK TABLES `bacteria` WRITE;
/*!40000 ALTER TABLE `bacteria` DISABLE KEYS */;
INSERT INTO `bacteria` VALUES (1,'Total count of bacteria'),(2,'Coliforms'),(3,'Enterobacteria'),(4,'Escherichia coli'),(5,'Staphylococcus aureus'),(6,'Listeria monocytogenes'),(7,'Salmonella'),(8,'Yeasts'),(9,'Moulds');
/*!40000 ALTER TABLE `bacteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Termiski apstrādāti produkti'),(2,'Produkti ar termiski apstrādātām sastāvdaļām bez termiskas produkta gala apstrādes'),(3,'Produkti, kuru sastāvā ir marinēti dārzeņi, siers, kūpināta gaļa'),(4,'Produkti, kuru sastāvā ir svaigi dārzeņi vai augļi'),(5,'Produkti, kuru sastāvā ir olas, jūrasveltes bez svaigiem dārzeņiem'),(6,'Produkti, kuru sastāvā ir olas, jūrasveltes ar svaigiem dārzeņiem');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limit`
--

DROP TABLE IF EXISTS `limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limit` (
  `bacteria_id` int NOT NULL,
  `limit` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`bacteria_id`,`category_id`),
  KEY `FK_limit_category_category_id_idx` (`category_id`),
  CONSTRAINT `FK_limit_bacteria_bacteria_id` FOREIGN KEY (`bacteria_id`) REFERENCES `bacteria` (`id`),
  CONSTRAINT `FK_limit_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limit`
--

LOCK TABLES `limit` WRITE;
/*!40000 ALTER TABLE `limit` DISABLE KEYS */;
INSERT INTO `limit` VALUES (1,10000,1),(1,100000,2),(2,1000,4),(2,1000,6),(3,100,1),(3,10000,2),(3,10000,3),(3,10000,5),(4,10,1),(4,10,2),(4,10,3),(4,10,4),(4,10,5),(4,10,6),(5,10,1),(5,100,2),(5,100,3),(5,100,4),(5,100,5),(5,100,6),(6,10,1),(6,10,2),(6,10,3),(6,10,4),(6,10,5),(6,10,6),(7,10,5),(7,10,6);
/*!40000 ALTER TABLE `limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shelf_life` int DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_category_category_id_idx` (`category_id`),
  CONSTRAINT `FK_product_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'C20050','Sviestmaize ar lasi',3,6),(2,'C60330','Sviestmaize ar ceptu vistas fileju mango mērcē',3,4),(3,'C88044','Kartupeļu sacepums ar gaļu',4,1),(4,'C56060','Sviestmaize ar tunci un olu',8,5),(5,'C77800','Rasols',4,3),(6,'C54220','Panini ar šķiņķi un sieru',4,3),(7,'C33890','Cēzara salāti',4,4),(8,'Test code','Test name',10,4),(9,'Test code','Test name',10,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-12 18:03:19
