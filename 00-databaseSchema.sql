-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema IntLand
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema IntLand
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `IntLand` DEFAULT CHARACTER SET utf8 ;
USE `IntLand` ;

-- -----------------------------------------------------
-- Table `IntLand`.`Wallet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`Wallet` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userId` INT NULL,
  `intCoins` INT NULL,
  `glizzyGold` INT NULL,
  `darkDiamonds` INT NULL,
  `mudPieces` INT NULL,
  `mudArtifacts` INT NULL,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `userId_idx` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_userId_wal`
    FOREIGN KEY (`userId`)
    REFERENCES `IntLand`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`MemeList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`MemeList` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `evoLevel` INT NULL,
  `evoPrevious` INT NULL,
  `evoNext` INT NULL,
  `generated` INT NULL,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`Meme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`Meme` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userId` INT NULL,
  `memeListId` INT NULL,
  `collectionId` INT NULL,
  `level` INT NULL DEFAULT 1,
  `experience` INT NULL DEFAULT 0,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_userId_idx` (`userId` ASC) VISIBLE,
  INDEX `fk_memeListId_idx` (`memeListId` ASC) VISIBLE,
  INDEX `fk_collectionId_idx` (`collectionId` ASC) VISIBLE,
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `memeListId_UNIQUE` (`memeListId` ASC) VISIBLE,
  UNIQUE INDEX `collectionId_UNIQUE` (`collectionId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_userId_meme`
    FOREIGN KEY (`userId`)
    REFERENCES `IntLand`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_memeListId_meme`
    FOREIGN KEY (`memeListId`)
    REFERENCES `IntLand`.`MemeList` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_collectionId_meme`
    FOREIGN KEY (`collectionId`)
    REFERENCES `IntLand`.`Collection` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`Collection`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`Collection` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userId` INT NULL,
  `walletId` INT NULL,
  `memeId` INT NULL,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_userId_idx` (`userId` ASC) VISIBLE,
  INDEX `fk_walletId_idx` (`walletId` ASC) VISIBLE,
  INDEX `fk_memeId_idx` (`memeId` ASC) VISIBLE,
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `walletId_UNIQUE` (`walletId` ASC) VISIBLE,
  UNIQUE INDEX `memeId_UNIQUE` (`memeId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_userId_col`
    FOREIGN KEY (`userId`)
    REFERENCES `IntLand`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_walletId_col`
    FOREIGN KEY (`walletId`)
    REFERENCES `IntLand`.`Wallet` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_memeId_col`
    FOREIGN KEY (`memeId`)
    REFERENCES `IntLand`.`Meme` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`ItemList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`ItemList` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `itemName` VARCHAR(255) NULL,
  `itemDescription` VARCHAR(255) NULL,
  `itemCost` INT NULL,
  `itemCurrency` VARCHAR(255) NULL,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`Inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`Inventory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userId` INT NULL,
  `itemId` INT NULL,
  `itemQuantity` INT NULL DEFAULT 0,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  INDEX `fk_itemId_inv_idx` (`itemId` ASC) VISIBLE,
  INDEX `fk_userId_inv_idx` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `itemId_UNIQUE` (`itemId` ASC) VISIBLE,
  CONSTRAINT `fk_itemId_inv`
    FOREIGN KEY (`itemId`)
    REFERENCES `IntLand`.`ItemList` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_userId_inv`
    FOREIGN KEY (`userId`)
    REFERENCES `IntLand`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`Flags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`Flags` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userId` INT NULL,
  `farmCount` INT NULL DEFAULT 0,
  `farmCap` INT NULL DEFAULT 1,
  `hasMined` TINYINT NULL DEFAULT 0,
  `checkedMud` TINYINT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_userId_flag_idx` (`userId` ASC) VISIBLE,
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_userId_flag`
    FOREIGN KEY (`userId`)
    REFERENCES `IntLand`.`User` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `IntLand`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `IntLand`.`User` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL,
  `discordId` VARCHAR(255) NOT NULL,
  `collectionId` INT NULL,
  `inventoryId` INT NULL,
  `walletId` INT NULL,
  `flagsId` INT NULL,
  `creationOn` VARCHAR(45) NULL,
  `createdBy` VARCHAR(255) NULL,
  `modifiedOn` VARCHAR(45) NULL,
  `modifiedBy` VARCHAR(255) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_wallet_us_idx` (`walletId` ASC) VISIBLE,
  INDEX `fk_collection_us_idx` (`collectionId` ASC) VISIBLE,
  INDEX `fk_inventoryId_us_idx` (`inventoryId` ASC) VISIBLE,
  INDEX `fk_flagsId_us_idx` (`flagsId` ASC) VISIBLE,
  UNIQUE INDEX `collectionId_UNIQUE` (`collectionId` ASC) VISIBLE,
  UNIQUE INDEX `inventoryId_UNIQUE` (`inventoryId` ASC) VISIBLE,
  UNIQUE INDEX `walletId_UNIQUE` (`walletId` ASC) VISIBLE,
  UNIQUE INDEX `flagsId_UNIQUE` (`flagsId` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_walletId_us`
    FOREIGN KEY (`walletId`)
    REFERENCES `IntLand`.`Wallet` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_collectionId_us`
    FOREIGN KEY (`collectionId`)
    REFERENCES `IntLand`.`Collection` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_inventoryId_us`
    FOREIGN KEY (`inventoryId`)
    REFERENCES `IntLand`.`Inventory` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flagsId_us`
    FOREIGN KEY (`flagsId`)
    REFERENCES `IntLand`.`Flags` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
