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
-- Table structure for table `Armory`
--

DROP TABLE IF EXISTS `Armory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Armory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `weaponID` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_weaponId_armo_idx` (`weaponID`),
  KEY `fk_userId_armo_idx` (`userId`),
  CONSTRAINT `fk_userId_armo` FOREIGN KEY (`userId`) REFERENCES `User` (`id`),
  CONSTRAINT `fk_weaponId_armo` FOREIGN KEY (`weaponID`) REFERENCES `Weapon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Armory`
--

LOCK TABLES `Armory` WRITE;
/*!40000 ALTER TABLE `Armory` DISABLE KEYS */;
INSERT INTO `Armory` VALUES (1,9,1,1,NULL,'2022-04-28 08:39:45.657999','System','2022-04-28 08:39:45.657999','System'),(2,3,1,1,NULL,'2022-04-28 08:43:30.816727','System','2022-04-28 08:43:30.816727','System'),(3,11,1,1,NULL,'2022-04-28 08:46:37.268364','System','2022-04-28 08:46:37.268364','System'),(4,8,1,1,NULL,'2022-04-28 08:46:37.30417','System','2022-04-28 08:46:37.304204','System'),(5,1,1,1,NULL,'2022-04-28 08:46:37.341027','System','2022-04-28 08:46:37.341027','System'),(6,13,1,1,NULL,'2022-04-28 08:46:37.374234','System','2022-04-28 08:46:37.374234','System'),(7,5,1,1,NULL,'2022-04-28 08:46:37.405442','System','2022-04-28 08:46:37.405442','System'),(8,1,1,1,NULL,'2022-04-28 08:46:37.433237','System','2022-04-28 08:46:37.433237','System'),(9,10,1,1,NULL,'2022-04-28 08:46:37.462758','System','2022-04-28 08:46:37.462758','System'),(10,9,1,1,NULL,'2022-04-28 08:46:37.492661','System','2022-04-28 08:46:37.492661','System'),(11,11,1,1,NULL,'2022-04-28 08:46:37.524347','System','2022-04-28 08:46:37.524347','System'),(12,6,1,1,NULL,'2022-04-28 08:46:37.55793','System','2022-04-28 08:46:37.55793','System'),(13,8,1,1,NULL,'2022-04-28 08:47:30.069888','System','2022-04-28 08:47:30.069888','System'),(14,5,1,1,NULL,'2022-04-28 08:47:30.108775','System','2022-04-28 08:47:30.108775','System'),(15,10,1,1,NULL,'2022-04-28 08:47:30.145341','System','2022-04-28 08:47:30.145341','System'),(16,8,1,1,NULL,'2022-04-28 08:47:30.177449','System','2022-04-28 08:47:30.177449','System'),(17,13,1,1,NULL,'2022-04-28 08:47:30.208842','System','2022-04-28 08:47:30.208842','System'),(18,5,1,1,NULL,'2022-04-28 08:47:30.239093','System','2022-04-28 08:47:30.239093','System'),(19,8,1,1,NULL,'2022-04-28 08:47:30.268054','System','2022-04-28 08:47:30.268054','System'),(20,2,1,1,NULL,'2022-04-28 08:47:30.295054','System','2022-04-28 08:47:30.295054','System'),(21,11,1,1,NULL,'2022-04-28 08:47:30.321055','System','2022-04-28 08:47:30.321055','System'),(22,6,1,1,NULL,'2022-04-28 08:47:30.347054','System','2022-04-28 08:47:30.347054','System'),(23,2,1,1,NULL,'2022-04-28 08:47:37.258927','System','2022-04-28 08:47:37.258927','System'),(24,2,1,1,NULL,'2022-04-28 08:47:37.299056','System','2022-04-28 08:47:37.299056','System'),(25,2,1,1,NULL,'2022-04-28 08:47:37.33368','System','2022-04-28 08:47:37.33368','System'),(26,10,1,1,NULL,'2022-04-28 08:47:37.364453','System','2022-04-28 08:47:37.364453','System'),(27,2,1,1,NULL,'2022-04-28 08:47:37.397341','System','2022-04-28 08:47:37.397341','System'),(28,11,1,1,NULL,'2022-04-28 08:47:37.429032','System','2022-04-28 08:47:37.429032','System'),(29,3,1,1,NULL,'2022-04-28 08:47:37.457032','System','2022-04-28 08:47:37.457032','System'),(30,13,1,1,NULL,'2022-04-28 08:47:37.485035','System','2022-04-28 08:47:37.485035','System'),(31,2,1,1,NULL,'2022-04-28 08:47:37.516039','System','2022-04-28 08:47:37.516039','System'),(32,8,1,1,NULL,'2022-04-28 08:47:37.545033','System','2022-04-28 08:47:37.545033','System'),(33,6,1,1,NULL,'2022-04-28 08:48:10.469503','System','2022-04-28 08:48:10.469503','System'),(34,8,1,1,NULL,'2022-04-28 08:48:10.515635','System','2022-04-28 08:48:10.515635','System'),(35,6,1,1,NULL,'2022-04-28 08:48:10.543073','System','2022-04-28 08:48:10.543073','System'),(36,10,1,1,NULL,'2022-04-28 08:48:10.569685','System','2022-04-28 08:48:10.570215','System'),(37,8,1,1,NULL,'2022-04-28 08:48:10.59978','System','2022-04-28 08:48:10.59978','System'),(38,12,1,1,NULL,'2022-04-28 08:48:10.628612','System','2022-04-28 08:48:10.628612','System'),(39,9,1,1,NULL,'2022-04-28 08:48:10.652014','System','2022-04-28 08:48:10.652014','System'),(40,6,1,1,NULL,'2022-04-28 08:48:10.679017','System','2022-04-28 08:48:10.680015','System'),(41,10,1,1,NULL,'2022-04-28 08:48:10.708023','System','2022-04-28 08:48:10.708023','System'),(42,9,1,1,NULL,'2022-04-28 08:48:10.735017','System','2022-04-28 08:48:10.735017','System');
/*!40000 ALTER TABLE `Armory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attack`
--

DROP TABLE IF EXISTS `Attack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Attack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `weaponId` int DEFAULT NULL,
  `armoryId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_armoryId_atk_idx` (`armoryId`),
  KEY `fk_weaponId_atk_idx` (`weaponId`),
  KEY `fk_userId_atk_idx` (`userId`),
  CONSTRAINT `fk_armoryId_atk` FOREIGN KEY (`armoryId`) REFERENCES `Armory` (`id`),
  CONSTRAINT `fk_userId_atk` FOREIGN KEY (`userId`) REFERENCES `User` (`id`),
  CONSTRAINT `fk_weaponId_atk` FOREIGN KEY (`weaponId`) REFERENCES `Weapon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attack`
--

LOCK TABLES `Attack` WRITE;
/*!40000 ALTER TABLE `Attack` DISABLE KEYS */;
/*!40000 ALTER TABLE `Attack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttackRound`
--

DROP TABLE IF EXISTS `AttackRound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AttackRound` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attackId` int DEFAULT NULL,
  `bossFightId` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_attackId_att_idx` (`attackId`),
  KEY `fk_bossFightId_bossFig_idx` (`bossFightId`),
  CONSTRAINT `fk_attackId_att` FOREIGN KEY (`attackId`) REFERENCES `Attack` (`id`),
  CONSTRAINT `fk_bossFightId_bossFig` FOREIGN KEY (`bossFightId`) REFERENCES `BossFight` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttackRound`
--

LOCK TABLES `AttackRound` WRITE;
/*!40000 ALTER TABLE `AttackRound` DISABLE KEYS */;
/*!40000 ALTER TABLE `AttackRound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BossFight`
--

DROP TABLE IF EXISTS `BossFight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BossFight` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bossId` int DEFAULT NULL,
  `health` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bossId_bf_idx` (`bossId`),
  CONSTRAINT `fk_bossId_bf` FOREIGN KEY (`bossId`) REFERENCES `BossList` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BossFight`
--

LOCK TABLES `BossFight` WRITE;
/*!40000 ALTER TABLE `BossFight` DISABLE KEYS */;
/*!40000 ALTER TABLE `BossFight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BossList`
--

DROP TABLE IF EXISTS `BossList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BossList` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` int DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `health` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `lootType` varchar(255) DEFAULT NULL,
  `lootAmount` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BossList`
--

LOCK TABLES `BossList` WRITE;
/*!40000 ALTER TABLE `BossList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BossList` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flags`
--

LOCK TABLES `Flags` WRITE;
/*!40000 ALTER TABLE `Flags` DISABLE KEYS */;
INSERT INTO `Flags` VALUES (1,1,0,1,'2022-04-28 16:22:45.090682',0,'2022-04-25 08:41:31.277882',0,'2022-04-28 16:22:51.42715','2022-03-29 15:54:38.985814','System','2022-04-28 16:22:51.433296','System'),(2,2,0,1,'2022-03-29 16:48:22.78247',0,NULL,0,NULL,'2022-03-29 16:48:04.088407','System','2022-03-29 16:48:22.788957','System'),(3,3,0,1,NULL,0,NULL,0,NULL,'2022-04-06 02:26:50.017397','System','2022-04-06 02:26:50.017397','System'),(4,4,0,1,'2022-04-23 21:32:04.90179',0,'2022-04-23 21:34:09.436771',0,'2022-04-23 21:32:07.911311','2022-04-21 19:47:43.985337','System','2022-04-23 21:34:09.441307','System'),(5,5,0,1,'2022-04-25 12:31:07.459353',0,NULL,0,'2022-04-25 12:31:13.648322','2022-04-22 11:00:55.707355','System','2022-04-25 12:31:13.653783','System'),(6,6,0,1,'2022-04-23 21:33:12.496152',0,'2022-04-23 21:34:07.470934',0,'2022-04-23 21:33:50.432754','2022-04-23 21:32:41.730833','System','2022-04-23 21:34:07.475842','System'),(7,7,0,1,'2022-04-23 21:33:15.34915',0,NULL,0,NULL,'2022-04-23 21:33:11.85295','System','2022-04-23 21:33:15.35193','System');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'DoubleShane','139143039720488960',NULL,NULL,1,1,'2022-03-29 15:54:36.064951','System','2022-03-29 15:54:39.023224','System'),(2,'billhighthestonerguy420','138110748462284800',NULL,NULL,2,2,'2022-03-29 16:47:54.149037','System','2022-03-29 16:48:04.103791','System'),(3,'Domgan','134421261999669248',NULL,NULL,3,3,'2022-04-06 02:26:12.634265','System','2022-04-06 02:26:50.037979','System'),(4,'DTubbs','103941298490216448',NULL,NULL,4,4,'2022-04-21 19:47:38.941666','System','2022-04-21 19:47:43.997811','System'),(5,'shillnyethefakenewsguy','966148975084322826',NULL,NULL,5,5,'2022-04-22 11:00:46.256334','System','2022-04-22 11:00:55.720306','System'),(6,'KingKang','133451938594291712',NULL,NULL,6,6,'2022-04-23 21:32:38.694682','System','2022-04-23 21:32:41.742113','System'),(7,'shinobu','130159451146551296',NULL,NULL,7,7,'2022-04-23 21:33:06.79526','System','2022-04-23 21:33:11.86605','System');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vestment`
--

DROP TABLE IF EXISTS `Vestment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vestment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vestment`
--

LOCK TABLES `Vestment` WRITE;
/*!40000 ALTER TABLE `Vestment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Vestment` ENABLE KEYS */;
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
  `memeDust` int DEFAULT NULL,
  `weaponCores` int DEFAULT NULL,
  `armorCores` int DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `fk_userId_wal` FOREIGN KEY (`userId`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wallet`
--

LOCK TABLES `Wallet` WRITE;
/*!40000 ALTER TABLE `Wallet` DISABLE KEYS */;
INSERT INTO `Wallet` VALUES (1,1,4215,478,123,7,25,NULL,NULL,NULL,'2022-03-29 15:54:38.97162','System','2022-04-28 16:22:51.409354','System'),(2,2,1000,0,0,0,0,NULL,NULL,NULL,'2022-03-29 16:48:04.059506','System','2022-03-29 16:48:22.76191','System'),(3,3,1000,0,0,0,0,NULL,NULL,NULL,'2022-04-06 02:26:49.972901','System','2022-04-06 02:26:49.972901','System'),(4,4,1174,15,2,0,0,NULL,NULL,NULL,'2022-04-21 19:47:43.967229','System','2022-04-23 21:34:09.421827','System'),(5,5,1112,0,0,6,0,NULL,NULL,NULL,'2022-04-22 11:00:55.694164','System','2022-04-25 12:31:13.633309','System'),(6,6,1021,0,6,0,0,NULL,NULL,NULL,'2022-04-23 21:32:41.715264','System','2022-04-23 21:34:07.454363','System'),(7,7,1014,0,0,0,0,NULL,NULL,NULL,'2022-04-23 21:33:11.837804','System','2022-04-23 21:33:15.339598','System');
/*!40000 ALTER TABLE `Wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Wardrobe`
--

DROP TABLE IF EXISTS `Wardrobe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Wardrobe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vestmentID` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vestmentId_ward_idx` (`vestmentID`),
  KEY `fk_userId_ward_idx` (`userId`),
  CONSTRAINT `fk_userId_ward` FOREIGN KEY (`userId`) REFERENCES `User` (`id`),
  CONSTRAINT `fk_vestmentId_ward` FOREIGN KEY (`vestmentID`) REFERENCES `Vestment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Wardrobe`
--

LOCK TABLES `Wardrobe` WRITE;
/*!40000 ALTER TABLE `Wardrobe` DISABLE KEYS */;
/*!40000 ALTER TABLE `Wardrobe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Weapon`
--

DROP TABLE IF EXISTS `Weapon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Weapon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rarity` varchar(255) DEFAULT NULL,
  `damage` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `creationOn` varchar(45) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `modifiedOn` varchar(45) DEFAULT NULL,
  `modifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Weapon`
--

LOCK TABLES `Weapon` WRITE;
/*!40000 ALTER TABLE `Weapon` DISABLE KEYS */;
INSERT INTO `Weapon` VALUES (1,'The Infinity Blade','Only wieldable by Timelords. Allows Timelords to deal 2x damage in the attack round.','exotic',125,NULL,'2022-04-28 07:26:58.888094','System','2022-04-28 07:26:58.888094','System'),(2,'Moonveil Katana','Increased magic damage in the attack round by 15%.','rare',63,NULL,'2022-04-28 07:28:01.435598','System','2022-04-28 07:28:01.435598','System'),(3,'Fist o\' Luffy','Multiplies attack round damage by 1.2 for every other Fist o\' Luffy in the attack round.','legendary',98,NULL,'2022-04-28 07:28:29.098384','System','2022-04-28 07:28:29.098384','System'),(4,'Joe\'s Swan Sword','Hey Peter, Joe Mama so fat she does 400% weapon damage.','exotic',125,NULL,'2022-04-28 07:29:05.739608','System','2022-04-28 07:29:05.739608','System'),(5,'Curly Blade','Deals 5% increased damage for every other attack in the round.','common',50,NULL,'2022-04-28 07:29:21.344539','System','2022-04-28 07:29:21.344539','System'),(6,'Rusty Skewer','Deals an additional 10 damage for the attack.','epic',78,NULL,'2022-04-28 07:30:59.251267','System','2022-04-28 07:30:59.251267','System'),(7,'Pirate\'s Scimitar','Increases total attack round damage by 5% for each other attacking Pirate\'s scimitar.','common',50,NULL,'2022-04-28 07:31:06.293404','System','2022-04-28 07:31:06.293404','System'),(8,'Oversized Scissors','Does not allow running.','common',50,NULL,'2022-04-28 07:31:12.679091','System','2022-04-28 07:31:12.679091','System'),(9,'Claw Hands','Deals 15% increased damage if two Claw Hands attack.','common',50,NULL,'2022-04-28 07:31:17.929611','System','2022-04-28 07:31:17.929611','System'),(10,'Short Sword','Deals 5% increased base damage if the user is short. Which you are.','common',50,NULL,'2022-04-28 07:31:23.393118','System','2022-04-28 07:31:23.393118','System'),(11,'Invisible Blade','Deals 10% increased base damage but does not count as an attack in the attack round.','common',50,NULL,'2022-04-28 07:31:31.391172','System','2022-04-28 07:31:31.391172','System'),(12,'Zweihander','Deals 10% increased damage if wielded by a Fighter.','rare',63,NULL,'2022-04-28 07:31:41.449562','System','2022-04-28 07:31:41.449562','System'),(13,'Holy Moonlight Sword','Druids deal 10% increased damage if attacking with at least one other druid ally.','rare',63,NULL,'2022-04-28 07:31:51.801184','System','2022-04-28 07:31:51.801184','System');
/*!40000 ALTER TABLE `Weapon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 18:18:48
