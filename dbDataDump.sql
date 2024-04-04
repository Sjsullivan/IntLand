-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: IntLand
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Collection`
--

DROP TABLE IF EXISTS `Collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `walletId` int DEFAULT NULL,
  `memeId` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  UNIQUE KEY `walletId_UNIQUE` (`walletId`),
  UNIQUE KEY `memeId_UNIQUE` (`memeId`),
  KEY `fk_userId_idx` (`userId`),
  KEY `fk_walletId_idx` (`walletId`),
  KEY `fk_memeId_idx` (`memeId`),
  CONSTRAINT `fk_memeId_col` FOREIGN KEY (`memeId`) REFERENCES `Meme` (`id`),
  CONSTRAINT `fk_userId_col` FOREIGN KEY (`userId`) REFERENCES `User` (`id`),
  CONSTRAINT `fk_walletId_col` FOREIGN KEY (`walletId`) REFERENCES `Wallet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collection`
--

LOCK TABLES `Collection` WRITE;
/*!40000 ALTER TABLE `Collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `Collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flags`
--

DROP TABLE IF EXISTS `Flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `farmCount` int DEFAULT '0',
  `farmCap` int DEFAULT '1',
  `farmTimer` varchar(45) DEFAULT NULL,
  `hasMined` tinyint DEFAULT '0',
  `mineTimer` varchar(45) DEFAULT NULL,
  `checkedMud` tinyint DEFAULT '0',
  `mudTimer` varchar(45) DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  KEY `fk_userId_flag_idx` (`userId`),
  CONSTRAINT `fk_userId_flag` FOREIGN KEY (`userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flags`
--

LOCK TABLES `Flags` WRITE;
/*!40000 ALTER TABLE `Flags` DISABLE KEYS */;
INSERT INTO `Flags` VALUES (1,1,0,1,'2022-04-21 21:21:11.140023',0,'2022-04-21 20:42:44.0234',0,'2022-04-21 21:10:05.852461','2022-03-29 15:54:38.985814','System','2022-04-21 21:21:11.144387','System'),(2,2,0,1,'2022-03-29 16:48:22.78247',0,NULL,0,NULL,'2022-03-29 16:48:04.088407','System','2022-03-29 16:48:22.788957','System'),(3,3,0,1,NULL,0,NULL,0,NULL,'2022-04-06 02:26:50.017397','System','2022-04-06 02:26:50.017397','System'),(4,4,0,1,'2022-04-21 20:52:56.781893',0,NULL,0,'2022-04-21 20:02:53.839201','2022-04-21 19:47:43.985337','System','2022-04-21 20:52:56.786703','System');
/*!40000 ALTER TABLE `Flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `itemId` int DEFAULT NULL,
  `itemQuantity` int DEFAULT '0',
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  UNIQUE KEY `itemId_UNIQUE` (`itemId`),
  KEY `fk_itemId_inv_idx` (`itemId`),
  KEY `fk_userId_inv_idx` (`userId`),
  CONSTRAINT `fk_itemId_inv` FOREIGN KEY (`itemId`) REFERENCES `ItemList` (`id`),
  CONSTRAINT `fk_userId_inv` FOREIGN KEY (`userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemList`
--

DROP TABLE IF EXISTS `ItemList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ItemList` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT NULL,
  `itemDescription` varchar(255) DEFAULT NULL,
  `itemCost` int DEFAULT NULL,
  `itemCurrency` varchar(255) DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemList`
--

LOCK TABLES `ItemList` WRITE;
/*!40000 ALTER TABLE `ItemList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ItemList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meme`
--

DROP TABLE IF EXISTS `Meme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Meme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `memeListId` int DEFAULT NULL,
  `collectionId` int DEFAULT NULL,
  `level` int DEFAULT '1',
  `experience` int DEFAULT '0',
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  UNIQUE KEY `memeListId_UNIQUE` (`memeListId`),
  UNIQUE KEY `collectionId_UNIQUE` (`collectionId`),
  KEY `fk_userId_idx` (`userId`),
  KEY `fk_memeListId_idx` (`memeListId`),
  KEY `fk_collectionId_idx` (`collectionId`),
  CONSTRAINT `fk_collectionId_meme` FOREIGN KEY (`collectionId`) REFERENCES `Collection` (`id`),
  CONSTRAINT `fk_memeListId_meme` FOREIGN KEY (`memeListId`) REFERENCES `MemeList` (`id`),
  CONSTRAINT `fk_userId_meme` FOREIGN KEY (`userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meme`
--

LOCK TABLES `Meme` WRITE;
/*!40000 ALTER TABLE `Meme` DISABLE KEYS */;
/*!40000 ALTER TABLE `Meme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemeList`
--

DROP TABLE IF EXISTS `MemeList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MemeList` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `evoLevel` int DEFAULT NULL,
  `evoPrevious` int DEFAULT NULL,
  `evoNext` int DEFAULT NULL,
  `generated` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemeList`
--

LOCK TABLES `MemeList` WRITE;
/*!40000 ALTER TABLE `MemeList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemeList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `discordId` varchar(255) NOT NULL,
  `collectionId` int DEFAULT NULL,
  `inventoryId` int DEFAULT NULL,
  `walletId` int DEFAULT NULL,
  `flagsId` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `collectionId_UNIQUE` (`collectionId`),
  UNIQUE KEY `inventoryId_UNIQUE` (`inventoryId`),
  UNIQUE KEY `walletId_UNIQUE` (`walletId`),
  UNIQUE KEY `flagsId_UNIQUE` (`flagsId`),
  KEY `fk_wallet_us_idx` (`walletId`),
  KEY `fk_collection_us_idx` (`collectionId`),
  KEY `fk_inventoryId_us_idx` (`inventoryId`),
  KEY `fk_flagsId_us_idx` (`flagsId`),
  CONSTRAINT `fk_collectionId_us` FOREIGN KEY (`collectionId`) REFERENCES `Collection` (`id`),
  CONSTRAINT `fk_flagsId_us` FOREIGN KEY (`flagsId`) REFERENCES `Flags` (`id`),
  CONSTRAINT `fk_inventoryId_us` FOREIGN KEY (`inventoryId`) REFERENCES `Inventory` (`id`),
  CONSTRAINT `fk_walletId_us` FOREIGN KEY (`walletId`) REFERENCES `Wallet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'DoubleShane','139143039720488960',NULL,NULL,1,1,'2022-03-29 15:54:36.064951','System','2022-03-29 15:54:39.023224','System'),(2,'billhighthestonerguy420','138110748462284800',NULL,NULL,2,2,'2022-03-29 16:47:54.149037','System','2022-03-29 16:48:04.103791','System'),(3,'Domgan','134421261999669248',NULL,NULL,3,3,'2022-04-06 02:26:12.634265','System','2022-04-06 02:26:50.037979','System'),(4,'DTubbs','103941298490216448',NULL,NULL,4,4,'2022-04-21 19:47:38.941666','System','2022-04-21 19:47:43.997811','System');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wallet`
--

DROP TABLE IF EXISTS `Wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Wallet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `intCoins` int DEFAULT NULL,
  `glizzyGold` int DEFAULT NULL,
  `darkDiamonds` int DEFAULT NULL,
  `mudPieces` int DEFAULT NULL,
  `mudArtifacts` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `fk_userId_wal` FOREIGN KEY (`userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wallet`
--

LOCK TABLES `Wallet` WRITE;
/*!40000 ALTER TABLE `Wallet` DISABLE KEYS */;
INSERT INTO `Wallet` VALUES (1,1,2389,221,55,2,11,'2022-03-29 15:54:38.97162','System','2022-04-21 21:21:11.130231','System'),(2,2,0,0,0,0,0,'2022-03-29 16:48:04.059506','System','2022-03-29 16:48:22.76191','System'),(3,3,0,0,0,0,0,'2022-04-06 02:26:49.972901','System','2022-04-06 02:26:49.972901','System'),(4,4,63,5,0,2,0,'2022-04-21 19:47:43.967229','System','2022-04-21 20:52:56.765867','System');
/*!40000 ALTER TABLE `Wallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 21:27:29
