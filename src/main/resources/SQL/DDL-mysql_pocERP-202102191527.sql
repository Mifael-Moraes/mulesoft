CREATE DATABASE `mysql_pocERP` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

-- mysql_pocERP.Itens definition

CREATE TABLE `Itens` (
  `ItemId` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(60) NOT NULL,
  `ItemCost` decimal(10,0) NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- mysql_pocERP.OrderItems definition

CREATE TABLE `OrderItems` (
  `OrderItemId` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ItemId` int NOT NULL,
  `ItemCount` int NOT NULL,
  PRIMARY KEY (`OrderItemId`),
  KEY `OrderID` (`OrderID`),
  KEY `ItemId` (`ItemId`),
  CONSTRAINT `OrderItems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`),
  CONSTRAINT `OrderItems_ibfk_2` FOREIGN KEY (`ItemId`) REFERENCES `Itens` (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- mysql_pocERP.Orders definition

CREATE TABLE `Orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `PlacementDate` date NOT NULL,
  `CustomerName` varchar(40) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;