-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table blueglanz_inventory.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `contact_no` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.defective_products
CREATE TABLE IF NOT EXISTS `defective_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_damaged_item` int(11) DEFAULT NULL,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_types_idx` (`product_type_id`),
  CONSTRAINT `products_product_types` FOREIGN KEY (`product_type_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.payment
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `total_amount` double(22,0) DEFAULT NULL,
  `amount_tendered` double DEFAULT NULL,
  `change` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_transaction_id` (`transaction_id`),
  CONSTRAINT `FK_transaction_id` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `style_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_attributes_products_idx` (`product_category_id`) USING BTREE,
  KEY `clients_id` (`client_id`) USING BTREE,
  CONSTRAINT `FK_clients_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_product_category` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.product_category
CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`category_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.product_rented_list
CREATE TABLE IF NOT EXISTS `product_rented_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_rental_ID` int(11) DEFAULT NULL,
  `product_rental_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT 0,
  `size` varchar(50) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `qty_damaged_item` int(11) DEFAULT NULL,
  `qty_returned_item` int(11) DEFAULT NULL,
  `damaged_fee` double DEFAULT NULL,
  `returned_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `transaction_rental_ID` (`transaction_rental_ID`),
  KEY `product_rental_id` (`product_rental_id`),
  CONSTRAINT `FK_product_rental_id` FOREIGN KEY (`product_rental_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaction_rental_id` FOREIGN KEY (`transaction_rental_ID`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.product_sold_list
CREATE TABLE IF NOT EXISTS `product_sold_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_sale_ID` int(11) DEFAULT NULL,
  `product_sold_id` int(11) DEFAULT 0,
  `qty` int(11) DEFAULT 0,
  `size` varchar(50) DEFAULT NULL,
  `description` varchar(199) DEFAULT NULL,
  `price` double(22,0) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`) USING BTREE,
  KEY `transaction_sale_ID` (`transaction_sale_ID`),
  KEY `product_sold_id` (`product_sold_id`),
  CONSTRAINT `FK_product_sold_id` FOREIGN KEY (`product_sold_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK_transaction_sale_id` FOREIGN KEY (`transaction_sale_ID`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(50) DEFAULT NULL,
  `tin` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  KEY `ID` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT current_timestamp(),
  `client_name` varchar(191) DEFAULT NULL,
  `contact_no` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `deposit` decimal(13,2) DEFAULT NULL,
  `amount` decimal(13,2) DEFAULT NULL,
  `qty_damaged_item` int(11) DEFAULT NULL,
  `damaged_fee` double DEFAULT NULL,
  `qty_returned_item` int(11) DEFAULT NULL,
  `date_returned` varchar(50) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `returned_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_transaction_product_id` (`product_id`) USING BTREE,
  KEY `client_id` (`client_id`),
  CONSTRAINT `FK_client_id` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_transaction_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table blueglanz_inventory.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(191) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `pin` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pin` (`pin`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
