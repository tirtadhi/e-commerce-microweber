-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: microweber
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `p127_0_0_1__addresses`
--

DROP TABLE IF EXISTS `p127_0_0_1__addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_street_1` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address_street_2` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `company_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_vat` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_vat_registered` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__addresses`
--

LOCK TABLES `p127_0_0_1__addresses` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__attributes`
--

DROP TABLE IF EXISTS `p127_0_0_1__attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` text COLLATE utf8mb3_unicode_ci,
  `attribute_value` longtext COLLATE utf8mb3_unicode_ci,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__attributes`
--

LOCK TABLES `p127_0_0_1__attributes` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__cart`
--

DROP TABLE IF EXISTS `p127_0_0_1__cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__cart` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb3_unicode_ci,
  `is_active` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `other_info` longtext COLLATE utf8mb3_unicode_ci,
  `order_completed` int DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `skip_promo_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `custom_fields_data` longtext COLLATE utf8mb3_unicode_ci,
  `custom_fields_json` longtext COLLATE utf8mb3_unicode_ci,
  `item_image` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__cart`
--

LOCK TABLES `p127_0_0_1__cart` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__cart_coupon_logs`
--

DROP TABLE IF EXISTS `p127_0_0_1__cart_coupon_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__cart_coupon_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `uses_count` int DEFAULT NULL,
  `use_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__cart_coupon_logs`
--

LOCK TABLES `p127_0_0_1__cart_coupon_logs` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__cart_coupon_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__cart_coupon_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__cart_coupons`
--

DROP TABLE IF EXISTS `p127_0_0_1__cart_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__cart_coupons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_value` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  `uses_per_coupon` int DEFAULT NULL,
  `uses_per_customer` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__cart_coupons`
--

LOCK TABLES `p127_0_0_1__cart_coupons` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__cart_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__cart_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__cart_orders`
--

DROP TABLE IF EXISTS `p127_0_0_1__cart_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__cart_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb3_unicode_ci,
  `shipping_service` longtext COLLATE utf8mb3_unicode_ci,
  `shipping` double(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `first_name` longtext COLLATE utf8mb3_unicode_ci,
  `last_name` longtext COLLATE utf8mb3_unicode_ci,
  `email` longtext COLLATE utf8mb3_unicode_ci,
  `country` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb3_unicode_ci,
  `state` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb3_unicode_ci,
  `address2` longtext COLLATE utf8mb3_unicode_ci,
  `phone` text COLLATE utf8mb3_unicode_ci,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_completed` int DEFAULT NULL,
  `is_paid` int DEFAULT NULL,
  `url` text COLLATE utf8mb3_unicode_ci,
  `user_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `items_count` int DEFAULT NULL,
  `custom_fields_data` longtext COLLATE utf8mb3_unicode_ci,
  `payment_gw` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_verify_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_amount` double(8,2) DEFAULT NULL,
  `payment_currency` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_email` text COLLATE utf8mb3_unicode_ci,
  `payment_receiver_email` text COLLATE utf8mb3_unicode_ci,
  `payment_name` text COLLATE utf8mb3_unicode_ci,
  `payment_country` text COLLATE utf8mb3_unicode_ci,
  `payment_address` text COLLATE utf8mb3_unicode_ci,
  `payment_city` text COLLATE utf8mb3_unicode_ci,
  `payment_state` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_zip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payer_id` text COLLATE utf8mb3_unicode_ci,
  `payer_status` text COLLATE utf8mb3_unicode_ci,
  `payment_type` text COLLATE utf8mb3_unicode_ci,
  `payment_data` longtext COLLATE utf8mb3_unicode_ci,
  `order_status` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_shipping` double(8,2) DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `other_info` longtext COLLATE utf8mb3_unicode_ci,
  `promo_code` longtext COLLATE utf8mb3_unicode_ci,
  `skip_promo_code` int DEFAULT NULL,
  `coupon_id` int DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount_value` double(8,2) DEFAULT NULL,
  `taxes_amount` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__cart_orders`
--

LOCK TABLES `p127_0_0_1__cart_orders` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__cart_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__cart_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__cart_shipping`
--

DROP TABLE IF EXISTS `p127_0_0_1__cart_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__cart_shipping` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_cost_max` double(8,2) DEFAULT NULL,
  `shipping_cost_above` double(8,2) DEFAULT NULL,
  `shipping_country` longtext COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `shipping_type` longtext COLLATE utf8mb3_unicode_ci,
  `shipping_price_per_size` double(8,2) DEFAULT NULL,
  `shipping_price_per_weight` double(8,2) DEFAULT NULL,
  `shipping_price_per_item` double(8,2) DEFAULT NULL,
  `shipping_price_custom` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__cart_shipping`
--

LOCK TABLES `p127_0_0_1__cart_shipping` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__cart_shipping` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__cart_shipping` VALUES (1,NULL,NULL,'1',0.00,NULL,NULL,'Worldwide',NULL,'fixed',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `p127_0_0_1__cart_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__categories`
--

DROP TABLE IF EXISTS `p127_0_0_1__categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `data_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb3_unicode_ci,
  `url` longtext COLLATE utf8mb3_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `content` longtext COLLATE utf8mb3_unicode_ci,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `is_hidden` int DEFAULT '0',
  `users_can_create_subcategories` int DEFAULT NULL,
  `users_can_create_content` int DEFAULT NULL,
  `users_can_create_content_allowed_usergroups` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_meta_title` text COLLATE utf8mb3_unicode_ci,
  `category_meta_keywords` text COLLATE utf8mb3_unicode_ci,
  `category_meta_description` text COLLATE utf8mb3_unicode_ci,
  `category_subtype` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_subtype_settings` longtext COLLATE utf8mb3_unicode_ci,
  `is_active` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__categories`
--

LOCK TABLES `p127_0_0_1__categories` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__categories_items`
--

DROP TABLE IF EXISTS `p127_0_0_1__categories_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__categories_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__categories_items`
--

LOCK TABLES `p127_0_0_1__categories_items` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__categories_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__categories_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__comments`
--

DROP TABLE IF EXISTS `p127_0_0_1__comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reply_to_comment_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `comment_name` text COLLATE utf8mb3_unicode_ci,
  `comment_email` text COLLATE utf8mb3_unicode_ci,
  `comment_website` text COLLATE utf8mb3_unicode_ci,
  `comment_body` text COLLATE utf8mb3_unicode_ci,
  `comment_subject` text COLLATE utf8mb3_unicode_ci,
  `from_url` text COLLATE utf8mb3_unicode_ci,
  `is_moderated` int DEFAULT NULL,
  `is_spam` int DEFAULT NULL,
  `is_new` int DEFAULT NULL,
  `for_newsletter` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__comments`
--

LOCK TABLES `p127_0_0_1__comments` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content`
--

DROP TABLE IF EXISTS `p127_0_0_1__content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `subtype` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb3_unicode_ci,
  `title` text COLLATE utf8mb3_unicode_ci,
  `parent` int DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `content` longtext COLLATE utf8mb3_unicode_ci,
  `content_body` longtext COLLATE utf8mb3_unicode_ci,
  `is_active` int DEFAULT '1',
  `subtype_value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `custom_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `custom_type_value` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `active_site_template` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `layout_file` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `layout_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `layout_style` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content_filename` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `original_link` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_home` int DEFAULT '0',
  `is_pinged` int DEFAULT '0',
  `is_shop` int DEFAULT '0',
  `is_deleted` int DEFAULT '0',
  `require_login` int DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content_meta_title` text COLLATE utf8mb3_unicode_ci,
  `content_meta_keywords` text COLLATE utf8mb3_unicode_ci,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `posted_at` datetime DEFAULT NULL,
  `draft_of` int DEFAULT NULL,
  `copy_of` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__contentparent_index` (`parent`),
  KEY `p127_0_0_1__contentis_deleted_index` (`is_deleted`),
  KEY `p127_0_0_1__contentis_active_index` (`is_active`),
  KEY `p127_0_0_1__contentsubtype_index` (`subtype`),
  KEY `p127_0_0_1__contentcontent_type_index` (`content_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content`
--

LOCK TABLES `p127_0_0_1__content` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__content` VALUES (1,'page','static','home','Home',0,NULL,1,NULL,NULL,1,NULL,NULL,NULL,NULL,'index.php',NULL,NULL,NULL,NULL,1,0,0,0,0,NULL,NULL,NULL,NULL,'2026-04-23 13:34:08','2026-04-23 13:34:08',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `p127_0_0_1__content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content_data`
--

DROP TABLE IF EXISTS `p127_0_0_1__content_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `field_name` text COLLATE utf8mb3_unicode_ci,
  `field_value` longtext COLLATE utf8mb3_unicode_ci,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__content_data_rel_type_index` (`rel_type`),
  KEY `p127_0_0_1__content_data_rel_id_index` (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content_data`
--

LOCK TABLES `p127_0_0_1__content_data` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__content_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content_data_variants`
--

DROP TABLE IF EXISTS `p127_0_0_1__content_data_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content_data_variants` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int DEFAULT NULL,
  `custom_field_value_id` int DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `rel_type` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content_data_variants`
--

LOCK TABLES `p127_0_0_1__content_data_variants` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content_data_variants` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__content_data_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content_fields`
--

DROP TABLE IF EXISTS `p127_0_0_1__content_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb3_unicode_ci,
  `value` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content_fields`
--

LOCK TABLES `p127_0_0_1__content_fields` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__content_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content_fields_drafts`
--

DROP TABLE IF EXISTS `p127_0_0_1__content_fields_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content_fields_drafts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb3_unicode_ci,
  `value` longtext COLLATE utf8mb3_unicode_ci,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_temp` int DEFAULT NULL,
  `url` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content_fields_drafts`
--

LOCK TABLES `p127_0_0_1__content_fields_drafts` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content_fields_drafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__content_fields_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content_related`
--

DROP TABLE IF EXISTS `p127_0_0_1__content_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content_related` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content_id` int DEFAULT NULL,
  `related_content_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content_related`
--

LOCK TABLES `p127_0_0_1__content_related` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__content_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__content_revisions_history`
--

DROP TABLE IF EXISTS `p127_0_0_1__content_revisions_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__content_revisions_history` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8mb3_unicode_ci,
  `value` longtext COLLATE utf8mb3_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `checksum` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__content_revisions_history`
--

LOCK TABLES `p127_0_0_1__content_revisions_history` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__content_revisions_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__content_revisions_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__countries`
--

DROP TABLE IF EXISTS `p127_0_0_1__countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phonecode` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__countries_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__countries`
--

LOCK TABLES `p127_0_0_1__countries` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__countries` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__countries` VALUES (1,'AF','Afghanistan',93),(2,'AX','Aland Islands',358),(3,'AL','Albania',355),(4,'DZ','Algeria',213),(5,'AS','American Samoa',1),(6,'AD','Andorra',376),(7,'AO','Angola',244),(8,'AI','Anguilla',1),(9,'AQ','Antarctica',672),(10,'AG','Antigua and Barbuda',1),(11,'AR','Argentina',54),(12,'AM','Armenia',374),(13,'AW','Aruba',297),(14,'AC','Ascension Island',0),(15,'AU','Australia',61),(16,'AT','Austria',43),(17,'AZ','Azerbaijan',994),(18,'BS','Bahamas',1),(19,'BH','Bahrain',973),(20,'BD','Bangladesh',880),(21,'BB','Barbados',1),(22,'BY','Belarus',375),(23,'BE','Belgium',32),(24,'BZ','Belize',501),(25,'BJ','Benin',229),(26,'BM','Bermuda',1),(27,'BT','Bhutan',975),(28,'BO','Bolivia',591),(29,'BQ','Bonaire, Sint Eustatius, and Saba',599),(30,'BA','Bosnia and Herzegovina',387),(31,'BW','Botswana',267),(32,'BV','Bouvet Island',47),(33,'BR','Brazil',55),(34,'IO','British Indian Ocean Territory',246),(35,'VG','British Virgin Islands',1),(36,'BN','Brunei',673),(37,'BG','Bulgaria',359),(38,'BF','Burkina Faso',226),(39,'BI','Burundi',257),(40,'KH','Cambodia',855),(41,'CM','Cameroon',237),(42,'CA','Canada',1),(43,'IC','Canary Islands',0),(44,'CV','Cape Verde',238),(45,'KY','Cayman Islands',1),(46,'CF','Central African Republic',236),(47,'EA','Ceuta and Melilla',0),(48,'TD','Chad',235),(49,'CL','Chile',56),(50,'CN','China',86),(51,'CX','Christmas Island',61),(52,'CP','Clipperton Island',0),(53,'CC','Cocos [Keeling] Islands',61),(54,'CO','Colombia',57),(55,'KM','Comoros',269),(56,'CG','Congo - Brazzaville',242),(57,'CD','Congo - Kinshasa',243),(58,'CK','Cook Islands',682),(59,'CR','Costa Rica',506),(60,'CI','Côte d’Ivoire',225),(61,'HR','Croatia',385),(62,'CU','Cuba',53),(63,'CW','Curaçao',599),(64,'CY','Cyprus',357),(65,'CZ','Czech Republic',420),(66,'DK','Denmark',45),(67,'DG','Diego Garcia',0),(68,'DJ','Djibouti',253),(69,'DM','Dominica',1),(70,'DO','Dominican Republic',1),(71,'EC','Ecuador',593),(72,'EG','Egypt',20),(73,'SV','El Salvador',503),(74,'GQ','Equatorial Guinea',240),(75,'ER','Eritrea',291),(76,'EE','Estonia',372),(77,'ET','Ethiopia',251),(78,'EU','European Union',0),(79,'FK','Falkland Islands',500),(80,'FO','Faroe Islands',298),(81,'FJ','Fiji',679),(82,'FI','Finland',358),(83,'FR','France',33),(84,'GF','French Guiana',594),(85,'PF','French Polynesia',689),(86,'TF','French Southern Territories',262),(87,'GA','Gabon',241),(88,'GM','Gambia',220),(89,'GE','Georgia',995),(90,'DE','Germany',49),(91,'GH','Ghana',233),(92,'GI','Gibraltar',350),(93,'GR','Greece',30),(94,'GL','Greenland',299),(95,'GD','Grenada',1),(96,'GP','Guadeloupe',590),(97,'GU','Guam',1),(98,'GT','Guatemala',502),(99,'GG','Guernsey',44),(100,'GN','Guinea',224),(101,'GW','Guinea-Bissau',245),(102,'GY','Guyana',592),(103,'HT','Haiti',509),(104,'HM','Heard Island and McDonald Islands',672),(105,'HN','Honduras',504),(106,'HK','Hong Kong SAR China',852),(107,'HU','Hungary',36),(108,'IS','Iceland',354),(109,'IN','India',91),(110,'ID','Indonesia',62),(111,'IR','Iran',98),(112,'IQ','Iraq',964),(113,'IE','Ireland',353),(114,'IM','Isle of Man',44),(115,'IL','Israel',972),(116,'IT','Italy',39),(117,'JM','Jamaica',1),(118,'JP','Japan',81),(119,'JE','Jersey',44),(120,'JO','Jordan',962),(121,'KZ','Kazakhstan',7),(122,'KE','Kenya',254),(123,'KI','Kiribati',686),(124,'KW','Kuwait',965),(125,'KG','Kyrgyzstan',996),(126,'LA','Laos',856),(127,'LV','Latvia',371),(128,'LB','Lebanon',961),(129,'LS','Lesotho',266),(130,'LR','Liberia',231),(131,'LY','Libya',218),(132,'LI','Liechtenstein',423),(133,'LT','Lithuania',370),(134,'LU','Luxembourg',352),(135,'MO','Macau SAR China',853),(136,'MK','Macedonia',389),(137,'MG','Madagascar',261),(138,'MW','Malawi',265),(139,'MY','Malaysia',60),(140,'MV','Maldives',960),(141,'ML','Mali',223),(142,'MT','Malta',356),(143,'MH','Marshall Islands',692),(144,'MQ','Martinique',596),(145,'MR','Mauritania',222),(146,'MU','Mauritius',230),(147,'YT','Mayotte',262),(148,'MX','Mexico',52),(149,'FM','Micronesia',691),(150,'MD','Moldova',373),(151,'MC','Monaco',377),(152,'MN','Mongolia',976),(153,'ME','Montenegro',382),(154,'MS','Montserrat',1),(155,'MA','Morocco',212),(156,'MZ','Mozambique',258),(157,'MM','Myanmar [Burma]',95),(158,'NA','Namibia',264),(159,'NR','Nauru',674),(160,'NP','Nepal',977),(161,'NL','Netherlands',31),(162,'AN','Netherlands Antilles',599),(163,'NC','New Caledonia',687),(164,'NZ','New Zealand',64),(165,'NI','Nicaragua',505),(166,'NE','Niger',227),(167,'NG','Nigeria',234),(168,'NU','Niue',683),(169,'NF','Norfolk Island',672),(170,'KP','North Korea',850),(171,'MP','Northern Mariana Islands',1),(172,'NO','Norway',47),(173,'OM','Oman',968),(174,'QO','Outlying Oceania',0),(175,'PK','Pakistan',92),(176,'PW','Palau',680),(177,'PS','Palestinian Territories',970),(178,'PA','Panama',507),(179,'PG','Papua New Guinea',675),(180,'PY','Paraguay',595),(181,'PE','Peru',51),(182,'PH','Philippines',63),(183,'PN','Pitcairn Islands',64),(184,'PL','Poland',48),(185,'PT','Portugal',351),(186,'PR','Puerto Rico',1),(187,'QA','Qatar',974),(188,'RE','Réunion',262),(189,'RO','Romania',40),(190,'RU','Russia',7),(191,'RW','Rwanda',250),(192,'BL','Saint Barthélemy',590),(193,'SH','Saint Helena',290),(194,'KN','Saint Kitts and Nevis',1),(195,'LC','Saint Lucia',1),(196,'MF','Saint Martin',590),(197,'PM','Saint Pierre and Miquelon',508),(198,'VC','Saint Vincent and the Grenadines',1),(199,'WS','Samoa',685),(200,'SM','San Marino',378),(201,'ST','São Tomé and Príncipe',239),(202,'SA','Saudi Arabia',966),(203,'SN','Senegal',221),(204,'RS','Serbia',381),(205,'CS','Serbia and Montenegro',0),(206,'SC','Seychelles',248),(207,'SL','Sierra Leone',232),(208,'SG','Singapore',65),(209,'SX','Sint Maarten',1),(210,'SK','Slovakia',421),(211,'SI','Slovenia',386),(212,'SB','Solomon Islands',677),(213,'SO','Somalia',252),(214,'ZA','South Africa',27),(215,'GS','South Georgia and the South Sandwich Islands',500),(216,'KR','South Korea',82),(217,'SS','South Sudan',211),(218,'ES','Spain',34),(219,'LK','Sri Lanka',94),(220,'SD','Sudan',249),(221,'SR','Suriname',597),(222,'SJ','Svalbard and Jan Mayen',47),(223,'SZ','Swaziland',268),(224,'SE','Sweden',46),(225,'CH','Switzerland',41),(226,'SY','Syria',963),(227,'TW','Taiwan',886),(228,'TJ','Tajikistan',992),(229,'TZ','Tanzania',255),(230,'TH','Thailand',66),(231,'TL','Timor-Leste',670),(232,'TG','Togo',228),(233,'TK','Tokelau',690),(234,'TO','Tonga',676),(235,'TT','Trinidad and Tobago',1),(236,'TA','Tristan da Cunha',0),(237,'TN','Tunisia',216),(238,'TR','Turkey',90),(239,'TM','Turkmenistan',993),(240,'TC','Turks and Caicos Islands',1),(241,'TV','Tuvalu',688),(242,'UM','U.S. Minor Outlying Islands',0),(243,'VI','U.S. Virgin Islands',1),(244,'UG','Uganda',256),(245,'UA','Ukraine',380),(246,'AE','United Arab Emirates',971),(247,'GB','United Kingdom',44),(248,'US','United States',1),(249,'UY','Uruguay',598),(250,'UZ','Uzbekistan',998),(251,'VU','Vanuatu',678),(252,'VA','Vatican City',39),(253,'VE','Venezuela',58),(254,'VN','Vietnam',84),(255,'WF','Wallis and Futuna',681),(256,'EH','Western Sahara',212),(257,'YE','Yemen',967),(258,'ZM','Zambia',260),(259,'ZW','Zimbabwe',263);
/*!40000 ALTER TABLE `p127_0_0_1__countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__currencies`
--

DROP TABLE IF EXISTS `p127_0_0_1__currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `precision` int NOT NULL,
  `thousand_separator` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `swap_currency_symbol` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__currencies`
--

LOCK TABLES `p127_0_0_1__currencies` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__custom_fields`
--

DROP TABLE IF EXISTS `p127_0_0_1__custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__custom_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb3_unicode_ci,
  `name_key` text COLLATE utf8mb3_unicode_ci,
  `placeholder` text COLLATE utf8mb3_unicode_ci,
  `error_text` text COLLATE utf8mb3_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb3_unicode_ci,
  `show_label` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `required` int DEFAULT NULL,
  `copy_of_field` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__custom_fields`
--

LOCK TABLES `p127_0_0_1__custom_fields` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__custom_fields_values`
--

DROP TABLE IF EXISTS `p127_0_0_1__custom_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__custom_fields_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int DEFAULT NULL,
  `value` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `price_modifier` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__custom_fields_values`
--

LOCK TABLES `p127_0_0_1__custom_fields_values` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__custom_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__custom_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__customers`
--

DROP TABLE IF EXISTS `p127_0_0_1__customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `company_id` int unsigned DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__customers`
--

LOCK TABLES `p127_0_0_1__customers` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__elements`
--

DROP TABLE IF EXISTS `p127_0_0_1__elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__elements` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `name` text COLLATE utf8mb3_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `module_id` text COLLATE utf8mb3_unicode_ci,
  `module` text COLLATE utf8mb3_unicode_ci,
  `description` text COLLATE utf8mb3_unicode_ci,
  `icon` text COLLATE utf8mb3_unicode_ci,
  `author` text COLLATE utf8mb3_unicode_ci,
  `website` text COLLATE utf8mb3_unicode_ci,
  `help` text COLLATE utf8mb3_unicode_ci,
  `type` text COLLATE utf8mb3_unicode_ci,
  `installed` int DEFAULT NULL,
  `ui` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `as_element` int DEFAULT NULL,
  `allow_caching` int DEFAULT NULL,
  `ui_admin` int DEFAULT NULL,
  `ui_admin_iframe` int DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `is_integration` int DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `notifications` int DEFAULT NULL,
  `settings` text COLLATE utf8mb3_unicode_ci,
  `categories` text COLLATE utf8mb3_unicode_ci,
  `keywords` text COLLATE utf8mb3_unicode_ci,
  `layout_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__elements`
--

LOCK TABLES `p127_0_0_1__elements` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__elements` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__elements` VALUES (1,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Arrows List',0,NULL,'arrows-list','','{SITE_URL}userfiles/elements/arrows-list.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,3,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(2,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Background Text',0,NULL,'background-text','','{SITE_URL}userfiles/elements/background-text.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,7,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(3,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Blockquoute',0,NULL,'blockquote','','{SITE_URL}userfiles/elements/blockquote.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,6,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(4,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Checked List',0,NULL,'checked-list','','{SITE_URL}userfiles/elements/checked-list.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,4,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(5,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Icon with Text',0,NULL,'icon-with-text','','{SITE_URL}userfiles/elements/icon-with-text.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,10,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(6,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Image with Title and Text',0,NULL,'image-with-title-and-text','','{SITE_URL}userfiles/elements/image-with-title-and-text.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,19,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(7,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Ordered List',0,NULL,'ordered-list','','{SITE_URL}userfiles/elements/ordered-list.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,1,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(8,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Highlighted Paragraph',0,NULL,'paragraph-highlight','','{SITE_URL}userfiles/elements/paragraph-highlight.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,7,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(9,'2026-04-23 14:43:15','2026-04-23 14:35:42',NULL,1,1,'Paragraph',0,NULL,'paragraph','','{SITE_URL}userfiles/elements/paragraph.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,6,1,0,0,NULL,0,0,'0.1',NULL,NULL,'text',NULL,NULL),(10,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Features',0,NULL,'skin-10','','{SITE_URL}userfiles/elements/skin-10.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,18,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(11,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Puzzle',0,NULL,'skin-11','','{SITE_URL}userfiles/elements/skin-11.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,30,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(12,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Text with Image',0,NULL,'skin-12','Simple image with some description text','{SITE_URL}userfiles/elements/skin-12.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,21,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(13,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Image with Text',0,NULL,'skin-1','Simple image with some description text','{SITE_URL}userfiles/elements/skin-1.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,21,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(14,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Left Image - Right Text',0,NULL,'skin-2','Simple image with some description text','{SITE_URL}userfiles/elements/skin-2.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,22,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(15,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Parallax',0,NULL,'skin-3','Parallax image','{SITE_URL}userfiles/elements/skin-3.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,20,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(16,'2026-04-23 14:43:15','2026-04-23 14:35:43',NULL,1,1,'Right Image - Left Text',0,NULL,'skin-4','Simple image with some text description in middle','{SITE_URL}userfiles/elements/skin-4.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,23,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(17,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Simple Title & Text',0,NULL,'skin-5','Simple title with some description text','{SITE_URL}userfiles/elements/skin-5.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,17,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(18,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Text under Image',0,NULL,'skin-6','Two columns images with text','{SITE_URL}userfiles/elements/skin-6.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,25,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(19,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Icons with Information',0,NULL,'skin-7','','{SITE_URL}userfiles/elements/skin-7.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,17,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(20,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Full screen Background Image with text',0,NULL,'skin-8','','{SITE_URL}userfiles/elements/skin-8.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,27,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(21,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Text with Image and Title',0,NULL,'text-with-image-and-title','','{SITE_URL}userfiles/elements/text-with-image-and-title.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,19,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(22,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Title with Text',0,NULL,'title-with-text','','{SITE_URL}userfiles/elements/title-with-text.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,9,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(23,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Two text columns with icon and title',0,NULL,'two-text-columns-with-icon-and-title','','{SITE_URL}userfiles/elements/two-text-columns-with-icon-and-title.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,13,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(24,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Two Text Columns',0,NULL,'two-text-columns','','{SITE_URL}userfiles/elements/two-text-columns.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,11,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(25,'2026-04-23 14:43:16','2026-04-23 14:35:43',NULL,1,1,'Unordered List',0,NULL,'unordered-list','','{SITE_URL}userfiles/elements/unordered-list.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,5,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL),(26,'2026-04-23 14:35:47','2026-04-23 14:35:47',NULL,1,1,'Arrows List',0,NULL,'arrows-list','','{SITE_URL}userfiles/elements/arrows-list.png','Microweber','http://microweber.com',NULL,NULL,NULL,0,3,1,0,0,NULL,0,0,'0.1',NULL,NULL,'custom',NULL,NULL);
/*!40000 ALTER TABLE `p127_0_0_1__elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__export_feeds`
--

DROP TABLE IF EXISTS `p127_0_0_1__export_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__export_feeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `export_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `export_format` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `download_link` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `split_to_parts` int DEFAULT NULL,
  `is_draft` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__export_feeds`
--

LOCK TABLES `p127_0_0_1__export_feeds` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__export_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__export_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__failed_jobs`
--

DROP TABLE IF EXISTS `p127_0_0_1__failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p127_0_0_1__failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__failed_jobs`
--

LOCK TABLES `p127_0_0_1__failed_jobs` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__forms_data`
--

DROP TABLE IF EXISTS `p127_0_0_1__forms_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__forms_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `list_id` int DEFAULT NULL,
  `form_values` text COLLATE utf8mb3_unicode_ci,
  `module_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_read` int DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__forms_data`
--

LOCK TABLES `p127_0_0_1__forms_data` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__forms_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__forms_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__forms_data_values`
--

DROP TABLE IF EXISTS `p127_0_0_1__forms_data_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__forms_data_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `form_data_id` int DEFAULT NULL,
  `field_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field_key` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field_value` longtext COLLATE utf8mb3_unicode_ci,
  `field_value_json` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__forms_data_values`
--

LOCK TABLES `p127_0_0_1__forms_data_values` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__forms_data_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__forms_data_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__forms_lists`
--

DROP TABLE IF EXISTS `p127_0_0_1__forms_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__forms_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `custom_data` text COLLATE utf8mb3_unicode_ci,
  `module_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_export` datetime DEFAULT NULL,
  `last_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__forms_lists`
--

LOCK TABLES `p127_0_0_1__forms_lists` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__forms_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__forms_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__forms_recipients`
--

DROP TABLE IF EXISTS `p127_0_0_1__forms_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__forms_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__forms_recipients`
--

LOCK TABLES `p127_0_0_1__forms_recipients` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__forms_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__forms_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__import_feeds`
--

DROP TABLE IF EXISTS `p127_0_0_1__import_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__import_feeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `import_to` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent_page` int DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `source_url` text COLLATE utf8mb3_unicode_ci,
  `source_file` text COLLATE utf8mb3_unicode_ci,
  `source_file_realpath` text COLLATE utf8mb3_unicode_ci,
  `source_file_size` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `source_content_realpath` text COLLATE utf8mb3_unicode_ci,
  `last_import_start` datetime DEFAULT NULL,
  `last_import_end` datetime DEFAULT NULL,
  `last_downloaded_date` datetime DEFAULT NULL,
  `download_images` int DEFAULT NULL,
  `split_to_parts` int DEFAULT NULL,
  `mapped_tags` longtext COLLATE utf8mb3_unicode_ci,
  `mapped_content_realpath` text COLLATE utf8mb3_unicode_ci,
  `imported_content_ids` longtext COLLATE utf8mb3_unicode_ci,
  `detected_content_tags` longtext COLLATE utf8mb3_unicode_ci,
  `content_tag` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `primary_key` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `update_items` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `old_content_action` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `count_of_contents` int DEFAULT NULL,
  `total_running` int DEFAULT NULL,
  `is_draft` int DEFAULT NULL,
  `custom_content_data_fields` longtext COLLATE utf8mb3_unicode_ci,
  `category_separators` longtext COLLATE utf8mb3_unicode_ci,
  `category_ids_separators` longtext COLLATE utf8mb3_unicode_ci,
  `category_add_types` longtext COLLATE utf8mb3_unicode_ci,
  `tags_separators` longtext COLLATE utf8mb3_unicode_ci,
  `media_url_separators` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__import_feeds`
--

LOCK TABLES `p127_0_0_1__import_feeds` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__import_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__import_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__jobs`
--

DROP TABLE IF EXISTS `p127_0_0_1__jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  `reserved` int DEFAULT NULL,
  `mw_processed` int DEFAULT NULL,
  `job_hash` longtext COLLATE utf8mb3_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__jobs`
--

LOCK TABLES `p127_0_0_1__jobs` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__log`
--

DROP TABLE IF EXISTS `p127_0_0_1__log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` text COLLATE utf8mb3_unicode_ci,
  `rel_id` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `field` text COLLATE utf8mb3_unicode_ci,
  `value` text COLLATE utf8mb3_unicode_ci,
  `module` text COLLATE utf8mb3_unicode_ci,
  `data_type` text COLLATE utf8mb3_unicode_ci,
  `title` text COLLATE utf8mb3_unicode_ci,
  `description` text COLLATE utf8mb3_unicode_ci,
  `content` text COLLATE utf8mb3_unicode_ci,
  `user_ip` text COLLATE utf8mb3_unicode_ci,
  `session_id` text COLLATE utf8mb3_unicode_ci,
  `is_system` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__log`
--

LOCK TABLES `p127_0_0_1__log` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__log` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__log` VALUES (1,'2026-04-23 13:38:31','2026-04-23 13:38:31',1,1,'login_succes',NULL,NULL,NULL,NULL,NULL,NULL,'Success login',NULL,NULL,'127.0.0.1','junDhH0bTKrSjxakrBJoKz4PIjJMTE31YQNz6bnP','y'),(2,'2026-04-23 13:43:53','2026-04-23 13:43:53',1,1,'login_succes',NULL,NULL,NULL,NULL,NULL,NULL,'Success login',NULL,NULL,'127.0.0.1','ljlywDKnIE7xtlhJvWwoUUmqC74umFvah1tvSdOB','y'),(3,'2026-04-23 13:44:21','2026-04-23 13:44:21',1,1,'login_succes',NULL,NULL,NULL,NULL,NULL,NULL,'Success login',NULL,NULL,'127.0.0.1','2YOcGACAwwljt3MUGaudHWg1xRBYYBQ9fUASKk8v','y');
/*!40000 ALTER TABLE `p127_0_0_1__log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__login_attempts`
--

DROP TABLE IF EXISTS `p127_0_0_1__login_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__login_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `success` int DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__login_attempts`
--

LOCK TABLES `p127_0_0_1__login_attempts` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__login_attempts` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__login_attempts` VALUES (1,1,'asep',NULL,'127.0.0.1',1,'1776951511'),(2,1,'asep',NULL,'127.0.0.1',1,'1776951833'),(3,1,'asep',NULL,'127.0.0.1',1,'1776951861');
/*!40000 ALTER TABLE `p127_0_0_1__login_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__mail_providers`
--

DROP TABLE IF EXISTS `p127_0_0_1__mail_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__mail_providers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `provider_settings` text COLLATE utf8mb3_unicode_ci,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__mail_providers`
--

LOCK TABLES `p127_0_0_1__mail_providers` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__mail_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__mail_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__mail_subscribers`
--

DROP TABLE IF EXISTS `p127_0_0_1__mail_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__mail_subscribers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mail_address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mail_provider_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__mail_subscribers`
--

LOCK TABLES `p127_0_0_1__mail_subscribers` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__mail_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__mail_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__mail_templates`
--

DROP TABLE IF EXISTS `p127_0_0_1__mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__mail_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb3_unicode_ci,
  `from_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `custom` text COLLATE utf8mb3_unicode_ci,
  `copy_to` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `plain_text` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__mail_templates`
--

LOCK TABLES `p127_0_0_1__mail_templates` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__mail_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__media`
--

DROP TABLE IF EXISTS `p127_0_0_1__media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb3_unicode_ci,
  `description` text COLLATE utf8mb3_unicode_ci,
  `filename` text COLLATE utf8mb3_unicode_ci,
  `media_type` text COLLATE utf8mb3_unicode_ci,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image_options` longtext COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__media`
--

LOCK TABLES `p127_0_0_1__media` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__media` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__media` VALUES (1,NULL,NULL,'{SITE_URL}userfiles/modules/pictures/default-images/gallery-1-1.jpg','picture','content','1',1,1,'9YLdJrRPE2ZObPLFVEZfP5bB6tyUtf9NxdhFfhe3',NULL,9999999,'2026-04-23 07:35:20','2026-04-23 07:35:20'),(2,NULL,NULL,'{SITE_URL}userfiles/modules/pictures/default-images/gallery-1-2.jpg','picture','content','1',1,1,'9YLdJrRPE2ZObPLFVEZfP5bB6tyUtf9NxdhFfhe3',NULL,9999999,'2026-04-23 07:35:20','2026-04-23 07:35:20'),(3,NULL,NULL,'{SITE_URL}userfiles/modules/pictures/default-images/gallery-1-3.jpg','picture','content','1',1,1,'9YLdJrRPE2ZObPLFVEZfP5bB6tyUtf9NxdhFfhe3',NULL,9999999,'2026-04-23 07:35:21','2026-04-23 07:35:20');
/*!40000 ALTER TABLE `p127_0_0_1__media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__media_thumbnails`
--

DROP TABLE IF EXISTS `p127_0_0_1__media_thumbnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__media_thumbnails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` text COLLATE utf8mb3_unicode_ci,
  `image_options` longtext COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__media_thumbnails`
--

LOCK TABLES `p127_0_0_1__media_thumbnails` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__media_thumbnails` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__media_thumbnails` VALUES (1,'tn-gallery-1-1-1986826393','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-1.jpg\",\"width\":600,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\600\\\\tn-gallery-1-1-1986826393.webp\"}','2026-04-23 07:35:21','2026-04-23 07:35:21','a19cf4af-86fc-4847-8dde-2f326cf1a615'),(2,'tn-gallery-1-2-818193221','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-2.jpg\",\"width\":600,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\600\\\\tn-gallery-1-2-818193221.webp\"}','2026-04-23 07:35:21','2026-04-23 07:35:21','a19cf4af-897f-4c5a-83f0-cb4da7b9a3c1'),(3,'tn-gallery-1-3-3146534862','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-3.jpg\",\"width\":600,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\600\\\\tn-gallery-1-3-3146534862.webp\"}','2026-04-23 07:35:21','2026-04-23 07:35:21','a19cf4af-8b4d-4ae4-aa8b-1b8c5b22459d'),(4,'tn-gallery-1-1-2830074338','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-1.jpg\",\"width\":640,\"height\":480,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\640\\\\tn-gallery-1-1-2830074338.webp\"}','2026-04-23 07:38:05','2026-04-23 07:38:05','a19cf5aa-b22c-4425-91ac-3cc0cba651ba'),(5,'tn-gallery-1-1-4134013737','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-1.jpg\",\"width\":600,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\600\\\\tn-gallery-1-1-4134013737.jpg\"}','2026-04-23 07:39:24','2026-04-23 07:39:24','a19cf622-3dd8-4ca5-98af-624532895138'),(6,'tn-gallery-1-2-3595362546','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-2.jpg\",\"width\":600,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\600\\\\tn-gallery-1-2-3595362546.jpg\"}','2026-04-23 07:39:24','2026-04-23 07:39:24','a19cf622-4012-408a-9115-d7f79e73455a'),(7,'tn-gallery-1-3-2139077508','{\"mtime\":1776907644,\"base_src\":\"userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/modules\\/pictures\\/default-images\\/gallery-1-3.jpg\",\"width\":600,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\600\\\\tn-gallery-1-3-2139077508.jpg\"}','2026-04-23 07:39:24','2026-04-23 07:39:24','a19cf622-41e7-4718-a28f-8b6af9ddaed8');
/*!40000 ALTER TABLE `p127_0_0_1__media_thumbnails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__menus`
--

DROP TABLE IF EXISTS `p127_0_0_1__menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb3_unicode_ci,
  `item_type` text COLLATE utf8mb3_unicode_ci,
  `description` text COLLATE utf8mb3_unicode_ci,
  `url` longtext COLLATE utf8mb3_unicode_ci,
  `url_target` text COLLATE utf8mb3_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `categories_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `auto_populate` int DEFAULT NULL,
  `size` text COLLATE utf8mb3_unicode_ci,
  `default_image` text COLLATE utf8mb3_unicode_ci,
  `rollover_image` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menu_name` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__menus`
--

LOCK TABLES `p127_0_0_1__menus` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__menus` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__menus` VALUES (1,'header_menu','menu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2026-04-23 06:34:08','2026-04-23 06:34:08',NULL),(2,NULL,'menu_item',NULL,NULL,NULL,1,1,NULL,NULL,1,NULL,NULL,NULL,NULL,'2026-04-23 06:34:08','2026-04-23 06:34:08',NULL),(3,'footer_menu','menu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2026-04-23 06:34:08','2026-04-23 06:34:08',NULL),(4,NULL,'menu_item',NULL,NULL,NULL,2,1,NULL,NULL,1,NULL,NULL,NULL,NULL,'2026-04-23 06:34:08','2026-04-23 06:34:08',NULL);
/*!40000 ALTER TABLE `p127_0_0_1__menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__migrations`
--

DROP TABLE IF EXISTS `p127_0_0_1__migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__migrations`
--

LOCK TABLES `p127_0_0_1__migrations` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__migrations` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__migrations` VALUES (1,'2014_01_07_073615_create_tagged_table',1),(2,'2014_01_07_073615_create_tags_table',1),(3,'2014_10_11_125754_create_currencies_table',1),(4,'2014_10_12_000000_create_user_table',1),(5,'2014_10_12_000001_update_users_table',1),(6,'2016_06_29_073615_create_tag_groups_table',1),(7,'2016_06_29_073615_update_tags_table',1),(8,'2017_05_06_173745_create_countries_table',1),(9,'2019_08_30_072639_create_addresses_table',1),(10,'2019_09_21_052540_create_tax_types_table',1),(11,'2019_11_25_021944_create_customers_table',1),(12,'2020_00_00_000000_create_content_data_table',1),(13,'2020_00_00_000000_create_content_data_variants_table',1),(14,'2020_00_00_000000_create_content_table',1),(15,'2020_00_00_000000_create_forms_table',1),(16,'2020_00_00_000000_create_notifications_table',1),(17,'2020_00_00_000000_create_options_table',1),(18,'2020_00_00_000000_create_shop_table',1),(19,'2020_00_00_00000_create_permission_table',1),(20,'2020_00_00_00001_create_roles_table',1),(21,'2020_00_00_00002_create_model_has_permissions_table',1),(22,'2020_00_00_00003_create_model_has_roles_table',1),(23,'2020_00_00_00004_create_role_has_permissions_table',1),(24,'2020_03_13_083515_add_description_to_tags_table',1),(25,'2020_10_12_100000_create_password_resets_table',1),(26,'2020_10_29_090535_create_jobs_table',1),(27,'2020_10_29_090855_create_failed_jobs_table',1),(28,'2020_11_12_000000_update_customers_table',1),(29,'2021_01_13_100000_create_personal_access_clients',1),(30,'2021_01_14_000001_update_failed_jobs_table',1),(31,'2021_01_14_000003_add_new_fields_on_jobs_table',1),(32,'2021_01_19_000000_create_related_content',1),(33,'2021_02_04_000000_delete_old_backup_module',1),(34,'2021_02_12_000001_create_translation_keys_table',1),(35,'2021_02_12_000002_create_translation_texts_table',1),(36,'2021_02_19_000000_add_company_details_addresses_table',1),(37,'2021_02_24_000000_insert_countries',1),(38,'2021_03_04_000001_add_index_to_user_table',1),(39,'2021_03_08_000001_add_index_to_translation_tables',1),(40,'2021_03_17_000000_create_forms_recipients_table',1),(41,'2021_09_01_154745_create_multilanguage_translations',1),(42,'2021_09_01_154759_create_multilanguage_supported_locales',1),(43,'2021_09_02_000001_add_index_to_multilanguage_tables',1),(44,'2021_09_03_133600_change_en_uk_to_en_gb_locale',1),(45,'2021_09_08_133600_disable_old_version_multilanguage',1),(46,'2021_10_21_000000_create_forms_data_values_table',1),(47,'2021_10_22_000000_add_is_read_in_forms_data',1),(48,'2021_10_22_000000_add_updated_at_in_forms_data',1),(49,'2021_10_22_000000_migrate_old_forms_data',1),(50,'2022_00_00_000000_create_content_fields_table',1),(51,'2022_07_04_130209_create_menus_table',1),(52,'2022_10_04_000001_add_index_content_data_table',1),(53,'2022_10_04_000001_add_index_to_multilanguage_tables2',1),(54,'2022_12_09_000000_create_categories_table',1),(55,'2022_12_16_000000_update_categories_rel_type_in_tables',1),(56,'2023_00_00_000000_create_custom_fields_table',1),(57,'2023_00_00_000000_create_custom_fields_values_table',1),(58,'2023_00_00_000000_create_notifications_mails_log_table',1),(59,'2023_03_09_000001_add_name_field_to_users_table',1),(60,'2023_04_22_143828_add_locale_to_tagging_tags_table',1),(61,'2023_10_12_200000_add_two_factor_columns_to_users_table',1),(62,'2023_10_12_200002_add_user_columns_to_sessions_table',1),(63,'2023_10_25_000000_migrate_template_options_for_modules',1),(64,'2023_11_03_000001_add_two_factor_secret_to_users_table',1),(65,'2023_12_05_000000_add_price_modifier_to_custom_fields_values_table',1),(66,'2023_12_08_000000_add_uuid_to_media_thumbnails_table',1),(67,'2023_12_24_000000_migrate_background_image_module_options',1),(68,'2024_01_26_000000_offers_table',1),(69,'2024_03_21_000001_combined_tag_migrations',1),(70,'2024_03_21_000002_add_locale_to_tagging_tags_table3',1),(71,'2024_05_10_000001_migrate_old_version_213',1),(72,'2024_18_01_000000_add_html_field_notifications_mails_log_table',1),(73,'2019_12_14_000001_create_personal_access_tokens_table',2),(74,'2020_07_02_000000_create_media_table',2),(75,'2020_07_02_000000_create_media_thumbnails_table',2),(76,'2022_00_00_000001_create_import_feeds_table',3),(77,'2022_00_00_000003_create_export_feeds_table',3),(78,'2023_00_00_000000_create_comments_table2',3),(79,'2023_00_00_000001_add_deleted_at_to_comments_table',3),(80,'2023_00_00_000001_create_cart_coupons_log_table',3);
/*!40000 ALTER TABLE `p127_0_0_1__migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__model_has_permissions`
--

DROP TABLE IF EXISTS `p127_0_0_1__model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__model_has_permissions` (
  `permission_id` int unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `p127_0_0_1__model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__model_has_permissions`
--

LOCK TABLES `p127_0_0_1__model_has_permissions` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__model_has_roles`
--

DROP TABLE IF EXISTS `p127_0_0_1__model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__model_has_roles` (
  `role_id` int unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `p127_0_0_1__model_has_roles_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__model_has_roles`
--

LOCK TABLES `p127_0_0_1__model_has_roles` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__module_templates`
--

DROP TABLE IF EXISTS `p127_0_0_1__module_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__module_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `module_id` text COLLATE utf8mb3_unicode_ci,
  `name` text COLLATE utf8mb3_unicode_ci,
  `module` text COLLATE utf8mb3_unicode_ci,
  `module_attrs` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__module_templates`
--

LOCK TABLES `p127_0_0_1__module_templates` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__module_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__module_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__modules`
--

DROP TABLE IF EXISTS `p127_0_0_1__modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__modules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `name` text COLLATE utf8mb3_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `module_id` text COLLATE utf8mb3_unicode_ci,
  `module` text COLLATE utf8mb3_unicode_ci,
  `description` text COLLATE utf8mb3_unicode_ci,
  `icon` text COLLATE utf8mb3_unicode_ci,
  `author` text COLLATE utf8mb3_unicode_ci,
  `website` text COLLATE utf8mb3_unicode_ci,
  `help` text COLLATE utf8mb3_unicode_ci,
  `type` text COLLATE utf8mb3_unicode_ci,
  `installed` int DEFAULT NULL,
  `ui` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `as_element` int DEFAULT NULL,
  `allow_caching` int DEFAULT NULL,
  `ui_admin` int DEFAULT NULL,
  `ui_admin_iframe` int DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `is_integration` int DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `notifications` int DEFAULT NULL,
  `settings` text COLLATE utf8mb3_unicode_ci,
  `categories` text COLLATE utf8mb3_unicode_ci,
  `keywords` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__modules`
--

LOCK TABLES `p127_0_0_1__modules` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__modules` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__modules` VALUES (1,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Accordion',0,NULL,'accordion',NULL,'{SITE_URL}userfiles/modules/accordion/accordion.svg','Microweber',NULL,NULL,NULL,1,1,52,NULL,1,0,NULL,0,0,'0.01',NULL,'{\"translatable_options\":[\"settings\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\accordion\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Accordion\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Accordion\\\\Providers\\\\AccordionServiceProvider\"]}','miscellaneous',NULL),(2,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Backup',0,NULL,'admin/backup',NULL,'{SITE_URL}userfiles/modules/admin/backup/backup.svg','Microweber',NULL,NULL,NULL,1,0,99,NULL,1,1,NULL,0,0,'2',NULL,NULL,'admin',NULL),(3,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Admin Components - File Append',0,NULL,'admin/components/file_append',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,7,NULL,1,0,NULL,1,0,'1.1',NULL,'{\"translatable_options\":[\"append_files\"]}','essentials',NULL),(4,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Content Export',0,NULL,'admin/content_export',NULL,'{SITE_URL}userfiles/modules/admin/content_export/content_export.svg','Microweber',NULL,NULL,NULL,1,0,99,NULL,1,0,NULL,0,0,'0.3',NULL,NULL,'admin',NULL),(5,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Import Export Tool',0,NULL,'admin/import_export_tool',NULL,'{SITE_URL}userfiles/modules/admin/import_export_tool/import_export_tool.svg','Microweber',NULL,NULL,NULL,1,0,99,NULL,1,1,NULL,0,0,'0.3',NULL,'{\"routes\":{\"admin\":\"admin.import-export-tool.index\"},\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\admin\\\\import_export_tool\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Admin\\\\ImportExportTool\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Admin\\\\ImportExportTool\\\\ImportExportToolServiceProvider\"]}','admin',NULL),(6,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Mail Providers',0,NULL,'admin/mail_providers',NULL,'{SITE_URL}userfiles/modules/admin/mail_providers/mail_providers.svg','Microweber',NULL,NULL,'mail_providers_configuration',1,0,100,NULL,1,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(7,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'FlexMail',0,NULL,'admin/mail_providers/flexmail',NULL,'{SITE_URL}userfiles/modules/admin/mail_providers/flexmail/flexmail.svg','Microweber',NULL,NULL,'mail_provider',1,0,100,NULL,1,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(8,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'MailerLite',0,NULL,'admin/mail_providers/mailerlite',NULL,'{SITE_URL}userfiles/modules/admin/mail_providers/mailerlite/mailerlite.svg','Microweber',NULL,NULL,'mail_provider',1,0,100,NULL,1,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL),(9,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Mail Templates',0,NULL,'admin/mail_templates',NULL,'{SITE_URL}userfiles/modules/admin/mail_templates/mail_templates.svg','Microweber',NULL,NULL,NULL,1,0,100,NULL,1,0,NULL,0,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\admin\\\\mail_templates\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\MailTemplates\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\MailTemplates\\\\MailTemplatesServiceProvider\"]}',NULL,NULL),(10,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Queue',0,NULL,'admin/mics/queue',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,NULL,NULL,1,0,NULL,1,0,'0.4',NULL,NULL,'admin',NULL),(11,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Templates Settings',0,NULL,'admin/modules/templates_settings',NULL,'{SITE_URL}userfiles/modules/admin/modules/templates_settings/icon.svg','Microweber',NULL,NULL,NULL,1,0,0,NULL,1,0,NULL,1,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\admin\\\\modules\\\\templates_settings\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Admin\\\\Modules\\\\TemplatesSettings\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Admin\\\\Modules\\\\TemplatesSettings\\\\Providers\\\\TemplatesSettingsServiceProvider\"]}','essentials',NULL),(12,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Notifications',0,NULL,'admin/notifications',NULL,'{SITE_URL}userfiles/modules/admin/notifications/notifications.svg','Microweber',NULL,NULL,NULL,1,0,1,NULL,1,1,NULL,1,0,'0.3',NULL,NULL,'admin',NULL),(13,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Import',0,NULL,'admin/old_import',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,99,NULL,1,0,NULL,0,0,'0.3',NULL,NULL,'admin',NULL),(14,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Audio',0,NULL,'audio','Microweber','{SITE_URL}userfiles/modules/audio/audio.svg','Microweber','http://microweber.com/','http://microweber.info/modules/audio',NULL,1,1,30,NULL,1,0,NULL,0,0,'0.20',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\audio\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Audio\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Audio\\\\Providers\\\\AudioServiceProvider\"]}','media',NULL),(15,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Background Image',0,NULL,'background','Microweber','{SITE_URL}userfiles/modules/background/background.svg','Microweber','http://microweber.com/','http://microweber.com/modules/background',NULL,1,0,333,NULL,1,0,NULL,0,0,'1.2',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\background\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Background\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Background\\\\Providers\\\\BackgroundImageServiceProvider\"]}','media',NULL),(16,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Before/After',0,NULL,'beforeafter',NULL,'{SITE_URL}userfiles/modules/beforeafter/beforeafter.svg','Microweber',NULL,NULL,NULL,1,1,37,NULL,1,0,NULL,0,0,'1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\beforeafter\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\BeforeAfter\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\BeforeAfter\\\\Providers\\\\BeforeAfterServiceProvider\"]}','media',NULL),(17,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Blog',0,NULL,'blog',NULL,'{SITE_URL}userfiles/modules/blog/blog.svg','Microweber',NULL,NULL,NULL,1,1,200,NULL,1,1,NULL,1,0,'0.2',NULL,'{\"service_provider\":[\"MicroweberPackages\\\\Blog\\\\BlogServiceProvider\"]}','content',NULL),(18,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Breadcrumb',0,NULL,'breadcrumb','Breadcrumb navigation','{SITE_URL}userfiles/modules/breadcrumb/breadcrumb.svg','Microweber',NULL,NULL,NULL,1,1,54,NULL,1,0,NULL,0,0,'0.3',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\breadcrumb\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Breadcrumb\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Breadcrumb\\\\Providers\\\\BreadcrumbServiceProvider\"]}','miscellaneous',NULL),(19,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Button',0,NULL,'btn',NULL,'{SITE_URL}userfiles/modules/btn/btn.svg','Microweber',NULL,NULL,NULL,1,1,7,NULL,1,0,NULL,1,0,'1.1',NULL,'{\"translatable_options\":[\"button_action\",\"button_onclick\",\"popupcontent\",\"url_blank\",\"icon\",\"text\",\"url\",\"link\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\btn\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Btn\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Btn\\\\Providers\\\\BtnServiceProvider\"]}','essentials',NULL),(20,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Captcha',0,NULL,'captcha',NULL,'{SITE_URL}userfiles/modules/captcha/captcha.svg','Microweber',NULL,NULL,NULL,1,0,99,NULL,0,1,NULL,0,0,'0.1',NULL,NULL,'users',NULL),(21,'2026-04-23 13:34:41','2026-04-23 13:33:58',NULL,NULL,NULL,'Categories',0,NULL,'categories',NULL,'{SITE_URL}userfiles/modules/categories/categories.svg','Microweber',NULL,NULL,NULL,1,1,29,NULL,1,0,NULL,1,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\categories\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Categories\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Categories\\\\Providers\\\\CategoryServiceProvider\"]}','navigation',NULL),(22,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Categories Images',0,NULL,'categories/category_images',NULL,'{SITE_URL}userfiles/modules/categories/category_images/category_images.svg','Microweber',NULL,NULL,NULL,1,1,51,NULL,1,0,NULL,1,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\categories\\\\category_images\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Categories\\\\CategoryImages\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Categories\\\\CategoryImages\\\\Providers\\\\CategoryImagesServiceProvider\"]}','miscellaneous',NULL),(23,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Cloudflare',0,NULL,'cloudflare','Microweber','{SITE_URL}userfiles/modules/default.svg','Bozhidar Slaveykov','http://microweber.com/',NULL,NULL,1,0,100,NULL,1,0,NULL,0,0,'1',NULL,NULL,'miscellaneous',NULL),(24,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Comments',0,NULL,'comments',NULL,'{SITE_URL}userfiles/modules/comments/comments.svg','Microweber',NULL,NULL,NULL,1,1,200,NULL,1,1,1,0,0,'1.2',NULL,'{\"routes\":{\"admin\":\"admin.comments.index\"},\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\comments\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Comments\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Comments\\\\Providers\\\\CommentsServiceProvider\"]}','content',NULL),(25,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Contact form',0,NULL,'contact_form',NULL,'{SITE_URL}userfiles/modules/contact_form/contact_form.svg','Microweber',NULL,NULL,NULL,1,1,15,NULL,1,1,NULL,1,1,'0.2',NULL,'{\"translatable_options\":[\"email_autorespond_subject\",\"email_autorespond\"],\"routes\":{\"admin\":\"admin.contact-form.index\"},\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\contact_form\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\ContactForm\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\ContactForm\\\\ContactFormServiceProvider\"]}','essentials',NULL),(26,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Content',0,NULL,'content','Shows dynamic content','{SITE_URL}userfiles/modules/content/content.svg','Microweber',NULL,NULL,NULL,1,1,22,NULL,1,0,NULL,0,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\content\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Content\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Content\\\\Providers\\\\ContentServiceProvider\"]}','essentials',NULL),(27,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Cookie Notice',0,NULL,'cookie_notice',NULL,'{SITE_URL}userfiles/modules/cookie_notice/cookie_notice.svg','Ezyweb.uk',NULL,NULL,NULL,1,0,99,NULL,1,1,NULL,0,0,'0.1',NULL,NULL,'content',NULL),(28,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Custom fields',0,NULL,'custom_fields',NULL,'{SITE_URL}userfiles/modules/custom_fields/custom_fields.svg','Microweber',NULL,NULL,NULL,1,0,15,NULL,1,0,NULL,1,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\custom_fields\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\CustomFields\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\CustomFields\\\\Providers\\\\CustomFieldsServiceProvider\"]}',NULL,NULL),(29,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Digital Download',0,NULL,'digital_download',NULL,'{SITE_URL}userfiles/modules/digital_download/digital_download.svg','Microweber',NULL,NULL,NULL,1,1,38,NULL,1,0,NULL,0,0,'0.6',NULL,NULL,'miscellaneous',NULL),(30,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Content Revisions',0,NULL,'editor/content_revisions',NULL,'{SITE_URL}userfiles/modules/default.svg',NULL,NULL,NULL,NULL,1,0,28,NULL,1,0,NULL,0,0,'0.05',NULL,NULL,'other',NULL),(31,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Microweber - Editor Fonts',0,NULL,'editor/fonts',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,38,NULL,1,0,NULL,0,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\editor\\\\fonts\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Editor\\\\Fonts\\\\FontsSettings\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Editor\\\\Fonts\\\\FontsSettings\\\\Providers\\\\FontsSettingsSettingsServiceProvider\"]}','miscellaneous',NULL),(32,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Editor Template Settings',0,NULL,'editor/template_settings_v2',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,200,NULL,1,0,NULL,0,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\editor\\\\template_settings_v2\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Editor\\\\TemplateSettingsV2\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Editor\\\\TemplateSettingsV2\\\\Providers\\\\EditorTemplateSettingsV2ServiceProvider\"]}',NULL,NULL),(33,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Embed Code',0,NULL,'embed',NULL,'{SITE_URL}userfiles/modules/embed/embed.svg','Microweber',NULL,NULL,NULL,1,1,38,NULL,1,0,NULL,0,0,'0.6',NULL,'{\"allowed_html_option_keys\":[\"source_code\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\embed\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Embed\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Embed\\\\Providers\\\\EmbedServiceProvider\"]}','miscellaneous',NULL),(34,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Examples of Microweber UI',0,NULL,'example_ui',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,999,NULL,1,0,NULL,0,0,'0.2',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\example_ui\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\ExampleUi\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\ExampleUi\\\\Providers\\\\ExampleUiServiceProvider\"]}','miscellaneous',NULL),(35,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Facebook Like',0,NULL,'facebook_like',NULL,'{SITE_URL}userfiles/modules/facebook_like/facebook_like.svg','Microweber',NULL,NULL,NULL,1,1,10,NULL,1,0,NULL,0,0,'0.06',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\facebook_like\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\FacebookLike\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\FacebookLike\\\\Providers\\\\FacebookLikeServiceProvider\"]}','social',NULL),(36,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Facebook page',0,NULL,'facebook_page','Facebook page integration for your website!','{SITE_URL}userfiles/modules/facebook_page/facebook_page.svg','',NULL,NULL,NULL,1,1,11,NULL,1,0,NULL,0,0,'0.01',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\facebook_page\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\FacebookPage\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\FacebookPage\\\\Providers\\\\FacebookPageServiceProvider\"]}','social',NULL),(37,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'FAQ',0,NULL,'faq',NULL,'{SITE_URL}userfiles/modules/faq/faq.svg','Microweber',NULL,NULL,NULL,1,1,57,NULL,1,0,NULL,0,0,'0.01',NULL,'{\"translatable_options\":[\"settings\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\faq\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Faq\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Faq\\\\Providers\\\\FaqServiceProvider\"]}','miscellaneous',NULL),(38,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Files',0,NULL,'files',NULL,'{SITE_URL}userfiles/modules/files/files.svg','Microweber',NULL,NULL,NULL,1,0,20,NULL,1,1,NULL,0,0,'0.2',NULL,NULL,'media',NULL),(39,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Google Analytics',0,NULL,'google_analytics',NULL,'{SITE_URL}userfiles/modules/google_analytics/google_analytics.svg','Microweber',NULL,NULL,NULL,1,1,200,NULL,1,1,1,0,0,'1.2',NULL,'{\"routes\":{\"admin\":\"admin.google_analytics.index\"},\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\google_analytics\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\GoogleAnalytics\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\GoogleAnalytics\\\\Providers\\\\GoogleAnalyticsServiceProvider\"]}','content',NULL),(40,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Google Maps',0,NULL,'google_maps',NULL,'{SITE_URL}userfiles/modules/google_maps/google_maps.svg','Microweber',NULL,NULL,NULL,1,1,19,NULL,1,0,NULL,0,0,'0.6',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\google_maps\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\GoogleMaps\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\GoogleMaps\\\\Providers\\\\GoogleMapsServiceProvider\"]}','essentials',NULL),(41,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Help',0,NULL,'help',NULL,'{SITE_URL}userfiles/modules/help/help.svg','Microweber',NULL,NULL,NULL,1,0,80,NULL,1,0,NULL,0,0,'0.3',NULL,NULL,'help',NULL),(42,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Highlight Code',0,NULL,'highlight_code',NULL,'{SITE_URL}userfiles/modules/highlight_code/highlight_code.svg','Microweber',NULL,NULL,NULL,1,1,700,NULL,1,0,NULL,0,0,'1.3',NULL,'{\"allowed_html_option_keys\":[\"text\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\highlight_code\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\HighlightCode\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\HighlightCode\\\\Providers\\\\HighlightCodeServiceProvider\"]}','other',NULL),(43,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Icon',0,NULL,'icon','Microweber','{SITE_URL}userfiles/modules/default.svg','Microweber','http://microweber.com/','http://microweber.info/modules/title',NULL,1,1,1,1,1,0,NULL,0,0,'0.2',NULL,NULL,'essentials',NULL),(44,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Image Rollover',0,NULL,'image_rollover',NULL,'{SITE_URL}userfiles/modules/image_rollover/image_rollover.svg','Microweber',NULL,NULL,NULL,1,1,7,NULL,1,0,NULL,0,0,'1',NULL,NULL,'media',NULL),(45,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Inline Table',0,NULL,'inline_table','Microweber','{SITE_URL}userfiles/modules/inline_table/inline_table.svg','Inline table','http://microweber.com/',NULL,NULL,1,1,100,1,1,0,NULL,0,0,'1',NULL,NULL,'miscellaneous',NULL),(46,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Layouts',0,NULL,'layouts',NULL,'{SITE_URL}userfiles/modules/layouts/layouts.svg','Microweber',NULL,NULL,NULL,1,0,99,NULL,1,0,NULL,0,0,'0.1',NULL,'{\"translatable_options\":[\"title\",\"type\",\"icon\",\"view\"]}','content',NULL),(47,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Layouts - Preview All',0,NULL,'layouts/preview-all',NULL,'{SITE_URL}userfiles/modules/layouts/preview-all/icon.svg','Microweber',NULL,NULL,NULL,1,0,0,NULL,1,0,NULL,0,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\layouts\\\\preview-all\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Layouts\\\\PreviewAll\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Layouts\\\\PreviewAll\\\\Providers\\\\LayoutsPreviewAllServiceProvider\"]}','essentials',NULL),(48,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Layout Content',0,NULL,'layout_content',NULL,'{SITE_URL}userfiles/modules/layout_content/icon.svg','Microweber',NULL,NULL,NULL,1,1,0,NULL,1,0,NULL,0,0,'0.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\layout_content\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\LayoutContent\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\LayoutContent\\\\Providers\\\\LayoutContentServiceProvider\"]}','essentials',NULL),(49,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Logo',0,NULL,'logo',NULL,'{SITE_URL}userfiles/modules/logo/logo.svg','Microweber',NULL,NULL,NULL,1,1,39,NULL,1,0,NULL,0,0,'1.1',NULL,'{\"translatable_options\":[\"text\",\"font_family\",\"logotype\",\"logoimage\",\"size\",\"settings\"],\"allowed_html_option_keys\":[\"text\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\logo\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Logo\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Logo\\\\Providers\\\\LogoServiceProvider\"]}','miscellaneous',NULL),(50,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Marquee',0,NULL,'marquee',NULL,'{SITE_URL}userfiles/modules/marquee/marquee.svg','Microweber',NULL,NULL,NULL,1,1,39,NULL,1,0,NULL,0,0,'1',NULL,'{\"allowed_html_option_keys\":[\"text\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\marquee\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Marquee\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Marquee\\\\Providers\\\\MarqueeServiceProvider\"]}','miscellaneous',NULL),(51,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Menu',0,NULL,'menu','Navigation menu for pages and links.','{SITE_URL}userfiles/modules/menu/menu.svg','Microweber',NULL,NULL,NULL,1,1,27,NULL,1,1,NULL,0,0,'0.5',NULL,NULL,'essentials',NULL),(52,'2026-04-23 13:34:41','2026-04-23 13:33:59',NULL,NULL,NULL,'Multilanguage',0,NULL,'multilanguage',NULL,'{SITE_URL}userfiles/modules/multilanguage/multilanguage.svg','Bozhidar Slaveykov',NULL,NULL,NULL,1,1,99,NULL,1,1,NULL,0,0,'4',NULL,NULL,'miscellaneous',NULL),(53,'2026-04-23 13:34:42','2026-04-23 13:33:59',NULL,NULL,NULL,'Newsletter',0,NULL,'newsletter',NULL,'{SITE_URL}userfiles/modules/newsletter/newsletter.svg','Microweber',NULL,NULL,NULL,1,1,55,NULL,1,1,NULL,0,0,'2.0',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\newsletter\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Newsletter\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Newsletter\\\\Providers\\\\NewsletterServiceProvider\"]}','marketing',NULL),(54,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Pages Menu',0,NULL,'pages',NULL,'{SITE_URL}userfiles/modules/pages/pages.svg','Microweber',NULL,NULL,NULL,1,1,28,NULL,1,0,NULL,1,0,'1.2',NULL,NULL,'navigation',NULL),(55,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Pagination',0,NULL,'pagination','Pagination module for your posts!','{SITE_URL}userfiles/modules/pagination/pagination.svg','Bozhidar Slaveykov',NULL,NULL,NULL,1,0,100,NULL,1,0,NULL,0,0,'0.01',NULL,NULL,'navigation',NULL),(56,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'PDF',0,NULL,'pdf',NULL,'{SITE_URL}userfiles/modules/pdf/pdf.svg','Microweber',NULL,NULL,NULL,1,1,40,NULL,1,0,NULL,0,0,'1.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\pdf\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Pdf\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Pdf\\\\Providers\\\\PdfServiceProvider\"]}','miscellaneous',NULL),(57,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Picture',0,NULL,'picture','Picture','{SITE_URL}userfiles/modules/picture/picture.svg','Microweber',NULL,NULL,NULL,1,1,3,1,1,0,NULL,0,0,'0.25',NULL,NULL,'essentials','picture,gallery,images,photos,slider,carousel,lightbox,photo,pictures'),(58,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Picture Gallery',0,NULL,'pictures',NULL,'{SITE_URL}userfiles/modules/pictures/pictures.svg','Microweber',NULL,NULL,NULL,1,1,4,NULL,1,0,NULL,1,0,'1.11',NULL,'[]','media',NULL),(59,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Pop-Up',0,NULL,'popup',NULL,'{SITE_URL}userfiles/modules/popup/popup.svg','Microweber',NULL,NULL,NULL,1,1,36,NULL,1,0,NULL,0,0,'1.1',NULL,NULL,'miscellaneous',NULL),(60,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Posts List',0,NULL,'posts',NULL,'{SITE_URL}userfiles/modules/posts/posts.svg','Microweber',NULL,NULL,NULL,1,1,20,NULL,1,0,NULL,1,0,'0.3',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\posts\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Posts\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Posts\\\\Providers\\\\PostsServiceProvider\"]}','essentials',NULL),(61,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Rating',0,NULL,'rating','Microweber','{SITE_URL}userfiles/modules/rating/rating.svg','Microweber','http://microweber.com/','http://microweber.com',NULL,1,0,100,NULL,1,0,NULL,0,0,'0.1',NULL,NULL,'content',NULL),(62,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Schema.org',0,NULL,'schema_org','Microweber','{SITE_URL}userfiles/modules/default.svg','Bozhidar Slaveykov','http://microweber.com/',NULL,NULL,1,0,100,NULL,1,0,NULL,0,0,'1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\schema_org\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\SchemaOrg\"}]}','miscellaneous',NULL),(63,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Search',0,NULL,'search','Module to search for content','{SITE_URL}userfiles/modules/search/search.svg','Microweber','http://microweber.com/','http://microweber.info/modules/search',NULL,1,1,34,NULL,1,0,NULL,0,0,'0.2',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\search\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Search\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Search\\\\Providers\\\\SearchServiceProvider\"]}','miscellaneous',NULL),(64,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Settings',0,NULL,'settings',NULL,'{SITE_URL}userfiles/modules/settings/settings.svg','Microweber',NULL,NULL,NULL,1,0,4,NULL,1,0,NULL,1,0,'0.4',NULL,'{\"routes\":{\"admin\":\"admin.settings.index\"},\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\settings\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Settings\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Settings\\\\Providers\\\\SettingsServiceProvider\"]}','admin',NULL),(65,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Website Settings',0,NULL,'settings/group/website',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,400,NULL,1,0,NULL,1,0,'0.3',NULL,'{\"translatable_options\":[\"website_title\",\"website_description\",\"website_keywords\"]}','admin',NULL),(66,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Sharer',0,NULL,'sharer',NULL,'{SITE_URL}userfiles/modules/sharer/sharer.svg','Microweber',NULL,NULL,NULL,1,1,210,NULL,1,0,NULL,0,0,'1.3',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\sharer\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Sharer\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Sharer\\\\Providers\\\\SharerServiceProvider\"]}','social',NULL),(67,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Online shop',0,NULL,'shop',NULL,'{SITE_URL}userfiles/modules/shop/shop.svg','Microweber',NULL,NULL,NULL,1,1,200,NULL,1,1,NULL,0,0,'0.4',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Shop\"}],\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\ShopServiceProvider\",\"MicroweberPackages\\\\Modules\\\\Shop\\\\Providers\\\\ShopServiceProvider\"]}','store',NULL),(68,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Shopping Cart',0,NULL,'shop/cart',NULL,'{SITE_URL}userfiles/modules/shop/cart/cart.svg','Microweber',NULL,NULL,NULL,1,0,23,NULL,0,0,NULL,0,0,'0.24',NULL,NULL,'online shop',NULL),(69,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Add to cart',0,NULL,'shop/cart_add',NULL,'{SITE_URL}userfiles/modules/shop/cart_add/cart_add.svg','Microweber',NULL,NULL,NULL,1,1,25,NULL,0,0,NULL,0,0,'0.26',NULL,NULL,'store',NULL),(70,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Checkout',0,NULL,'shop/checkout',NULL,'{SITE_URL}userfiles/modules/shop/checkout/checkout.svg','Microweber',NULL,NULL,NULL,1,0,94,NULL,0,0,NULL,0,0,'0.3',NULL,NULL,'online shop',NULL),(71,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Coupons',0,NULL,'shop/coupons',NULL,'{SITE_URL}userfiles/modules/shop/coupons/coupons.svg','Bozhidar Slaveykov',NULL,NULL,NULL,1,0,26,NULL,1,1,NULL,0,0,'0.6',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\coupons\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Shop\\\\Coupons\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Shop\\\\Coupons\\\\Providers\\\\ShopCouponServiceProvider\",\"MicroweberPackages\\\\Modules\\\\Shop\\\\Coupons\\\\Providers\\\\ShopCouponEventServiceProvider\"]}','online shop',NULL),(72,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Customers',0,NULL,'shop/customers',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,2,NULL,1,0,NULL,0,0,'0.3',NULL,NULL,'online shop',NULL),(73,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Invoices',0,NULL,'shop/invoices',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,2,NULL,1,0,NULL,0,0,'0.3',NULL,NULL,'online shop',NULL),(74,'2026-04-23 13:34:42','2026-04-23 13:34:00',NULL,NULL,NULL,'Offers',0,NULL,'shop/offers',NULL,'{SITE_URL}userfiles/modules/shop/offers/offers.svg','Microweber',NULL,NULL,NULL,1,0,27,NULL,1,1,NULL,0,0,'1.1',NULL,'{\"service_provider\":[\"MicroweberPackages\\\\Offer\\\\Providers\\\\EventServiceProvider\",\"MicroweberPackages\\\\Offer\\\\Providers\\\\OfferServiceProvider\"]}','online shop',NULL),(75,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Payments',0,NULL,'shop/payments',NULL,'{SITE_URL}userfiles/modules/shop/payments/payments.svg','Microweber',NULL,NULL,NULL,1,0,27,NULL,1,1,NULL,0,0,'0.3',NULL,NULL,'online shop',NULL),(76,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Bank Transfer',0,NULL,'shop/payments/gateways/bank_transfer',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/bank_transfer/bank_transfer.svg','Bozhidar Slaveykov',NULL,NULL,'payment_gateway',1,0,110,NULL,1,0,NULL,0,0,'1.0',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\payments\\\\gateways\\\\bank_transfer\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Payment\\\\Providers\\\\BankTransfer\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Payment\\\\Providers\\\\BankTransfer\\\\BankTransferServiceProvider\"]}','online shop',NULL),(77,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Authorize.Net',0,NULL,'shop/payments/gateways/omnipay_authorize_aim',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_authorize_aim/omnipay_authorize_aim.svg','Microweber',NULL,NULL,'deprecated_payment_gateway',1,0,132,NULL,1,0,NULL,0,0,NULL,NULL,NULL,'online shop',NULL),(78,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Mollie payment',0,NULL,'shop/payments/gateways/omnipay_mollie',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_mollie/omnipay_mollie.svg','Microweber',NULL,NULL,'payment_gateway',1,0,136,NULL,1,0,NULL,0,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\payments\\\\gateways\\\\omnipay_mollie\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Payment\\\\Providers\\\\Mollie\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Payment\\\\Providers\\\\Mollie\\\\MollieServiceProvider\"]}','online shop',NULL),(79,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Przelewy24',0,NULL,'shop/payments/gateways/omnipay_przelewy24',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_przelewy24/omnipay_przelewy24.svg','Microweber',NULL,NULL,'payment_gateway',1,0,136,NULL,1,0,NULL,0,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\payments\\\\gateways\\\\omnipay_przelewy24\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Payment\\\\Providers\\\\Przelewy24\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Payment\\\\Providers\\\\Przelewy24\\\\Przelewy24ServiceProvider\"]}','online shop',NULL),(80,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Stripe payment',0,NULL,'shop/payments/gateways/omnipay_stripe',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_stripe/omnipay_stripe.svg','Microweber',NULL,NULL,'payment_gateway',1,0,132,NULL,1,0,NULL,0,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\payments\\\\gateways\\\\omnipay_stripe\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Payment\\\\Providers\\\\Stripe\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Payment\\\\Providers\\\\Stripe\\\\StripeServiceProvider\"]}','online shop',NULL),(81,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Paypal Express',0,NULL,'shop/payments/gateways/paypal',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/paypal/paypal.svg','Microweber',NULL,NULL,'payment_gateway',1,0,110,NULL,1,0,NULL,0,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\payments\\\\gateways\\\\paypal\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Payment\\\\Providers\\\\Paypal\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Payment\\\\Providers\\\\Paypal\\\\PaypalServiceProvider\"]}','online shop',NULL),(82,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Paypal Pro',0,NULL,'shop/payments/gateways/paypal_pro',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/paypal_pro/paypal_pro.svg','Microweber',NULL,NULL,'deprecated_payment_gateway',1,0,111,NULL,1,0,NULL,0,0,NULL,NULL,NULL,'online shop',NULL),(83,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Pay on delivery',0,NULL,'shop/payments/gateways/pay_on_delivery',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/pay_on_delivery/pay_on_delivery.svg','D.Velev (colocation.bg)',NULL,NULL,'payment_gateway',1,0,130,NULL,1,0,NULL,0,0,NULL,NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\payments\\\\gateways\\\\pay_on_delivery\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Payment\\\\Providers\\\\PayOnDelivery\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Payment\\\\Providers\\\\PayOnDelivery\\\\PayOnDeliveryServiceProvider\"]}','online shop',NULL),(84,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'VoguePay payment',0,NULL,'shop/payments/gateways/voguepay',NULL,'{SITE_URL}userfiles/modules/shop/payments/gateways/voguepay/voguepay.svg','Microweber',NULL,NULL,'deprecated_payment_gateway',1,0,139,NULL,1,0,NULL,0,0,NULL,NULL,NULL,'online shop',NULL),(85,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Products',0,NULL,'shop/products',NULL,'{SITE_URL}userfiles/modules/shop/products/products.svg','Microweber',NULL,NULL,NULL,1,1,32,NULL,1,1,NULL,0,0,'0.41',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\products\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Shop\\\\Products\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Shop\\\\Products\\\\Providers\\\\ProductsServiceProvider\"]}','store',NULL),(86,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Shipping',0,NULL,'shop/shipping',NULL,'{SITE_URL}userfiles/modules/shop/shipping/shipping.svg','Microweber',NULL,NULL,NULL,1,0,26,NULL,1,1,NULL,0,0,'0.3',NULL,NULL,'online shop',NULL),(87,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Shipping to address',0,NULL,'shop/shipping/gateways/country',NULL,'{SITE_URL}userfiles/modules/shop/shipping/gateways/country/country.svg','Microweber',NULL,NULL,'shipping_gateway',1,0,100,NULL,1,0,NULL,0,0,'0.3',NULL,'{\"checkout_position\":1,\"icon_class\":\"mdi mdi-truck-check-outline\",\"help_text\":\"The order will be delivered to your address\",\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\shipping\\\\gateways\\\\country\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\ShippingToCountryEventServiceProvider\",\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\ShippingToCountryServiceProvider\"]}','online shop',NULL),(88,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Pickup from address',0,NULL,'shop/shipping/gateways/pickup',NULL,'{SITE_URL}userfiles/modules/shop/shipping/gateways/pickup/pickup.svg','Microweber',NULL,NULL,'shipping_gateway',1,0,900,NULL,1,0,NULL,0,0,'0.3',NULL,'{\"checkout_position\":0,\"icon_class\":\"mdi mdi-walk\",\"help_text\":\"get your order from address below\",\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\shop\\\\shipping\\\\gateways\\\\pickup\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\\"}],\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\PickupEventServiceProvider\",\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\PickupServiceProvider\"]}','online shop',NULL),(89,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Taxes',0,NULL,'shop/taxes',NULL,'{SITE_URL}userfiles/modules/shop/taxes/taxes.svg','Bozhidar Slaveykov',NULL,NULL,NULL,1,0,30,NULL,1,0,NULL,0,0,'0.24',NULL,NULL,'online shop',NULL),(90,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Site stats',0,NULL,'site_stats',NULL,'{SITE_URL}userfiles/modules/site_stats/site_stats.svg','Microweber',NULL,NULL,'stats',1,0,9999,NULL,1,0,NULL,0,0,'0.7',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\site_stats\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\SiteStats\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\SiteStats\\\\Providers\\\\SiteStatsServiceProvider\"]}',NULL,NULL),(91,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Skills',0,NULL,'skills',NULL,'{SITE_URL}userfiles/modules/skills/skills.svg','Microweber',NULL,NULL,NULL,1,1,41,NULL,1,0,NULL,0,0,'1.2',NULL,NULL,'other',NULL),(92,'2026-04-23 13:34:42','2026-04-23 13:34:01',NULL,NULL,NULL,'Slider (Deprecated)',0,NULL,'slider',NULL,'{SITE_URL}userfiles/modules/slider/slider.svg','Microweber',NULL,NULL,NULL,1,0,18,NULL,1,0,NULL,0,0,'0.2',NULL,'{\"translatable_options\":[\"settings\"],\"allowed_html_option_keys\":[\"settings\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\slider\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Slider\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Slider\\\\Providers\\\\SliderServiceProvider\"]}','media',NULL),(93,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Slider',0,NULL,'slider_v2',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,1,18,NULL,1,0,NULL,0,0,'0.2',NULL,'{\"translatable_options\":[\"settings\"],\"allowed_html_option_keys\":[\"settings\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\slider_v2\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\SliderV2\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\SliderV2\\\\Providers\\\\SliderServiceProvider\"]}','media',NULL),(94,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Social Links',0,NULL,'social_links',NULL,'{SITE_URL}userfiles/modules/social_links/social_links.svg','Microweber',NULL,NULL,NULL,1,1,9,NULL,1,0,NULL,0,0,'1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\social_links\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\SocialLinks\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\SocialLinks\\\\Providers\\\\SocialLinksServiceProvider\"]}','social',NULL),(95,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Spacer',0,NULL,'spacer','Microweber','{SITE_URL}userfiles/modules/spacer/spacer.svg','Microweber','http://microweber.com/','http://microweber.info/modules/spacer',NULL,1,1,3,NULL,1,0,NULL,0,0,'1.1',NULL,NULL,'essentials',NULL),(96,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Standalone Updater',0,NULL,'standalone-updater',NULL,'{SITE_URL}userfiles/modules/standalone-updater/standalone-updater.svg','bobi@microweber.com',NULL,NULL,NULL,1,0,1,NULL,1,1,NULL,1,0,'5.3.8',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\standalone-updater\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\StandaloneUpdater\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\StandaloneUpdater\\\\StandaloneUpdaterServiceProvider\"]}','other',NULL),(97,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Table',0,NULL,'table','Table builder','{SITE_URL}userfiles/modules/table/table.svg','Ezyweb.uk',NULL,NULL,NULL,1,0,99,NULL,1,0,NULL,0,0,'0.2',NULL,NULL,'essentials',NULL),(98,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Tabs',0,NULL,'tabs',NULL,'{SITE_URL}userfiles/modules/tabs/tabs.svg','Microweber',NULL,NULL,NULL,1,1,52,NULL,1,0,NULL,0,0,'0.01',NULL,'{\"translatable_options\":[\"settings\"],\"allowed_html_option_keys\":[\"settings\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\tabs\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Tabs\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Tabs\\\\Providers\\\\TabsServiceProvider\"]}','miscellaneous',NULL),(99,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Tags',0,NULL,'tags','Tags module for your posts!','{SITE_URL}userfiles/modules/tags/tags.svg','Bozhidar Slaveykov',NULL,NULL,NULL,1,1,100,NULL,1,1,NULL,0,0,'0.1',NULL,NULL,'miscellaneous',NULL),(100,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Team Card',0,NULL,'teamcard',NULL,'{SITE_URL}userfiles/modules/teamcard/teamcard.svg','Microweber',NULL,NULL,NULL,1,1,57,NULL,1,0,NULL,0,0,'0.2',NULL,'{\"translatable_options\":[\"settings\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\teamcard\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Teamcard\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Teamcard\\\\Providers\\\\TeamcardServiceProvider\"]}','miscellaneous',NULL),(101,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Testimonials',0,NULL,'testimonials',NULL,'{SITE_URL}userfiles/modules/testimonials/testimonials.svg','Microweber',NULL,NULL,NULL,1,1,99,NULL,1,1,NULL,0,0,'0.4',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\testimonials\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Testimonials\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Testimonials\\\\Providers\\\\TestimonialsServiceProvider\"]}','miscellaneous',NULL),(102,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Text',0,NULL,'text','Simple text','{SITE_URL}userfiles/modules/text/text.svg','Microweber',NULL,NULL,NULL,1,1,2,1,1,0,NULL,0,0,'0.2',NULL,NULL,'essentials',NULL),(103,'2026-04-23 13:34:42','2026-04-23 13:34:02',NULL,NULL,NULL,'Empty Element',0,NULL,'text/empty_element','Microweber','{SITE_URL}userfiles/modules/text/empty_element.svg','Microweber','http://microweber.com/','http://microweber.info/modules/title',NULL,1,1,5,1,1,0,NULL,0,0,'0.2',NULL,NULL,'essentials',NULL),(104,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Multiple Columns',0,NULL,'text/multiple_columns','Microweber','{SITE_URL}userfiles/modules/text/multiple_columns.svg','Microweber','http://microweber.com/','http://microweber.info/modules/title',NULL,1,1,8,1,1,0,NULL,0,0,'0.2',NULL,NULL,'essentials',NULL),(105,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Text Type Animation',0,NULL,'text-type',NULL,'{SITE_URL}userfiles/modules/text-type/text-type.svg','Microweber',NULL,NULL,NULL,1,1,39,NULL,1,0,NULL,0,0,'1',NULL,'{\"allowed_html_option_keys\":[\"text\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\text-type\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\TextType\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\TextType\\\\Providers\\\\TextTypeServiceProvider\"]}','miscellaneous',NULL),(106,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Title',0,NULL,'title','Microweber','{SITE_URL}userfiles/modules/title/title.svg','Microweber','http://microweber.com/','http://microweber.info/modules/title',NULL,1,1,1,1,1,0,NULL,0,0,'0.2',NULL,NULL,'essentials',NULL),(107,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'TOC',0,NULL,'toc',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,1,39,NULL,1,0,NULL,0,0,'1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\toc\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Toc\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Toc\\\\Providers\\\\TocServiceProvider\"]}','content',NULL),(108,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Tweet Embed',0,NULL,'tweet_embed',NULL,'{SITE_URL}userfiles/modules/tweet_embed/tweet_embed.svg','Microweber',NULL,NULL,NULL,1,1,200,NULL,1,0,NULL,0,0,'1.1',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\tweet_embed\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\TweetEmbed\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\TweetEmbed\\\\Providers\\\\TweetEmbedServiceProvider\"]}','social',NULL),(109,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Twitter feed',0,NULL,'twitter_feed','Feed of tweets','{SITE_URL}userfiles/modules/twitter_feed/twitter_feed.svg','Peter Ivanov',NULL,NULL,NULL,1,1,200,NULL,1,0,NULL,0,0,'0.4',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\twitter_feed\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\TwitterFeed\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\TwitterFeed\\\\Providers\\\\TwitterFeedServiceProvider\"]}','social',NULL),(110,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Unlock Package',0,NULL,'unlock-package',NULL,'{SITE_URL}userfiles/modules/unlock-package/icon.svg','Microweber',NULL,NULL,NULL,1,0,999,NULL,1,0,NULL,0,0,'0.2',NULL,'{\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\unlock-package\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\UnlockPackage\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\UnlockPackage\\\\Providers\\\\UnlockPackageServiceProvider\"]}','essentials',NULL),(111,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Updates',0,NULL,'updates',NULL,'{SITE_URL}userfiles/modules/updates/updates.svg','Microweber',NULL,NULL,NULL,1,0,50,NULL,1,1,NULL,1,0,'0.4',NULL,NULL,'admin',NULL),(112,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Users',0,NULL,'users',NULL,'{SITE_URL}userfiles/modules/users/users.svg','Microweber',NULL,NULL,NULL,1,0,9,NULL,1,1,NULL,1,0,'0.4',NULL,NULL,'users',NULL),(113,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Forgot password',0,NULL,'users/forgot_password','Microweber','{SITE_URL}userfiles/modules/users/forgot_password/forgot_password.svg','Microweber','http://microweber.com/','http://microweber.info/modules/users/registration',NULL,1,1,31,NULL,1,0,NULL,0,0,'0.2',NULL,NULL,'users',NULL),(114,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Login',0,NULL,'users/login',NULL,'{SITE_URL}userfiles/modules/users/login/login.svg','Microweber',NULL,NULL,NULL,1,1,32,NULL,0,0,NULL,0,0,'0.2',NULL,NULL,'users',NULL),(115,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'User Address',0,NULL,'users/profile/address',NULL,'{SITE_URL}userfiles/modules/users/profile/address/address.svg','Bozhidar Slaveykov',NULL,NULL,NULL,1,0,9,NULL,1,0,NULL,0,0,'0.1',NULL,NULL,NULL,NULL),(116,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Registration',0,NULL,'users/register','Microweber','{SITE_URL}userfiles/modules/users/register/register.svg','Microweber','http://microweber.com/','http://microweber.info/modules/users/registration',NULL,1,1,33,NULL,1,0,NULL,0,0,'0.2',NULL,NULL,'users',NULL),(117,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Video',0,NULL,'video',NULL,'{SITE_URL}userfiles/modules/video/video.svg','Microweber',NULL,NULL,NULL,1,1,6,NULL,1,0,NULL,0,0,'1.2',NULL,'{\"allowed_html_option_keys\":[\"embed_url\"],\"autoload_namespace\":[{\"path\":\"C:\\\\laragon\\\\www\\\\Microweber\\\\userfiles\\\\modules\\\\video\\/src\\/\",\"namespace\":\"MicroweberPackages\\\\Modules\\\\Video\"}],\"service_provider\":[\"MicroweberPackages\\\\Modules\\\\Video\\\\Providers\\\\VideoServiceProvider\"]}','media',NULL),(118,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Video Background',0,NULL,'video_background',NULL,'{SITE_URL}userfiles/modules/video_background/video_background.svg','Microweber',NULL,NULL,NULL,1,0,38,NULL,1,0,NULL,0,0,'1',NULL,NULL,'video, background',NULL),(119,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'White label',0,NULL,'white_label',NULL,'{SITE_URL}userfiles/modules/white_label/white_label.svg','Microweber',NULL,NULL,NULL,1,0,500,NULL,1,1,NULL,0,0,'0.4',NULL,'[]','advanced',NULL),(120,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'Color Schemes',0,NULL,'white_label/admin_colors',NULL,'{SITE_URL}userfiles/modules/default.svg',NULL,NULL,NULL,NULL,1,0,999,NULL,1,0,NULL,0,0,'0.1',NULL,NULL,'other',NULL),(121,'2026-04-23 13:34:43','2026-04-23 13:34:02',NULL,NULL,NULL,'White label WHMCS',0,NULL,'white_label/whmcs',NULL,'{SITE_URL}userfiles/modules/default.svg','Microweber',NULL,NULL,NULL,1,0,500,NULL,1,0,NULL,0,0,'0.1',NULL,NULL,'advanced',NULL);
/*!40000 ALTER TABLE `p127_0_0_1__modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__multilanguage_supported_locales`
--

DROP TABLE IF EXISTS `p127_0_0_1__multilanguage_supported_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__multilanguage_supported_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `display_locale` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `display_icon` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__multilanguage_supported_locales_locale_index` (`locale`),
  KEY `p127_0_0_1__multilanguage_supported_locales_language_index` (`language`),
  KEY `p127_0_0_1__multilanguage_supported_locales_is_active_index` (`is_active`),
  KEY `p127_0_0_1__multilanguage_supported_locales_display_locale_index` (`display_locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__multilanguage_supported_locales`
--

LOCK TABLES `p127_0_0_1__multilanguage_supported_locales` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__multilanguage_supported_locales` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__multilanguage_supported_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__multilanguage_translations`
--

DROP TABLE IF EXISTS `p127_0_0_1__multilanguage_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__multilanguage_translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `field_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `field_value` text COLLATE utf8mb3_unicode_ci,
  `locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__multilanguage_translations_locale_index` (`locale`),
  KEY `p127_0_0_1__multilanguage_translations_rel_id_index` (`rel_id`),
  KEY `p127_0_0_1__multilanguage_translations_rel_type_index` (`rel_type`),
  KEY `p127_0_0_1__multilanguage_translations_field_name_index` (`field_name`),
  FULLTEXT KEY `p127_0_0_1__multilanguage_translations_field_value_fulltext` (`field_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__multilanguage_translations`
--

LOCK TABLES `p127_0_0_1__multilanguage_translations` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__multilanguage_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__multilanguage_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_campaigns`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_campaigns` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb3_unicode_ci,
  `subject` text COLLATE utf8mb3_unicode_ci,
  `from_name` text COLLATE utf8mb3_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `email_template_id` int DEFAULT NULL,
  `list_id` int DEFAULT NULL,
  `sender_account_id` int DEFAULT NULL,
  `sending_limit_per_day` int DEFAULT NULL,
  `is_scheduled` int DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `is_done` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_campaigns`
--

LOCK TABLES `p127_0_0_1__newsletter_campaigns` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_campaigns_send_log`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_campaigns_send_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_campaigns_send_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int DEFAULT NULL,
  `subscriber_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_sent` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_campaigns_send_log`
--

LOCK TABLES `p127_0_0_1__newsletter_campaigns_send_log` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_campaigns_send_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_campaigns_send_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_lists`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb3_unicode_ci,
  `success_email_template_id` int DEFAULT NULL,
  `success_sender_account_id` int DEFAULT NULL,
  `unsubscription_sender_account_id` int DEFAULT NULL,
  `unsubscription_email_template_id` int DEFAULT NULL,
  `confirmation_email_template_id` int DEFAULT NULL,
  `confirmation_sender_account_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_lists`
--

LOCK TABLES `p127_0_0_1__newsletter_lists` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_sender_accounts`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_sender_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_sender_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb3_unicode_ci,
  `from_name` text COLLATE utf8mb3_unicode_ci,
  `from_email` text COLLATE utf8mb3_unicode_ci,
  `reply_email` text COLLATE utf8mb3_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `account_type` text COLLATE utf8mb3_unicode_ci,
  `smtp_username` text COLLATE utf8mb3_unicode_ci,
  `smtp_password` text COLLATE utf8mb3_unicode_ci,
  `smtp_host` text COLLATE utf8mb3_unicode_ci,
  `smtp_port` text COLLATE utf8mb3_unicode_ci,
  `mailchimp_secret` text COLLATE utf8mb3_unicode_ci,
  `mailgun_domain` text COLLATE utf8mb3_unicode_ci,
  `mailgun_secret` text COLLATE utf8mb3_unicode_ci,
  `mandrill_secret` text COLLATE utf8mb3_unicode_ci,
  `sparkpost_secret` text COLLATE utf8mb3_unicode_ci,
  `amazon_ses_key` text COLLATE utf8mb3_unicode_ci,
  `amazon_ses_secret` text COLLATE utf8mb3_unicode_ci,
  `amazon_ses_region` text COLLATE utf8mb3_unicode_ci,
  `account_pass` text COLLATE utf8mb3_unicode_ci,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_sender_accounts`
--

LOCK TABLES `p127_0_0_1__newsletter_sender_accounts` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_sender_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_sender_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_subscribers`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_subscribers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb3_unicode_ci,
  `email` text COLLATE utf8mb3_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `confirmation_code` text COLLATE utf8mb3_unicode_ci,
  `is_subscribed` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_subscribers`
--

LOCK TABLES `p127_0_0_1__newsletter_subscribers` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_subscribers_lists`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_subscribers_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_subscribers_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `subscriber_id` int DEFAULT NULL,
  `list_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_subscribers_lists`
--

LOCK TABLES `p127_0_0_1__newsletter_subscribers_lists` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_subscribers_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_subscribers_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__newsletter_templates`
--

DROP TABLE IF EXISTS `p127_0_0_1__newsletter_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__newsletter_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb3_unicode_ci,
  `text` text COLLATE utf8mb3_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__newsletter_templates`
--

LOCK TABLES `p127_0_0_1__newsletter_templates` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__newsletter_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__notifications`
--

DROP TABLE IF EXISTS `p127_0_0_1__notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__notifications` (
  `id` char(36) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__notifications`
--

LOCK TABLES `p127_0_0_1__notifications` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__notifications_mails_log`
--

DROP TABLE IF EXISTS `p127_0_0_1__notifications_mails_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__notifications_mails_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `notifiable_id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `html` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__notifications_mails_log`
--

LOCK TABLES `p127_0_0_1__notifications_mails_log` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__notifications_mails_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__notifications_mails_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `p127_0_0_1__oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__oauth_personal_access_clients`
--

LOCK TABLES `p127_0_0_1__oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__offers`
--

DROP TABLE IF EXISTS `p127_0_0_1__offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__offers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  `offer_price` double(8,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__offers`
--

LOCK TABLES `p127_0_0_1__offers` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__options`
--

DROP TABLE IF EXISTS `p127_0_0_1__options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `option_key` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8mb3_unicode_ci,
  `option_key2` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `option_value2` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  `option_group` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `help` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `field_values` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `option_value_prev` longtext COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__options`
--

LOCK TABLES `p127_0_0_1__options` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__options` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__options` VALUES (1,'2026-04-23 13:34:07','2026-04-23 13:34:07','current_template','_get_more',NULL,NULL,NULL,'template',NULL,NULL,NULL,NULL,NULL,1,NULL),(2,'2026-04-23 13:34:11','2026-04-23 13:34:11','language','en_US',NULL,NULL,NULL,'website',NULL,NULL,NULL,NULL,NULL,1,NULL),(3,'2026-04-23 13:34:11','2026-04-23 13:34:11','website_title','Microweber',NULL,NULL,NULL,'website',NULL,NULL,NULL,NULL,NULL,1,NULL),(5,NULL,NULL,'shipping_gw_shop/shipping/gateways/country','y',NULL,NULL,NULL,'shipping',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,'payment_gw_shop/payments/gateways/paypal','1',NULL,NULL,NULL,'payments',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,'currency','USD',NULL,NULL,NULL,'payments',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'2026-04-23 13:34:39','2026-04-23 13:34:39','app_version','2.0.20',NULL,NULL,NULL,'website',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'2026-04-23 13:34:39','2026-04-23 13:34:39','app_base_path','C:\\laragon\\www\\Microweber',NULL,NULL,NULL,'website',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'2026-04-23 14:35:21','2026-04-23 14:35:20','default_settings_is_applied','1',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `p127_0_0_1__options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__password_resets`
--

DROP TABLE IF EXISTS `p127_0_0_1__password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__password_resets` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `p127_0_0_1__password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__password_resets`
--

LOCK TABLES `p127_0_0_1__password_resets` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__permissions`
--

DROP TABLE IF EXISTS `p127_0_0_1__permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__permissions`
--

LOCK TABLES `p127_0_0_1__permissions` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__personal_access_tokens`
--

DROP TABLE IF EXISTS `p127_0_0_1__personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__personal_access_tokens`
--

LOCK TABLES `p127_0_0_1__personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__rating`
--

DROP TABLE IF EXISTS `p127_0_0_1__rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__rating` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text COLLATE utf8mb3_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__rating`
--

LOCK TABLES `p127_0_0_1__rating` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__role_has_permissions`
--

DROP TABLE IF EXISTS `p127_0_0_1__role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__role_has_permissions` (
  `permission_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__role_has_permissions`
--

LOCK TABLES `p127_0_0_1__role_has_permissions` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__roles`
--

DROP TABLE IF EXISTS `p127_0_0_1__roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__roles`
--

LOCK TABLES `p127_0_0_1__roles` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__sessions`
--

DROP TABLE IF EXISTS `p127_0_0_1__sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__sessions` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb3_unicode_ci,
  UNIQUE KEY `p127_0_0_1__sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__sessions`
--

LOCK TABLES `p127_0_0_1__sessions` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_browser_agents`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_browser_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_browser_agents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `browser_agent` text COLLATE utf8mb3_unicode_ci,
  `browser_agent_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `platform` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `platform_version` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `browser_version` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_desktop` int DEFAULT NULL,
  `is_mobile` int DEFAULT NULL,
  `is_phone` int DEFAULT NULL,
  `is_tablet` int DEFAULT NULL,
  `robot_name` text COLLATE utf8mb3_unicode_ci,
  `is_robot` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_browser_agents`
--

LOCK TABLES `p127_0_0_1__stats_browser_agents` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_browser_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_browser_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_events`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_category` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_action` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_label` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_value` int DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `utm_visitor_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `event_data` text COLLATE utf8mb3_unicode_ci,
  `event_timestamp` datetime DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_sent` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_events`
--

LOCK TABLES `p127_0_0_1__stats_events` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_events` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__stats_events` VALUES (1,'user','LOGIN','User Login',NULL,'','','','','',NULL,'{\"guard\":\"web\",\"user\":{\"is_active\":1,\"is_admin\":1,\"is_verified\":0,\"username\":\"asep\",\"email\":\"asep@email.com\",\"updated_at\":\"2026-04-23T13:35:13.000000Z\",\"created_at\":\"2026-04-23T13:35:13.000000Z\",\"id\":1},\"remember\":false}','2026-04-23 13:35:13','kheKhyrU3XeA6YE9hpSbUDthaPuZfQFnBrOvnYrg','1',NULL,'2026-04-23 13:35:13','2026-04-23 13:35:13'),(2,'user','LOGIN','User Login',NULL,'','','','','',NULL,'{\"guard\":\"web\",\"user\":{\"id\":1,\"username\":\"asep\",\"email\":\"asep@email.com\",\"is_active\":1,\"is_admin\":1,\"is_verified\":0,\"is_public\":null,\"last_login\":null,\"created_by\":null,\"edited_by\":null,\"basic_mode\":null,\"first_name\":null,\"middle_name\":null,\"last_name\":null,\"phone\":null,\"thumbnail\":null,\"parent_id\":null,\"user_information\":null,\"role\":null,\"medium\":null,\"profile_url\":null,\"website_url\":null,\"email_verified_at\":null,\"updated_at\":\"2026-04-23T13:35:13.000000Z\",\"created_at\":\"2026-04-23T13:35:13.000000Z\",\"expires_on\":null,\"name\":null},\"remember\":true}','2026-04-23 13:38:31','junDhH0bTKrSjxakrBJoKz4PIjJMTE31YQNz6bnP','1',NULL,'2026-04-23 13:38:31','2026-04-23 13:38:31'),(3,'user','LOGIN','User Login',NULL,'','','','','',NULL,'{\"guard\":\"web\",\"user\":{\"id\":1,\"username\":\"asep\",\"email\":\"asep@email.com\",\"is_active\":1,\"is_admin\":1,\"is_verified\":0,\"is_public\":null,\"last_login\":null,\"created_by\":null,\"edited_by\":null,\"basic_mode\":null,\"first_name\":null,\"middle_name\":null,\"last_name\":null,\"phone\":null,\"thumbnail\":null,\"parent_id\":null,\"user_information\":null,\"role\":null,\"medium\":null,\"profile_url\":null,\"website_url\":null,\"email_verified_at\":null,\"updated_at\":\"2026-04-23T13:35:13.000000Z\",\"created_at\":\"2026-04-23T13:35:13.000000Z\",\"expires_on\":null,\"name\":null},\"remember\":true}','2026-04-23 13:43:53','ljlywDKnIE7xtlhJvWwoUUmqC74umFvah1tvSdOB','1',NULL,'2026-04-23 13:43:53','2026-04-23 13:43:53'),(4,'user','LOGIN','User Login',NULL,'','','','','',NULL,'{\"guard\":\"web\",\"user\":{\"id\":1,\"username\":\"asep\",\"email\":\"asep@email.com\",\"is_active\":1,\"is_admin\":1,\"is_verified\":0,\"is_public\":null,\"last_login\":null,\"created_by\":null,\"edited_by\":null,\"basic_mode\":null,\"first_name\":null,\"middle_name\":null,\"last_name\":null,\"phone\":null,\"thumbnail\":null,\"parent_id\":null,\"user_information\":null,\"role\":null,\"medium\":null,\"profile_url\":null,\"website_url\":null,\"email_verified_at\":null,\"updated_at\":\"2026-04-23T13:35:13.000000Z\",\"created_at\":\"2026-04-23T13:35:13.000000Z\",\"expires_on\":null,\"name\":null},\"remember\":true}','2026-04-23 13:44:21','2YOcGACAwwljt3MUGaudHWg1xRBYYBQ9fUASKk8v','1',NULL,'2026-04-23 13:44:21','2026-04-23 13:44:21'),(5,'user','LOGIN','User Login',NULL,'','','','','',NULL,'{\"guard\":\"web\",\"user\":{\"id\":1,\"username\":\"asep\",\"email\":\"asep@email.com\",\"is_active\":1,\"is_admin\":1,\"is_verified\":0,\"is_public\":null,\"last_login\":null,\"created_by\":null,\"edited_by\":null,\"basic_mode\":null,\"first_name\":null,\"middle_name\":null,\"last_name\":null,\"phone\":null,\"thumbnail\":null,\"parent_id\":null,\"user_information\":null,\"role\":null,\"medium\":null,\"profile_url\":null,\"website_url\":null,\"email_verified_at\":null,\"updated_at\":\"2026-04-23T13:35:13.000000Z\",\"created_at\":\"2026-04-23T13:35:13.000000Z\",\"expires_on\":null,\"name\":null},\"remember\":true}','2026-04-23 14:12:23','9YLdJrRPE2ZObPLFVEZfP5bB6tyUtf9NxdhFfhe3','1',NULL,'2026-04-23 14:12:23','2026-04-23 14:12:23');
/*!40000 ALTER TABLE `p127_0_0_1__stats_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_geoip`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_geoip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_geoip` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_geoip`
--

LOCK TABLES `p127_0_0_1__stats_geoip` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_geoip` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_geoip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_referrers`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_referrers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `referrer` text COLLATE utf8mb3_unicode_ci,
  `referrer_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `referrer_domain_id` int DEFAULT NULL,
  `referrer_path_id` int DEFAULT NULL,
  `is_internal` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_referrers`
--

LOCK TABLES `p127_0_0_1__stats_referrers` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_referrers` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_referrers_domains`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_referrers_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_referrers_domains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `referrer_domain` text COLLATE utf8mb3_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_referrers_domains`
--

LOCK TABLES `p127_0_0_1__stats_referrers_domains` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_referrers_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_referrers_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_referrers_paths`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_referrers_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_referrers_paths` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `referrer_domain_id` int DEFAULT NULL,
  `referrer_path` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_referrers_paths`
--

LOCK TABLES `p127_0_0_1__stats_referrers_paths` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_referrers_paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_referrers_paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_sessions`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_sessions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `session_hostname` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `browser_id` int DEFAULT NULL,
  `referrer_id` int DEFAULT NULL,
  `referrer_domain_id` int DEFAULT NULL,
  `referrer_path_id` int DEFAULT NULL,
  `geoip_id` int DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_sessions`
--

LOCK TABLES `p127_0_0_1__stats_sessions` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_urls`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_urls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `url_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_urls`
--

LOCK TABLES `p127_0_0_1__stats_urls` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__stats_visits_log`
--

DROP TABLE IF EXISTS `p127_0_0_1__stats_visits_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__stats_visits_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `url_id` int DEFAULT NULL,
  `referrer_id` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `session_id_key` int DEFAULT NULL,
  `view_count` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__stats_visits_log`
--

LOCK TABLES `p127_0_0_1__stats_visits_log` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__stats_visits_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__stats_visits_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__system_licenses`
--

DROP TABLE IF EXISTS `p127_0_0_1__system_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__system_licenses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` text COLLATE utf8mb3_unicode_ci,
  `rel_id` text COLLATE utf8mb3_unicode_ci,
  `local_key` text COLLATE utf8mb3_unicode_ci,
  `local_key_hash` text COLLATE utf8mb3_unicode_ci,
  `registered_name` text COLLATE utf8mb3_unicode_ci,
  `company_name` text COLLATE utf8mb3_unicode_ci,
  `domains` text COLLATE utf8mb3_unicode_ci,
  `status` text COLLATE utf8mb3_unicode_ci,
  `product_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `billing_cycle` text COLLATE utf8mb3_unicode_ci,
  `reg_on` datetime DEFAULT NULL,
  `due_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__system_licenses`
--

LOCK TABLES `p127_0_0_1__system_licenses` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__system_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__system_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__tagging_tag_groups`
--

DROP TABLE IF EXISTS `p127_0_0_1__tagging_tag_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__tagging_tag_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__tagging_tag_groups_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__tagging_tag_groups`
--

LOCK TABLES `p127_0_0_1__tagging_tag_groups` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__tagging_tag_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__tagging_tag_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__tagging_tagged`
--

DROP TABLE IF EXISTS `p127_0_0_1__tagging_tagged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__tagging_tagged` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `taggable_id` int unsigned NOT NULL,
  `taggable_type` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tag_name` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tag_slug` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tag_description` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__tagging_tagged_taggable_id_index` (`taggable_id`),
  KEY `p127_0_0_1__tagging_tagged_taggable_type_index` (`taggable_type`),
  KEY `p127_0_0_1__tagging_tagged_tag_slug_index` (`tag_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__tagging_tagged`
--

LOCK TABLES `p127_0_0_1__tagging_tagged` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__tagging_tagged` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__tagging_tagged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__tagging_tags`
--

DROP TABLE IF EXISTS `p127_0_0_1__tagging_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__tagging_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8mb3_unicode_ci NOT NULL,
  `suggest` tinyint(1) NOT NULL DEFAULT '0',
  `count` int unsigned NOT NULL DEFAULT '0',
  `tag_group_id` int unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `locale` varchar(5) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__tagging_tags_slug_index` (`slug`),
  KEY `p127_0_0_1__tagging_tags_tag_group_id_foreign` (`tag_group_id`),
  CONSTRAINT `p127_0_0_1__tagging_tags_tag_group_id_foreign` FOREIGN KEY (`tag_group_id`) REFERENCES `p127_0_0_1__tagging_tag_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__tagging_tags`
--

LOCK TABLES `p127_0_0_1__tagging_tags` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__tagging_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__tagging_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__tax_types`
--

DROP TABLE IF EXISTS `p127_0_0_1__tax_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__tax_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `collective_tax` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb3_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__tax_types`
--

LOCK TABLES `p127_0_0_1__tax_types` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__tax_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__tax_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__terms_accept_log`
--

DROP TABLE IF EXISTS `p127_0_0_1__terms_accept_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__terms_accept_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `tos_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_ip` text COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__terms_accept_log`
--

LOCK TABLES `p127_0_0_1__terms_accept_log` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__terms_accept_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__terms_accept_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__testimonials`
--

DROP TABLE IF EXISTS `p127_0_0_1__testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__testimonials` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb3_unicode_ci,
  `content` text COLLATE utf8mb3_unicode_ci,
  `read_more_url` text COLLATE utf8mb3_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  `project_name` text COLLATE utf8mb3_unicode_ci,
  `client_company` text COLLATE utf8mb3_unicode_ci,
  `client_role` text COLLATE utf8mb3_unicode_ci,
  `client_picture` text COLLATE utf8mb3_unicode_ci,
  `client_website` text COLLATE utf8mb3_unicode_ci,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__testimonials`
--

LOCK TABLES `p127_0_0_1__testimonials` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__translation_keys`
--

DROP TABLE IF EXISTS `p127_0_0_1__translation_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__translation_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `translation_namespace` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `translation_group` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `translation_key` text COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__translation_keys_translation_group_index` (`translation_group`),
  KEY `p127_0_0_1__translation_keys_translation_namespace_index` (`translation_namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__translation_keys`
--

LOCK TABLES `p127_0_0_1__translation_keys` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__translation_keys` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__translation_keys` VALUES (1,'*','*','Create Admin Account'),(2,'*','*','Remove'),(3,'*','*','auth'),(4,'*','*','pagination'),(5,'*','*','passwords'),(6,'*','*','validation'),(7,'*','*','*'),(8,'*','*','Latest Posts'),(9,'*','*','Latest Products'),(10,'*','*','Digital Download'),(11,'*','*','Skills'),(12,'*','*','Blog'),(13,'*','*','Add post'),(14,'*','*','Add subpage'),(15,'*','*','Category deleted'),(16,'*','*','Content deleted'),(17,'*','*','Search categories'),(18,'*','*','Are you sure want to delete?'),(19,'*','*','categories'),(20,'*','*','Site Details'),(21,'*','*','Template Store'),(22,'*','*','Customize'),(23,'*','*','Any'),(24,'*','*','Id Desc'),(25,'*','*','Id Asc'),(26,'*','*','Limit');
/*!40000 ALTER TABLE `p127_0_0_1__translation_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__translation_texts`
--

DROP TABLE IF EXISTS `p127_0_0_1__translation_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__translation_texts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `translation_key_id` int NOT NULL,
  `translation_text` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `translation_locale` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `p127_0_0_1__translation_texts_translation_key_id_index` (`translation_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__translation_texts`
--

LOCK TABLES `p127_0_0_1__translation_texts` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__translation_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__translation_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__users`
--

DROP TABLE IF EXISTS `p127_0_0_1__users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `is_admin` int DEFAULT NULL,
  `is_verified` int DEFAULT NULL,
  `is_public` int DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `basic_mode` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_information` text COLLATE utf8mb3_unicode_ci,
  `subscr_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `oauth_uid` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `oauth_provider` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `oauth_token` text COLLATE utf8mb3_unicode_ci,
  `oauth_token_secret` text COLLATE utf8mb3_unicode_ci,
  `profile_url` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `website_url` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password_reset_hash` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb3_unicode_ci,
  `two_factor_secret` text COLLATE utf8mb3_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `p127_0_0_1__users_username_unique` (`username`),
  UNIQUE KEY `p127_0_0_1__users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__users`
--

LOCK TABLES `p127_0_0_1__users` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__users` DISABLE KEYS */;
INSERT INTO `p127_0_0_1__users` VALUES (1,'asep','$2y$10$7kfuYhQHuaFH0m8a42hhm.1XHVkd9S0DuiFIL15ikTWFGp6DvKUtS','asep@email.com',1,1,0,NULL,NULL,NULL,NULL,NULL,'AlzSP18ukMVjXDiGIs0160ZMKgLn8SEKck2q1pph9BxhzhCZPCjVUrhLPe2E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-04-23 13:35:13','2026-04-23 13:35:13',NULL,NULL);
/*!40000 ALTER TABLE `p127_0_0_1__users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p127_0_0_1__users_oauth`
--

DROP TABLE IF EXISTS `p127_0_0_1__users_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `p127_0_0_1__users_oauth` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data_id` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data_name` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data_email` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data_token` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data_avatar` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `data_raw` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p127_0_0_1__users_oauth`
--

LOCK TABLES `p127_0_0_1__users_oauth` WRITE;
/*!40000 ALTER TABLE `p127_0_0_1__users_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `p127_0_0_1__users_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'microweber'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-24 18:35:36
