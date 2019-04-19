-- MySQL dump 10.13  Distrib 5.6.24, for osx10.9 (x86_64)
--
-- Host: localhost    Database: solidus-demo_development
-- ------------------------------------------------------
-- Server version	5.6.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint(20) NOT NULL,
  `blob_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `byte_size` bigint(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-04-19 09:59:37','2019-04-19 09:59:37');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendly_id_slugs`
--

DROP TABLE IF EXISTS `friendly_id_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendly_id_slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `sluggable_id` int(11) NOT NULL,
  `sluggable_type` varchar(50) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`,`sluggable_type`,`scope`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`,`sluggable_type`),
  KEY `index_friendly_id_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_friendly_id_slugs_on_sluggable_type` (`sluggable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_id_slugs`
--

LOCK TABLES `friendly_id_slugs` WRITE;
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
INSERT INTO `friendly_id_slugs` VALUES (1,'ruby-on-rails-tote',1,'Spree::Product',NULL,'2019-04-19 10:02:12.500153','2019-04-19 10:02:12.500153'),(2,'ruby-on-rails-bag',2,'Spree::Product',NULL,'2019-04-19 10:02:12.589250','2019-04-19 10:02:12.589250'),(3,'ruby-on-rails-baseball-jersey',3,'Spree::Product',NULL,'2019-04-19 10:02:12.651865','2019-04-19 10:02:12.651865'),(4,'ruby-on-rails-jr-spaghetti',4,'Spree::Product',NULL,'2019-04-19 10:02:12.705506','2019-04-19 10:02:12.705506'),(5,'ruby-on-rails-ringer-t-shirt',5,'Spree::Product',NULL,'2019-04-19 10:02:12.764495','2019-04-19 10:02:12.764495'),(6,'ruby-baseball-jersey',6,'Spree::Product',NULL,'2019-04-19 10:02:12.837465','2019-04-19 10:02:12.837465'),(7,'apache-baseball-jersey',7,'Spree::Product',NULL,'2019-04-19 10:02:12.922823','2019-04-19 10:02:12.922823'),(8,'ruby-on-rails-mug',8,'Spree::Product',NULL,'2019-04-19 10:02:12.985943','2019-04-19 10:02:12.985943'),(9,'ruby-on-rails-stein',9,'Spree::Product',NULL,'2019-04-19 10:02:13.046402','2019-04-19 10:02:13.046402');
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20190419095929'),('20190419095930'),('20190419095931'),('20190419095932'),('20190419095933'),('20190419095934'),('20190419095935'),('20190419095936'),('20190419095937'),('20190419095938'),('20190419095939'),('20190419095940'),('20190419095941'),('20190419095942'),('20190419095943'),('20190419095944'),('20190419095945'),('20190419095946'),('20190419095947'),('20190419095948'),('20190419095949'),('20190419095950'),('20190419095951'),('20190419095952'),('20190419095953'),('20190419095954'),('20190419095955'),('20190419095956'),('20190419095957'),('20190419095958'),('20190419095959'),('20190419095960'),('20190419095961'),('20190419095962'),('20190419095963'),('20190419095964'),('20190419095965'),('20190419095966');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_addresses`
--

DROP TABLE IF EXISTS `spree_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `alternative_phone` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_addresses_on_country_id` (`country_id`),
  KEY `index_addresses_on_firstname` (`firstname`),
  KEY `index_addresses_on_lastname` (`lastname`),
  KEY `index_spree_addresses_on_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_addresses`
--

LOCK TABLES `spree_addresses` WRITE;
/*!40000 ALTER TABLE `spree_addresses` DISABLE KEYS */;
INSERT INTO `spree_addresses` VALUES (1,'Sterling','Vandervort','959 Lockman Ferry','Apt. 176','Legrosburgh','16804','(855)317-6523',NULL,NULL,NULL,3387,233,'2019-04-19 10:02:28.442010','2019-04-19 10:02:28.442010'),(2,'Lyla','Gaylord','80697 Cole Parks','Apt. 714','Lake German','16804','1-529-214-7315 x90865',NULL,NULL,NULL,3387,233,'2019-04-19 10:02:28.444914','2019-04-19 10:02:28.444914');
/*!40000 ALTER TABLE `spree_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustment_reasons`
--

DROP TABLE IF EXISTS `spree_adjustment_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustment_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_adjustment_reasons_on_active` (`active`),
  KEY `index_spree_adjustment_reasons_on_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustment_reasons`
--

LOCK TABLES `spree_adjustment_reasons` WRITE;
/*!40000 ALTER TABLE `spree_adjustment_reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_adjustment_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_adjustments`
--

DROP TABLE IF EXISTS `spree_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_adjustments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_type` varchar(255) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `adjustable_type` varchar(255) DEFAULT NULL,
  `adjustable_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `eligible` tinyint(1) DEFAULT '1',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `included` tinyint(1) DEFAULT '0',
  `promotion_code_id` int(11) DEFAULT NULL,
  `adjustment_reason_id` int(11) DEFAULT NULL,
  `finalized` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_adjustments_on_adjustable_id_and_adjustable_type` (`adjustable_id`,`adjustable_type`),
  KEY `index_adjustments_on_order_id` (`adjustable_id`),
  KEY `index_spree_adjustments_on_eligible` (`eligible`),
  KEY `index_spree_adjustments_on_order_id` (`order_id`),
  KEY `index_spree_adjustments_on_promotion_code_id` (`promotion_code_id`),
  KEY `index_spree_adjustments_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_adjustments`
--

LOCK TABLES `spree_adjustments` WRITE;
/*!40000 ALTER TABLE `spree_adjustments` DISABLE KEYS */;
INSERT INTO `spree_adjustments` VALUES (1,'Spree::TaxRate',1,'Spree::LineItem',1,0.80,'North America 5.000%',1,'2019-04-19 10:02:29.116199','2019-04-19 10:02:29.340903',1,0,NULL,NULL,1),(2,'Spree::TaxRate',1,'Spree::Shipment',1,0.25,'North America 5.000%',1,'2019-04-19 10:02:29.119468','2019-04-19 10:02:29.356732',1,0,NULL,NULL,1),(3,'Spree::TaxRate',1,'Spree::LineItem',2,1.15,'North America 5.000%',1,'2019-04-19 10:02:30.720948','2019-04-19 10:02:30.803616',2,0,NULL,NULL,1),(4,'Spree::TaxRate',1,'Spree::Shipment',2,0.25,'North America 5.000%',1,'2019-04-19 10:02:30.724093','2019-04-19 10:02:30.811345',2,0,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_assets`
--

DROP TABLE IF EXISTS `spree_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewable_type` varchar(255) DEFAULT NULL,
  `viewable_id` int(11) DEFAULT NULL,
  `attachment_width` int(11) DEFAULT NULL,
  `attachment_height` int(11) DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `attachment_content_type` varchar(255) DEFAULT NULL,
  `attachment_file_name` varchar(255) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  `alt` text,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_assets_on_viewable_id` (`viewable_id`),
  KEY `index_assets_on_viewable_type_and_type` (`viewable_type`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_assets`
--

LOCK TABLES `spree_assets` WRITE;
/*!40000 ALTER TABLE `spree_assets` DISABLE KEYS */;
INSERT INTO `spree_assets` VALUES (1,'Spree::Variant',10,240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2019-04-19 10:02:15',NULL,'2019-04-19 10:02:15.992206','2019-04-19 10:02:15.992206'),(2,'Spree::Variant',10,240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2019-04-19 10:02:16',NULL,'2019-04-19 10:02:16.370296','2019-04-19 10:02:16.370296'),(3,'Spree::Variant',11,240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2019-04-19 10:02:16',NULL,'2019-04-19 10:02:16.727672','2019-04-19 10:02:16.727672'),(4,'Spree::Variant',11,240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2019-04-19 10:02:16',NULL,'2019-04-19 10:02:17.091852','2019-04-19 10:02:17.091852'),(5,'Spree::Variant',12,240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2019-04-19 10:02:17',NULL,'2019-04-19 10:02:17.475955','2019-04-19 10:02:17.475955'),(6,'Spree::Variant',12,240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2019-04-19 10:02:17',NULL,'2019-04-19 10:02:17.830325','2019-04-19 10:02:17.830325'),(7,'Spree::Variant',13,240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2019-04-19 10:02:17',NULL,'2019-04-19 10:02:18.191407','2019-04-19 10:02:18.191407'),(8,'Spree::Variant',13,240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2019-04-19 10:02:18',NULL,'2019-04-19 10:02:18.545852','2019-04-19 10:02:18.545852'),(9,'Spree::Variant',14,240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2019-04-19 10:02:18',NULL,'2019-04-19 10:02:18.907435','2019-04-19 10:02:18.907435'),(10,'Spree::Variant',14,240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2019-04-19 10:02:18',NULL,'2019-04-19 10:02:19.267036','2019-04-19 10:02:19.267036'),(11,'Spree::Variant',15,240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2019-04-19 10:02:19',NULL,'2019-04-19 10:02:19.648250','2019-04-19 10:02:19.648250'),(12,'Spree::Variant',15,240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2019-04-19 10:02:19',NULL,'2019-04-19 10:02:20.010601','2019-04-19 10:02:20.010601'),(13,'Spree::Variant',16,240,240,44463,1,'image/png','ror_baseball_jersey_red.png','Spree::Image','2019-04-19 10:02:20',NULL,'2019-04-19 10:02:20.402493','2019-04-19 10:02:20.402493'),(14,'Spree::Variant',16,240,240,36895,2,'image/png','ror_baseball_jersey_back_red.png','Spree::Image','2019-04-19 10:02:20',NULL,'2019-04-19 10:02:20.753961','2019-04-19 10:02:20.753961'),(15,'Spree::Variant',17,240,240,46277,1,'image/png','ror_baseball_jersey_blue.png','Spree::Image','2019-04-19 10:02:20',NULL,'2019-04-19 10:02:21.111367','2019-04-19 10:02:21.111367'),(16,'Spree::Variant',17,240,240,38424,2,'image/png','ror_baseball_jersey_back_blue.png','Spree::Image','2019-04-19 10:02:21',NULL,'2019-04-19 10:02:21.477316','2019-04-19 10:02:21.477316'),(17,'Spree::Variant',18,240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2019-04-19 10:02:21',NULL,'2019-04-19 10:02:21.842598','2019-04-19 10:02:21.842598'),(18,'Spree::Variant',18,240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2019-04-19 10:02:21',NULL,'2019-04-19 10:02:22.199098','2019-04-19 10:02:22.199098'),(19,'Spree::Variant',19,240,240,45744,1,'image/png','ror_baseball_jersey_green.png','Spree::Image','2019-04-19 10:02:22',NULL,'2019-04-19 10:02:22.570783','2019-04-19 10:02:22.570783'),(20,'Spree::Variant',19,240,240,39641,2,'image/png','ror_baseball_jersey_back_green.png','Spree::Image','2019-04-19 10:02:22',NULL,'2019-04-19 10:02:22.940552','2019-04-19 10:02:22.940552'),(21,'Spree::Variant',1,360,360,31490,1,'image/jpeg','ror_tote.jpeg','Spree::Image','2019-04-19 10:02:23',NULL,'2019-04-19 10:02:23.396146','2019-04-19 10:02:23.396146'),(22,'Spree::Variant',1,360,360,28620,2,'image/jpeg','ror_tote_back.jpeg','Spree::Image','2019-04-19 10:02:23',NULL,'2019-04-19 10:02:23.748426','2019-04-19 10:02:23.748426'),(23,'Spree::Variant',2,360,360,28230,1,'image/jpeg','ror_bag.jpeg','Spree::Image','2019-04-19 10:02:23',NULL,'2019-04-19 10:02:24.121171','2019-04-19 10:02:24.121171'),(24,'Spree::Variant',3,360,360,27626,1,'image/jpeg','ror_baseball.jpeg','Spree::Image','2019-04-19 10:02:24',NULL,'2019-04-19 10:02:24.480156','2019-04-19 10:02:24.480156'),(25,'Spree::Variant',3,360,360,23490,2,'image/jpeg','ror_baseball_back.jpeg','Spree::Image','2019-04-19 10:02:24',NULL,'2019-04-19 10:02:24.840711','2019-04-19 10:02:24.840711'),(26,'Spree::Variant',4,360,360,14083,1,'image/jpeg','ror_jr_spaghetti.jpeg','Spree::Image','2019-04-19 10:02:24',NULL,'2019-04-19 10:02:25.216056','2019-04-19 10:02:25.216056'),(27,'Spree::Variant',8,360,360,20026,1,'image/jpeg','ror_mug.jpeg','Spree::Image','2019-04-19 10:02:25',NULL,'2019-04-19 10:02:25.581836','2019-04-19 10:02:25.581836'),(28,'Spree::Variant',8,360,360,10929,2,'image/jpeg','ror_mug_back.jpeg','Spree::Image','2019-04-19 10:02:25',NULL,'2019-04-19 10:02:25.952047','2019-04-19 10:02:25.952047'),(29,'Spree::Variant',5,360,360,18252,1,'image/jpeg','ror_ringer.jpeg','Spree::Image','2019-04-19 10:02:25',NULL,'2019-04-19 10:02:26.319882','2019-04-19 10:02:26.319882'),(30,'Spree::Variant',5,360,360,13276,2,'image/jpeg','ror_ringer_back.jpeg','Spree::Image','2019-04-19 10:02:26',NULL,'2019-04-19 10:02:26.670698','2019-04-19 10:02:26.670698'),(31,'Spree::Variant',9,360,360,20714,1,'image/jpeg','ror_stein.jpeg','Spree::Image','2019-04-19 10:02:26',NULL,'2019-04-19 10:02:27.035874','2019-04-19 10:02:27.035874'),(32,'Spree::Variant',9,360,360,20619,2,'image/jpeg','ror_stein_back.jpeg','Spree::Image','2019-04-19 10:02:27',NULL,'2019-04-19 10:02:27.384547','2019-04-19 10:02:27.384547'),(33,'Spree::Variant',7,504,484,123779,1,'image/png','apache_baseball.png','Spree::Image','2019-04-19 10:02:27',NULL,'2019-04-19 10:02:27.846636','2019-04-19 10:02:27.846636'),(34,'Spree::Variant',6,495,477,138622,1,'image/png','ruby_baseball.png','Spree::Image','2019-04-19 10:02:27',NULL,'2019-04-19 10:02:28.340753','2019-04-19 10:02:28.340753');
/*!40000 ALTER TABLE `spree_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_calculators`
--

DROP TABLE IF EXISTS `spree_calculators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_calculators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `calculable_type` varchar(255) DEFAULT NULL,
  `calculable_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `preferences` text,
  PRIMARY KEY (`id`),
  KEY `index_spree_calculators_on_calculable_id_and_calculable_type` (`calculable_id`,`calculable_type`),
  KEY `index_spree_calculators_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_calculators`
--

LOCK TABLES `spree_calculators` WRITE;
/*!40000 ALTER TABLE `spree_calculators` DISABLE KEYS */;
INSERT INTO `spree_calculators` VALUES (1,'Spree::Calculator::DefaultTax','Spree::TaxRate',1,'2019-04-19 10:02:11.703716','2019-04-19 10:02:11.709076',NULL),(2,'Spree::Calculator::Shipping::FlatRate','Spree::ShippingMethod',1,'2019-04-19 10:02:11.852196','2019-04-19 10:02:12.074250','---\n:amount: 5\n:currency: USD\n'),(3,'Spree::Calculator::Shipping::FlatRate','Spree::ShippingMethod',2,'2019-04-19 10:02:11.862128','2019-04-19 10:02:12.112200','---\n:amount: 10\n:currency: USD\n'),(4,'Spree::Calculator::Shipping::FlatRate','Spree::ShippingMethod',3,'2019-04-19 10:02:11.877041','2019-04-19 10:02:12.098896','---\n:amount: 15\n:currency: USD\n'),(5,'Spree::Calculator::Shipping::FlatRate','Spree::ShippingMethod',4,'2019-04-19 10:02:11.891637','2019-04-19 10:02:12.083291','---\n:amount: 5\n:currency: USD\n'),(6,'Spree::Calculator::Shipping::FlatRate','Spree::ShippingMethod',5,'2019-04-19 10:02:11.894844','2019-04-19 10:02:12.119525','---\n:amount: 8\n:currency: EUR\n');
/*!40000 ALTER TABLE `spree_calculators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_cartons`
--

DROP TABLE IF EXISTS `spree_cartons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_cartons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `external_number` varchar(255) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `tracking` varchar(255) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `imported_from_shipment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_cartons_on_imported_from_shipment_id` (`imported_from_shipment_id`),
  UNIQUE KEY `index_spree_cartons_on_number` (`number`),
  KEY `index_spree_cartons_on_external_number` (`external_number`),
  KEY `index_spree_cartons_on_stock_location_id` (`stock_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_cartons`
--

LOCK TABLES `spree_cartons` WRITE;
/*!40000 ALTER TABLE `spree_cartons` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_cartons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_countries`
--

DROP TABLE IF EXISTS `spree_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso_name` varchar(255) DEFAULT NULL,
  `iso` varchar(255) DEFAULT NULL,
  `iso3` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numcode` int(11) DEFAULT NULL,
  `states_required` tinyint(1) DEFAULT '0',
  `updated_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_countries_on_iso` (`iso`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_countries`
--

LOCK TABLES `spree_countries` WRITE;
/*!40000 ALTER TABLE `spree_countries` DISABLE KEYS */;
INSERT INTO `spree_countries` VALUES (1,'ANDORRA','AD','AND','Andorra',20,1,NULL,NULL),(2,'UNITED ARAB EMIRATES','AE','ARE','United Arab Emirates',784,1,NULL,NULL),(3,'AFGHANISTAN','AF','AFG','Afghanistan',4,1,NULL,NULL),(4,'ANTIGUA AND BARBUDA','AG','ATG','Antigua and Barbuda',28,1,NULL,NULL),(5,'ANGUILLA','AI','AIA','Anguilla',660,0,NULL,NULL),(6,'ALBANIA','AL','ALB','Albania',8,1,NULL,NULL),(7,'ARMENIA','AM','ARM','Armenia',51,1,NULL,NULL),(8,'ANGOLA','AO','AGO','Angola',24,1,NULL,NULL),(9,'ANTARCTICA','AQ','ATA','Antarctica',10,0,NULL,NULL),(10,'ARGENTINA','AR','ARG','Argentina',32,1,NULL,NULL),(11,'AMERICAN SAMOA','AS','ASM','American Samoa',16,0,NULL,NULL),(12,'AUSTRIA','AT','AUT','Austria',40,1,NULL,NULL),(13,'AUSTRALIA','AU','AUS','Australia',36,1,NULL,NULL),(14,'ARUBA','AW','ABW','Aruba',533,0,NULL,NULL),(15,'ÅLAND ISLANDS','AX','ALA','Åland Islands',248,0,NULL,NULL),(16,'AZERBAIJAN','AZ','AZE','Azerbaijan',31,1,NULL,NULL),(17,'BOSNIA AND HERZEGOVINA','BA','BIH','Bosnia and Herzegovina',70,1,NULL,NULL),(18,'BARBADOS','BB','BRB','Barbados',52,1,NULL,NULL),(19,'BANGLADESH','BD','BGD','Bangladesh',50,1,NULL,NULL),(20,'BELGIUM','BE','BEL','Belgium',56,1,NULL,NULL),(21,'BURKINA FASO','BF','BFA','Burkina Faso',854,1,NULL,NULL),(22,'BULGARIA','BG','BGR','Bulgaria',100,1,NULL,NULL),(23,'BAHRAIN','BH','BHR','Bahrain',48,1,NULL,NULL),(24,'BURUNDI','BI','BDI','Burundi',108,1,NULL,NULL),(25,'BENIN','BJ','BEN','Benin',204,1,NULL,NULL),(26,'SAINT BARTHÉLEMY','BL','BLM','Saint Barthélemy',652,0,NULL,NULL),(27,'BERMUDA','BM','BMU','Bermuda',60,1,NULL,NULL),(28,'BRUNEI DARUSSALAM','BN','BRN','Brunei Darussalam',96,1,NULL,NULL),(29,'BOLIVIA, PLURINATIONAL STATE OF','BO','BOL','Bolivia, Plurinational State of',68,1,NULL,NULL),(30,'BONAIRE, SINT EUSTATIUS AND SABA','BQ','BES','Bonaire, Sint Eustatius and Saba',535,1,NULL,NULL),(31,'BRAZIL','BR','BRA','Brazil',76,1,NULL,NULL),(32,'BAHAMAS','BS','BHS','Bahamas',44,1,NULL,NULL),(33,'BHUTAN','BT','BTN','Bhutan',64,1,NULL,NULL),(34,'BOUVET ISLAND','BV','BVT','Bouvet Island',74,0,NULL,NULL),(35,'BOTSWANA','BW','BWA','Botswana',72,1,NULL,NULL),(36,'BELARUS','BY','BLR','Belarus',112,1,NULL,NULL),(37,'BELIZE','BZ','BLZ','Belize',84,1,NULL,NULL),(38,'CANADA','CA','CAN','Canada',124,1,NULL,NULL),(39,'COCOS (KEELING) ISLANDS','CC','CCK','Cocos (Keeling) Islands',166,0,NULL,NULL),(40,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','CD','COD','Congo, The Democratic Republic of the',180,1,NULL,NULL),(41,'CENTRAL AFRICAN REPUBLIC','CF','CAF','Central African Republic',140,1,NULL,NULL),(42,'CONGO','CG','COG','Congo',178,1,NULL,NULL),(43,'SWITZERLAND','CH','CHE','Switzerland',756,1,NULL,NULL),(44,'CÔTE D\'IVOIRE','CI','CIV','Côte d\'Ivoire',384,1,NULL,NULL),(45,'COOK ISLANDS','CK','COK','Cook Islands',184,0,NULL,NULL),(46,'CHILE','CL','CHL','Chile',152,1,NULL,NULL),(47,'CAMEROON','CM','CMR','Cameroon',120,1,NULL,NULL),(48,'CHINA','CN','CHN','China',156,1,NULL,NULL),(49,'COLOMBIA','CO','COL','Colombia',170,1,NULL,NULL),(50,'COSTA RICA','CR','CRI','Costa Rica',188,1,NULL,NULL),(51,'CUBA','CU','CUB','Cuba',192,1,NULL,NULL),(52,'CABO VERDE','CV','CPV','Cabo Verde',132,1,NULL,NULL),(53,'CURAÇAO','CW','CUW','Curaçao',531,0,NULL,NULL),(54,'CHRISTMAS ISLAND','CX','CXR','Christmas Island',162,0,NULL,NULL),(55,'CYPRUS','CY','CYP','Cyprus',196,1,NULL,NULL),(56,'CZECHIA','CZ','CZE','Czechia',203,1,NULL,NULL),(57,'GERMANY','DE','DEU','Germany',276,1,NULL,NULL),(58,'DJIBOUTI','DJ','DJI','Djibouti',262,1,NULL,NULL),(59,'DENMARK','DK','DNK','Denmark',208,1,NULL,NULL),(60,'DOMINICA','DM','DMA','Dominica',212,1,NULL,NULL),(61,'DOMINICAN REPUBLIC','DO','DOM','Dominican Republic',214,1,NULL,NULL),(62,'ALGERIA','DZ','DZA','Algeria',12,1,NULL,NULL),(63,'ECUADOR','EC','ECU','Ecuador',218,1,NULL,NULL),(64,'ESTONIA','EE','EST','Estonia',233,1,NULL,NULL),(65,'EGYPT','EG','EGY','Egypt',818,1,NULL,NULL),(66,'WESTERN SAHARA','EH','ESH','Western Sahara',732,0,NULL,NULL),(67,'ERITREA','ER','ERI','Eritrea',232,1,NULL,NULL),(68,'SPAIN','ES','ESP','Spain',724,1,NULL,NULL),(69,'ETHIOPIA','ET','ETH','Ethiopia',231,1,NULL,NULL),(70,'FINLAND','FI','FIN','Finland',246,1,NULL,NULL),(71,'FIJI','FJ','FJI','Fiji',242,1,NULL,NULL),(72,'FALKLAND ISLANDS (MALVINAS)','FK','FLK','Falkland Islands (Malvinas)',238,0,NULL,NULL),(73,'MICRONESIA, FEDERATED STATES OF','FM','FSM','Micronesia, Federated States of',583,1,NULL,NULL),(74,'FAROE ISLANDS','FO','FRO','Faroe Islands',234,0,NULL,NULL),(75,'FRANCE','FR','FRA','France',250,1,NULL,NULL),(76,'GABON','GA','GAB','Gabon',266,1,NULL,NULL),(77,'UNITED KINGDOM','GB','GBR','United Kingdom',826,1,NULL,NULL),(78,'GRENADA','GD','GRD','Grenada',308,1,NULL,NULL),(79,'GEORGIA','GE','GEO','Georgia',268,1,NULL,NULL),(80,'FRENCH GUIANA','GF','GUF','French Guiana',254,0,NULL,NULL),(81,'GUERNSEY','GG','GGY','Guernsey',831,0,NULL,NULL),(82,'GHANA','GH','GHA','Ghana',288,1,NULL,NULL),(83,'GIBRALTAR','GI','GIB','Gibraltar',292,0,NULL,NULL),(84,'GREENLAND','GL','GRL','Greenland',304,1,NULL,NULL),(85,'GAMBIA','GM','GMB','Gambia',270,1,NULL,NULL),(86,'GUINEA','GN','GIN','Guinea',324,1,NULL,NULL),(87,'GUADELOUPE','GP','GLP','Guadeloupe',312,0,NULL,NULL),(88,'EQUATORIAL GUINEA','GQ','GNQ','Equatorial Guinea',226,1,NULL,NULL),(89,'GREECE','GR','GRC','Greece',300,1,NULL,NULL),(90,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS','SGS','South Georgia and the South Sandwich Islands',239,0,NULL,NULL),(91,'GUATEMALA','GT','GTM','Guatemala',320,1,NULL,NULL),(92,'GUAM','GU','GUM','Guam',316,0,NULL,NULL),(93,'GUINEA-BISSAU','GW','GNB','Guinea-Bissau',624,1,NULL,NULL),(94,'GUYANA','GY','GUY','Guyana',328,1,NULL,NULL),(95,'HONG KONG','HK','HKG','Hong Kong',344,0,NULL,NULL),(96,'HEARD ISLAND AND MCDONALD ISLANDS','HM','HMD','Heard Island and McDonald Islands',334,0,NULL,NULL),(97,'HONDURAS','HN','HND','Honduras',340,1,NULL,NULL),(98,'CROATIA','HR','HRV','Croatia',191,1,NULL,NULL),(99,'HAITI','HT','HTI','Haiti',332,1,NULL,NULL),(100,'HUNGARY','HU','HUN','Hungary',348,1,NULL,NULL),(101,'INDONESIA','ID','IDN','Indonesia',360,1,NULL,NULL),(102,'IRELAND','IE','IRL','Ireland',372,1,NULL,NULL),(103,'ISRAEL','IL','ISR','Israel',376,1,NULL,NULL),(104,'ISLE OF MAN','IM','IMN','Isle of Man',833,0,NULL,NULL),(105,'INDIA','IN','IND','India',356,1,NULL,NULL),(106,'BRITISH INDIAN OCEAN TERRITORY','IO','IOT','British Indian Ocean Territory',86,0,NULL,NULL),(107,'IRAQ','IQ','IRQ','Iraq',368,1,NULL,NULL),(108,'IRAN, ISLAMIC REPUBLIC OF','IR','IRN','Iran, Islamic Republic of',364,1,NULL,NULL),(109,'ICELAND','IS','ISL','Iceland',352,1,NULL,NULL),(110,'ITALY','IT','ITA','Italy',380,1,NULL,NULL),(111,'JERSEY','JE','JEY','Jersey',832,0,NULL,NULL),(112,'JAMAICA','JM','JAM','Jamaica',388,1,NULL,NULL),(113,'JORDAN','JO','JOR','Jordan',400,1,NULL,NULL),(114,'JAPAN','JP','JPN','Japan',392,1,NULL,NULL),(115,'KENYA','KE','KEN','Kenya',404,1,NULL,NULL),(116,'KYRGYZSTAN','KG','KGZ','Kyrgyzstan',417,1,NULL,NULL),(117,'CAMBODIA','KH','KHM','Cambodia',116,1,NULL,NULL),(118,'KIRIBATI','KI','KIR','Kiribati',296,1,NULL,NULL),(119,'COMOROS','KM','COM','Comoros',174,1,NULL,NULL),(120,'SAINT KITTS AND NEVIS','KN','KNA','Saint Kitts and Nevis',659,1,NULL,NULL),(121,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','KP','PRK','Korea, Democratic People\'s Republic of',408,1,NULL,NULL),(122,'KOREA, REPUBLIC OF','KR','KOR','Korea, Republic of',410,1,NULL,NULL),(123,'KUWAIT','KW','KWT','Kuwait',414,1,NULL,NULL),(124,'CAYMAN ISLANDS','KY','CYM','Cayman Islands',136,0,NULL,NULL),(125,'KAZAKHSTAN','KZ','KAZ','Kazakhstan',398,1,NULL,NULL),(126,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA','LAO','Lao People\'s Democratic Republic',418,1,NULL,NULL),(127,'LEBANON','LB','LBN','Lebanon',422,1,NULL,NULL),(128,'SAINT LUCIA','LC','LCA','Saint Lucia',662,0,NULL,NULL),(129,'LIECHTENSTEIN','LI','LIE','Liechtenstein',438,1,NULL,NULL),(130,'SRI LANKA','LK','LKA','Sri Lanka',144,1,NULL,NULL),(131,'LIBERIA','LR','LBR','Liberia',430,1,NULL,NULL),(132,'LESOTHO','LS','LSO','Lesotho',426,1,NULL,NULL),(133,'LITHUANIA','LT','LTU','Lithuania',440,1,NULL,NULL),(134,'LUXEMBOURG','LU','LUX','Luxembourg',442,1,NULL,NULL),(135,'LATVIA','LV','LVA','Latvia',428,1,NULL,NULL),(136,'LIBYA','LY','LBY','Libya',434,1,NULL,NULL),(137,'MOROCCO','MA','MAR','Morocco',504,1,NULL,NULL),(138,'MONACO','MC','MCO','Monaco',492,1,NULL,NULL),(139,'MOLDOVA, REPUBLIC OF','MD','MDA','Moldova, Republic of',498,1,NULL,NULL),(140,'MONTENEGRO','ME','MNE','Montenegro',499,1,NULL,NULL),(141,'SAINT MARTIN (FRENCH PART)','MF','MAF','Saint Martin (French part)',663,0,NULL,NULL),(142,'MADAGASCAR','MG','MDG','Madagascar',450,1,NULL,NULL),(143,'MARSHALL ISLANDS','MH','MHL','Marshall Islands',584,1,NULL,NULL),(144,'MACEDONIA, REPUBLIC OF','MK','MKD','Macedonia, Republic of',807,1,NULL,NULL),(145,'MALI','ML','MLI','Mali',466,1,NULL,NULL),(146,'MYANMAR','MM','MMR','Myanmar',104,1,NULL,NULL),(147,'MONGOLIA','MN','MNG','Mongolia',496,1,NULL,NULL),(148,'MACAO','MO','MAC','Macao',446,0,NULL,NULL),(149,'NORTHERN MARIANA ISLANDS','MP','MNP','Northern Mariana Islands',580,0,NULL,NULL),(150,'MARTINIQUE','MQ','MTQ','Martinique',474,0,NULL,NULL),(151,'MAURITANIA','MR','MRT','Mauritania',478,1,NULL,NULL),(152,'MONTSERRAT','MS','MSR','Montserrat',500,0,NULL,NULL),(153,'MALTA','MT','MLT','Malta',470,1,NULL,NULL),(154,'MAURITIUS','MU','MUS','Mauritius',480,1,NULL,NULL),(155,'MALDIVES','MV','MDV','Maldives',462,1,NULL,NULL),(156,'MALAWI','MW','MWI','Malawi',454,1,NULL,NULL),(157,'MEXICO','MX','MEX','Mexico',484,1,NULL,NULL),(158,'MALAYSIA','MY','MYS','Malaysia',458,1,NULL,NULL),(159,'MOZAMBIQUE','MZ','MOZ','Mozambique',508,1,NULL,NULL),(160,'NAMIBIA','NA','NAM','Namibia',516,1,NULL,NULL),(161,'NEW CALEDONIA','NC','NCL','New Caledonia',540,0,NULL,NULL),(162,'NIGER','NE','NER','Niger',562,1,NULL,NULL),(163,'NORFOLK ISLAND','NF','NFK','Norfolk Island',574,0,NULL,NULL),(164,'NIGERIA','NG','NGA','Nigeria',566,1,NULL,NULL),(165,'NICARAGUA','NI','NIC','Nicaragua',558,1,NULL,NULL),(166,'NETHERLANDS','NL','NLD','Netherlands',528,1,NULL,NULL),(167,'NORWAY','NO','NOR','Norway',578,1,NULL,NULL),(168,'NEPAL','NP','NPL','Nepal',524,1,NULL,NULL),(169,'NAURU','NR','NRU','Nauru',520,1,NULL,NULL),(170,'NIUE','NU','NIU','Niue',570,0,NULL,NULL),(171,'NEW ZEALAND','NZ','NZL','New Zealand',554,1,NULL,NULL),(172,'OMAN','OM','OMN','Oman',512,1,NULL,NULL),(173,'PANAMA','PA','PAN','Panama',591,1,NULL,NULL),(174,'PERU','PE','PER','Peru',604,1,NULL,NULL),(175,'FRENCH POLYNESIA','PF','PYF','French Polynesia',258,0,NULL,NULL),(176,'PAPUA NEW GUINEA','PG','PNG','Papua New Guinea',598,1,NULL,NULL),(177,'PHILIPPINES','PH','PHL','Philippines',608,1,NULL,NULL),(178,'PAKISTAN','PK','PAK','Pakistan',586,1,NULL,NULL),(179,'POLAND','PL','POL','Poland',616,1,NULL,NULL),(180,'SAINT PIERRE AND MIQUELON','PM','SPM','Saint Pierre and Miquelon',666,0,NULL,NULL),(181,'PITCAIRN','PN','PCN','Pitcairn',612,0,NULL,NULL),(182,'PUERTO RICO','PR','PRI','Puerto Rico',630,0,NULL,NULL),(183,'PALESTINE, STATE OF','PS','PSE','Palestine, State of',275,1,NULL,NULL),(184,'PORTUGAL','PT','PRT','Portugal',620,1,NULL,NULL),(185,'PALAU','PW','PLW','Palau',585,1,NULL,NULL),(186,'PARAGUAY','PY','PRY','Paraguay',600,1,NULL,NULL),(187,'QATAR','QA','QAT','Qatar',634,1,NULL,NULL),(188,'RÉUNION','RE','REU','Réunion',638,0,NULL,NULL),(189,'ROMANIA','RO','ROU','Romania',642,1,NULL,NULL),(190,'SERBIA','RS','SRB','Serbia',688,1,NULL,NULL),(191,'RUSSIA','RU','RUS','Russia',643,1,NULL,NULL),(192,'RWANDA','RW','RWA','Rwanda',646,1,NULL,NULL),(193,'SAUDI ARABIA','SA','SAU','Saudi Arabia',682,1,NULL,NULL),(194,'SOLOMON ISLANDS','SB','SLB','Solomon Islands',90,1,NULL,NULL),(195,'SEYCHELLES','SC','SYC','Seychelles',690,1,NULL,NULL),(196,'SUDAN','SD','SDN','Sudan',729,1,NULL,NULL),(197,'SWEDEN','SE','SWE','Sweden',752,1,NULL,NULL),(198,'SINGAPORE','SG','SGP','Singapore',702,1,NULL,NULL),(199,'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA','SH','SHN','Saint Helena, Ascension and Tristan da Cunha',654,1,NULL,NULL),(200,'SLOVENIA','SI','SVN','Slovenia',705,1,NULL,NULL),(201,'SVALBARD AND JAN MAYEN','SJ','SJM','Svalbard and Jan Mayen',744,0,NULL,NULL),(202,'SLOVAKIA','SK','SVK','Slovakia',703,1,NULL,NULL),(203,'SIERRA LEONE','SL','SLE','Sierra Leone',694,1,NULL,NULL),(204,'SAN MARINO','SM','SMR','San Marino',674,1,NULL,NULL),(205,'SENEGAL','SN','SEN','Senegal',686,1,NULL,NULL),(206,'SOMALIA','SO','SOM','Somalia',706,1,NULL,NULL),(207,'SURINAME','SR','SUR','Suriname',740,1,NULL,NULL),(208,'SOUTH SUDAN','SS','SSD','South Sudan',728,1,NULL,NULL),(209,'SAO TOME AND PRINCIPE','ST','STP','Sao Tome and Principe',678,1,NULL,NULL),(210,'EL SALVADOR','SV','SLV','El Salvador',222,1,NULL,NULL),(211,'SINT MAARTEN (DUTCH PART)','SX','SXM','Sint Maarten (Dutch part)',534,0,NULL,NULL),(212,'SYRIAN ARAB REPUBLIC','SY','SYR','Syrian Arab Republic',760,1,NULL,NULL),(213,'SWAZILAND','SZ','SWZ','Swaziland',748,1,NULL,NULL),(214,'TURKS AND CAICOS ISLANDS','TC','TCA','Turks and Caicos Islands',796,0,NULL,NULL),(215,'CHAD','TD','TCD','Chad',148,1,NULL,NULL),(216,'FRENCH SOUTHERN TERRITORIES','TF','ATF','French Southern Territories',260,0,NULL,NULL),(217,'TOGO','TG','TGO','Togo',768,1,NULL,NULL),(218,'THAILAND','TH','THA','Thailand',764,1,NULL,NULL),(219,'TAJIKISTAN','TJ','TJK','Tajikistan',762,1,NULL,NULL),(220,'TOKELAU','TK','TKL','Tokelau',772,0,NULL,NULL),(221,'TIMOR-LESTE','TL','TLS','Timor-Leste',626,1,NULL,NULL),(222,'TURKMENISTAN','TM','TKM','Turkmenistan',795,1,NULL,NULL),(223,'TUNISIA','TN','TUN','Tunisia',788,1,NULL,NULL),(224,'TONGA','TO','TON','Tonga',776,1,NULL,NULL),(225,'TURKEY','TR','TUR','Turkey',792,1,NULL,NULL),(226,'TRINIDAD AND TOBAGO','TT','TTO','Trinidad and Tobago',780,1,NULL,NULL),(227,'TUVALU','TV','TUV','Tuvalu',798,1,NULL,NULL),(228,'TAIWAN','TW','TWN','Taiwan',158,1,NULL,NULL),(229,'TANZANIA, UNITED REPUBLIC OF','TZ','TZA','Tanzania, United Republic of',834,1,NULL,NULL),(230,'UKRAINE','UA','UKR','Ukraine',804,1,NULL,NULL),(231,'UGANDA','UG','UGA','Uganda',800,1,NULL,NULL),(232,'UNITED STATES MINOR OUTLYING ISLANDS','UM','UMI','United States Minor Outlying Islands',581,1,NULL,NULL),(233,'UNITED STATES','US','USA','United States',840,1,NULL,NULL),(234,'URUGUAY','UY','URY','Uruguay',858,1,NULL,NULL),(235,'UZBEKISTAN','UZ','UZB','Uzbekistan',860,1,NULL,NULL),(236,'HOLY SEE (VATICAN CITY STATE)','VA','VAT','Holy See (Vatican City State)',336,0,NULL,NULL),(237,'SAINT VINCENT AND THE GRENADINES','VC','VCT','Saint Vincent and the Grenadines',670,1,NULL,NULL),(238,'VENEZUELA, BOLIVARIAN REPUBLIC OF','VE','VEN','Venezuela, Bolivarian Republic of',862,1,NULL,NULL),(239,'VIRGIN ISLANDS, BRITISH','VG','VGB','Virgin Islands, British',92,0,NULL,NULL),(240,'VIRGIN ISLANDS, U.S.','VI','VIR','Virgin Islands, U.S.',850,0,NULL,NULL),(241,'VIETNAM','VN','VNM','Vietnam',704,1,NULL,NULL),(242,'VANUATU','VU','VUT','Vanuatu',548,1,NULL,NULL),(243,'WALLIS AND FUTUNA','WF','WLF','Wallis and Futuna',876,0,NULL,NULL),(244,'SAMOA','WS','WSM','Samoa',882,1,NULL,NULL),(245,'YEMEN','YE','YEM','Yemen',887,1,NULL,NULL),(246,'MAYOTTE','YT','MYT','Mayotte',175,0,NULL,NULL),(247,'SOUTH AFRICA','ZA','ZAF','South Africa',710,1,NULL,NULL),(248,'ZAMBIA','ZM','ZMB','Zambia',894,1,NULL,NULL),(249,'ZIMBABWE','ZW','ZWE','Zimbabwe',716,1,NULL,NULL);
/*!40000 ALTER TABLE `spree_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_credit_cards`
--

DROP TABLE IF EXISTS `spree_credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_credit_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `last_digits` varchar(255) DEFAULT NULL,
  `gateway_customer_profile_id` varchar(255) DEFAULT NULL,
  `gateway_payment_profile_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_credit_cards_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_credit_cards_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_credit_cards`
--

LOCK TABLES `spree_credit_cards` WRITE;
/*!40000 ALTER TABLE `spree_credit_cards` DISABLE KEYS */;
INSERT INTO `spree_credit_cards` VALUES (1,'12','2021','visa','1111','BGS-1234',NULL,'2019-04-19 10:02:31.310523','2019-04-19 10:02:31.310523','Sean Schofield',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `spree_credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_customer_returns`
--

DROP TABLE IF EXISTS `spree_customer_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_customer_returns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_customer_returns`
--

LOCK TABLES `spree_customer_returns` WRITE;
/*!40000 ALTER TABLE `spree_customer_returns` DISABLE KEYS */;
INSERT INTO `spree_customer_returns` VALUES (1,'CR442672568',1,'2019-04-19 10:02:31.581637','2019-04-19 10:02:31.601440');
/*!40000 ALTER TABLE `spree_customer_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_inventory_units`
--

DROP TABLE IF EXISTS `spree_inventory_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_inventory_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `pending` tinyint(1) DEFAULT '1',
  `line_item_id` int(11) DEFAULT NULL,
  `carton_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_inventory_units_on_carton_id` (`carton_id`),
  KEY `index_spree_inventory_units_on_line_item_id` (`line_item_id`),
  KEY `index_inventory_units_on_shipment_id` (`shipment_id`),
  KEY `index_inventory_units_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_inventory_units`
--

LOCK TABLES `spree_inventory_units` WRITE;
/*!40000 ALTER TABLE `spree_inventory_units` DISABLE KEYS */;
INSERT INTO `spree_inventory_units` VALUES (1,'on_hand',1,1,'2019-04-19 10:02:29.009640','2019-04-19 10:02:29.442444',0,1,NULL),(2,'on_hand',2,2,'2019-04-19 10:02:30.679017','2019-04-19 10:02:30.831183',0,2,NULL);
/*!40000 ALTER TABLE `spree_inventory_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_item_actions`
--

DROP TABLE IF EXISTS `spree_line_item_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_item_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_item_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT '0',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_line_item_actions_on_action_id` (`action_id`),
  KEY `index_spree_line_item_actions_on_line_item_id` (`line_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_item_actions`
--

LOCK TABLES `spree_line_item_actions` WRITE;
/*!40000 ALTER TABLE `spree_line_item_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_line_item_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_line_items`
--

DROP TABLE IF EXISTS `spree_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `index_spree_line_items_on_order_id` (`order_id`),
  KEY `index_spree_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_line_items`
--

LOCK TABLES `spree_line_items` WRITE;
/*!40000 ALTER TABLE `spree_line_items` DISABLE KEYS */;
INSERT INTO `spree_line_items` VALUES (1,1,1,1,15.99,'2019-04-19 10:02:28.608744','2019-04-19 10:02:29.342555',17.00,1,0.80,0.80,0.00,0.00),(2,2,2,1,22.99,'2019-04-19 10:02:28.627328','2019-04-19 10:02:30.804962',21.00,1,1.15,1.15,0.00,0.00);
/*!40000 ALTER TABLE `spree_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_log_entries`
--

DROP TABLE IF EXISTS `spree_log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_type` varchar(255) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `details` text,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_log_entries_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_log_entries`
--

LOCK TABLES `spree_log_entries` WRITE;
/*!40000 ALTER TABLE `spree_log_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_type_prototypes`
--

DROP TABLE IF EXISTS `spree_option_type_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_type_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prototype_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_type_prototypes`
--

LOCK TABLES `spree_option_type_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_option_type_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_option_type_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_types`
--

DROP TABLE IF EXISTS `spree_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `presentation` varchar(100) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_types_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_types`
--

LOCK TABLES `spree_option_types` WRITE;
/*!40000 ALTER TABLE `spree_option_types` DISABLE KEYS */;
INSERT INTO `spree_option_types` VALUES (1,'tshirt-size','Size',1,'2019-04-19 10:02:13.612285','2019-04-19 10:02:13.612285'),(2,'tshirt-color','Color',2,'2019-04-19 10:02:13.643698','2019-04-19 10:02:13.643698');
/*!40000 ALTER TABLE `spree_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values`
--

DROP TABLE IF EXISTS `spree_option_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_option_values_on_option_type_id` (`option_type_id`),
  KEY `index_spree_option_values_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values`
--

LOCK TABLES `spree_option_values` WRITE;
/*!40000 ALTER TABLE `spree_option_values` DISABLE KEYS */;
INSERT INTO `spree_option_values` VALUES (1,1,'Small','S',1,'2019-04-19 10:02:13.694458','2019-04-19 10:02:13.710625'),(2,2,'Medium','M',1,'2019-04-19 10:02:13.746509','2019-04-19 10:02:13.749016'),(3,3,'Large','L',1,'2019-04-19 10:02:13.753669','2019-04-19 10:02:13.755485'),(4,4,'Extra Large','XL',1,'2019-04-19 10:02:13.759538','2019-04-19 10:02:13.761177'),(5,1,'Red','Red',2,'2019-04-19 10:02:13.765106','2019-04-19 10:02:13.766965'),(6,2,'Green','Green',2,'2019-04-19 10:02:13.771081','2019-04-19 10:02:13.772977'),(7,3,'Blue','Blue',2,'2019-04-19 10:02:13.776904','2019-04-19 10:02:13.778588');
/*!40000 ALTER TABLE `spree_option_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_option_values_variants`
--

DROP TABLE IF EXISTS `spree_option_values_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_option_values_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) DEFAULT NULL,
  `option_value_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_option_values_variants_on_variant_id_and_option_value_id` (`variant_id`,`option_value_id`),
  KEY `index_spree_option_values_variants_on_variant_id` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_option_values_variants`
--

LOCK TABLES `spree_option_values_variants` WRITE;
/*!40000 ALTER TABLE `spree_option_values_variants` DISABLE KEYS */;
INSERT INTO `spree_option_values_variants` VALUES (1,10,1,'2019-04-19 10:02:14.481202','2019-04-19 10:02:14.481202'),(2,10,5,'2019-04-19 10:02:14.482150','2019-04-19 10:02:14.482150'),(3,11,1,'2019-04-19 10:02:14.529051','2019-04-19 10:02:14.529051'),(4,11,7,'2019-04-19 10:02:14.530158','2019-04-19 10:02:14.530158'),(5,12,1,'2019-04-19 10:02:14.559911','2019-04-19 10:02:14.559911'),(6,12,6,'2019-04-19 10:02:14.561031','2019-04-19 10:02:14.561031'),(7,13,2,'2019-04-19 10:02:14.590064','2019-04-19 10:02:14.590064'),(8,13,5,'2019-04-19 10:02:14.591075','2019-04-19 10:02:14.591075'),(9,14,2,'2019-04-19 10:02:14.616703','2019-04-19 10:02:14.616703'),(10,14,7,'2019-04-19 10:02:14.617620','2019-04-19 10:02:14.617620'),(11,15,2,'2019-04-19 10:02:14.645732','2019-04-19 10:02:14.645732'),(12,15,6,'2019-04-19 10:02:14.646666','2019-04-19 10:02:14.646666'),(13,16,3,'2019-04-19 10:02:14.675047','2019-04-19 10:02:14.675047'),(14,16,5,'2019-04-19 10:02:14.676057','2019-04-19 10:02:14.676057'),(15,17,3,'2019-04-19 10:02:14.702474','2019-04-19 10:02:14.702474'),(16,17,7,'2019-04-19 10:02:14.703450','2019-04-19 10:02:14.703450'),(17,18,3,'2019-04-19 10:02:14.729672','2019-04-19 10:02:14.729672'),(18,18,6,'2019-04-19 10:02:14.730572','2019-04-19 10:02:14.730572'),(19,19,4,'2019-04-19 10:02:14.759630','2019-04-19 10:02:14.759630'),(20,19,6,'2019-04-19 10:02:14.760585','2019-04-19 10:02:14.760585');
/*!40000 ALTER TABLE `spree_option_values_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_order_mutexes`
--

DROP TABLE IF EXISTS `spree_order_mutexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_order_mutexes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_order_mutexes_on_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_order_mutexes`
--

LOCK TABLES `spree_order_mutexes` WRITE;
/*!40000 ALTER TABLE `spree_order_mutexes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_order_mutexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders`
--

DROP TABLE IF EXISTS `spree_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) DEFAULT NULL,
  `item_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) DEFAULT NULL,
  `adjustment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `user_id` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `payment_total` decimal(10,2) DEFAULT '0.00',
  `shipment_state` varchar(255) DEFAULT NULL,
  `payment_state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `special_instructions` text,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `last_ip_address` varchar(255) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `shipment_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `channel` varchar(255) DEFAULT 'spree',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_count` int(11) DEFAULT '0',
  `approver_id` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `confirmation_delivered` tinyint(1) DEFAULT '0',
  `guest_token` varchar(255) DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `canceler_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `approver_name` varchar(255) DEFAULT NULL,
  `frontend_viewable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_on_approver_id` (`approver_id`),
  KEY `index_spree_orders_on_bill_address_id` (`bill_address_id`),
  KEY `index_spree_orders_on_completed_at` (`completed_at`),
  KEY `index_spree_orders_on_created_by_id` (`created_by_id`),
  KEY `index_spree_orders_on_guest_token` (`guest_token`),
  KEY `index_spree_orders_on_number` (`number`),
  KEY `index_spree_orders_on_ship_address_id` (`ship_address_id`),
  KEY `index_spree_orders_on_user_id_and_created_by_id` (`user_id`,`created_by_id`),
  KEY `index_spree_orders_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders`
--

LOCK TABLES `spree_orders` WRITE;
/*!40000 ALTER TABLE `spree_orders` DISABLE KEYS */;
INSERT INTO `spree_orders` VALUES (1,'R123456789',15.99,22.04,'complete',1.05,NULL,'2019-04-19 10:02:29',2,1,0.00,'pending','balance_due','spree@example.com',NULL,'2019-04-19 10:02:28.539731','2019-04-19 10:02:31.355325','USD',NULL,NULL,5.00,1.05,0.00,'spree',0.00,1,NULL,NULL,1,'LdI6a7JOuv_OFkF_SWIXJg',NULL,NULL,1,NULL,1),(2,'R987654321',22.99,29.39,'complete',1.40,NULL,'2019-04-19 10:02:30',2,1,0.00,'pending','balance_due','spree@example.com',NULL,'2019-04-19 10:02:28.551552','2019-04-19 10:02:31.422192','USD',NULL,NULL,5.00,1.40,0.00,'spree',0.00,1,NULL,NULL,1,'aYVYgWtAPRVHpXMI4nYYGg',NULL,NULL,1,NULL,1);
/*!40000 ALTER TABLE `spree_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_orders_promotions`
--

DROP TABLE IF EXISTS `spree_orders_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_orders_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `promotion_code_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_orders_promotions_on_order_id_and_promotion_id` (`order_id`,`promotion_id`),
  KEY `index_spree_orders_promotions_on_promotion_code_id` (`promotion_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_orders_promotions`
--

LOCK TABLES `spree_orders_promotions` WRITE;
/*!40000 ALTER TABLE `spree_orders_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_orders_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_capture_events`
--

DROP TABLE IF EXISTS `spree_payment_capture_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_capture_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT '0.00',
  `payment_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_capture_events_on_payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_capture_events`
--

LOCK TABLES `spree_payment_capture_events` WRITE;
/*!40000 ALTER TABLE `spree_payment_capture_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_payment_capture_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payment_methods`
--

DROP TABLE IF EXISTS `spree_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `auto_capture` tinyint(1) DEFAULT NULL,
  `preferences` text,
  `preference_source` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `available_to_users` tinyint(1) DEFAULT '1',
  `available_to_admin` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_payment_methods_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payment_methods`
--

LOCK TABLES `spree_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_payment_methods` DISABLE KEYS */;
INSERT INTO `spree_payment_methods` VALUES (1,'Spree::PaymentMethod::StoreCredit','Store Credit','Store credit',1,NULL,'2019-04-19 09:59:40.060434','2019-04-19 09:59:40.060434',NULL,'---\n:server: test\n:test_mode: true\n',NULL,1,0,0),(2,'Spree::PaymentMethod::BogusCreditCard','Credit Card','Bogus payment gateway',1,NULL,'2019-04-19 10:02:11.438449','2019-04-19 10:02:11.438449',NULL,'---\n:server: test\n:test_mode: true\n',NULL,2,1,1),(3,'Spree::PaymentMethod::Check','Check','Pay by check.',1,NULL,'2019-04-19 10:02:11.479264','2019-04-19 10:02:11.479264',NULL,'---\n:server: test\n:test_mode: true\n',NULL,3,1,1);
/*!40000 ALTER TABLE `spree_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_payments`
--

DROP TABLE IF EXISTS `spree_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `avs_response` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cvv_response_code` varchar(255) DEFAULT NULL,
  `cvv_response_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_payments_on_number` (`number`),
  KEY `index_spree_payments_on_order_id` (`order_id`),
  KEY `index_spree_payments_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_payments_on_source_id_and_source_type` (`source_id`,`source_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_payments`
--

LOCK TABLES `spree_payments` WRITE;
/*!40000 ALTER TABLE `spree_payments` DISABLE KEYS */;
INSERT INTO `spree_payments` VALUES (1,0.00,1,NULL,NULL,3,'invalid',NULL,NULL,'2019-04-19 10:02:28.660792','2019-04-19 10:02:31.354231','T4ELAY4B',NULL,NULL),(2,0.00,2,NULL,NULL,3,'invalid',NULL,NULL,'2019-04-19 10:02:29.516108','2019-04-19 10:02:31.421155','JSJQYEFY',NULL,NULL),(3,22.04,1,'Spree::CreditCard',1,2,'pending','12345',NULL,'2019-04-19 10:02:31.350151','2019-04-19 10:02:31.350151','JWUQC2CR',NULL,NULL),(4,29.39,2,'Spree::CreditCard',1,2,'pending','12345',NULL,'2019-04-19 10:02:31.415947','2019-04-19 10:02:31.415947','TGGGCU5G',NULL,NULL);
/*!40000 ALTER TABLE `spree_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_preferences`
--

DROP TABLE IF EXISTS `spree_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_preferences_on_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_preferences`
--

LOCK TABLES `spree_preferences` WRITE;
/*!40000 ALTER TABLE `spree_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prices`
--

DROP TABLE IF EXISTS `spree_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variant_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `country_iso` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_prices_on_country_iso` (`country_iso`),
  KEY `index_spree_prices_on_variant_id_and_currency` (`variant_id`,`currency`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prices`
--

LOCK TABLES `spree_prices` WRITE;
/*!40000 ALTER TABLE `spree_prices` DISABLE KEYS */;
INSERT INTO `spree_prices` VALUES (1,1,15.99,'USD',NULL,'2019-04-19 10:02:12.387877','2019-04-19 10:02:12.387877',NULL),(2,1,14.00,'EUR',NULL,'2019-04-19 10:02:12.554100','2019-04-19 10:02:12.554100',NULL),(3,2,22.99,'USD',NULL,'2019-04-19 10:02:12.577042','2019-04-19 10:02:12.577042',NULL),(4,2,19.00,'EUR',NULL,'2019-04-19 10:02:12.604126','2019-04-19 10:02:12.604126',NULL),(5,3,19.99,'USD',NULL,'2019-04-19 10:02:12.637744','2019-04-19 10:02:12.637744',NULL),(6,3,16.00,'EUR',NULL,'2019-04-19 10:02:12.666221','2019-04-19 10:02:12.666221',NULL),(7,4,19.99,'USD',NULL,'2019-04-19 10:02:12.691907','2019-04-19 10:02:12.691907',NULL),(8,4,16.00,'EUR',NULL,'2019-04-19 10:02:12.721171','2019-04-19 10:02:12.721171',NULL),(9,5,19.99,'USD',NULL,'2019-04-19 10:02:12.746389','2019-04-19 10:02:12.746389',NULL),(10,5,16.00,'EUR',NULL,'2019-04-19 10:02:12.785479','2019-04-19 10:02:12.785479',NULL),(11,6,19.99,'USD',NULL,'2019-04-19 10:02:12.820217','2019-04-19 10:02:12.820217',NULL),(12,6,16.00,'EUR',NULL,'2019-04-19 10:02:12.860728','2019-04-19 10:02:12.860728',NULL),(13,7,19.99,'USD',NULL,'2019-04-19 10:02:12.893332','2019-04-19 10:02:12.893332',NULL),(14,7,16.00,'EUR',NULL,'2019-04-19 10:02:12.937618','2019-04-19 10:02:12.937618',NULL),(15,8,13.99,'USD',NULL,'2019-04-19 10:02:12.972744','2019-04-19 10:02:12.972744',NULL),(16,8,12.00,'EUR',NULL,'2019-04-19 10:02:13.007797','2019-04-19 10:02:13.007797',NULL),(17,9,16.99,'USD',NULL,'2019-04-19 10:02:13.031494','2019-04-19 10:02:13.031494',NULL),(18,9,14.00,'EUR',NULL,'2019-04-19 10:02:13.059140','2019-04-19 10:02:13.059140',NULL),(19,10,19.99,'USD',NULL,'2019-04-19 10:02:14.479346','2019-04-19 10:02:14.479346',NULL),(20,11,19.99,'USD',NULL,'2019-04-19 10:02:14.526834','2019-04-19 10:02:14.526834',NULL),(21,12,19.99,'USD',NULL,'2019-04-19 10:02:14.557972','2019-04-19 10:02:14.557972',NULL),(22,13,19.99,'USD',NULL,'2019-04-19 10:02:14.588008','2019-04-19 10:02:14.588008',NULL),(23,14,19.99,'USD',NULL,'2019-04-19 10:02:14.614949','2019-04-19 10:02:14.614949',NULL),(24,15,19.99,'USD',NULL,'2019-04-19 10:02:14.643893','2019-04-19 10:02:14.643893',NULL),(25,16,19.99,'USD',NULL,'2019-04-19 10:02:14.673160','2019-04-19 10:02:14.673160',NULL),(26,17,19.99,'USD',NULL,'2019-04-19 10:02:14.700611','2019-04-19 10:02:14.700611',NULL),(27,18,19.99,'USD',NULL,'2019-04-19 10:02:14.727900','2019-04-19 10:02:14.727900',NULL),(28,19,19.99,'USD',NULL,'2019-04-19 10:02:14.757680','2019-04-19 10:02:14.757680',NULL);
/*!40000 ALTER TABLE `spree_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_option_types`
--

DROP TABLE IF EXISTS `spree_product_option_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_option_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `option_type_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_product_option_types_on_option_type_id` (`option_type_id`),
  KEY `index_spree_product_option_types_on_position` (`position`),
  KEY `index_spree_product_option_types_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_option_types`
--

LOCK TABLES `spree_product_option_types` WRITE;
/*!40000 ALTER TABLE `spree_product_option_types` DISABLE KEYS */;
INSERT INTO `spree_product_option_types` VALUES (1,1,3,1,'2019-04-19 10:02:13.820394','2019-04-19 10:02:13.820394'),(2,2,3,2,'2019-04-19 10:02:13.823932','2019-04-19 10:02:13.823932');
/*!40000 ALTER TABLE `spree_product_option_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_promotion_rules`
--

DROP TABLE IF EXISTS `spree_product_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_promotion_rules_on_product_id` (`product_id`),
  KEY `index_products_promotion_rules_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_promotion_rules`
--

LOCK TABLES `spree_product_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_product_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_product_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_product_properties`
--

DROP TABLE IF EXISTS `spree_product_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_product_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_product_properties_on_position` (`position`),
  KEY `index_product_properties_on_product_id` (`product_id`),
  KEY `index_spree_product_properties_on_property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_product_properties`
--

LOCK TABLES `spree_product_properties` WRITE;
/*!40000 ALTER TABLE `spree_product_properties` DISABLE KEYS */;
INSERT INTO `spree_product_properties` VALUES (1,'Wilson',3,1,'2019-04-19 10:02:13.928073','2019-04-19 10:02:13.928073',1),(2,'Wannabe Sports',3,2,'2019-04-19 10:02:13.941516','2019-04-19 10:02:13.941516',2),(3,'JK1002',3,3,'2019-04-19 10:02:13.955951','2019-04-19 10:02:13.955951',3),(4,'Baseball Jersey',3,4,'2019-04-19 10:02:13.969508','2019-04-19 10:02:13.969508',4),(5,'Long',3,5,'2019-04-19 10:02:13.982844','2019-04-19 10:02:13.982844',5),(6,'100% cotton',3,6,'2019-04-19 10:02:13.997326','2019-04-19 10:02:13.997326',6),(7,'Loose',3,7,'2019-04-19 10:02:14.012714','2019-04-19 10:02:14.012714',7),(8,'Men\'s',3,8,'2019-04-19 10:02:14.026903','2019-04-19 10:02:14.026903',8),(9,'Jerseys',4,1,'2019-04-19 10:02:14.040753','2019-04-19 10:02:14.040753',1),(10,'Resiliance',4,2,'2019-04-19 10:02:14.054695','2019-04-19 10:02:14.054695',2),(11,'TL174',4,3,'2019-04-19 10:02:14.068629','2019-04-19 10:02:14.068629',3),(12,'Jr. Spaghetti T',4,4,'2019-04-19 10:02:14.082878','2019-04-19 10:02:14.082878',4),(13,'None',4,5,'2019-04-19 10:02:14.097002','2019-04-19 10:02:14.097002',5),(14,'90% Cotton, 10% Nylon',4,6,'2019-04-19 10:02:14.111295','2019-04-19 10:02:14.111295',6),(15,'Form',4,7,'2019-04-19 10:02:14.125759','2019-04-19 10:02:14.125759',7),(16,'Women\'s',4,8,'2019-04-19 10:02:14.140658','2019-04-19 10:02:14.140658',8),(17,'Jerseys',5,1,'2019-04-19 10:02:14.155969','2019-04-19 10:02:14.155969',1),(18,'Conditioned',5,2,'2019-04-19 10:02:14.171271','2019-04-19 10:02:14.171271',2),(19,'TL9002',5,3,'2019-04-19 10:02:14.184989','2019-04-19 10:02:14.184989',3),(20,'Ringer T',5,4,'2019-04-19 10:02:14.198760','2019-04-19 10:02:14.198760',4),(21,'Short',5,5,'2019-04-19 10:02:14.212019','2019-04-19 10:02:14.212019',5),(22,'100% Vellum',5,6,'2019-04-19 10:02:14.226498','2019-04-19 10:02:14.226498',6),(23,'Loose',5,7,'2019-04-19 10:02:14.240485','2019-04-19 10:02:14.240485',7),(24,'Men\'s',5,8,'2019-04-19 10:02:14.255209','2019-04-19 10:02:14.255209',8),(25,'Tote',1,9,'2019-04-19 10:02:14.273873','2019-04-19 10:02:14.273873',1),(26,'15\" x 18\" x 6\"',1,10,'2019-04-19 10:02:14.291378','2019-04-19 10:02:14.291378',2),(27,'Canvas',1,11,'2019-04-19 10:02:14.305054','2019-04-19 10:02:14.305054',3),(28,'Messenger',2,9,'2019-04-19 10:02:14.319294','2019-04-19 10:02:14.319294',1),(29,'14 1/2\" x 12\" x 5\"',2,10,'2019-04-19 10:02:14.345831','2019-04-19 10:02:14.345831',2),(30,'600 Denier Polyester',2,11,'2019-04-19 10:02:14.359942','2019-04-19 10:02:14.359942',3),(31,'Mug',8,9,'2019-04-19 10:02:14.372854','2019-04-19 10:02:14.372854',1),(32,'4.5\" tall, 3.25\" dia.',8,10,'2019-04-19 10:02:14.384506','2019-04-19 10:02:14.384506',2),(33,'Stein',9,9,'2019-04-19 10:02:14.397987','2019-04-19 10:02:14.397987',1),(34,'6.75\" tall, 3.75\" dia. base, 3\" dia. rim',9,10,'2019-04-19 10:02:14.410573','2019-04-19 10:02:14.410573',2);
/*!40000 ALTER TABLE `spree_product_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products`
--

DROP TABLE IF EXISTS `spree_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `available_on` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `promotionable` tinyint(1) DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_products_on_slug` (`slug`),
  KEY `index_spree_products_on_available_on` (`available_on`),
  KEY `index_spree_products_on_deleted_at` (`deleted_at`),
  KEY `index_spree_products_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products`
--

LOCK TABLES `spree_products` WRITE;
/*!40000 ALTER TABLE `spree_products` DISABLE KEYS */;
INSERT INTO `spree_products` VALUES (1,'Ruby on Rails Tote','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-tote',NULL,NULL,1,1,'2019-04-19 10:02:12.382640','2019-04-19 10:02:29.442106',1,NULL),(2,'Ruby on Rails Bag','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-bag',NULL,NULL,1,1,'2019-04-19 10:02:12.572738','2019-04-19 10:02:30.830984',1,NULL),(3,'Ruby on Rails Baseball Jersey','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-baseball-jersey',NULL,NULL,1,1,'2019-04-19 10:02:12.633358','2019-04-19 10:02:24.859495',1,NULL),(4,'Ruby on Rails Jr. Spaghetti','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-jr-spaghetti',NULL,NULL,1,1,'2019-04-19 10:02:12.687179','2019-04-19 10:02:25.233740',1,NULL),(5,'Ruby on Rails Ringer T-Shirt','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-ringer-t-shirt',NULL,NULL,1,1,'2019-04-19 10:02:12.740166','2019-04-19 10:02:26.689782',1,NULL),(6,'Ruby Baseball Jersey','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-baseball-jersey',NULL,NULL,1,1,'2019-04-19 10:02:12.813987','2019-04-19 10:02:28.358724',1,NULL),(7,'Apache Baseball Jersey','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'apache-baseball-jersey',NULL,NULL,1,1,'2019-04-19 10:02:12.887234','2019-04-19 10:02:27.874798',1,NULL),(8,'Ruby on Rails Mug','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-mug',NULL,NULL,NULL,1,'2019-04-19 10:02:12.966790','2019-04-19 10:02:25.969257',1,NULL),(9,'Ruby on Rails Stein','Soluta sed error debitis repellendus et. Voluptates unde enim qui velit. Libero earum tenetur nulla similique temporibus quod repellendus quibusdam.','2019-04-19 10:02:12',NULL,'ruby-on-rails-stein',NULL,NULL,NULL,1,'2019-04-19 10:02:13.027773','2019-04-19 10:02:27.404255',1,NULL);
/*!40000 ALTER TABLE `spree_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_products_taxons`
--

DROP TABLE IF EXISTS `spree_products_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_products_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_products_taxons_on_position` (`position`),
  KEY `index_spree_products_taxons_on_product_id` (`product_id`),
  KEY `index_spree_products_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_products_taxons`
--

LOCK TABLES `spree_products_taxons` WRITE;
/*!40000 ALTER TABLE `spree_products_taxons` DISABLE KEYS */;
INSERT INTO `spree_products_taxons` VALUES (1,1,3,1,'2019-04-19 10:02:13.208644','2019-04-19 10:02:13.208644'),(2,2,3,2,'2019-04-19 10:02:13.211873','2019-04-19 10:02:13.211873'),(3,8,4,1,'2019-04-19 10:02:13.259558','2019-04-19 10:02:13.259558'),(4,9,4,2,'2019-04-19 10:02:13.262311','2019-04-19 10:02:13.262311'),(5,4,6,1,'2019-04-19 10:02:13.316059','2019-04-19 10:02:13.316059'),(6,3,7,1,'2019-04-19 10:02:13.372699','2019-04-19 10:02:13.372699'),(7,5,7,2,'2019-04-19 10:02:13.376418','2019-04-19 10:02:13.376418'),(8,7,7,3,'2019-04-19 10:02:13.379534','2019-04-19 10:02:13.379534'),(9,6,7,4,'2019-04-19 10:02:13.383297','2019-04-19 10:02:13.383297'),(10,6,8,1,'2019-04-19 10:02:13.429314','2019-04-19 10:02:13.429314'),(11,7,9,1,'2019-04-19 10:02:13.458932','2019-04-19 10:02:13.458932'),(12,1,10,1,'2019-04-19 10:02:13.506737','2019-04-19 10:02:13.506737'),(13,2,10,2,'2019-04-19 10:02:13.509733','2019-04-19 10:02:13.509733'),(14,8,10,3,'2019-04-19 10:02:13.512483','2019-04-19 10:02:13.512483'),(15,9,10,4,'2019-04-19 10:02:13.515166','2019-04-19 10:02:13.515166'),(16,3,10,5,'2019-04-19 10:02:13.517931','2019-04-19 10:02:13.517931'),(17,4,10,6,'2019-04-19 10:02:13.520869','2019-04-19 10:02:13.520869'),(18,5,10,7,'2019-04-19 10:02:13.523877','2019-04-19 10:02:13.523877');
/*!40000 ALTER TABLE `spree_products_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_action_line_items`
--

DROP TABLE IF EXISTS `spree_promotion_action_line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_action_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_action_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_action_line_items_on_promotion_action_id` (`promotion_action_id`),
  KEY `index_spree_promotion_action_line_items_on_variant_id` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_action_line_items`
--

LOCK TABLES `spree_promotion_action_line_items` WRITE;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_action_line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_actions`
--

DROP TABLE IF EXISTS `spree_promotion_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `preferences` text,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_actions_on_deleted_at` (`deleted_at`),
  KEY `index_spree_promotion_actions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotion_actions_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_actions`
--

LOCK TABLES `spree_promotion_actions` WRITE;
/*!40000 ALTER TABLE `spree_promotion_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_categories`
--

DROP TABLE IF EXISTS `spree_promotion_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_categories`
--

LOCK TABLES `spree_promotion_categories` WRITE;
/*!40000 ALTER TABLE `spree_promotion_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_code_batches`
--

DROP TABLE IF EXISTS `spree_promotion_code_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_code_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) NOT NULL,
  `base_code` varchar(255) NOT NULL,
  `number_of_codes` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT 'pending',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `join_characters` varchar(255) NOT NULL DEFAULT '_',
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_code_batches_on_promotion_id` (`promotion_id`),
  CONSTRAINT `fk_rails_c217102f50` FOREIGN KEY (`promotion_id`) REFERENCES `spree_promotions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_code_batches`
--

LOCK TABLES `spree_promotion_code_batches` WRITE;
/*!40000 ALTER TABLE `spree_promotion_code_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_code_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_codes`
--

DROP TABLE IF EXISTS `spree_promotion_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `promotion_code_batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_promotion_codes_on_value` (`value`),
  KEY `index_spree_promotion_codes_on_promotion_id` (`promotion_id`),
  KEY `index_spree_promotion_codes_on_promotion_code_batch_id` (`promotion_code_batch_id`),
  CONSTRAINT `fk_rails_e306e312d9` FOREIGN KEY (`promotion_code_batch_id`) REFERENCES `spree_promotion_code_batches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_codes`
--

LOCK TABLES `spree_promotion_codes` WRITE;
/*!40000 ALTER TABLE `spree_promotion_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rule_taxons`
--

DROP TABLE IF EXISTS `spree_promotion_rule_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rule_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_rule_taxons_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_spree_promotion_rule_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rule_taxons`
--

LOCK TABLES `spree_promotion_rule_taxons` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rule_taxons` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rule_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules`
--

DROP TABLE IF EXISTS `spree_promotion_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `product_group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `preferences` text,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_on_product_group_id` (`product_group_id`),
  KEY `index_spree_promotion_rules_on_promotion_id` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules`
--

LOCK TABLES `spree_promotion_rules` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_stores`
--

DROP TABLE IF EXISTS `spree_promotion_rules_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_stores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL,
  `promotion_rule_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_promotion_rules_stores_on_store_id` (`store_id`),
  KEY `index_spree_promotion_rules_stores_on_promotion_rule_id` (`promotion_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_stores`
--

LOCK TABLES `spree_promotion_rules_stores` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotion_rules_users`
--

DROP TABLE IF EXISTS `spree_promotion_rules_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotion_rules_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `promotion_rule_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_promotion_rules_users_on_promotion_rule_id` (`promotion_rule_id`),
  KEY `index_promotion_rules_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotion_rules_users`
--

LOCK TABLES `spree_promotion_rules_users` WRITE;
/*!40000 ALTER TABLE `spree_promotion_rules_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotion_rules_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_promotions`
--

DROP TABLE IF EXISTS `spree_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `match_policy` varchar(255) DEFAULT 'all',
  `advertise` tinyint(1) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `promotion_category_id` int(11) DEFAULT NULL,
  `per_code_usage_limit` int(11) DEFAULT NULL,
  `apply_automatically` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_promotions_on_advertise` (`advertise`),
  KEY `index_spree_promotions_on_apply_automatically` (`apply_automatically`),
  KEY `index_spree_promotions_on_expires_at` (`expires_at`),
  KEY `index_spree_promotions_on_id_and_type` (`id`,`type`),
  KEY `index_spree_promotions_on_promotion_category_id` (`promotion_category_id`),
  KEY `index_spree_promotions_on_starts_at` (`starts_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_promotions`
--

LOCK TABLES `spree_promotions` WRITE;
/*!40000 ALTER TABLE `spree_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_properties`
--

DROP TABLE IF EXISTS `spree_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `presentation` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_properties`
--

LOCK TABLES `spree_properties` WRITE;
/*!40000 ALTER TABLE `spree_properties` DISABLE KEYS */;
INSERT INTO `spree_properties` VALUES (1,'Manufacturer','Manufacturer','2019-04-19 10:02:13.882324','2019-04-19 10:02:13.882324'),(2,'Brand','Brand','2019-04-19 10:02:13.938462','2019-04-19 10:02:13.938462'),(3,'Model','Model','2019-04-19 10:02:13.952704','2019-04-19 10:02:13.952704'),(4,'Shirt Type','Shirt Type','2019-04-19 10:02:13.966578','2019-04-19 10:02:13.966578'),(5,'Sleeve Type','Sleeve Type','2019-04-19 10:02:13.979957','2019-04-19 10:02:13.979957'),(6,'Made from','Made from','2019-04-19 10:02:13.994399','2019-04-19 10:02:13.994399'),(7,'Fit','Fit','2019-04-19 10:02:14.009242','2019-04-19 10:02:14.009242'),(8,'Gender','Gender','2019-04-19 10:02:14.023721','2019-04-19 10:02:14.023721'),(9,'Type','Type','2019-04-19 10:02:14.270022','2019-04-19 10:02:14.270022'),(10,'Size','Size','2019-04-19 10:02:14.287197','2019-04-19 10:02:14.287197'),(11,'Material','Material','2019-04-19 10:02:14.301275','2019-04-19 10:02:14.301275');
/*!40000 ALTER TABLE `spree_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_property_prototypes`
--

DROP TABLE IF EXISTS `spree_property_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_property_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prototype_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_property_prototypes`
--

LOCK TABLES `spree_property_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_property_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_property_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototype_taxons`
--

DROP TABLE IF EXISTS `spree_prototype_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototype_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxon_id` int(11) DEFAULT NULL,
  `prototype_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_prototype_taxons_on_prototype_id` (`prototype_id`),
  KEY `index_spree_prototype_taxons_on_taxon_id` (`taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototype_taxons`
--

LOCK TABLES `spree_prototype_taxons` WRITE;
/*!40000 ALTER TABLE `spree_prototype_taxons` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_prototype_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_prototypes`
--

DROP TABLE IF EXISTS `spree_prototypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_prototypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_prototypes`
--

LOCK TABLES `spree_prototypes` WRITE;
/*!40000 ALTER TABLE `spree_prototypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_prototypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_refund_reasons`
--

DROP TABLE IF EXISTS `spree_refund_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_refund_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_refund_reasons`
--

LOCK TABLES `spree_refund_reasons` WRITE;
/*!40000 ALTER TABLE `spree_refund_reasons` DISABLE KEYS */;
INSERT INTO `spree_refund_reasons` VALUES (1,'Return processing',1,0,'2019-04-19 09:59:54.264219','2019-04-19 09:59:54.264219',NULL);
/*!40000 ALTER TABLE `spree_refund_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_refunds`
--

DROP TABLE IF EXISTS `spree_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `refund_reason_id` int(11) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_refunds_on_payment_id` (`payment_id`),
  KEY `index_refunds_on_refund_reason_id` (`refund_reason_id`),
  KEY `index_spree_refunds_on_reimbursement_id` (`reimbursement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_refunds`
--

LOCK TABLES `spree_refunds` WRITE;
/*!40000 ALTER TABLE `spree_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursement_credits`
--

DROP TABLE IF EXISTS `spree_reimbursement_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursement_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reimbursement_id` int(11) DEFAULT NULL,
  `creditable_id` int(11) DEFAULT NULL,
  `creditable_type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursement_credits`
--

LOCK TABLES `spree_reimbursement_credits` WRITE;
/*!40000 ALTER TABLE `spree_reimbursement_credits` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_reimbursement_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursement_types`
--

DROP TABLE IF EXISTS `spree_reimbursement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursement_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_reimbursement_types_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursement_types`
--

LOCK TABLES `spree_reimbursement_types` WRITE;
/*!40000 ALTER TABLE `spree_reimbursement_types` DISABLE KEYS */;
INSERT INTO `spree_reimbursement_types` VALUES (1,'Store Credit',1,1,'2019-04-19 09:59:40.127436','2019-04-19 09:59:40.127436','Spree::ReimbursementType::StoreCredit');
/*!40000 ALTER TABLE `spree_reimbursement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_reimbursements`
--

DROP TABLE IF EXISTS `spree_reimbursements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_reimbursements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `reimbursement_status` varchar(255) DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_reimbursements_on_customer_return_id` (`customer_return_id`),
  KEY `index_spree_reimbursements_on_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_reimbursements`
--

LOCK TABLES `spree_reimbursements` WRITE;
/*!40000 ALTER TABLE `spree_reimbursements` DISABLE KEYS */;
INSERT INTO `spree_reimbursements` VALUES (1,'RI626271830','pending',1,2,0.00,'2019-04-19 10:02:31.599547','2019-04-19 10:02:31.599547');
/*!40000 ALTER TABLE `spree_reimbursements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_authorizations`
--

DROP TABLE IF EXISTS `spree_return_authorizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_authorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `memo` text,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `return_reason_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_return_authorizations_on_return_authorization_reason_id` (`return_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_authorizations`
--

LOCK TABLES `spree_return_authorizations` WRITE;
/*!40000 ALTER TABLE `spree_return_authorizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_return_authorizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_items`
--

DROP TABLE IF EXISTS `spree_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_authorization_id` int(11) DEFAULT NULL,
  `inventory_unit_id` int(11) DEFAULT NULL,
  `exchange_variant_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `amount` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `included_tax_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `additional_tax_total` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `reception_status` varchar(255) DEFAULT NULL,
  `acceptance_status` varchar(255) DEFAULT NULL,
  `customer_return_id` int(11) DEFAULT NULL,
  `reimbursement_id` int(11) DEFAULT NULL,
  `exchange_inventory_unit_id` int(11) DEFAULT NULL,
  `acceptance_status_errors` text,
  `preferred_reimbursement_type_id` int(11) DEFAULT NULL,
  `override_reimbursement_type_id` int(11) DEFAULT NULL,
  `resellable` tinyint(1) NOT NULL DEFAULT '1',
  `return_reason_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_return_items_on_customer_return_id` (`customer_return_id`),
  KEY `index_spree_return_items_on_exchange_inventory_unit_id` (`exchange_inventory_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_items`
--

LOCK TABLES `spree_return_items` WRITE;
/*!40000 ALTER TABLE `spree_return_items` DISABLE KEYS */;
INSERT INTO `spree_return_items` VALUES (1,NULL,2,2,'2019-04-19 10:02:31.525149','2019-04-19 10:02:31.602852',0.0000,0.0000,0.0000,'awaiting','accepted',1,1,NULL,'--- {}\n',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `spree_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_return_reasons`
--

DROP TABLE IF EXISTS `spree_return_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_return_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mutable` tinyint(1) DEFAULT '1',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_return_reasons`
--

LOCK TABLES `spree_return_reasons` WRITE;
/*!40000 ALTER TABLE `spree_return_reasons` DISABLE KEYS */;
INSERT INTO `spree_return_reasons` VALUES (1,'Better price available',1,1,'2019-04-19 09:59:41.683227','2019-04-19 09:59:41.683227'),(2,'Missed estimated delivery date',1,1,'2019-04-19 09:59:41.687610','2019-04-19 09:59:41.687610'),(3,'Missing parts or accessories',1,1,'2019-04-19 09:59:41.691112','2019-04-19 09:59:41.691112'),(4,'Damaged/Defective',1,1,'2019-04-19 09:59:41.694816','2019-04-19 09:59:41.694816'),(5,'Different from what was ordered',1,1,'2019-04-19 09:59:41.697725','2019-04-19 09:59:41.697725'),(6,'Different from description',1,1,'2019-04-19 09:59:41.700514','2019-04-19 09:59:41.700514'),(7,'No longer needed/wanted',1,1,'2019-04-19 09:59:41.703530','2019-04-19 09:59:41.703530'),(8,'Accidental order',1,1,'2019-04-19 09:59:41.706876','2019-04-19 09:59:41.706876'),(9,'Unauthorized purchase',1,1,'2019-04-19 09:59:41.710487','2019-04-19 09:59:41.710487');
/*!40000 ALTER TABLE `spree_return_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles`
--

DROP TABLE IF EXISTS `spree_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_roles_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles`
--

LOCK TABLES `spree_roles` WRITE;
/*!40000 ALTER TABLE `spree_roles` DISABLE KEYS */;
INSERT INTO `spree_roles` VALUES (1,'admin','2019-04-19 09:59:54.303249','2019-04-19 09:59:54.303249');
/*!40000 ALTER TABLE `spree_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_roles_users`
--

DROP TABLE IF EXISTS `spree_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`),
  KEY `index_spree_roles_users_on_role_id` (`role_id`),
  KEY `index_spree_roles_users_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_roles_users`
--

LOCK TABLES `spree_roles_users` WRITE;
/*!40000 ALTER TABLE `spree_roles_users` DISABLE KEYS */;
INSERT INTO `spree_roles_users` VALUES (1,1,1,'2019-04-19 10:02:07.760888','2019-04-19 10:02:07.760888');
/*!40000 ALTER TABLE `spree_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipments`
--

DROP TABLE IF EXISTS `spree_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT '0.00',
  `shipped_at` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `deprecated_address_id` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `adjustment_total` decimal(10,2) DEFAULT '0.00',
  `additional_tax_total` decimal(10,2) DEFAULT '0.00',
  `promo_total` decimal(10,2) DEFAULT '0.00',
  `included_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `index_spree_shipments_on_deprecated_address_id` (`deprecated_address_id`),
  KEY `index_shipments_on_number` (`number`),
  KEY `index_spree_shipments_on_order_id` (`order_id`),
  KEY `index_spree_shipments_on_stock_location_id` (`stock_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipments`
--

LOCK TABLES `spree_shipments` WRITE;
/*!40000 ALTER TABLE `spree_shipments` DISABLE KEYS */;
INSERT INTO `spree_shipments` VALUES (1,NULL,'H73228827826',5.00,NULL,1,NULL,'pending','2019-04-19 10:02:29.007419','2019-04-19 10:02:29.358491',1,0.25,0.25,0.00,0.00),(2,NULL,'H84210838453',5.00,NULL,2,NULL,'pending','2019-04-19 10:02:30.677248','2019-04-19 10:02:30.812586',1,0.25,0.25,0.00,0.00);
/*!40000 ALTER TABLE `spree_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_categories`
--

DROP TABLE IF EXISTS `spree_shipping_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_categories`
--

LOCK TABLES `spree_shipping_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_categories` VALUES (1,'Default','2019-04-19 09:59:54.339766','2019-04-19 09:59:54.339766');
/*!40000 ALTER TABLE `spree_shipping_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_categories`
--

DROP TABLE IF EXISTS `spree_shipping_method_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_category_id` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_spree_shipping_method_categories` (`shipping_category_id`,`shipping_method_id`),
  KEY `index_spree_shipping_method_categories_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_categories`
--

LOCK TABLES `spree_shipping_method_categories` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_categories` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_categories` VALUES (1,1,1,'2019-04-19 10:02:12.021179','2019-04-19 10:02:12.021179'),(2,2,1,'2019-04-19 10:02:12.034771','2019-04-19 10:02:12.034771'),(3,3,1,'2019-04-19 10:02:12.044913','2019-04-19 10:02:12.044913'),(4,4,1,'2019-04-19 10:02:12.055247','2019-04-19 10:02:12.055247'),(5,5,1,'2019-04-19 10:02:12.066915','2019-04-19 10:02:12.066915');
/*!40000 ALTER TABLE `spree_shipping_method_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_stock_locations`
--

DROP TABLE IF EXISTS `spree_shipping_method_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shipping_method_id_spree_sm_sl` (`shipping_method_id`),
  KEY `sstock_location_id_spree_sm_sl` (`stock_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_stock_locations`
--

LOCK TABLES `spree_shipping_method_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_stock_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_shipping_method_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_method_zones`
--

DROP TABLE IF EXISTS `spree_shipping_method_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_method_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_method_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_method_zones`
--

LOCK TABLES `spree_shipping_method_zones` WRITE;
/*!40000 ALTER TABLE `spree_shipping_method_zones` DISABLE KEYS */;
INSERT INTO `spree_shipping_method_zones` VALUES (1,1,2,'2019-04-19 10:02:12.023473','2019-04-19 10:02:12.023473'),(2,2,2,'2019-04-19 10:02:12.035933','2019-04-19 10:02:12.035933'),(3,3,2,'2019-04-19 10:02:12.046093','2019-04-19 10:02:12.046093'),(4,4,1,'2019-04-19 10:02:12.056766','2019-04-19 10:02:12.056766'),(5,5,1,'2019-04-19 10:02:12.068597','2019-04-19 10:02:12.068597');
/*!40000 ALTER TABLE `spree_shipping_method_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_methods`
--

DROP TABLE IF EXISTS `spree_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `tracking_url` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `available_to_all` tinyint(1) DEFAULT '1',
  `carrier` varchar(255) DEFAULT NULL,
  `service_level` varchar(255) DEFAULT NULL,
  `available_to_users` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_methods_on_tax_category_id` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_methods`
--

LOCK TABLES `spree_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_shipping_methods` DISABLE KEYS */;
INSERT INTO `spree_shipping_methods` VALUES (1,'UPS Ground (USD)',NULL,'2019-04-19 10:02:12.016952','2019-04-19 10:02:12.016952',NULL,NULL,1,NULL,1,NULL,NULL,1),(2,'UPS Two Day (USD)',NULL,'2019-04-19 10:02:12.030090','2019-04-19 10:02:12.030090',NULL,NULL,1,NULL,1,NULL,NULL,1),(3,'UPS One Day (USD)',NULL,'2019-04-19 10:02:12.041995','2019-04-19 10:02:12.041995',NULL,NULL,1,NULL,1,NULL,NULL,1),(4,'UPS Ground (EU)',NULL,'2019-04-19 10:02:12.051631','2019-04-19 10:02:12.051631',NULL,NULL,1,NULL,1,NULL,NULL,1),(5,'UPS Ground (EUR)',NULL,'2019-04-19 10:02:12.062980','2019-04-19 10:02:12.062980',NULL,NULL,1,NULL,1,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rate_taxes`
--

DROP TABLE IF EXISTS `spree_shipping_rate_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rate_taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax_rate_id` int(11) DEFAULT NULL,
  `shipping_rate_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_shipping_rate_taxes_on_shipping_rate_id` (`shipping_rate_id`),
  KEY `index_spree_shipping_rate_taxes_on_tax_rate_id` (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rate_taxes`
--

LOCK TABLES `spree_shipping_rate_taxes` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rate_taxes` DISABLE KEYS */;
INSERT INTO `spree_shipping_rate_taxes` VALUES (1,0.25,1,1,'2019-04-19 10:02:29.013233','2019-04-19 10:02:29.013233'),(2,0.50,1,2,'2019-04-19 10:02:29.016314','2019-04-19 10:02:29.016314'),(3,0.75,1,3,'2019-04-19 10:02:29.018844','2019-04-19 10:02:29.018844'),(4,0.25,1,4,'2019-04-19 10:02:30.682029','2019-04-19 10:02:30.682029'),(5,0.50,1,5,'2019-04-19 10:02:30.684818','2019-04-19 10:02:30.684818'),(6,0.75,1,6,'2019-04-19 10:02:30.687442','2019-04-19 10:02:30.687442');
/*!40000 ALTER TABLE `spree_shipping_rate_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_shipping_rates`
--

DROP TABLE IF EXISTS `spree_shipping_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) DEFAULT NULL,
  `shipping_method_id` int(11) DEFAULT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `cost` decimal(8,2) DEFAULT '0.00',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `tax_rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `spree_shipping_rates_join_index` (`shipment_id`,`shipping_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_shipping_rates`
--

LOCK TABLES `spree_shipping_rates` WRITE;
/*!40000 ALTER TABLE `spree_shipping_rates` DISABLE KEYS */;
INSERT INTO `spree_shipping_rates` VALUES (1,1,1,1,5.00,'2019-04-19 10:02:29.011357','2019-04-19 10:02:29.011357',NULL),(2,1,2,0,10.00,'2019-04-19 10:02:29.014707','2019-04-19 10:02:29.014707',NULL),(3,1,3,0,15.00,'2019-04-19 10:02:29.017423','2019-04-19 10:02:29.017423',NULL),(4,2,1,1,5.00,'2019-04-19 10:02:30.680499','2019-04-19 10:02:30.680499',NULL),(5,2,2,0,10.00,'2019-04-19 10:02:30.683319','2019-04-19 10:02:30.683319',NULL),(6,2,3,0,15.00,'2019-04-19 10:02:30.685873','2019-04-19 10:02:30.685873',NULL);
/*!40000 ALTER TABLE `spree_shipping_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_state_changes`
--

DROP TABLE IF EXISTS `spree_state_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_state_changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `previous_state` varchar(255) DEFAULT NULL,
  `stateful_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stateful_type` varchar(255) DEFAULT NULL,
  `next_state` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_state_changes_on_stateful_id_and_stateful_type` (`stateful_id`,`stateful_type`),
  KEY `index_spree_state_changes_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_state_changes`
--

LOCK TABLES `spree_state_changes` WRITE;
/*!40000 ALTER TABLE `spree_state_changes` DISABLE KEYS */;
INSERT INTO `spree_state_changes` VALUES (1,'order','cart',1,NULL,'Spree::Order','address','2019-04-19 10:02:28.718359','2019-04-19 10:02:28.718359'),(2,'order','address',1,NULL,'Spree::Order','delivery','2019-04-19 10:02:29.035862','2019-04-19 10:02:29.035862'),(3,'order','delivery',1,NULL,'Spree::Order','payment','2019-04-19 10:02:29.253534','2019-04-19 10:02:29.253534'),(4,'order','payment',1,NULL,'Spree::Order','confirm','2019-04-19 10:02:29.276353','2019-04-19 10:02:29.276353'),(5,'order','confirm',1,NULL,'Spree::Order','complete','2019-04-19 10:02:29.321566','2019-04-19 10:02:29.321566'),(6,'payment',NULL,1,NULL,'Spree::Order','balance_due','2019-04-19 10:02:29.481652','2019-04-19 10:02:29.481652'),(7,'shipment',NULL,1,NULL,'Spree::Order','pending','2019-04-19 10:02:29.482881','2019-04-19 10:02:29.482881'),(8,'order','cart',2,NULL,'Spree::Order','address','2019-04-19 10:02:29.936756','2019-04-19 10:02:29.936756'),(9,'order','address',2,NULL,'Spree::Order','delivery','2019-04-19 10:02:30.704081','2019-04-19 10:02:30.704081'),(10,'order','delivery',2,NULL,'Spree::Order','payment','2019-04-19 10:02:30.755324','2019-04-19 10:02:30.755324'),(11,'order','payment',2,NULL,'Spree::Order','confirm','2019-04-19 10:02:30.776731','2019-04-19 10:02:30.776731'),(12,'order','confirm',2,NULL,'Spree::Order','complete','2019-04-19 10:02:30.795267','2019-04-19 10:02:30.795267'),(13,'payment',NULL,2,NULL,'Spree::Order','balance_due','2019-04-19 10:02:30.842788','2019-04-19 10:02:30.842788'),(14,'shipment',NULL,2,NULL,'Spree::Order','pending','2019-04-19 10:02:30.843812','2019-04-19 10:02:30.843812'),(15,'payment','checkout',1,NULL,'Spree::Payment','invalid','2019-04-19 10:02:31.368741','2019-04-19 10:02:31.368741'),(16,'payment','checkout',2,NULL,'Spree::Payment','invalid','2019-04-19 10:02:31.434959','2019-04-19 10:02:31.434959');
/*!40000 ALTER TABLE `spree_state_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_states`
--

DROP TABLE IF EXISTS `spree_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `abbr` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_states_on_country_id` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3603 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_states`
--

LOCK TABLES `spree_states` WRITE;
/*!40000 ALTER TABLE `spree_states` DISABLE KEYS */;
INSERT INTO `spree_states` VALUES (1,'Canillo','02',1,'2019-04-19 09:59:41.791196','2019-04-19 09:59:41.791196'),(2,'Encamp','03',1,'2019-04-19 09:59:41.794504','2019-04-19 09:59:41.794504'),(3,'La Massana','04',1,'2019-04-19 09:59:41.797489','2019-04-19 09:59:41.797489'),(4,'Ordino','05',1,'2019-04-19 09:59:41.800078','2019-04-19 09:59:41.800078'),(5,'Sant Julià de Lòria','06',1,'2019-04-19 09:59:41.802574','2019-04-19 09:59:41.802574'),(6,'Andorra la Vella','07',1,'2019-04-19 09:59:41.805639','2019-04-19 09:59:41.805639'),(7,'Escaldes-Engordany','08',1,'2019-04-19 09:59:41.808303','2019-04-19 09:59:41.808303'),(8,'\'Ajmān','AJ',2,'2019-04-19 09:59:41.810628','2019-04-19 09:59:41.810628'),(9,'Abū Ȥaby [Abu Dhabi]','AZ',2,'2019-04-19 09:59:41.813364','2019-04-19 09:59:41.813364'),(10,'Dubayy','DU',2,'2019-04-19 09:59:41.815929','2019-04-19 09:59:41.815929'),(11,'Al Fujayrah','FU',2,'2019-04-19 09:59:41.818197','2019-04-19 09:59:41.818197'),(12,'Ra’s al Khaymah','RK',2,'2019-04-19 09:59:41.820783','2019-04-19 09:59:41.820783'),(13,'Ash Shāriqah','SH',2,'2019-04-19 09:59:41.823990','2019-04-19 09:59:41.823990'),(14,'Umm al Qaywayn','UQ',2,'2019-04-19 09:59:41.827618','2019-04-19 09:59:41.827618'),(15,'Balkh','BAL',3,'2019-04-19 09:59:41.830667','2019-04-19 09:59:41.830667'),(16,'Bāmyān','BAM',3,'2019-04-19 09:59:41.833408','2019-04-19 09:59:41.833408'),(17,'Bādghīs','BDG',3,'2019-04-19 09:59:41.836036','2019-04-19 09:59:41.836036'),(18,'Badakhshān','BDS',3,'2019-04-19 09:59:41.838788','2019-04-19 09:59:41.838788'),(19,'Baghlān','BGL',3,'2019-04-19 09:59:41.841749','2019-04-19 09:59:41.841749'),(20,'Dāykundī','DAY',3,'2019-04-19 09:59:41.844251','2019-04-19 09:59:41.844251'),(21,'Farāh','FRA',3,'2019-04-19 09:59:41.846631','2019-04-19 09:59:41.846631'),(22,'Fāryāb','FYB',3,'2019-04-19 09:59:41.848830','2019-04-19 09:59:41.848830'),(23,'Ghaznī','GHA',3,'2019-04-19 09:59:41.851765','2019-04-19 09:59:41.851765'),(24,'Ghōr','GHO',3,'2019-04-19 09:59:41.855426','2019-04-19 09:59:41.855426'),(25,'Helmand','HEL',3,'2019-04-19 09:59:41.858428','2019-04-19 09:59:41.858428'),(26,'Herāt','HER',3,'2019-04-19 09:59:41.861030','2019-04-19 09:59:41.861030'),(27,'Jowzjān','JOW',3,'2019-04-19 09:59:41.863460','2019-04-19 09:59:41.863460'),(28,'Kābul','KAB',3,'2019-04-19 09:59:41.865987','2019-04-19 09:59:41.865987'),(29,'Kandahār','KAN',3,'2019-04-19 09:59:41.868764','2019-04-19 09:59:41.868764'),(30,'Kāpīsā','KAP',3,'2019-04-19 09:59:41.871258','2019-04-19 09:59:41.871258'),(31,'Kunduz','KDZ',3,'2019-04-19 09:59:41.874226','2019-04-19 09:59:41.874226'),(32,'Khōst','KHO',3,'2019-04-19 09:59:41.876821','2019-04-19 09:59:41.876821'),(33,'Kunar','KNR',3,'2019-04-19 09:59:41.879094','2019-04-19 09:59:41.879094'),(34,'Laghmān','LAG',3,'2019-04-19 09:59:41.881596','2019-04-19 09:59:41.881596'),(35,'Lōgar','LOG',3,'2019-04-19 09:59:41.884048','2019-04-19 09:59:41.884048'),(36,'Nangarhār','NAN',3,'2019-04-19 09:59:41.886637','2019-04-19 09:59:41.886637'),(37,'Nīmrōz','NIM',3,'2019-04-19 09:59:41.889348','2019-04-19 09:59:41.889348'),(38,'Nūristān','NUR',3,'2019-04-19 09:59:41.892779','2019-04-19 09:59:41.892779'),(39,'Panjshayr','PAN',3,'2019-04-19 09:59:41.895396','2019-04-19 09:59:41.895396'),(40,'Parwān','PAR',3,'2019-04-19 09:59:41.897813','2019-04-19 09:59:41.897813'),(41,'Paktiyā','PIA',3,'2019-04-19 09:59:41.900344','2019-04-19 09:59:41.900344'),(42,'Paktīkā','PKA',3,'2019-04-19 09:59:41.902812','2019-04-19 09:59:41.902812'),(43,'Samangān','SAM',3,'2019-04-19 09:59:41.905500','2019-04-19 09:59:41.905500'),(44,'Sar-e Pul','SAR',3,'2019-04-19 09:59:41.908295','2019-04-19 09:59:41.908295'),(45,'Takhār','TAK',3,'2019-04-19 09:59:41.910709','2019-04-19 09:59:41.910709'),(46,'Uruzgān','URU',3,'2019-04-19 09:59:41.913121','2019-04-19 09:59:41.913121'),(47,'Wardak','WAR',3,'2019-04-19 09:59:41.915548','2019-04-19 09:59:41.915548'),(48,'Zābul','ZAB',3,'2019-04-19 09:59:41.918259','2019-04-19 09:59:41.918259'),(49,'Saint George','03',4,'2019-04-19 09:59:41.920973','2019-04-19 09:59:41.920973'),(50,'Saint John','04',4,'2019-04-19 09:59:41.923837','2019-04-19 09:59:41.923837'),(51,'Saint Mary','05',4,'2019-04-19 09:59:41.926523','2019-04-19 09:59:41.926523'),(52,'Saint Paul','06',4,'2019-04-19 09:59:41.929062','2019-04-19 09:59:41.929062'),(53,'Saint Peter','07',4,'2019-04-19 09:59:41.931487','2019-04-19 09:59:41.931487'),(54,'Saint Philip','08',4,'2019-04-19 09:59:41.933976','2019-04-19 09:59:41.933976'),(55,'Barbuda','10',4,'2019-04-19 09:59:41.936292','2019-04-19 09:59:41.936292'),(56,'Redonda','11',4,'2019-04-19 09:59:41.938685','2019-04-19 09:59:41.938685'),(57,'Berat','01',6,'2019-04-19 09:59:41.941450','2019-04-19 09:59:41.941450'),(58,'Durrës','02',6,'2019-04-19 09:59:41.943972','2019-04-19 09:59:41.943972'),(59,'Elbasan','03',6,'2019-04-19 09:59:41.946526','2019-04-19 09:59:41.946526'),(60,'Fier','04',6,'2019-04-19 09:59:41.948916','2019-04-19 09:59:41.948916'),(61,'Gjirokastër','05',6,'2019-04-19 09:59:41.951247','2019-04-19 09:59:41.951247'),(62,'Korçë','06',6,'2019-04-19 09:59:41.953540','2019-04-19 09:59:41.953540'),(63,'Kukës','07',6,'2019-04-19 09:59:41.956501','2019-04-19 09:59:41.956501'),(64,'Lezhë','08',6,'2019-04-19 09:59:41.959920','2019-04-19 09:59:41.959920'),(65,'Dibër','09',6,'2019-04-19 09:59:41.962680','2019-04-19 09:59:41.962680'),(66,'Shkodër','10',6,'2019-04-19 09:59:41.965417','2019-04-19 09:59:41.965417'),(67,'Tiranë','11',6,'2019-04-19 09:59:41.967990','2019-04-19 09:59:41.967990'),(68,'Vlorë','12',6,'2019-04-19 09:59:41.970612','2019-04-19 09:59:41.970612'),(69,'Aragacotn','AG',7,'2019-04-19 09:59:41.974180','2019-04-19 09:59:41.974180'),(70,'Ararat','AR',7,'2019-04-19 09:59:41.976894','2019-04-19 09:59:41.976894'),(71,'Armavir','AV',7,'2019-04-19 09:59:41.979430','2019-04-19 09:59:41.979430'),(72,'Erevan','ER',7,'2019-04-19 09:59:41.982010','2019-04-19 09:59:41.982010'),(73,'Gegarkunik\'','GR',7,'2019-04-19 09:59:41.984613','2019-04-19 09:59:41.984613'),(74,'Kotayk\'','KT',7,'2019-04-19 09:59:41.987272','2019-04-19 09:59:41.987272'),(75,'Lory','LO',7,'2019-04-19 09:59:41.990344','2019-04-19 09:59:41.990344'),(76,'Sirak','SH',7,'2019-04-19 09:59:41.993217','2019-04-19 09:59:41.993217'),(77,'Syunik\'','SU',7,'2019-04-19 09:59:41.995799','2019-04-19 09:59:41.995799'),(78,'Tavus','TV',7,'2019-04-19 09:59:41.998807','2019-04-19 09:59:41.998807'),(79,'Vayoc Jor','VD',7,'2019-04-19 09:59:42.001826','2019-04-19 09:59:42.001826'),(80,'Bengo','BGO',8,'2019-04-19 09:59:42.005273','2019-04-19 09:59:42.005273'),(81,'Benguela','BGU',8,'2019-04-19 09:59:42.008517','2019-04-19 09:59:42.008517'),(82,'Bié','BIE',8,'2019-04-19 09:59:42.010974','2019-04-19 09:59:42.010974'),(83,'Cabinda','CAB',8,'2019-04-19 09:59:42.013966','2019-04-19 09:59:42.013966'),(84,'Cuando-Cubango','CCU',8,'2019-04-19 09:59:42.016558','2019-04-19 09:59:42.016558'),(85,'Cunene','CNN',8,'2019-04-19 09:59:42.018934','2019-04-19 09:59:42.018934'),(86,'Cuanza Norte','CNO',8,'2019-04-19 09:59:42.021650','2019-04-19 09:59:42.021650'),(87,'Cuanza Sul','CUS',8,'2019-04-19 09:59:42.025350','2019-04-19 09:59:42.025350'),(88,'Huambo','HUA',8,'2019-04-19 09:59:42.028126','2019-04-19 09:59:42.028126'),(89,'Huíla','HUI',8,'2019-04-19 09:59:42.030986','2019-04-19 09:59:42.030986'),(90,'Lunda Norte','LNO',8,'2019-04-19 09:59:42.033453','2019-04-19 09:59:42.033453'),(91,'Lunda Sul','LSU',8,'2019-04-19 09:59:42.035891','2019-04-19 09:59:42.035891'),(92,'Luanda','LUA',8,'2019-04-19 09:59:42.039172','2019-04-19 09:59:42.039172'),(93,'Malange','MAL',8,'2019-04-19 09:59:42.041927','2019-04-19 09:59:42.041927'),(94,'Moxico','MOX',8,'2019-04-19 09:59:42.044571','2019-04-19 09:59:42.044571'),(95,'Namibe','NAM',8,'2019-04-19 09:59:42.047690','2019-04-19 09:59:42.047690'),(96,'Uíge','UIG',8,'2019-04-19 09:59:42.050360','2019-04-19 09:59:42.050360'),(97,'Zaire','ZAI',8,'2019-04-19 09:59:42.052896','2019-04-19 09:59:42.052896'),(98,'Salta','A',10,'2019-04-19 09:59:42.056385','2019-04-19 09:59:42.056385'),(99,'Buenos Aires','B',10,'2019-04-19 09:59:42.059472','2019-04-19 09:59:42.059472'),(100,'Ciudad Autónoma de Buenos Aires','C',10,'2019-04-19 09:59:42.062521','2019-04-19 09:59:42.062521'),(101,'San Luis','D',10,'2019-04-19 09:59:42.065002','2019-04-19 09:59:42.065002'),(102,'Entre Rios','E',10,'2019-04-19 09:59:42.067341','2019-04-19 09:59:42.067341'),(103,'Santiago del Estero','G',10,'2019-04-19 09:59:42.070060','2019-04-19 09:59:42.070060'),(104,'Chaco','H',10,'2019-04-19 09:59:42.072917','2019-04-19 09:59:42.072917'),(105,'San Juan','J',10,'2019-04-19 09:59:42.076905','2019-04-19 09:59:42.076905'),(106,'Catamarca','K',10,'2019-04-19 09:59:42.080244','2019-04-19 09:59:42.080244'),(107,'La Pampa','L',10,'2019-04-19 09:59:42.082618','2019-04-19 09:59:42.082618'),(108,'Mendoza','M',10,'2019-04-19 09:59:42.085032','2019-04-19 09:59:42.085032'),(109,'Misiones','N',10,'2019-04-19 09:59:42.087852','2019-04-19 09:59:42.087852'),(110,'Formosa','P',10,'2019-04-19 09:59:42.091160','2019-04-19 09:59:42.091160'),(111,'Neuquen','Q',10,'2019-04-19 09:59:42.093979','2019-04-19 09:59:42.093979'),(112,'Rio Negro','R',10,'2019-04-19 09:59:42.096383','2019-04-19 09:59:42.096383'),(113,'Santa Fe','S',10,'2019-04-19 09:59:42.098699','2019-04-19 09:59:42.098699'),(114,'Tucuman','T',10,'2019-04-19 09:59:42.101104','2019-04-19 09:59:42.101104'),(115,'Chubut','U',10,'2019-04-19 09:59:42.104222','2019-04-19 09:59:42.104222'),(116,'Tierra del Fuego','V',10,'2019-04-19 09:59:42.107368','2019-04-19 09:59:42.107368'),(117,'Corrientes','W',10,'2019-04-19 09:59:42.110495','2019-04-19 09:59:42.110495'),(118,'Cordoba','X',10,'2019-04-19 09:59:42.113559','2019-04-19 09:59:42.113559'),(119,'Jujuy','Y',10,'2019-04-19 09:59:42.116368','2019-04-19 09:59:42.116368'),(120,'Santa Cruz','Z',10,'2019-04-19 09:59:42.119646','2019-04-19 09:59:42.119646'),(121,'La Rioja','F',10,'2019-04-19 09:59:42.122478','2019-04-19 09:59:42.122478'),(122,'Burgenland','1',12,'2019-04-19 09:59:42.125836','2019-04-19 09:59:42.125836'),(123,'Kärnten','2',12,'2019-04-19 09:59:42.128550','2019-04-19 09:59:42.128550'),(124,'Niederösterreich','3',12,'2019-04-19 09:59:42.130943','2019-04-19 09:59:42.130943'),(125,'Oberösterreich','4',12,'2019-04-19 09:59:42.133537','2019-04-19 09:59:42.133537'),(126,'Salzburg','5',12,'2019-04-19 09:59:42.136314','2019-04-19 09:59:42.136314'),(127,'Steiermark','6',12,'2019-04-19 09:59:42.139005','2019-04-19 09:59:42.139005'),(128,'Tirol','7',12,'2019-04-19 09:59:42.142563','2019-04-19 09:59:42.142563'),(129,'Vorarlberg','8',12,'2019-04-19 09:59:42.145198','2019-04-19 09:59:42.145198'),(130,'Wien','9',12,'2019-04-19 09:59:42.147512','2019-04-19 09:59:42.147512'),(131,'Australian Capital Territory','ACT',13,'2019-04-19 09:59:42.150448','2019-04-19 09:59:42.150448'),(132,'New South Wales','NSW',13,'2019-04-19 09:59:42.153022','2019-04-19 09:59:42.153022'),(133,'Northern Territory','NT',13,'2019-04-19 09:59:42.155830','2019-04-19 09:59:42.155830'),(134,'Queensland','QLD',13,'2019-04-19 09:59:42.159447','2019-04-19 09:59:42.159447'),(135,'South Australia','SA',13,'2019-04-19 09:59:42.162162','2019-04-19 09:59:42.162162'),(136,'Tasmania','TAS',13,'2019-04-19 09:59:42.164958','2019-04-19 09:59:42.164958'),(137,'Victoria','VIC',13,'2019-04-19 09:59:42.168219','2019-04-19 09:59:42.168219'),(138,'Western Australia','WA',13,'2019-04-19 09:59:42.170941','2019-04-19 09:59:42.170941'),(139,'Abşeron','ABS',16,'2019-04-19 09:59:42.174331','2019-04-19 09:59:42.174331'),(140,'Ağstafa','AGA',16,'2019-04-19 09:59:42.176976','2019-04-19 09:59:42.176976'),(141,'Ağcabədi','AGC',16,'2019-04-19 09:59:42.179325','2019-04-19 09:59:42.179325'),(142,'Ağdam','AGM',16,'2019-04-19 09:59:42.181928','2019-04-19 09:59:42.181928'),(143,'Ağdaş','AGS',16,'2019-04-19 09:59:42.184815','2019-04-19 09:59:42.184815'),(144,'Ağsu','AGU',16,'2019-04-19 09:59:42.187855','2019-04-19 09:59:42.187855'),(145,'Astara','AST',16,'2019-04-19 09:59:42.191518','2019-04-19 09:59:42.191518'),(146,'Bakı','BA',16,'2019-04-19 09:59:42.198396','2019-04-19 09:59:42.198396'),(147,'Balakən','BAL',16,'2019-04-19 09:59:42.201349','2019-04-19 09:59:42.201349'),(148,'Bərdə','BAR',16,'2019-04-19 09:59:42.203907','2019-04-19 09:59:42.203907'),(149,'Beyləqan','BEY',16,'2019-04-19 09:59:42.206953','2019-04-19 09:59:42.206953'),(150,'Biləsuvar','BIL',16,'2019-04-19 09:59:42.209588','2019-04-19 09:59:42.209588'),(151,'Cəbrayıl','CAB',16,'2019-04-19 09:59:42.211979','2019-04-19 09:59:42.211979'),(152,'Cəlilabab','CAL',16,'2019-04-19 09:59:42.214772','2019-04-19 09:59:42.214772'),(153,'Daşkəsən','DAS',16,'2019-04-19 09:59:42.217292','2019-04-19 09:59:42.217292'),(154,'Füzuli','FUZ',16,'2019-04-19 09:59:42.219859','2019-04-19 09:59:42.219859'),(155,'Gəncə','GA',16,'2019-04-19 09:59:42.223416','2019-04-19 09:59:42.223416'),(156,'Gədəbəy','GAD',16,'2019-04-19 09:59:42.226339','2019-04-19 09:59:42.226339'),(157,'Goranboy','GOR',16,'2019-04-19 09:59:42.229073','2019-04-19 09:59:42.229073'),(158,'Göyçay','GOY',16,'2019-04-19 09:59:42.232291','2019-04-19 09:59:42.232291'),(159,'Göygöl','GYG',16,'2019-04-19 09:59:42.234781','2019-04-19 09:59:42.234781'),(160,'Hacıqabul','HAC',16,'2019-04-19 09:59:42.237547','2019-04-19 09:59:42.237547'),(161,'İmişli','IMI',16,'2019-04-19 09:59:42.240694','2019-04-19 09:59:42.240694'),(162,'İsmayıllı','ISM',16,'2019-04-19 09:59:42.243304','2019-04-19 09:59:42.243304'),(163,'Kəlbəcər','KAL',16,'2019-04-19 09:59:42.246481','2019-04-19 09:59:42.246481'),(164,'Kürdəmir','KUR',16,'2019-04-19 09:59:42.249264','2019-04-19 09:59:42.249264'),(165,'Lənkəran','LA',16,'2019-04-19 09:59:42.251783','2019-04-19 09:59:42.251783'),(166,'Laçın','LAC',16,'2019-04-19 09:59:42.254954','2019-04-19 09:59:42.254954'),(167,'Lənkəran','LAN',16,'2019-04-19 09:59:42.258138','2019-04-19 09:59:42.258138'),(168,'Lerik','LER',16,'2019-04-19 09:59:42.260611','2019-04-19 09:59:42.260611'),(169,'Masallı','MAS',16,'2019-04-19 09:59:42.263488','2019-04-19 09:59:42.263488'),(170,'Mingəçevir','MI',16,'2019-04-19 09:59:42.265962','2019-04-19 09:59:42.265962'),(171,'Naftalan','NA',16,'2019-04-19 09:59:42.268564','2019-04-19 09:59:42.268564'),(172,'Neftçala','NEF',16,'2019-04-19 09:59:42.271748','2019-04-19 09:59:42.271748'),(173,'Naxçıvan','NX',16,'2019-04-19 09:59:42.274691','2019-04-19 09:59:42.274691'),(174,'Oğuz','OGU',16,'2019-04-19 09:59:42.278229','2019-04-19 09:59:42.278229'),(175,'Qəbələ','QAB',16,'2019-04-19 09:59:42.281082','2019-04-19 09:59:42.281082'),(176,'Qax','QAX',16,'2019-04-19 09:59:42.283681','2019-04-19 09:59:42.283681'),(177,'Qazax','QAZ',16,'2019-04-19 09:59:42.286839','2019-04-19 09:59:42.286839'),(178,'Quba','QBA',16,'2019-04-19 09:59:42.289603','2019-04-19 09:59:42.289603'),(179,'Qubadlı','QBI',16,'2019-04-19 09:59:42.292218','2019-04-19 09:59:42.292218'),(180,'Qobustan','QOB',16,'2019-04-19 09:59:42.295140','2019-04-19 09:59:42.295140'),(181,'Qusar','QUS',16,'2019-04-19 09:59:42.297806','2019-04-19 09:59:42.297806'),(182,'Şəki','SA',16,'2019-04-19 09:59:42.300427','2019-04-19 09:59:42.300427'),(183,'Sabirabad','SAB',16,'2019-04-19 09:59:42.303862','2019-04-19 09:59:42.303862'),(184,'Şəki','SAK',16,'2019-04-19 09:59:42.306584','2019-04-19 09:59:42.306584'),(185,'Salyan','SAL',16,'2019-04-19 09:59:42.309576','2019-04-19 09:59:42.309576'),(186,'Saatlı','SAT',16,'2019-04-19 09:59:42.312273','2019-04-19 09:59:42.312273'),(187,'Şabran','SBN',16,'2019-04-19 09:59:42.314817','2019-04-19 09:59:42.314817'),(188,'Siyəzən','SIY',16,'2019-04-19 09:59:42.317731','2019-04-19 09:59:42.317731'),(189,'Şəmkir','SKR',16,'2019-04-19 09:59:42.320766','2019-04-19 09:59:42.320766'),(190,'Sumqayıt','SM',16,'2019-04-19 09:59:42.324178','2019-04-19 09:59:42.324178'),(191,'Şamaxı','SMI',16,'2019-04-19 09:59:42.327596','2019-04-19 09:59:42.327596'),(192,'Samux','SMX',16,'2019-04-19 09:59:42.330197','2019-04-19 09:59:42.330197'),(193,'Şirvan','SR',16,'2019-04-19 09:59:42.332601','2019-04-19 09:59:42.332601'),(194,'Şuşa','SUS',16,'2019-04-19 09:59:42.335436','2019-04-19 09:59:42.335436'),(195,'Tərtər','TAR',16,'2019-04-19 09:59:42.337930','2019-04-19 09:59:42.337930'),(196,'Tovuz','TOV',16,'2019-04-19 09:59:42.340850','2019-04-19 09:59:42.340850'),(197,'Ucar','UCA',16,'2019-04-19 09:59:42.344314','2019-04-19 09:59:42.344314'),(198,'Xankəndi','XA',16,'2019-04-19 09:59:42.347107','2019-04-19 09:59:42.347107'),(199,'Xaçmaz','XAC',16,'2019-04-19 09:59:42.350426','2019-04-19 09:59:42.350426'),(200,'Xocalı','XCI',16,'2019-04-19 09:59:42.353421','2019-04-19 09:59:42.353421'),(201,'Xızı','XIZ',16,'2019-04-19 09:59:42.356115','2019-04-19 09:59:42.356115'),(202,'Xocavənd','XVD',16,'2019-04-19 09:59:42.359093','2019-04-19 09:59:42.359093'),(203,'Yardımlı','YAR',16,'2019-04-19 09:59:42.361516','2019-04-19 09:59:42.361516'),(204,'Yevlax','YE',16,'2019-04-19 09:59:42.363890','2019-04-19 09:59:42.363890'),(205,'Yevlax','YEV',16,'2019-04-19 09:59:42.366976','2019-04-19 09:59:42.366976'),(206,'Zəngilan','ZAN',16,'2019-04-19 09:59:42.369731','2019-04-19 09:59:42.369731'),(207,'Zaqatala','ZAQ',16,'2019-04-19 09:59:42.373099','2019-04-19 09:59:42.373099'),(208,'Zərdab','ZAR',16,'2019-04-19 09:59:42.376643','2019-04-19 09:59:42.376643'),(209,'Federacija Bosne i Hercegovine','BIH',17,'2019-04-19 09:59:42.379399','2019-04-19 09:59:42.379399'),(210,'Brčko distrikt','BRC',17,'2019-04-19 09:59:42.382273','2019-04-19 09:59:42.382273'),(211,'Republika Srpska','SRP',17,'2019-04-19 09:59:42.384946','2019-04-19 09:59:42.384946'),(212,'Christ Church','01',18,'2019-04-19 09:59:42.387483','2019-04-19 09:59:42.387483'),(213,'Saint Andrew','02',18,'2019-04-19 09:59:42.390775','2019-04-19 09:59:42.390775'),(214,'Saint George','03',18,'2019-04-19 09:59:42.393930','2019-04-19 09:59:42.393930'),(215,'Saint James','04',18,'2019-04-19 09:59:42.396738','2019-04-19 09:59:42.396738'),(216,'Saint John','05',18,'2019-04-19 09:59:42.400311','2019-04-19 09:59:42.400311'),(217,'Saint Joseph','06',18,'2019-04-19 09:59:42.403053','2019-04-19 09:59:42.403053'),(218,'Saint Lucy','07',18,'2019-04-19 09:59:42.406693','2019-04-19 09:59:42.406693'),(219,'Saint Michael','08',18,'2019-04-19 09:59:42.409530','2019-04-19 09:59:42.409530'),(220,'Saint Peter','09',18,'2019-04-19 09:59:42.412189','2019-04-19 09:59:42.412189'),(221,'Saint Philip','10',18,'2019-04-19 09:59:42.414744','2019-04-19 09:59:42.414744'),(222,'Saint Thomas','11',18,'2019-04-19 09:59:42.417279','2019-04-19 09:59:42.417279'),(223,'Barisal','A',19,'2019-04-19 09:59:42.419844','2019-04-19 09:59:42.419844'),(224,'Chittagong','B',19,'2019-04-19 09:59:42.423844','2019-04-19 09:59:42.423844'),(225,'Dhaka','C',19,'2019-04-19 09:59:42.427837','2019-04-19 09:59:42.427837'),(226,'Khulna','D',19,'2019-04-19 09:59:42.430975','2019-04-19 09:59:42.430975'),(227,'Rajshahi','E',19,'2019-04-19 09:59:42.433608','2019-04-19 09:59:42.433608'),(228,'Rangpur','F',19,'2019-04-19 09:59:42.436100','2019-04-19 09:59:42.436100'),(229,'Sylhet','G',19,'2019-04-19 09:59:42.439241','2019-04-19 09:59:42.439241'),(230,'Rangpur bibhag','7',19,'2019-04-19 09:59:42.441880','2019-04-19 09:59:42.441880'),(231,'Brussels-Capital Region','BRU',20,'2019-04-19 09:59:42.444426','2019-04-19 09:59:42.444426'),(232,'Flemish Region','VLG',20,'2019-04-19 09:59:42.447240','2019-04-19 09:59:42.447240'),(233,'Walloon Region','WAL',20,'2019-04-19 09:59:42.449768','2019-04-19 09:59:42.449768'),(234,'Boucle du Mouhoun','01',21,'2019-04-19 09:59:42.452429','2019-04-19 09:59:42.452429'),(235,'Cascades','02',21,'2019-04-19 09:59:42.455191','2019-04-19 09:59:42.455191'),(236,'Centre','03',21,'2019-04-19 09:59:42.458363','2019-04-19 09:59:42.458363'),(237,'Centre-Est','04',21,'2019-04-19 09:59:42.461302','2019-04-19 09:59:42.461302'),(238,'Centre-Nord','05',21,'2019-04-19 09:59:42.464000','2019-04-19 09:59:42.464000'),(239,'Centre-Ouest','06',21,'2019-04-19 09:59:42.466571','2019-04-19 09:59:42.466571'),(240,'Centre-Sud','07',21,'2019-04-19 09:59:42.469510','2019-04-19 09:59:42.469510'),(241,'Est','08',21,'2019-04-19 09:59:42.472274','2019-04-19 09:59:42.472274'),(242,'Hauts-Bassins','09',21,'2019-04-19 09:59:42.475225','2019-04-19 09:59:42.475225'),(243,'Nord','10',21,'2019-04-19 09:59:42.477709','2019-04-19 09:59:42.477709'),(244,'Plateau-Central','11',21,'2019-04-19 09:59:42.480014','2019-04-19 09:59:42.480014'),(245,'Sahel','12',21,'2019-04-19 09:59:42.482379','2019-04-19 09:59:42.482379'),(246,'Sud-Ouest','13',21,'2019-04-19 09:59:42.485077','2019-04-19 09:59:42.485077'),(247,'Blagoevgrad','01',22,'2019-04-19 09:59:42.487807','2019-04-19 09:59:42.487807'),(248,'Burgas','02',22,'2019-04-19 09:59:42.491086','2019-04-19 09:59:42.491086'),(249,'Varna','03',22,'2019-04-19 09:59:42.495637','2019-04-19 09:59:42.495637'),(250,'Veliko Tarnovo','04',22,'2019-04-19 09:59:42.498312','2019-04-19 09:59:42.498312'),(251,'Vidin','05',22,'2019-04-19 09:59:42.500895','2019-04-19 09:59:42.500895'),(252,'Vratsa','06',22,'2019-04-19 09:59:42.503275','2019-04-19 09:59:42.503275'),(253,'Gabrovo','07',22,'2019-04-19 09:59:42.505754','2019-04-19 09:59:42.505754'),(254,'Dobrich','08',22,'2019-04-19 09:59:42.508708','2019-04-19 09:59:42.508708'),(255,'Kardzhali','09',22,'2019-04-19 09:59:42.511280','2019-04-19 09:59:42.511280'),(256,'Kyustendil','10',22,'2019-04-19 09:59:42.513668','2019-04-19 09:59:42.513668'),(257,'Lovech','11',22,'2019-04-19 09:59:42.516239','2019-04-19 09:59:42.516239'),(258,'Montana','12',22,'2019-04-19 09:59:42.518715','2019-04-19 09:59:42.518715'),(259,'Pazardzhik','13',22,'2019-04-19 09:59:42.521202','2019-04-19 09:59:42.521202'),(260,'Pernik','14',22,'2019-04-19 09:59:42.524136','2019-04-19 09:59:42.524136'),(261,'Pleven','15',22,'2019-04-19 09:59:42.526768','2019-04-19 09:59:42.526768'),(262,'Plovdiv','16',22,'2019-04-19 09:59:42.529015','2019-04-19 09:59:42.529015'),(263,'Razgrad','17',22,'2019-04-19 09:59:42.531585','2019-04-19 09:59:42.531585'),(264,'Ruse','18',22,'2019-04-19 09:59:42.534100','2019-04-19 09:59:42.534100'),(265,'Silistra','19',22,'2019-04-19 09:59:42.536520','2019-04-19 09:59:42.536520'),(266,'Sliven','20',22,'2019-04-19 09:59:42.539423','2019-04-19 09:59:42.539423'),(267,'Smolyan','21',22,'2019-04-19 09:59:42.542410','2019-04-19 09:59:42.542410'),(268,'Sofia-Grad','22',22,'2019-04-19 09:59:42.544989','2019-04-19 09:59:42.544989'),(269,'Sofia','23',22,'2019-04-19 09:59:42.547413','2019-04-19 09:59:42.547413'),(270,'Stara Zagora','24',22,'2019-04-19 09:59:42.549872','2019-04-19 09:59:42.549872'),(271,'Targovishte','25',22,'2019-04-19 09:59:42.552197','2019-04-19 09:59:42.552197'),(272,'Haskovo','26',22,'2019-04-19 09:59:42.554599','2019-04-19 09:59:42.554599'),(273,'Shumen','27',22,'2019-04-19 09:59:42.557647','2019-04-19 09:59:42.557647'),(274,'Yambol','28',22,'2019-04-19 09:59:42.560032','2019-04-19 09:59:42.560032'),(275,'Al Manāmah (Al ‘Āşimah)','13',23,'2019-04-19 09:59:42.562710','2019-04-19 09:59:42.562710'),(276,'Al Janūbīyah','14',23,'2019-04-19 09:59:42.565245','2019-04-19 09:59:42.565245'),(277,'Al Muḩarraq','15',23,'2019-04-19 09:59:42.567558','2019-04-19 09:59:42.567558'),(278,'Al Wusţá','16',23,'2019-04-19 09:59:42.569893','2019-04-19 09:59:42.569893'),(279,'Ash Shamālīyah','17',23,'2019-04-19 09:59:42.572988','2019-04-19 09:59:42.572988'),(280,'Bubanza','BB',24,'2019-04-19 09:59:42.576026','2019-04-19 09:59:42.576026'),(281,'Bujumbura Rural','BL',24,'2019-04-19 09:59:42.578361','2019-04-19 09:59:42.578361'),(282,'Bujumbura Mairie','BM',24,'2019-04-19 09:59:42.580752','2019-04-19 09:59:42.580752'),(283,'Bururi','BR',24,'2019-04-19 09:59:42.583106','2019-04-19 09:59:42.583106'),(284,'Cankuzo','CA',24,'2019-04-19 09:59:42.585544','2019-04-19 09:59:42.585544'),(285,'Cibitoke','CI',24,'2019-04-19 09:59:42.588543','2019-04-19 09:59:42.588543'),(286,'Gitega','GI',24,'2019-04-19 09:59:42.591598','2019-04-19 09:59:42.591598'),(287,'Kirundo','KI',24,'2019-04-19 09:59:42.594288','2019-04-19 09:59:42.594288'),(288,'Karuzi','KR',24,'2019-04-19 09:59:42.596907','2019-04-19 09:59:42.596907'),(289,'Kayanza','KY',24,'2019-04-19 09:59:42.599372','2019-04-19 09:59:42.599372'),(290,'Makamba','MA',24,'2019-04-19 09:59:42.601799','2019-04-19 09:59:42.601799'),(291,'Muramvya','MU',24,'2019-04-19 09:59:42.604315','2019-04-19 09:59:42.604315'),(292,'Mwaro','MW',24,'2019-04-19 09:59:42.607415','2019-04-19 09:59:42.607415'),(293,'Ngozi','NG',24,'2019-04-19 09:59:42.610242','2019-04-19 09:59:42.610242'),(294,'Rutana','RT',24,'2019-04-19 09:59:42.613200','2019-04-19 09:59:42.613200'),(295,'Ruyigi','RY',24,'2019-04-19 09:59:42.616013','2019-04-19 09:59:42.616013'),(296,'Atakora','AK',25,'2019-04-19 09:59:42.618634','2019-04-19 09:59:42.618634'),(297,'Alibori','AL',25,'2019-04-19 09:59:42.621308','2019-04-19 09:59:42.621308'),(298,'Atlantique','AQ',25,'2019-04-19 09:59:42.624268','2019-04-19 09:59:42.624268'),(299,'Borgou','BO',25,'2019-04-19 09:59:42.627055','2019-04-19 09:59:42.627055'),(300,'Collines','CO',25,'2019-04-19 09:59:42.629954','2019-04-19 09:59:42.629954'),(301,'Donga','DO',25,'2019-04-19 09:59:42.632652','2019-04-19 09:59:42.632652'),(302,'Kouffo','KO',25,'2019-04-19 09:59:42.635383','2019-04-19 09:59:42.635383'),(303,'Littoral','LI',25,'2019-04-19 09:59:42.638155','2019-04-19 09:59:42.638155'),(304,'Mono','MO',25,'2019-04-19 09:59:42.641227','2019-04-19 09:59:42.641227'),(305,'Ouémé','OU',25,'2019-04-19 09:59:42.643990','2019-04-19 09:59:42.643990'),(306,'Plateau','PL',25,'2019-04-19 09:59:42.646482','2019-04-19 09:59:42.646482'),(307,'Zou','ZO',25,'2019-04-19 09:59:42.649269','2019-04-19 09:59:42.649269'),(308,'Devenshire','DEV',27,'2019-04-19 09:59:42.652683','2019-04-19 09:59:42.652683'),(309,'Hamilton','HAM',27,'2019-04-19 09:59:42.655600','2019-04-19 09:59:42.655600'),(310,'Paget','PAG',27,'2019-04-19 09:59:42.658661','2019-04-19 09:59:42.658661'),(311,'Pembroke','PEM',27,'2019-04-19 09:59:42.661294','2019-04-19 09:59:42.661294'),(312,'Saint George\'s','SGE',27,'2019-04-19 09:59:42.664038','2019-04-19 09:59:42.664038'),(313,'Sandys','SAN',27,'2019-04-19 09:59:42.666526','2019-04-19 09:59:42.666526'),(314,'Smiths','SMI',27,'2019-04-19 09:59:42.668936','2019-04-19 09:59:42.668936'),(315,'Southampton','SOU',27,'2019-04-19 09:59:42.671553','2019-04-19 09:59:42.671553'),(316,'Warwick','WAR',27,'2019-04-19 09:59:42.674595','2019-04-19 09:59:42.674595'),(317,'Belait','BE',28,'2019-04-19 09:59:42.677338','2019-04-19 09:59:42.677338'),(318,'Brunei-Muara','BM',28,'2019-04-19 09:59:42.679902','2019-04-19 09:59:42.679902'),(319,'Temburong','TE',28,'2019-04-19 09:59:42.682546','2019-04-19 09:59:42.682546'),(320,'Tutong','TU',28,'2019-04-19 09:59:42.685264','2019-04-19 09:59:42.685264'),(321,'El Beni','B',29,'2019-04-19 09:59:42.688302','2019-04-19 09:59:42.688302'),(322,'Cochabamba','C',29,'2019-04-19 09:59:42.691173','2019-04-19 09:59:42.691173'),(323,'Chuquisaca','H',29,'2019-04-19 09:59:42.693851','2019-04-19 09:59:42.693851'),(324,'La Paz','L',29,'2019-04-19 09:59:42.696315','2019-04-19 09:59:42.696315'),(325,'Pando','N',29,'2019-04-19 09:59:42.698931','2019-04-19 09:59:42.698931'),(326,'Oruro','O',29,'2019-04-19 09:59:42.701428','2019-04-19 09:59:42.701428'),(327,'Potosí','P',29,'2019-04-19 09:59:42.703842','2019-04-19 09:59:42.703842'),(328,'Santa Cruz','S',29,'2019-04-19 09:59:42.706557','2019-04-19 09:59:42.706557'),(329,'Tarija','T',29,'2019-04-19 09:59:42.709368','2019-04-19 09:59:42.709368'),(330,'Bonaire','BO',30,'2019-04-19 09:59:42.711894','2019-04-19 09:59:42.711894'),(331,'Saba','SA',30,'2019-04-19 09:59:42.714199','2019-04-19 09:59:42.714199'),(332,'Sint Eustatius','SE',30,'2019-04-19 09:59:42.716454','2019-04-19 09:59:42.716454'),(333,'Acre','AC',31,'2019-04-19 09:59:42.718937','2019-04-19 09:59:42.718937'),(334,'Alagoas','AL',31,'2019-04-19 09:59:42.721330','2019-04-19 09:59:42.721330'),(335,'Amazonas','AM',31,'2019-04-19 09:59:42.724138','2019-04-19 09:59:42.724138'),(336,'Amapá','AP',31,'2019-04-19 09:59:42.726778','2019-04-19 09:59:42.726778'),(337,'Bahia','BA',31,'2019-04-19 09:59:42.729125','2019-04-19 09:59:42.729125'),(338,'Ceará','CE',31,'2019-04-19 09:59:42.731457','2019-04-19 09:59:42.731457'),(339,'Distrito Federal','DF',31,'2019-04-19 09:59:42.734284','2019-04-19 09:59:42.734284'),(340,'Espírito Santo','ES',31,'2019-04-19 09:59:42.737032','2019-04-19 09:59:42.737032'),(341,'Goiás','GO',31,'2019-04-19 09:59:42.739745','2019-04-19 09:59:42.739745'),(342,'Maranhão','MA',31,'2019-04-19 09:59:42.742623','2019-04-19 09:59:42.742623'),(343,'Minas Gerais','MG',31,'2019-04-19 09:59:42.745094','2019-04-19 09:59:42.745094'),(344,'Mato Grosso do Sul','MS',31,'2019-04-19 09:59:42.747477','2019-04-19 09:59:42.747477'),(345,'Mato Grosso','MT',31,'2019-04-19 09:59:42.750025','2019-04-19 09:59:42.750025'),(346,'Pará','PA',31,'2019-04-19 09:59:42.752415','2019-04-19 09:59:42.752415'),(347,'Paraíba','PB',31,'2019-04-19 09:59:42.754845','2019-04-19 09:59:42.754845'),(348,'Pernambuco','PE',31,'2019-04-19 09:59:42.758140','2019-04-19 09:59:42.758140'),(349,'Piauí','PI',31,'2019-04-19 09:59:42.761008','2019-04-19 09:59:42.761008'),(350,'Paraná','PR',31,'2019-04-19 09:59:42.763676','2019-04-19 09:59:42.763676'),(351,'Rio de Janeiro','RJ',31,'2019-04-19 09:59:42.766770','2019-04-19 09:59:42.766770'),(352,'Rio Grande do Norte','RN',31,'2019-04-19 09:59:42.769556','2019-04-19 09:59:42.769556'),(353,'Rondônia','RO',31,'2019-04-19 09:59:42.772301','2019-04-19 09:59:42.772301'),(354,'Roraima','RR',31,'2019-04-19 09:59:42.775997','2019-04-19 09:59:42.775997'),(355,'Rio Grande do Sul','RS',31,'2019-04-19 09:59:42.778596','2019-04-19 09:59:42.778596'),(356,'Santa Catarina','SC',31,'2019-04-19 09:59:42.781316','2019-04-19 09:59:42.781316'),(357,'Sergipe','SE',31,'2019-04-19 09:59:42.787567','2019-04-19 09:59:42.787567'),(358,'São Paulo','SP',31,'2019-04-19 09:59:42.791496','2019-04-19 09:59:42.791496'),(359,'Tocantins','TO',31,'2019-04-19 09:59:42.794059','2019-04-19 09:59:42.794059'),(360,'Acklins','AK',32,'2019-04-19 09:59:42.796409','2019-04-19 09:59:42.796409'),(361,'Bimini','BI',32,'2019-04-19 09:59:42.799207','2019-04-19 09:59:42.799207'),(362,'Black Point','BP',32,'2019-04-19 09:59:42.801459','2019-04-19 09:59:42.801459'),(363,'Berry Islands','BY',32,'2019-04-19 09:59:42.803914','2019-04-19 09:59:42.803914'),(364,'Central Eleuthera','CE',32,'2019-04-19 09:59:42.806524','2019-04-19 09:59:42.806524'),(365,'Cat Island','CI',32,'2019-04-19 09:59:42.809784','2019-04-19 09:59:42.809784'),(366,'Crooked Island and Long Cay','CK',32,'2019-04-19 09:59:42.812277','2019-04-19 09:59:42.812277'),(367,'Central Abaco','CO',32,'2019-04-19 09:59:42.815272','2019-04-19 09:59:42.815272'),(368,'Central Andros','CS',32,'2019-04-19 09:59:42.818678','2019-04-19 09:59:42.818678'),(369,'East Grand Bahama','EG',32,'2019-04-19 09:59:42.821148','2019-04-19 09:59:42.821148'),(370,'Exuma','EX',32,'2019-04-19 09:59:42.824560','2019-04-19 09:59:42.824560'),(371,'City of Freeport','FP',32,'2019-04-19 09:59:42.827268','2019-04-19 09:59:42.827268'),(372,'Grand Cay','GC',32,'2019-04-19 09:59:42.829684','2019-04-19 09:59:42.829684'),(373,'Harbour Island','HI',32,'2019-04-19 09:59:42.832547','2019-04-19 09:59:42.832547'),(374,'Hope Town','HT',32,'2019-04-19 09:59:42.835150','2019-04-19 09:59:42.835150'),(375,'Inagua','IN',32,'2019-04-19 09:59:42.837555','2019-04-19 09:59:42.837555'),(376,'Long Island','LI',32,'2019-04-19 09:59:42.841165','2019-04-19 09:59:42.841165'),(377,'Mangrove Cay','MC',32,'2019-04-19 09:59:42.843924','2019-04-19 09:59:42.843924'),(378,'Mayaguana','MG',32,'2019-04-19 09:59:42.846273','2019-04-19 09:59:42.846273'),(379,'Moore\'s Island','MI',32,'2019-04-19 09:59:42.849410','2019-04-19 09:59:42.849410'),(380,'North Eleuthera','NE',32,'2019-04-19 09:59:42.851934','2019-04-19 09:59:42.851934'),(381,'North Abaco','NO',32,'2019-04-19 09:59:42.854314','2019-04-19 09:59:42.854314'),(382,'North Andros','NS',32,'2019-04-19 09:59:42.858001','2019-04-19 09:59:42.858001'),(383,'Rum Cay','RC',32,'2019-04-19 09:59:42.860573','2019-04-19 09:59:42.860573'),(384,'Ragged Island','RI',32,'2019-04-19 09:59:42.863067','2019-04-19 09:59:42.863067'),(385,'South Andros','SA',32,'2019-04-19 09:59:42.866193','2019-04-19 09:59:42.866193'),(386,'South Eleuthera','SE',32,'2019-04-19 09:59:42.868849','2019-04-19 09:59:42.868849'),(387,'South Abaco','SO',32,'2019-04-19 09:59:42.871583','2019-04-19 09:59:42.871583'),(388,'San Salvador','SS',32,'2019-04-19 09:59:42.875237','2019-04-19 09:59:42.875237'),(389,'Spanish Wells','SW',32,'2019-04-19 09:59:42.878181','2019-04-19 09:59:42.878181'),(390,'West Grand Bahama','WG',32,'2019-04-19 09:59:42.881201','2019-04-19 09:59:42.881201'),(391,'Paro','11',33,'2019-04-19 09:59:42.883706','2019-04-19 09:59:42.883706'),(392,'Chhukha','12',33,'2019-04-19 09:59:42.886382','2019-04-19 09:59:42.886382'),(393,'Ha','13',33,'2019-04-19 09:59:42.890180','2019-04-19 09:59:42.890180'),(394,'Samtee','14',33,'2019-04-19 09:59:42.892845','2019-04-19 09:59:42.892845'),(395,'Thimphu','15',33,'2019-04-19 09:59:42.895626','2019-04-19 09:59:42.895626'),(396,'Tsirang','21',33,'2019-04-19 09:59:42.898127','2019-04-19 09:59:42.898127'),(397,'Dagana','22',33,'2019-04-19 09:59:42.900432','2019-04-19 09:59:42.900432'),(398,'Punakha','23',33,'2019-04-19 09:59:42.903191','2019-04-19 09:59:42.903191'),(399,'Wangdue Phodrang','24',33,'2019-04-19 09:59:42.907295','2019-04-19 09:59:42.907295'),(400,'Sarpang','31',33,'2019-04-19 09:59:42.909810','2019-04-19 09:59:42.909810'),(401,'Trongsa','32',33,'2019-04-19 09:59:42.912464','2019-04-19 09:59:42.912464'),(402,'Bumthang','33',33,'2019-04-19 09:59:42.915307','2019-04-19 09:59:42.915307'),(403,'Zhemgang','34',33,'2019-04-19 09:59:42.917741','2019-04-19 09:59:42.917741'),(404,'Trashigang','41',33,'2019-04-19 09:59:42.924368','2019-04-19 09:59:42.924368'),(405,'Monggar','42',33,'2019-04-19 09:59:42.928009','2019-04-19 09:59:42.928009'),(406,'Pemagatshel','43',33,'2019-04-19 09:59:42.930470','2019-04-19 09:59:42.930470'),(407,'Lhuentse','44',33,'2019-04-19 09:59:42.932938','2019-04-19 09:59:42.932938'),(408,'Samdrup Jongkha','45',33,'2019-04-19 09:59:42.935649','2019-04-19 09:59:42.935649'),(409,'Gasa','GA',33,'2019-04-19 09:59:42.938733','2019-04-19 09:59:42.938733'),(410,'Trashi Yangtse','TY',33,'2019-04-19 09:59:42.942236','2019-04-19 09:59:42.942236'),(411,'Central','CE',35,'2019-04-19 09:59:42.945439','2019-04-19 09:59:42.945439'),(412,'Ghanzi','GH',35,'2019-04-19 09:59:42.947799','2019-04-19 09:59:42.947799'),(413,'Kgalagadi','KG',35,'2019-04-19 09:59:42.950181','2019-04-19 09:59:42.950181'),(414,'Kgatleng','KL',35,'2019-04-19 09:59:42.953154','2019-04-19 09:59:42.953154'),(415,'Kweneng','KW',35,'2019-04-19 09:59:42.957309','2019-04-19 09:59:42.957309'),(416,'North-East','NE',35,'2019-04-19 09:59:42.960421','2019-04-19 09:59:42.960421'),(417,'North-West','NW',35,'2019-04-19 09:59:42.963303','2019-04-19 09:59:42.963303'),(418,'South-East','SE',35,'2019-04-19 09:59:42.965775','2019-04-19 09:59:42.965775'),(419,'Southern','SO',35,'2019-04-19 09:59:42.968957','2019-04-19 09:59:42.968957'),(420,'Brèsckaja voblasc\'','BR',36,'2019-04-19 09:59:42.972737','2019-04-19 09:59:42.972737'),(421,'Horad Minsk','HM',36,'2019-04-19 09:59:42.977401','2019-04-19 09:59:42.977401'),(422,'Homel\'skaja voblasc\'','HO',36,'2019-04-19 09:59:42.980427','2019-04-19 09:59:42.980427'),(423,'Hrodzenskaja voblasc\'','HR',36,'2019-04-19 09:59:42.983248','2019-04-19 09:59:42.983248'),(424,'Mahilëuskaja voblasc\'','MA',36,'2019-04-19 09:59:42.986364','2019-04-19 09:59:42.986364'),(425,'Minskaja voblasc\'','MI',36,'2019-04-19 09:59:42.990564','2019-04-19 09:59:42.990564'),(426,'Vicebskaja voblasc\'','VI',36,'2019-04-19 09:59:42.994695','2019-04-19 09:59:42.994695'),(427,'Belize','BZ',37,'2019-04-19 09:59:42.997433','2019-04-19 09:59:42.997433'),(428,'Cayo','CY',37,'2019-04-19 09:59:43.001150','2019-04-19 09:59:43.001150'),(429,'Corozal','CZL',37,'2019-04-19 09:59:43.004657','2019-04-19 09:59:43.004657'),(430,'Orange Walk','OW',37,'2019-04-19 09:59:43.011541','2019-04-19 09:59:43.011541'),(431,'Stann Creek','SC',37,'2019-04-19 09:59:43.015018','2019-04-19 09:59:43.015018'),(432,'Toledo','TOL',37,'2019-04-19 09:59:43.018022','2019-04-19 09:59:43.018022'),(433,'Alberta','AB',38,'2019-04-19 09:59:43.020616','2019-04-19 09:59:43.020616'),(434,'British Columbia','BC',38,'2019-04-19 09:59:43.025521','2019-04-19 09:59:43.025521'),(435,'Manitoba','MB',38,'2019-04-19 09:59:43.028799','2019-04-19 09:59:43.028799'),(436,'New Brunswick','NB',38,'2019-04-19 09:59:43.031734','2019-04-19 09:59:43.031734'),(437,'Newfoundland and Labrador','NL',38,'2019-04-19 09:59:43.034387','2019-04-19 09:59:43.034387'),(438,'Nova Scotia','NS',38,'2019-04-19 09:59:43.037081','2019-04-19 09:59:43.037081'),(439,'Northwest Territories','NT',38,'2019-04-19 09:59:43.042720','2019-04-19 09:59:43.042720'),(440,'Nunavut','NU',38,'2019-04-19 09:59:43.046265','2019-04-19 09:59:43.046265'),(441,'Ontario','ON',38,'2019-04-19 09:59:43.049414','2019-04-19 09:59:43.049414'),(442,'Prince Edward Island','PE',38,'2019-04-19 09:59:43.051810','2019-04-19 09:59:43.051810'),(443,'Quebec','QC',38,'2019-04-19 09:59:43.054765','2019-04-19 09:59:43.054765'),(444,'Saskatchewan','SK',38,'2019-04-19 09:59:43.059642','2019-04-19 09:59:43.059642'),(445,'Yukon Territory','YT',38,'2019-04-19 09:59:43.062988','2019-04-19 09:59:43.062988'),(446,'Bas-Congo','BC',40,'2019-04-19 09:59:43.065916','2019-04-19 09:59:43.065916'),(447,'Bandundu','BN',40,'2019-04-19 09:59:43.068368','2019-04-19 09:59:43.068368'),(448,'Équateur','EQ',40,'2019-04-19 09:59:43.071473','2019-04-19 09:59:43.071473'),(449,'Katanga','KA',40,'2019-04-19 09:59:43.076560','2019-04-19 09:59:43.076560'),(450,'Kasai-Oriental','KE',40,'2019-04-19 09:59:43.080308','2019-04-19 09:59:43.080308'),(451,'Kinshasa','KN',40,'2019-04-19 09:59:43.082902','2019-04-19 09:59:43.082902'),(452,'Kasai-Occidental','KW',40,'2019-04-19 09:59:43.085370','2019-04-19 09:59:43.085370'),(453,'Maniema','MA',40,'2019-04-19 09:59:43.088691','2019-04-19 09:59:43.088691'),(454,'Nord-Kivu','NK',40,'2019-04-19 09:59:43.093899','2019-04-19 09:59:43.093899'),(455,'Orientale','OR',40,'2019-04-19 09:59:43.097151','2019-04-19 09:59:43.097151'),(456,'Sud-Kivu','SK',40,'2019-04-19 09:59:43.099669','2019-04-19 09:59:43.099669'),(457,'Ouham','AC',41,'2019-04-19 09:59:43.102145','2019-04-19 09:59:43.102145'),(458,'Bamingui-Bangoran','BB',41,'2019-04-19 09:59:43.105910','2019-04-19 09:59:43.105910'),(459,'Bangui','BGF',41,'2019-04-19 09:59:43.110562','2019-04-19 09:59:43.110562'),(460,'Basse-Kotto','BK',41,'2019-04-19 09:59:43.113994','2019-04-19 09:59:43.113994'),(461,'Haute-Kotto','HK',41,'2019-04-19 09:59:43.116576','2019-04-19 09:59:43.116576'),(462,'Haut-Mbomou','HM',41,'2019-04-19 09:59:43.119283','2019-04-19 09:59:43.119283'),(463,'Haute-Sangha / Mambéré-Kadéï','HS',41,'2019-04-19 09:59:43.122965','2019-04-19 09:59:43.122965'),(464,'Gribingui','KB',41,'2019-04-19 09:59:43.128015','2019-04-19 09:59:43.128015'),(465,'Kémo-Gribingui','KG',41,'2019-04-19 09:59:43.130928','2019-04-19 09:59:43.130928'),(466,'Lobaye','LB',41,'2019-04-19 09:59:43.133540','2019-04-19 09:59:43.133540'),(467,'Mbomou','MB',41,'2019-04-19 09:59:43.136473','2019-04-19 09:59:43.136473'),(468,'Ombella-M\'poko','MP',41,'2019-04-19 09:59:43.140042','2019-04-19 09:59:43.140042'),(469,'Nana-Mambéré','NM',41,'2019-04-19 09:59:43.145343','2019-04-19 09:59:43.145343'),(470,'Ouham-Pendé','OP',41,'2019-04-19 09:59:43.147994','2019-04-19 09:59:43.147994'),(471,'Sangha','SE',41,'2019-04-19 09:59:43.150518','2019-04-19 09:59:43.150518'),(472,'Ouaka','UK',41,'2019-04-19 09:59:43.153465','2019-04-19 09:59:43.153465'),(473,'Vakaga','VK',41,'2019-04-19 09:59:43.158166','2019-04-19 09:59:43.158166'),(474,'Bouenza','11',42,'2019-04-19 09:59:43.162414','2019-04-19 09:59:43.162414'),(475,'Pool','12',42,'2019-04-19 09:59:43.164971','2019-04-19 09:59:43.164971'),(476,'Sangha','13',42,'2019-04-19 09:59:43.167852','2019-04-19 09:59:43.167852'),(477,'Plateaux','14',42,'2019-04-19 09:59:43.170647','2019-04-19 09:59:43.170647'),(478,'Cuvette-Ouest','15',42,'2019-04-19 09:59:43.174985','2019-04-19 09:59:43.174985'),(479,'Lékoumou','2',42,'2019-04-19 09:59:43.179388','2019-04-19 09:59:43.179388'),(480,'Kouilou','5',42,'2019-04-19 09:59:43.182103','2019-04-19 09:59:43.182103'),(481,'Likouala','7',42,'2019-04-19 09:59:43.185114','2019-04-19 09:59:43.185114'),(482,'Cuvette','8',42,'2019-04-19 09:59:43.188125','2019-04-19 09:59:43.188125'),(483,'Niari','9',42,'2019-04-19 09:59:43.192784','2019-04-19 09:59:43.192784'),(484,'Brazzaville','BZV',42,'2019-04-19 09:59:43.195541','2019-04-19 09:59:43.195541'),(485,'Aargau','AG',43,'2019-04-19 09:59:43.198188','2019-04-19 09:59:43.198188'),(486,'Appenzell Innerrhoden','AI',43,'2019-04-19 09:59:43.201182','2019-04-19 09:59:43.201182'),(487,'Appenzell Ausserrhoden','AR',43,'2019-04-19 09:59:43.203726','2019-04-19 09:59:43.203726'),(488,'Bern','BE',43,'2019-04-19 09:59:43.208556','2019-04-19 09:59:43.208556'),(489,'Basel-Landschaft','BL',43,'2019-04-19 09:59:43.211182','2019-04-19 09:59:43.211182'),(490,'Basel-Stadt','BS',43,'2019-04-19 09:59:43.213647','2019-04-19 09:59:43.213647'),(491,'Fribourg','FR',43,'2019-04-19 09:59:43.216507','2019-04-19 09:59:43.216507'),(492,'Genève','GE',43,'2019-04-19 09:59:43.218928','2019-04-19 09:59:43.218928'),(493,'Glarus','GL',43,'2019-04-19 09:59:43.222163','2019-04-19 09:59:43.222163'),(494,'Graubünden','GR',43,'2019-04-19 09:59:43.225773','2019-04-19 09:59:43.225773'),(495,'Jura','JU',43,'2019-04-19 09:59:43.228396','2019-04-19 09:59:43.228396'),(496,'Luzern','LU',43,'2019-04-19 09:59:43.231158','2019-04-19 09:59:43.231158'),(497,'Neuchâtel','NE',43,'2019-04-19 09:59:43.233718','2019-04-19 09:59:43.233718'),(498,'Nidwalden','NW',43,'2019-04-19 09:59:43.236111','2019-04-19 09:59:43.236111'),(499,'Obwalden','OW',43,'2019-04-19 09:59:43.240002','2019-04-19 09:59:43.240002'),(500,'Sankt Gallen','SG',43,'2019-04-19 09:59:43.242895','2019-04-19 09:59:43.242895'),(501,'Schaffhausen','SH',43,'2019-04-19 09:59:43.245860','2019-04-19 09:59:43.245860'),(502,'Solothurn','SO',43,'2019-04-19 09:59:43.248425','2019-04-19 09:59:43.248425'),(503,'Schwyz','SZ',43,'2019-04-19 09:59:43.250906','2019-04-19 09:59:43.250906'),(504,'Thurgau','TG',43,'2019-04-19 09:59:43.253523','2019-04-19 09:59:43.253523'),(505,'Ticino','TI',43,'2019-04-19 09:59:43.257744','2019-04-19 09:59:43.257744'),(506,'Uri','UR',43,'2019-04-19 09:59:43.260547','2019-04-19 09:59:43.260547'),(507,'Vaud','VD',43,'2019-04-19 09:59:43.263432','2019-04-19 09:59:43.263432'),(508,'Valais','VS',43,'2019-04-19 09:59:43.266107','2019-04-19 09:59:43.266107'),(509,'Zug','ZG',43,'2019-04-19 09:59:43.268600','2019-04-19 09:59:43.268600'),(510,'Zürich','ZH',43,'2019-04-19 09:59:43.272031','2019-04-19 09:59:43.272031'),(511,'Lagunes (Région des)','01',44,'2019-04-19 09:59:43.275566','2019-04-19 09:59:43.275566'),(512,'Haut-Sassandra (Région du)','02',44,'2019-04-19 09:59:43.278702','2019-04-19 09:59:43.278702'),(513,'Savanes (Région des)','03',44,'2019-04-19 09:59:43.281366','2019-04-19 09:59:43.281366'),(514,'Vallée du Bandama (Région de la)','04',44,'2019-04-19 09:59:43.284227','2019-04-19 09:59:43.284227'),(515,'Moyen-Comoé (Région du)','05',44,'2019-04-19 09:59:43.287024','2019-04-19 09:59:43.287024'),(516,'18 Montagnes (Région des)','06',44,'2019-04-19 09:59:43.291893','2019-04-19 09:59:43.291893'),(517,'Lacs (Région des)','07',44,'2019-04-19 09:59:43.294695','2019-04-19 09:59:43.294695'),(518,'Zanzan (Région du)','08',44,'2019-04-19 09:59:43.297275','2019-04-19 09:59:43.297275'),(519,'Bas-Sassandra (Région du)','09',44,'2019-04-19 09:59:43.299933','2019-04-19 09:59:43.299933'),(520,'Denguélé (Région du)','10',44,'2019-04-19 09:59:43.302759','2019-04-19 09:59:43.302759'),(521,'Nzi-Comoé (Région)','11',44,'2019-04-19 09:59:43.306286','2019-04-19 09:59:43.306286'),(522,'Marahoué (Région de la)','12',44,'2019-04-19 09:59:43.310029','2019-04-19 09:59:43.310029'),(523,'Sud-Comoé (Région du)','13',44,'2019-04-19 09:59:43.312979','2019-04-19 09:59:43.312979'),(524,'Worodouqou (Région du)','14',44,'2019-04-19 09:59:43.315668','2019-04-19 09:59:43.315668'),(525,'Sud-Bandama (Région du)','15',44,'2019-04-19 09:59:43.318530','2019-04-19 09:59:43.318530'),(526,'Agnébi (Région de l\')','16',44,'2019-04-19 09:59:43.321793','2019-04-19 09:59:43.321793'),(527,'Bafing (Région du)','17',44,'2019-04-19 09:59:43.325830','2019-04-19 09:59:43.325830'),(528,'Fromager (Région du)','18',44,'2019-04-19 09:59:43.328480','2019-04-19 09:59:43.328480'),(529,'Moyen-Cavally (Région du)','19',44,'2019-04-19 09:59:43.331456','2019-04-19 09:59:43.331456'),(530,'Aisén del General Carlos Ibáñez del Campo','AI',46,'2019-04-19 09:59:43.334243','2019-04-19 09:59:43.334243'),(531,'Antofagasta','AN',46,'2019-04-19 09:59:43.336962','2019-04-19 09:59:43.336962'),(532,'Arica y Parinacota','AP',46,'2019-04-19 09:59:43.341237','2019-04-19 09:59:43.341237'),(533,'Araucanía','AR',46,'2019-04-19 09:59:43.344455','2019-04-19 09:59:43.344455'),(534,'Atacama','AT',46,'2019-04-19 09:59:43.347290','2019-04-19 09:59:43.347290'),(535,'Bío-Bío','BI',46,'2019-04-19 09:59:43.350184','2019-04-19 09:59:43.350184'),(536,'Coquimbo','CO',46,'2019-04-19 09:59:43.352702','2019-04-19 09:59:43.352702'),(537,'Libertador General Bernardo O\'Higgins','LI',46,'2019-04-19 09:59:43.356096','2019-04-19 09:59:43.356096'),(538,'Los Lagos','LL',46,'2019-04-19 09:59:43.359389','2019-04-19 09:59:43.359389'),(539,'Los Ríos','LR',46,'2019-04-19 09:59:43.362198','2019-04-19 09:59:43.362198'),(540,'Magallanes y Antártica Chilena','MA',46,'2019-04-19 09:59:43.364735','2019-04-19 09:59:43.364735'),(541,'Maule','ML',46,'2019-04-19 09:59:43.367479','2019-04-19 09:59:43.367479'),(542,'Región Metropolitana de Santiago','RM',46,'2019-04-19 09:59:43.370082','2019-04-19 09:59:43.370082'),(543,'Tarapacá','TA',46,'2019-04-19 09:59:43.374248','2019-04-19 09:59:43.374248'),(544,'Valparaíso','VS',46,'2019-04-19 09:59:43.377337','2019-04-19 09:59:43.377337'),(545,'Adamaoua','AD',47,'2019-04-19 09:59:43.380184','2019-04-19 09:59:43.380184'),(546,'Centre','CE',47,'2019-04-19 09:59:43.382795','2019-04-19 09:59:43.382795'),(547,'Far North','EN',47,'2019-04-19 09:59:43.385361','2019-04-19 09:59:43.385361'),(548,'East','ES',47,'2019-04-19 09:59:43.388242','2019-04-19 09:59:43.388242'),(549,'Littoral','LT',47,'2019-04-19 09:59:43.392064','2019-04-19 09:59:43.392064'),(550,'North','NO',47,'2019-04-19 09:59:43.395003','2019-04-19 09:59:43.395003'),(551,'North-West (Cameroon)','NW',47,'2019-04-19 09:59:43.397975','2019-04-19 09:59:43.397975'),(552,'West','OU',47,'2019-04-19 09:59:43.400760','2019-04-19 09:59:43.400760'),(553,'South','SU',47,'2019-04-19 09:59:43.403192','2019-04-19 09:59:43.403192'),(554,'South-West','SW',47,'2019-04-19 09:59:43.406422','2019-04-19 09:59:43.406422'),(555,'Beijing','11',48,'2019-04-19 09:59:43.409753','2019-04-19 09:59:43.409753'),(556,'Tianjin','12',48,'2019-04-19 09:59:43.412345','2019-04-19 09:59:43.412345'),(557,'Hebei','13',48,'2019-04-19 09:59:43.415220','2019-04-19 09:59:43.415220'),(558,'Shanxi','14',48,'2019-04-19 09:59:43.417648','2019-04-19 09:59:43.417648'),(559,'Nei Mongol','15',48,'2019-04-19 09:59:43.419975','2019-04-19 09:59:43.419975'),(560,'Liaoning','21',48,'2019-04-19 09:59:43.424582','2019-04-19 09:59:43.424582'),(561,'Jilin','22',48,'2019-04-19 09:59:43.427772','2019-04-19 09:59:43.427772'),(562,'Heilongjiang','23',48,'2019-04-19 09:59:43.430807','2019-04-19 09:59:43.430807'),(563,'Shanghai','31',48,'2019-04-19 09:59:43.434177','2019-04-19 09:59:43.434177'),(564,'Jiangsu','32',48,'2019-04-19 09:59:43.437317','2019-04-19 09:59:43.437317'),(565,'Zhejiang','33',48,'2019-04-19 09:59:43.442262','2019-04-19 09:59:43.442262'),(566,'Anhui','34',48,'2019-04-19 09:59:43.445409','2019-04-19 09:59:43.445409'),(567,'Fujian','35',48,'2019-04-19 09:59:43.449053','2019-04-19 09:59:43.449053'),(568,'Jiangxi','36',48,'2019-04-19 09:59:43.455500','2019-04-19 09:59:43.455500'),(569,'Shandong','37',48,'2019-04-19 09:59:43.459944','2019-04-19 09:59:43.459944'),(570,'Henan','41',48,'2019-04-19 09:59:43.463157','2019-04-19 09:59:43.463157'),(571,'Hubei','42',48,'2019-04-19 09:59:43.466370','2019-04-19 09:59:43.466370'),(572,'Hunan','43',48,'2019-04-19 09:59:43.469095','2019-04-19 09:59:43.469095'),(573,'Guangdong','44',48,'2019-04-19 09:59:43.473208','2019-04-19 09:59:43.473208'),(574,'Guangxi','45',48,'2019-04-19 09:59:43.477986','2019-04-19 09:59:43.477986'),(575,'Hainan','46',48,'2019-04-19 09:59:43.481802','2019-04-19 09:59:43.481802'),(576,'Chongqing','50',48,'2019-04-19 09:59:43.484709','2019-04-19 09:59:43.484709'),(577,'Sichuan','51',48,'2019-04-19 09:59:43.488439','2019-04-19 09:59:43.488439'),(578,'Guizhou','52',48,'2019-04-19 09:59:43.493782','2019-04-19 09:59:43.493782'),(579,'Yunnan','53',48,'2019-04-19 09:59:43.497232','2019-04-19 09:59:43.497232'),(580,'Xizang','54',48,'2019-04-19 09:59:43.500070','2019-04-19 09:59:43.500070'),(581,'Shaanxi','61',48,'2019-04-19 09:59:43.502899','2019-04-19 09:59:43.502899'),(582,'Gansu','62',48,'2019-04-19 09:59:43.507940','2019-04-19 09:59:43.507940'),(583,'Qinghai','63',48,'2019-04-19 09:59:43.511550','2019-04-19 09:59:43.511550'),(584,'Ningxia','64',48,'2019-04-19 09:59:43.514902','2019-04-19 09:59:43.514902'),(585,'Xinjiang','65',48,'2019-04-19 09:59:43.517561','2019-04-19 09:59:43.517561'),(586,'Taiwan','71',48,'2019-04-19 09:59:43.521077','2019-04-19 09:59:43.521077'),(587,'Xianggang (Hong-Kong)','91',48,'2019-04-19 09:59:43.525388','2019-04-19 09:59:43.525388'),(588,'Aomen (Macau)','92',48,'2019-04-19 09:59:43.528733','2019-04-19 09:59:43.528733'),(589,'Amazonas','AMA',49,'2019-04-19 09:59:43.531761','2019-04-19 09:59:43.531761'),(590,'Antioquia','ANT',49,'2019-04-19 09:59:43.534491','2019-04-19 09:59:43.534491'),(591,'Arauca','ARA',49,'2019-04-19 09:59:43.538078','2019-04-19 09:59:43.538078'),(592,'Atlántico','ATL',49,'2019-04-19 09:59:43.542908','2019-04-19 09:59:43.542908'),(593,'Bolívar','BOL',49,'2019-04-19 09:59:43.546731','2019-04-19 09:59:43.546731'),(594,'Boyacá','BOY',49,'2019-04-19 09:59:43.549505','2019-04-19 09:59:43.549505'),(595,'Caldas','CAL',49,'2019-04-19 09:59:43.552700','2019-04-19 09:59:43.552700'),(596,'Caquetá','CAQ',49,'2019-04-19 09:59:43.556544','2019-04-19 09:59:43.556544'),(597,'Casanare','CAS',49,'2019-04-19 09:59:43.561436','2019-04-19 09:59:43.561436'),(598,'Cauca','CAU',49,'2019-04-19 09:59:43.564815','2019-04-19 09:59:43.564815'),(599,'Cesar','CES',49,'2019-04-19 09:59:43.568062','2019-04-19 09:59:43.568062'),(600,'Chocó','CHO',49,'2019-04-19 09:59:43.572203','2019-04-19 09:59:43.572203'),(601,'Córdoba','COR',49,'2019-04-19 09:59:43.579269','2019-04-19 09:59:43.579269'),(602,'Cundinamarca','CUN',49,'2019-04-19 09:59:43.582932','2019-04-19 09:59:43.582932'),(603,'Distrito Capital de Bogotá','DC',49,'2019-04-19 09:59:43.587348','2019-04-19 09:59:43.587348'),(604,'Guainía','GUA',49,'2019-04-19 09:59:43.594614','2019-04-19 09:59:43.594614'),(605,'Guaviare','GUV',49,'2019-04-19 09:59:43.599071','2019-04-19 09:59:43.599071'),(606,'Huila','HUI',49,'2019-04-19 09:59:43.603265','2019-04-19 09:59:43.603265'),(607,'La Guajira','LAG',49,'2019-04-19 09:59:43.609129','2019-04-19 09:59:43.609129'),(608,'Magdalena','MAG',49,'2019-04-19 09:59:43.614498','2019-04-19 09:59:43.614498'),(609,'Meta','MET',49,'2019-04-19 09:59:43.618638','2019-04-19 09:59:43.618638'),(610,'Nariño','NAR',49,'2019-04-19 09:59:43.624032','2019-04-19 09:59:43.624032'),(611,'Norte de Santander','NSA',49,'2019-04-19 09:59:43.630183','2019-04-19 09:59:43.630183'),(612,'Putumayo','PUT',49,'2019-04-19 09:59:43.634516','2019-04-19 09:59:43.634516'),(613,'Quindío','QUI',49,'2019-04-19 09:59:43.639360','2019-04-19 09:59:43.639360'),(614,'Risaralda','RIS',49,'2019-04-19 09:59:43.645588','2019-04-19 09:59:43.645588'),(615,'Santander','SAN',49,'2019-04-19 09:59:43.650021','2019-04-19 09:59:43.650021'),(616,'San Andrés, Providencia y Santa Catalina','SAP',49,'2019-04-19 09:59:43.654482','2019-04-19 09:59:43.654482'),(617,'Sucre','SUC',49,'2019-04-19 09:59:43.661389','2019-04-19 09:59:43.661389'),(618,'Tolima','TOL',49,'2019-04-19 09:59:43.666158','2019-04-19 09:59:43.666158'),(619,'Valle del Cauca','VAC',49,'2019-04-19 09:59:43.670491','2019-04-19 09:59:43.670491'),(620,'Vaupés','VAU',49,'2019-04-19 09:59:43.676680','2019-04-19 09:59:43.676680'),(621,'Vichada','VID',49,'2019-04-19 09:59:43.682051','2019-04-19 09:59:43.682051'),(622,'Alajuela','A',50,'2019-04-19 09:59:43.686142','2019-04-19 09:59:43.686142'),(623,'Cartago','C',50,'2019-04-19 09:59:43.691583','2019-04-19 09:59:43.691583'),(624,'Guanacaste','G',50,'2019-04-19 09:59:43.697645','2019-04-19 09:59:43.697645'),(625,'Heredia','H',50,'2019-04-19 09:59:43.701795','2019-04-19 09:59:43.701795'),(626,'Limón','L',50,'2019-04-19 09:59:43.706431','2019-04-19 09:59:43.706431'),(627,'Puntarenas','P',50,'2019-04-19 09:59:43.712464','2019-04-19 09:59:43.712464'),(628,'San José','SJ',50,'2019-04-19 09:59:43.716663','2019-04-19 09:59:43.716663'),(629,'Pinar del Rio','01',51,'2019-04-19 09:59:43.721321','2019-04-19 09:59:43.721321'),(630,'La Habana','02',51,'2019-04-19 09:59:43.728291','2019-04-19 09:59:43.728291'),(631,'Ciudad de La Habana','03',51,'2019-04-19 09:59:43.732973','2019-04-19 09:59:43.732973'),(632,'Matanzas','04',51,'2019-04-19 09:59:43.736941','2019-04-19 09:59:43.736941'),(633,'Villa Clara','05',51,'2019-04-19 09:59:43.741784','2019-04-19 09:59:43.741784'),(634,'Cienfuegos','06',51,'2019-04-19 09:59:43.748099','2019-04-19 09:59:43.748099'),(635,'Sancti Spíritus','07',51,'2019-04-19 09:59:43.752395','2019-04-19 09:59:43.752395'),(636,'Ciego de Ávila','08',51,'2019-04-19 09:59:43.757289','2019-04-19 09:59:43.757289'),(637,'Camagüey','09',51,'2019-04-19 09:59:43.763269','2019-04-19 09:59:43.763269'),(638,'Las Tunas','10',51,'2019-04-19 09:59:43.766751','2019-04-19 09:59:43.766751'),(639,'Holguín','11',51,'2019-04-19 09:59:43.770592','2019-04-19 09:59:43.770592'),(640,'Granma','12',51,'2019-04-19 09:59:43.777456','2019-04-19 09:59:43.777456'),(641,'Santiago de Cuba','13',51,'2019-04-19 09:59:43.781445','2019-04-19 09:59:43.781445'),(642,'Guantánamo','14',51,'2019-04-19 09:59:43.784923','2019-04-19 09:59:43.784923'),(643,'Isla de la Juventud','99',51,'2019-04-19 09:59:43.789225','2019-04-19 09:59:43.789225'),(644,'Ilhas de Barlavento','B',52,'2019-04-19 09:59:43.795225','2019-04-19 09:59:43.795225'),(645,'Ilhas de Sotavento','S',52,'2019-04-19 09:59:43.799394','2019-04-19 09:59:43.799394'),(646,'Lefkosía','01',55,'2019-04-19 09:59:43.802596','2019-04-19 09:59:43.802596'),(647,'Lemesós','02',55,'2019-04-19 09:59:43.808771','2019-04-19 09:59:43.808771'),(648,'Lárnaka','03',55,'2019-04-19 09:59:43.812975','2019-04-19 09:59:43.812975'),(649,'Ammóchostos','04',55,'2019-04-19 09:59:43.816989','2019-04-19 09:59:43.816989'),(650,'Páfos','05',55,'2019-04-19 09:59:43.819757','2019-04-19 09:59:43.819757'),(651,'Kerýneia','06',55,'2019-04-19 09:59:43.824033','2019-04-19 09:59:43.824033'),(652,'Praha, Hlavní mešto','10',56,'2019-04-19 09:59:43.827553','2019-04-19 09:59:43.827553'),(653,'Středočeský kraj','20',56,'2019-04-19 09:59:43.829945','2019-04-19 09:59:43.829945'),(654,'Jihočeský kraj','31',56,'2019-04-19 09:59:43.832650','2019-04-19 09:59:43.832650'),(655,'Plzeňský kraj','32',56,'2019-04-19 09:59:43.834937','2019-04-19 09:59:43.834937'),(656,'Karlovarský kraj','41',56,'2019-04-19 09:59:43.837961','2019-04-19 09:59:43.837961'),(657,'Ústecký kraj','42',56,'2019-04-19 09:59:43.843128','2019-04-19 09:59:43.843128'),(658,'Liberecký kraj','51',56,'2019-04-19 09:59:43.846503','2019-04-19 09:59:43.846503'),(659,'Královéhradecký kraj','52',56,'2019-04-19 09:59:43.850456','2019-04-19 09:59:43.850456'),(660,'Pardubický kraj','53',56,'2019-04-19 09:59:43.854406','2019-04-19 09:59:43.854406'),(661,'Kraj Vysočina','63',56,'2019-04-19 09:59:43.860485','2019-04-19 09:59:43.860485'),(662,'Jihomoravský kraj','64',56,'2019-04-19 09:59:43.864177','2019-04-19 09:59:43.864177'),(663,'Olomoucký kraj','71',56,'2019-04-19 09:59:43.866761','2019-04-19 09:59:43.866761'),(664,'Zlínský kraj','72',56,'2019-04-19 09:59:43.869312','2019-04-19 09:59:43.869312'),(665,'Moravskoslezský kraj','80',56,'2019-04-19 09:59:43.873804','2019-04-19 09:59:43.873804'),(666,'Brandenburg','BB',57,'2019-04-19 09:59:43.877811','2019-04-19 09:59:43.877811'),(667,'Berlin','BE',57,'2019-04-19 09:59:43.880883','2019-04-19 09:59:43.880883'),(668,'Baden-Württemberg','BW',57,'2019-04-19 09:59:43.883797','2019-04-19 09:59:43.883797'),(669,'Bayern','BY',57,'2019-04-19 09:59:43.886080','2019-04-19 09:59:43.886080'),(670,'Bremen','HB',57,'2019-04-19 09:59:43.889132','2019-04-19 09:59:43.889132'),(671,'Hessen','HE',57,'2019-04-19 09:59:43.892559','2019-04-19 09:59:43.892559'),(672,'Hamburg','HH',57,'2019-04-19 09:59:43.895293','2019-04-19 09:59:43.895293'),(673,'Mecklenburg-Vorpommern','MV',57,'2019-04-19 09:59:43.897944','2019-04-19 09:59:43.897944'),(674,'Niedersachsen','NI',57,'2019-04-19 09:59:43.900500','2019-04-19 09:59:43.900500'),(675,'Nordrhein-Westfalen','NW',57,'2019-04-19 09:59:43.902960','2019-04-19 09:59:43.902960'),(676,'Rheinland-Pfalz','RP',57,'2019-04-19 09:59:43.905972','2019-04-19 09:59:43.905972'),(677,'Schleswig-Holstein','SH',57,'2019-04-19 09:59:43.909330','2019-04-19 09:59:43.909330'),(678,'Saarland','SL',57,'2019-04-19 09:59:43.912156','2019-04-19 09:59:43.912156'),(679,'Sachsen','SN',57,'2019-04-19 09:59:43.914810','2019-04-19 09:59:43.914810'),(680,'Sachsen-Anhalt','ST',57,'2019-04-19 09:59:43.917378','2019-04-19 09:59:43.917378'),(681,'Thüringen','TH',57,'2019-04-19 09:59:43.919829','2019-04-19 09:59:43.919829'),(682,'Arta','AR',58,'2019-04-19 09:59:43.924411','2019-04-19 09:59:43.924411'),(683,'Ali Sabieh','AS',58,'2019-04-19 09:59:43.927083','2019-04-19 09:59:43.927083'),(684,'Dikhil','DI',58,'2019-04-19 09:59:43.929828','2019-04-19 09:59:43.929828'),(685,'Djibouti','DJ',58,'2019-04-19 09:59:43.932307','2019-04-19 09:59:43.932307'),(686,'Obock','OB',58,'2019-04-19 09:59:43.934682','2019-04-19 09:59:43.934682'),(687,'Tadjourah','TA',58,'2019-04-19 09:59:43.937104','2019-04-19 09:59:43.937104'),(688,'Nordjylland','81',59,'2019-04-19 09:59:43.940409','2019-04-19 09:59:43.940409'),(689,'Midtjylland','82',59,'2019-04-19 09:59:43.943412','2019-04-19 09:59:43.943412'),(690,'Syddanmark','83',59,'2019-04-19 09:59:43.946221','2019-04-19 09:59:43.946221'),(691,'Hovedstaden','84',59,'2019-04-19 09:59:43.948899','2019-04-19 09:59:43.948899'),(692,'Sjælland','85',59,'2019-04-19 09:59:43.951947','2019-04-19 09:59:43.951947'),(693,'Saint Peter','01',60,'2019-04-19 09:59:43.955127','2019-04-19 09:59:43.955127'),(694,'Saint Andrew','02',60,'2019-04-19 09:59:43.958832','2019-04-19 09:59:43.958832'),(695,'Saint David','03',60,'2019-04-19 09:59:43.961715','2019-04-19 09:59:43.961715'),(696,'Saint George','04',60,'2019-04-19 09:59:43.964436','2019-04-19 09:59:43.964436'),(697,'Saint John','05',60,'2019-04-19 09:59:43.966867','2019-04-19 09:59:43.966867'),(698,'Saint Joseph','06',60,'2019-04-19 09:59:43.969656','2019-04-19 09:59:43.969656'),(699,'Saint Luke','07',60,'2019-04-19 09:59:43.972605','2019-04-19 09:59:43.972605'),(700,'Saint Mark','08',60,'2019-04-19 09:59:43.976345','2019-04-19 09:59:43.976345'),(701,'Saint Patrick','09',60,'2019-04-19 09:59:43.979060','2019-04-19 09:59:43.979060'),(702,'Saint Paul','10',60,'2019-04-19 09:59:43.981652','2019-04-19 09:59:43.981652'),(703,'Distrito Nacional (Santo Domingo)','01',61,'2019-04-19 09:59:43.984547','2019-04-19 09:59:43.984547'),(704,'Azua','02',61,'2019-04-19 09:59:43.987083','2019-04-19 09:59:43.987083'),(705,'Bahoruco','03',61,'2019-04-19 09:59:43.990508','2019-04-19 09:59:43.990508'),(706,'Barahona','04',61,'2019-04-19 09:59:43.993710','2019-04-19 09:59:43.993710'),(707,'Dajabón','05',61,'2019-04-19 09:59:43.996209','2019-04-19 09:59:43.996209'),(708,'Duarte','06',61,'2019-04-19 09:59:43.998895','2019-04-19 09:59:43.998895'),(709,'La Estrelleta [Elías Piña]','07',61,'2019-04-19 09:59:44.001961','2019-04-19 09:59:44.001961'),(710,'El Seybo [El Seibo]','08',61,'2019-04-19 09:59:44.004994','2019-04-19 09:59:44.004994'),(711,'Espaillat','09',61,'2019-04-19 09:59:44.009204','2019-04-19 09:59:44.009204'),(712,'Independencia','10',61,'2019-04-19 09:59:44.011633','2019-04-19 09:59:44.011633'),(713,'La Altagracia','11',61,'2019-04-19 09:59:44.014131','2019-04-19 09:59:44.014131'),(714,'La Romana','12',61,'2019-04-19 09:59:44.017007','2019-04-19 09:59:44.017007'),(715,'La Vega','13',61,'2019-04-19 09:59:44.019485','2019-04-19 09:59:44.019485'),(716,'María Trinidad Sánchez','14',61,'2019-04-19 09:59:44.022427','2019-04-19 09:59:44.022427'),(717,'Monte Cristi','15',61,'2019-04-19 09:59:44.026122','2019-04-19 09:59:44.026122'),(718,'Pedernales','16',61,'2019-04-19 09:59:44.028599','2019-04-19 09:59:44.028599'),(719,'Peravia','17',61,'2019-04-19 09:59:44.031765','2019-04-19 09:59:44.031765'),(720,'Puerto Plata','18',61,'2019-04-19 09:59:44.034300','2019-04-19 09:59:44.034300'),(721,'Salcedo','19',61,'2019-04-19 09:59:44.036647','2019-04-19 09:59:44.036647'),(722,'Samaná','20',61,'2019-04-19 09:59:44.040599','2019-04-19 09:59:44.040599'),(723,'San Cristóbal','21',61,'2019-04-19 09:59:44.043479','2019-04-19 09:59:44.043479'),(724,'San Juan','22',61,'2019-04-19 09:59:44.045996','2019-04-19 09:59:44.045996'),(725,'San Pedro de Macorís','23',61,'2019-04-19 09:59:44.048887','2019-04-19 09:59:44.048887'),(726,'Sánchez Ramírez','24',61,'2019-04-19 09:59:44.051327','2019-04-19 09:59:44.051327'),(727,'Santiago','25',61,'2019-04-19 09:59:44.053955','2019-04-19 09:59:44.053955'),(728,'Santiago Rodríguez','26',61,'2019-04-19 09:59:44.058310','2019-04-19 09:59:44.058310'),(729,'Valverde','27',61,'2019-04-19 09:59:44.061690','2019-04-19 09:59:44.061690'),(730,'Monseñor Nouel','28',61,'2019-04-19 09:59:44.065824','2019-04-19 09:59:44.065824'),(731,'Monte Plata','29',61,'2019-04-19 09:59:44.071361','2019-04-19 09:59:44.071361'),(732,'Hato Mayor','30',61,'2019-04-19 09:59:44.077083','2019-04-19 09:59:44.077083'),(733,'Adrar','01',62,'2019-04-19 09:59:44.081708','2019-04-19 09:59:44.081708'),(734,'Chlef','02',62,'2019-04-19 09:59:44.085700','2019-04-19 09:59:44.085700'),(735,'Laghouat','03',62,'2019-04-19 09:59:44.091478','2019-04-19 09:59:44.091478'),(736,'Oum el Bouaghi','04',62,'2019-04-19 09:59:44.097187','2019-04-19 09:59:44.097187'),(737,'Batna','05',62,'2019-04-19 09:59:44.100603','2019-04-19 09:59:44.100603'),(738,'Béjaïa','06',62,'2019-04-19 09:59:44.105643','2019-04-19 09:59:44.105643'),(739,'Biskra','07',62,'2019-04-19 09:59:44.111390','2019-04-19 09:59:44.111390'),(740,'Béchar','08',62,'2019-04-19 09:59:44.115062','2019-04-19 09:59:44.115062'),(741,'Blida','09',62,'2019-04-19 09:59:44.118288','2019-04-19 09:59:44.118288'),(742,'Bouira','10',62,'2019-04-19 09:59:44.122826','2019-04-19 09:59:44.122826'),(743,'Tamanghasset','11',62,'2019-04-19 09:59:44.126369','2019-04-19 09:59:44.126369'),(744,'Tébessa','12',62,'2019-04-19 09:59:44.129797','2019-04-19 09:59:44.129797'),(745,'Tlemcen','13',62,'2019-04-19 09:59:44.132594','2019-04-19 09:59:44.132594'),(746,'Tiaret','14',62,'2019-04-19 09:59:44.136215','2019-04-19 09:59:44.136215'),(747,'Tizi Ouzou','15',62,'2019-04-19 09:59:44.141135','2019-04-19 09:59:44.141135'),(748,'Alger','16',62,'2019-04-19 09:59:44.146171','2019-04-19 09:59:44.146171'),(749,'Djelfa','17',62,'2019-04-19 09:59:44.150010','2019-04-19 09:59:44.150010'),(750,'Jijel','18',62,'2019-04-19 09:59:44.153544','2019-04-19 09:59:44.153544'),(751,'Sétif','19',62,'2019-04-19 09:59:44.159913','2019-04-19 09:59:44.159913'),(752,'Saïda','20',62,'2019-04-19 09:59:44.164018','2019-04-19 09:59:44.164018'),(753,'Skikda','21',62,'2019-04-19 09:59:44.167861','2019-04-19 09:59:44.167861'),(754,'Sidi Bel Abbès','22',62,'2019-04-19 09:59:44.172359','2019-04-19 09:59:44.172359'),(755,'Annaba','23',62,'2019-04-19 09:59:44.177944','2019-04-19 09:59:44.177944'),(756,'Guelma','24',62,'2019-04-19 09:59:44.182569','2019-04-19 09:59:44.182569'),(757,'Constantine','25',62,'2019-04-19 09:59:44.185987','2019-04-19 09:59:44.185987'),(758,'Médéa','26',62,'2019-04-19 09:59:44.191537','2019-04-19 09:59:44.191537'),(759,'Mostaganem','27',62,'2019-04-19 09:59:44.196191','2019-04-19 09:59:44.196191'),(760,'Msila','28',62,'2019-04-19 09:59:44.199812','2019-04-19 09:59:44.199812'),(761,'Mascara','29',62,'2019-04-19 09:59:44.203595','2019-04-19 09:59:44.203595'),(762,'Ouargla','30',62,'2019-04-19 09:59:44.209404','2019-04-19 09:59:44.209404'),(763,'Oran','31',62,'2019-04-19 09:59:44.213384','2019-04-19 09:59:44.213384'),(764,'El Bayadh','32',62,'2019-04-19 09:59:44.217263','2019-04-19 09:59:44.217263'),(765,'Illizi','33',62,'2019-04-19 09:59:44.221910','2019-04-19 09:59:44.221910'),(766,'Bordj Bou Arréridj','34',62,'2019-04-19 09:59:44.228656','2019-04-19 09:59:44.228656'),(767,'Boumerdès','35',62,'2019-04-19 09:59:44.232960','2019-04-19 09:59:44.232960'),(768,'El Tarf','36',62,'2019-04-19 09:59:44.236809','2019-04-19 09:59:44.236809'),(769,'Tindouf','37',62,'2019-04-19 09:59:44.242178','2019-04-19 09:59:44.242178'),(770,'Tissemsilt','38',62,'2019-04-19 09:59:44.246479','2019-04-19 09:59:44.246479'),(771,'El Oued','39',62,'2019-04-19 09:59:44.251188','2019-04-19 09:59:44.251188'),(772,'Khenchela','40',62,'2019-04-19 09:59:44.256052','2019-04-19 09:59:44.256052'),(773,'Souk Ahras','41',62,'2019-04-19 09:59:44.261191','2019-04-19 09:59:44.261191'),(774,'Tipaza','42',62,'2019-04-19 09:59:44.265087','2019-04-19 09:59:44.265087'),(775,'Mila','43',62,'2019-04-19 09:59:44.269049','2019-04-19 09:59:44.269049'),(776,'Aïn Defla','44',62,'2019-04-19 09:59:44.272962','2019-04-19 09:59:44.272962'),(777,'Naama','45',62,'2019-04-19 09:59:44.278054','2019-04-19 09:59:44.278054'),(778,'Aïn Témouchent','46',62,'2019-04-19 09:59:44.284991','2019-04-19 09:59:44.284991'),(779,'Ghardaïa','47',62,'2019-04-19 09:59:44.288593','2019-04-19 09:59:44.288593'),(780,'Relizane','48',62,'2019-04-19 09:59:44.293559','2019-04-19 09:59:44.293559'),(781,'Azuay','A',63,'2019-04-19 09:59:44.297407','2019-04-19 09:59:44.297407'),(782,'Bolívar','B',63,'2019-04-19 09:59:44.301586','2019-04-19 09:59:44.301586'),(783,'Carchi','C',63,'2019-04-19 09:59:44.305399','2019-04-19 09:59:44.305399'),(784,'Orellana','D',63,'2019-04-19 09:59:44.310153','2019-04-19 09:59:44.310153'),(785,'Esmeraldas','E',63,'2019-04-19 09:59:44.314105','2019-04-19 09:59:44.314105'),(786,'Cañar','F',63,'2019-04-19 09:59:44.319247','2019-04-19 09:59:44.319247'),(787,'Guayas','G',63,'2019-04-19 09:59:44.324541','2019-04-19 09:59:44.324541'),(788,'Chimborazo','H',63,'2019-04-19 09:59:44.328504','2019-04-19 09:59:44.328504'),(789,'Imbabura','I',63,'2019-04-19 09:59:44.332698','2019-04-19 09:59:44.332698'),(790,'Loja','L',63,'2019-04-19 09:59:44.336893','2019-04-19 09:59:44.336893'),(791,'Manabí','M',63,'2019-04-19 09:59:44.341016','2019-04-19 09:59:44.341016'),(792,'Napo','N',63,'2019-04-19 09:59:44.344180','2019-04-19 09:59:44.344180'),(793,'El Oro','O',63,'2019-04-19 09:59:44.346700','2019-04-19 09:59:44.346700'),(794,'Pichincha','P',63,'2019-04-19 09:59:44.349007','2019-04-19 09:59:44.349007'),(795,'Los Ríos','R',63,'2019-04-19 09:59:44.351686','2019-04-19 09:59:44.351686'),(796,'Morona-Santiago','S',63,'2019-04-19 09:59:44.354366','2019-04-19 09:59:44.354366'),(797,'Santo Domingo de los Tsáchilas','SD',63,'2019-04-19 09:59:44.357663','2019-04-19 09:59:44.357663'),(798,'Santa Elena','SE',63,'2019-04-19 09:59:44.361004','2019-04-19 09:59:44.361004'),(799,'Tungurahua','T',63,'2019-04-19 09:59:44.364030','2019-04-19 09:59:44.364030'),(800,'Sucumbíos','U',63,'2019-04-19 09:59:44.366617','2019-04-19 09:59:44.366617'),(801,'Galápagos','W',63,'2019-04-19 09:59:44.369638','2019-04-19 09:59:44.369638'),(802,'Cotopaxi','X',63,'2019-04-19 09:59:44.372704','2019-04-19 09:59:44.372704'),(803,'Pastaza','Y',63,'2019-04-19 09:59:44.376520','2019-04-19 09:59:44.376520'),(804,'Zamora-Chinchipe','Z',63,'2019-04-19 09:59:44.379019','2019-04-19 09:59:44.379019'),(805,'Harjumaa','37',64,'2019-04-19 09:59:44.381640','2019-04-19 09:59:44.381640'),(806,'Hiiumaa','39',64,'2019-04-19 09:59:44.384389','2019-04-19 09:59:44.384389'),(807,'Ida-Virumaa','44',64,'2019-04-19 09:59:44.386737','2019-04-19 09:59:44.386737'),(808,'Jõgevamaa','49',64,'2019-04-19 09:59:44.390013','2019-04-19 09:59:44.390013'),(809,'Järvamaa','51',64,'2019-04-19 09:59:44.393886','2019-04-19 09:59:44.393886'),(810,'Läänemaa','57',64,'2019-04-19 09:59:44.396888','2019-04-19 09:59:44.396888'),(811,'Lääne-Virumaa','59',64,'2019-04-19 09:59:44.399824','2019-04-19 09:59:44.399824'),(812,'Põlvamaa','65',64,'2019-04-19 09:59:44.402264','2019-04-19 09:59:44.402264'),(813,'Pärnumaa','67',64,'2019-04-19 09:59:44.405124','2019-04-19 09:59:44.405124'),(814,'Raplamaa','70',64,'2019-04-19 09:59:44.409447','2019-04-19 09:59:44.409447'),(815,'Saaremaa','74',64,'2019-04-19 09:59:44.412940','2019-04-19 09:59:44.412940'),(816,'Tartumaa','78',64,'2019-04-19 09:59:44.415769','2019-04-19 09:59:44.415769'),(817,'Valgamaa','82',64,'2019-04-19 09:59:44.418856','2019-04-19 09:59:44.418856'),(818,'Viljandimaa','84',64,'2019-04-19 09:59:44.422343','2019-04-19 09:59:44.422343'),(819,'Võrumaa','86',64,'2019-04-19 09:59:44.426730','2019-04-19 09:59:44.426730'),(820,'Al Iskandarīyah','ALX',65,'2019-04-19 09:59:44.429304','2019-04-19 09:59:44.429304'),(821,'Aswān','ASN',65,'2019-04-19 09:59:44.432167','2019-04-19 09:59:44.432167'),(822,'Asyūt','AST',65,'2019-04-19 09:59:44.434628','2019-04-19 09:59:44.434628'),(823,'Al Bahr al Ahmar','BA',65,'2019-04-19 09:59:44.437174','2019-04-19 09:59:44.437174'),(824,'Al Buhayrah','BH',65,'2019-04-19 09:59:44.442334','2019-04-19 09:59:44.442334'),(825,'Banī Suwayf','BNS',65,'2019-04-19 09:59:44.445638','2019-04-19 09:59:44.445638'),(826,'Al Qāhirah','C',65,'2019-04-19 09:59:44.448685','2019-04-19 09:59:44.448685'),(827,'Ad Daqahlīyah','DK',65,'2019-04-19 09:59:44.451042','2019-04-19 09:59:44.451042'),(828,'Dumyāt','DT',65,'2019-04-19 09:59:44.453372','2019-04-19 09:59:44.453372'),(829,'Al Fayyūm','FYM',65,'2019-04-19 09:59:44.456725','2019-04-19 09:59:44.456725'),(830,'Al Gharbīyah','GH',65,'2019-04-19 09:59:44.461577','2019-04-19 09:59:44.461577'),(831,'Al Jīzah','GZ',65,'2019-04-19 09:59:44.465189','2019-04-19 09:59:44.465189'),(832,'Ḩulwān','HU',65,'2019-04-19 09:59:44.467898','2019-04-19 09:59:44.467898'),(833,'Al Ismā`īlīyah','IS',65,'2019-04-19 09:59:44.470034','2019-04-19 09:59:44.470034'),(834,'Janūb Sīnā\'','JS',65,'2019-04-19 09:59:44.475162','2019-04-19 09:59:44.475162'),(835,'Al Qalyūbīyah','KB',65,'2019-04-19 09:59:44.479503','2019-04-19 09:59:44.479503'),(836,'Kafr ash Shaykh','KFS',65,'2019-04-19 09:59:44.482198','2019-04-19 09:59:44.482198'),(837,'Qinā','KN',65,'2019-04-19 09:59:44.484480','2019-04-19 09:59:44.484480'),(838,'Al Minyā','MN',65,'2019-04-19 09:59:44.486967','2019-04-19 09:59:44.486967'),(839,'Al Minūfīyah','MNF',65,'2019-04-19 09:59:44.492275','2019-04-19 09:59:44.492275'),(840,'Matrūh','MT',65,'2019-04-19 09:59:44.496822','2019-04-19 09:59:44.496822'),(841,'Būr Sa`īd','PTS',65,'2019-04-19 09:59:44.499685','2019-04-19 09:59:44.499685'),(842,'Sūhāj','SHG',65,'2019-04-19 09:59:44.502128','2019-04-19 09:59:44.502128'),(843,'Ash Sharqīyah','SHR',65,'2019-04-19 09:59:44.505623','2019-04-19 09:59:44.505623'),(844,'Shamal Sīnā\'','SIN',65,'2019-04-19 09:59:44.511600','2019-04-19 09:59:44.511600'),(845,'As Sādis min Uktūbar','SU',65,'2019-04-19 09:59:44.514777','2019-04-19 09:59:44.514777'),(846,'As Suways','SUZ',65,'2019-04-19 09:59:44.517333','2019-04-19 09:59:44.517333'),(847,'Al Wādī al Jadīd','WAD',65,'2019-04-19 09:59:44.520115','2019-04-19 09:59:44.520115'),(848,'Ansabā','AN',67,'2019-04-19 09:59:44.524346','2019-04-19 09:59:44.524346'),(849,'Janūbī al Baḩrī al Aḩmar','DK',67,'2019-04-19 09:59:44.529201','2019-04-19 09:59:44.529201'),(850,'Al Janūbī','DU',67,'2019-04-19 09:59:44.531677','2019-04-19 09:59:44.531677'),(851,'Qāsh-Barkah','GB',67,'2019-04-19 09:59:44.533976','2019-04-19 09:59:44.533976'),(852,'Al Awsaţ','MA',67,'2019-04-19 09:59:44.536784','2019-04-19 09:59:44.536784'),(853,'Shimālī al Baḩrī al Aḩmar','SK',67,'2019-04-19 09:59:44.540408','2019-04-19 09:59:44.540408'),(854,'Andalucía','AN',68,'2019-04-19 09:59:44.545176','2019-04-19 09:59:44.545176'),(855,'Aragón','AR',68,'2019-04-19 09:59:44.547686','2019-04-19 09:59:44.547686'),(856,'Asturias, Principado de','AS',68,'2019-04-19 09:59:44.550028','2019-04-19 09:59:44.550028'),(857,'Cantabria','CB',68,'2019-04-19 09:59:44.552524','2019-04-19 09:59:44.552524'),(858,'Ceuta','CE',68,'2019-04-19 09:59:44.555014','2019-04-19 09:59:44.555014'),(859,'Castilla y León','CL',68,'2019-04-19 09:59:44.558979','2019-04-19 09:59:44.558979'),(860,'Castilla-La Mancha','CM',68,'2019-04-19 09:59:44.562095','2019-04-19 09:59:44.562095'),(861,'Canarias','CN',68,'2019-04-19 09:59:44.564392','2019-04-19 09:59:44.564392'),(862,'Catalunya','CT',68,'2019-04-19 09:59:44.566757','2019-04-19 09:59:44.566757'),(863,'Extremadura','EX',68,'2019-04-19 09:59:44.569481','2019-04-19 09:59:44.569481'),(864,'Galicia','GA',68,'2019-04-19 09:59:44.571923','2019-04-19 09:59:44.571923'),(865,'Illes Balears','IB',68,'2019-04-19 09:59:44.576197','2019-04-19 09:59:44.576197'),(866,'Murcia, Región de','MC',68,'2019-04-19 09:59:44.579238','2019-04-19 09:59:44.579238'),(867,'Madrid, Comunidad de','MD',68,'2019-04-19 09:59:44.581557','2019-04-19 09:59:44.581557'),(868,'Melilla','ML',68,'2019-04-19 09:59:44.584371','2019-04-19 09:59:44.584371'),(869,'Navarra, Comunidad Foral de / Nafarroako Foru Komunitatea','NC',68,'2019-04-19 09:59:44.586758','2019-04-19 09:59:44.586758'),(870,'País Vasco / Euskal Herria','PV',68,'2019-04-19 09:59:44.589469','2019-04-19 09:59:44.589469'),(871,'La Rioja','RI',68,'2019-04-19 09:59:44.593243','2019-04-19 09:59:44.593243'),(872,'Valenciana, Comunidad / Valenciana, Comunitat','VC',68,'2019-04-19 09:59:44.595796','2019-04-19 09:59:44.595796'),(873,'Ādīs Ābeba','AA',69,'2019-04-19 09:59:44.598165','2019-04-19 09:59:44.598165'),(874,'Āfar','AF',69,'2019-04-19 09:59:44.600973','2019-04-19 09:59:44.600973'),(875,'Āmara','AM',69,'2019-04-19 09:59:44.603277','2019-04-19 09:59:44.603277'),(876,'Bīnshangul Gumuz','BE',69,'2019-04-19 09:59:44.605773','2019-04-19 09:59:44.605773'),(877,'Dirē Dawa','DD',69,'2019-04-19 09:59:44.609328','2019-04-19 09:59:44.609328'),(878,'Gambēla Hizboch','GA',69,'2019-04-19 09:59:44.611719','2019-04-19 09:59:44.611719'),(879,'Hārerī Hizb','HA',69,'2019-04-19 09:59:44.613973','2019-04-19 09:59:44.613973'),(880,'Oromīya','OR',69,'2019-04-19 09:59:44.616781','2019-04-19 09:59:44.616781'),(881,'YeDebub Bihēroch Bihēreseboch na Hizboch','SN',69,'2019-04-19 09:59:44.619556','2019-04-19 09:59:44.619556'),(882,'Sumalē','SO',69,'2019-04-19 09:59:44.622052','2019-04-19 09:59:44.622052'),(883,'Tigray','TI',69,'2019-04-19 09:59:44.625626','2019-04-19 09:59:44.625626'),(884,'Ahvenanmaan maakunta','01',70,'2019-04-19 09:59:44.627985','2019-04-19 09:59:44.627985'),(885,'Etelä-Karjala','02',70,'2019-04-19 09:59:44.630250','2019-04-19 09:59:44.630250'),(886,'Etelä-Pohjanmaa','03',70,'2019-04-19 09:59:44.633109','2019-04-19 09:59:44.633109'),(887,'Etelä-Savo','04',70,'2019-04-19 09:59:44.635975','2019-04-19 09:59:44.635975'),(888,'Kainuu','05',70,'2019-04-19 09:59:44.638652','2019-04-19 09:59:44.638652'),(889,'Kanta-Häme','06',70,'2019-04-19 09:59:44.643029','2019-04-19 09:59:44.643029'),(890,'Keski-Pohjanmaa','07',70,'2019-04-19 09:59:44.645496','2019-04-19 09:59:44.645496'),(891,'Keski-Suomi','08',70,'2019-04-19 09:59:44.648324','2019-04-19 09:59:44.648324'),(892,'Kymenlaakso','09',70,'2019-04-19 09:59:44.650895','2019-04-19 09:59:44.650895'),(893,'Lappi','10',70,'2019-04-19 09:59:44.653514','2019-04-19 09:59:44.653514'),(894,'Pirkanmaa','11',70,'2019-04-19 09:59:44.656146','2019-04-19 09:59:44.656146'),(895,'Pohjanmaa','12',70,'2019-04-19 09:59:44.659460','2019-04-19 09:59:44.659460'),(896,'Pohjois-Karjala','13',70,'2019-04-19 09:59:44.661991','2019-04-19 09:59:44.661991'),(897,'Pohjois-Pohjanmaa','14',70,'2019-04-19 09:59:44.665250','2019-04-19 09:59:44.665250'),(898,'Pohjois-Savo','15',70,'2019-04-19 09:59:44.668021','2019-04-19 09:59:44.668021'),(899,'Päijät-Häme','16',70,'2019-04-19 09:59:44.671056','2019-04-19 09:59:44.671056'),(900,'Satakunta','17',70,'2019-04-19 09:59:44.675192','2019-04-19 09:59:44.675192'),(901,'Uusimaa','18',70,'2019-04-19 09:59:44.677813','2019-04-19 09:59:44.677813'),(902,'Varsinais-Suomi','19',70,'2019-04-19 09:59:44.680218','2019-04-19 09:59:44.680218'),(903,'Central','C',71,'2019-04-19 09:59:44.682580','2019-04-19 09:59:44.682580'),(904,'Eastern','E',71,'2019-04-19 09:59:44.685116','2019-04-19 09:59:44.685116'),(905,'Northern','N',71,'2019-04-19 09:59:44.687624','2019-04-19 09:59:44.687624'),(906,'Rotuma','R',71,'2019-04-19 09:59:44.691784','2019-04-19 09:59:44.691784'),(907,'Western','W',71,'2019-04-19 09:59:44.695072','2019-04-19 09:59:44.695072'),(908,'Kosrae','KSA',73,'2019-04-19 09:59:44.698075','2019-04-19 09:59:44.698075'),(909,'Pohnpei','PNI',73,'2019-04-19 09:59:44.700759','2019-04-19 09:59:44.700759'),(910,'Chuuk','TRK',73,'2019-04-19 09:59:44.703356','2019-04-19 09:59:44.703356'),(911,'Yap','YAP',73,'2019-04-19 09:59:44.706068','2019-04-19 09:59:44.706068'),(912,'Auvergne-Rhône-Alpes','ARA',75,'2019-04-19 09:59:44.709398','2019-04-19 09:59:44.709398'),(913,'Bourgogne-Franche-Comté','BFC',75,'2019-04-19 09:59:44.712295','2019-04-19 09:59:44.712295'),(914,'Saint-Barthélemy','BL',75,'2019-04-19 09:59:44.714882','2019-04-19 09:59:44.714882'),(915,'Bretagne','BRE',75,'2019-04-19 09:59:44.717869','2019-04-19 09:59:44.717869'),(916,'Corse','COR',75,'2019-04-19 09:59:44.721365','2019-04-19 09:59:44.721365'),(917,'Clipperton','CP',75,'2019-04-19 09:59:44.725088','2019-04-19 09:59:44.725088'),(918,'Centre-Val de Loire','CVL',75,'2019-04-19 09:59:44.728015','2019-04-19 09:59:44.728015'),(919,'Grand-Est','GES',75,'2019-04-19 09:59:44.730659','2019-04-19 09:59:44.730659'),(920,'Guyane (française)','GF',75,'2019-04-19 09:59:44.733183','2019-04-19 09:59:44.733183'),(921,'Guadeloupe','GUA',75,'2019-04-19 09:59:44.735826','2019-04-19 09:59:44.735826'),(922,'Hauts-de-France','HDF',75,'2019-04-19 09:59:44.738236','2019-04-19 09:59:44.738236'),(923,'Île-de-France','IDF',75,'2019-04-19 09:59:44.741131','2019-04-19 09:59:44.741131'),(924,'La Réunion','LRE',75,'2019-04-19 09:59:44.743708','2019-04-19 09:59:44.743708'),(925,'Mayotte','MAY',75,'2019-04-19 09:59:44.746218','2019-04-19 09:59:44.746218'),(926,'Saint-Martin','MF',75,'2019-04-19 09:59:44.748709','2019-04-19 09:59:44.748709'),(927,'Martinique','MQ',75,'2019-04-19 09:59:44.751248','2019-04-19 09:59:44.751248'),(928,'Nouvelle-Aquitaine','NAQ',75,'2019-04-19 09:59:44.753753','2019-04-19 09:59:44.753753'),(929,'Nouvelle-Calédonie','NC',75,'2019-04-19 09:59:44.756913','2019-04-19 09:59:44.756913'),(930,'Normandie','NOR',75,'2019-04-19 09:59:44.759903','2019-04-19 09:59:44.759903'),(931,'Occitanie','OCC',75,'2019-04-19 09:59:44.762397','2019-04-19 09:59:44.762397'),(932,'Provence-Alpes-Côte-d’Azur','PAC',75,'2019-04-19 09:59:44.764666','2019-04-19 09:59:44.764666'),(933,'Pays-de-la-Loire','PDL',75,'2019-04-19 09:59:44.767012','2019-04-19 09:59:44.767012'),(934,'Polynésie française','PF',75,'2019-04-19 09:59:44.769307','2019-04-19 09:59:44.769307'),(935,'Saint-Pierre-et-Miquelon','PM',75,'2019-04-19 09:59:44.771805','2019-04-19 09:59:44.771805'),(936,'Terres australes françaises','TF',75,'2019-04-19 09:59:44.774998','2019-04-19 09:59:44.774998'),(937,'Wallis-et-Futuna','WF',75,'2019-04-19 09:59:44.777807','2019-04-19 09:59:44.777807'),(938,'Estuaire','1',76,'2019-04-19 09:59:44.780227','2019-04-19 09:59:44.780227'),(939,'Haut-Ogooué','2',76,'2019-04-19 09:59:44.782594','2019-04-19 09:59:44.782594'),(940,'Moyen-Ogooué','3',76,'2019-04-19 09:59:44.784853','2019-04-19 09:59:44.784853'),(941,'Ngounié','4',76,'2019-04-19 09:59:44.787520','2019-04-19 09:59:44.787520'),(942,'Nyanga','5',76,'2019-04-19 09:59:44.791003','2019-04-19 09:59:44.791003'),(943,'Ogooué-Ivindo','6',76,'2019-04-19 09:59:44.793453','2019-04-19 09:59:44.793453'),(944,'Ogooué-Lolo','7',76,'2019-04-19 09:59:44.796094','2019-04-19 09:59:44.796094'),(945,'Ogooué-Maritime','8',76,'2019-04-19 09:59:44.798764','2019-04-19 09:59:44.798764'),(946,'Woleu-Ntem','9',76,'2019-04-19 09:59:44.801093','2019-04-19 09:59:44.801093'),(947,'England and Wales','EAW',77,'2019-04-19 09:59:44.803546','2019-04-19 09:59:44.803546'),(948,'England','ENG',77,'2019-04-19 09:59:44.806242','2019-04-19 09:59:44.806242'),(949,'Great Britain','GBN',77,'2019-04-19 09:59:44.809048','2019-04-19 09:59:44.809048'),(950,'Northern Ireland','NIR',77,'2019-04-19 09:59:44.811559','2019-04-19 09:59:44.811559'),(951,'Scotland','SCT',77,'2019-04-19 09:59:44.814353','2019-04-19 09:59:44.814353'),(952,'United Kingdom','UKM',77,'2019-04-19 09:59:44.816745','2019-04-19 09:59:44.816745'),(953,'Wales; Cymru','WLS',77,'2019-04-19 09:59:44.819045','2019-04-19 09:59:44.819045'),(954,'Middlesex','MDX',77,'2019-04-19 09:59:44.821730','2019-04-19 09:59:44.821730'),(955,'Wiltshire','WIL',77,'2019-04-19 09:59:44.824449','2019-04-19 09:59:44.824449'),(956,'Saint Andrew','01',78,'2019-04-19 09:59:44.826937','2019-04-19 09:59:44.826937'),(957,'Saint David','02',78,'2019-04-19 09:59:44.829516','2019-04-19 09:59:44.829516'),(958,'Saint George','03',78,'2019-04-19 09:59:44.831928','2019-04-19 09:59:44.831928'),(959,'Saint John','04',78,'2019-04-19 09:59:44.834236','2019-04-19 09:59:44.834236'),(960,'Saint Mark','05',78,'2019-04-19 09:59:44.836530','2019-04-19 09:59:44.836530'),(961,'Saint Patrick','06',78,'2019-04-19 09:59:44.839824','2019-04-19 09:59:44.839824'),(962,'Southern Grenadine Islands','10',78,'2019-04-19 09:59:44.842861','2019-04-19 09:59:44.842861'),(963,'Abkhazia','AB',79,'2019-04-19 09:59:44.845435','2019-04-19 09:59:44.845435'),(964,'Ajaria','AJ',79,'2019-04-19 09:59:44.847814','2019-04-19 09:59:44.847814'),(965,'Guria','GU',79,'2019-04-19 09:59:44.850069','2019-04-19 09:59:44.850069'),(966,'Imeret’i','IM',79,'2019-04-19 09:59:44.852403','2019-04-19 09:59:44.852403'),(967,'Kakhet’i','KA',79,'2019-04-19 09:59:44.854835','2019-04-19 09:59:44.854835'),(968,'K’vemo K’art’li','KK',79,'2019-04-19 09:59:44.857491','2019-04-19 09:59:44.857491'),(969,'Mts’khet’a-Mt’ianet’i','MM',79,'2019-04-19 09:59:44.859936','2019-04-19 09:59:44.859936'),(970,'Racha-Lech’khumi-K’vemo Svanet’i','RL',79,'2019-04-19 09:59:44.862744','2019-04-19 09:59:44.862744'),(971,'Samts’khe-Javakhet’i','SJ',79,'2019-04-19 09:59:44.865160','2019-04-19 09:59:44.865160'),(972,'Shida K’art’li','SK',79,'2019-04-19 09:59:44.867705','2019-04-19 09:59:44.867705'),(973,'Samegrelo-Zemo Svanet’i','SZ',79,'2019-04-19 09:59:44.870627','2019-04-19 09:59:44.870627'),(974,'T’bilisi','TB',79,'2019-04-19 09:59:44.873626','2019-04-19 09:59:44.873626'),(975,'Greater Accra','AA',82,'2019-04-19 09:59:44.876387','2019-04-19 09:59:44.876387'),(976,'Ashanti','AH',82,'2019-04-19 09:59:44.879334','2019-04-19 09:59:44.879334'),(977,'Brong-Ahafo','BA',82,'2019-04-19 09:59:44.881724','2019-04-19 09:59:44.881724'),(978,'Central','CP',82,'2019-04-19 09:59:44.884045','2019-04-19 09:59:44.884045'),(979,'Eastern','EP',82,'2019-04-19 09:59:44.886814','2019-04-19 09:59:44.886814'),(980,'Northern','NP',82,'2019-04-19 09:59:44.889583','2019-04-19 09:59:44.889583'),(981,'Volta','TV',82,'2019-04-19 09:59:44.892995','2019-04-19 09:59:44.892995'),(982,'Upper East','UE',82,'2019-04-19 09:59:44.896554','2019-04-19 09:59:44.896554'),(983,'Upper West','UW',82,'2019-04-19 09:59:44.899291','2019-04-19 09:59:44.899291'),(984,'Western','WP',82,'2019-04-19 09:59:44.901689','2019-04-19 09:59:44.901689'),(985,'Kommune Kujalleq','KU',84,'2019-04-19 09:59:44.904532','2019-04-19 09:59:44.904532'),(986,'Qaasuitsup Kommunia','QA',84,'2019-04-19 09:59:44.907722','2019-04-19 09:59:44.907722'),(987,'Qeqqata Kommunia','QE',84,'2019-04-19 09:59:44.910604','2019-04-19 09:59:44.910604'),(988,'Kommuneqarfik Sermersooq','SM',84,'2019-04-19 09:59:44.915354','2019-04-19 09:59:44.915354'),(989,'Banjul','B',85,'2019-04-19 09:59:44.917714','2019-04-19 09:59:44.917714'),(990,'Lower River','L',85,'2019-04-19 09:59:44.920198','2019-04-19 09:59:44.920198'),(991,'Central River','M',85,'2019-04-19 09:59:44.923568','2019-04-19 09:59:44.923568'),(992,'North Bank','N',85,'2019-04-19 09:59:44.926314','2019-04-19 09:59:44.926314'),(993,'Upper River','U',85,'2019-04-19 09:59:44.928832','2019-04-19 09:59:44.928832'),(994,'Western','W',85,'2019-04-19 09:59:44.931182','2019-04-19 09:59:44.931182'),(995,'Boké','B',86,'2019-04-19 09:59:44.933581','2019-04-19 09:59:44.933581'),(996,'Conakry','C',86,'2019-04-19 09:59:44.935910','2019-04-19 09:59:44.935910'),(997,'Kindia','D',86,'2019-04-19 09:59:44.938329','2019-04-19 09:59:44.938329'),(998,'Faranah','F',86,'2019-04-19 09:59:44.941180','2019-04-19 09:59:44.941180'),(999,'Kankan','K',86,'2019-04-19 09:59:44.943984','2019-04-19 09:59:44.943984'),(1000,'Labé','L',86,'2019-04-19 09:59:44.946640','2019-04-19 09:59:44.946640'),(1001,'Mamou','M',86,'2019-04-19 09:59:44.949273','2019-04-19 09:59:44.949273'),(1002,'Nzérékoré','N',86,'2019-04-19 09:59:44.951938','2019-04-19 09:59:44.951938'),(1003,'Región Continental','C',88,'2019-04-19 09:59:44.954483','2019-04-19 09:59:44.954483'),(1004,'Región Insular','I',88,'2019-04-19 09:59:44.957672','2019-04-19 09:59:44.957672'),(1005,'Agio Oros','69',89,'2019-04-19 09:59:44.960305','2019-04-19 09:59:44.960305'),(1006,'Anatoliki Makedonia kai Thraki','A',89,'2019-04-19 09:59:44.962674','2019-04-19 09:59:44.962674'),(1007,'Kentriki Makedonia','B',89,'2019-04-19 09:59:44.964983','2019-04-19 09:59:44.964983'),(1008,'Dytiki Makedonia','C',89,'2019-04-19 09:59:44.967293','2019-04-19 09:59:44.967293'),(1009,'Ipeiros','D',89,'2019-04-19 09:59:44.969750','2019-04-19 09:59:44.969750'),(1010,'Thessalia','E',89,'2019-04-19 09:59:44.972811','2019-04-19 09:59:44.972811'),(1011,'Ionia Nisia','F',89,'2019-04-19 09:59:44.977496','2019-04-19 09:59:44.977496'),(1012,'Dytiki Ellada','G',89,'2019-04-19 09:59:44.980845','2019-04-19 09:59:44.980845'),(1013,'Sterea Ellada','H',89,'2019-04-19 09:59:44.983831','2019-04-19 09:59:44.983831'),(1014,'Attiki','I',89,'2019-04-19 09:59:44.986251','2019-04-19 09:59:44.986251'),(1015,'Peloponnisos','J',89,'2019-04-19 09:59:44.989311','2019-04-19 09:59:44.989311'),(1016,'Voreio Aigaio','K',89,'2019-04-19 09:59:44.992892','2019-04-19 09:59:44.992892'),(1017,'Notio Aigaio','L',89,'2019-04-19 09:59:44.995684','2019-04-19 09:59:44.995684'),(1018,'Kriti','M',89,'2019-04-19 09:59:44.998918','2019-04-19 09:59:44.998918'),(1019,'Alta Verapaz','AV',91,'2019-04-19 09:59:45.002097','2019-04-19 09:59:45.002097'),(1020,'Baja Verapaz','BV',91,'2019-04-19 09:59:45.005115','2019-04-19 09:59:45.005115'),(1021,'Chimaltenango','CM',91,'2019-04-19 09:59:45.008584','2019-04-19 09:59:45.008584'),(1022,'Chiquimula','CQ',91,'2019-04-19 09:59:45.011025','2019-04-19 09:59:45.011025'),(1023,'Escuintla','ES',91,'2019-04-19 09:59:45.013664','2019-04-19 09:59:45.013664'),(1024,'Guatemala','GU',91,'2019-04-19 09:59:45.015921','2019-04-19 09:59:45.015921'),(1025,'Huehuetenango','HU',91,'2019-04-19 09:59:45.018186','2019-04-19 09:59:45.018186'),(1026,'Izabal','IZ',91,'2019-04-19 09:59:45.020542','2019-04-19 09:59:45.020542'),(1027,'Jalapa','JA',91,'2019-04-19 09:59:45.023773','2019-04-19 09:59:45.023773'),(1028,'Jutiapa','JU',91,'2019-04-19 09:59:45.026518','2019-04-19 09:59:45.026518'),(1029,'Petén','PE',91,'2019-04-19 09:59:45.028987','2019-04-19 09:59:45.028987'),(1030,'El Progreso','PR',91,'2019-04-19 09:59:45.031643','2019-04-19 09:59:45.031643'),(1031,'Quiché','QC',91,'2019-04-19 09:59:45.033937','2019-04-19 09:59:45.033937'),(1032,'Quetzaltenango','QZ',91,'2019-04-19 09:59:45.036245','2019-04-19 09:59:45.036245'),(1033,'Retalhuleu','RE',91,'2019-04-19 09:59:45.039533','2019-04-19 09:59:45.039533'),(1034,'Sacatepéquez','SA',91,'2019-04-19 09:59:45.042237','2019-04-19 09:59:45.042237'),(1035,'San Marcos','SM',91,'2019-04-19 09:59:45.044712','2019-04-19 09:59:45.044712'),(1036,'Sololá','SO',91,'2019-04-19 09:59:45.047433','2019-04-19 09:59:45.047433'),(1037,'Santa Rosa','SR',91,'2019-04-19 09:59:45.049770','2019-04-19 09:59:45.049770'),(1038,'Suchitepéquez','SU',91,'2019-04-19 09:59:45.052226','2019-04-19 09:59:45.052226'),(1039,'Totonicapán','TO',91,'2019-04-19 09:59:45.055095','2019-04-19 09:59:45.055095'),(1040,'Zacapa','ZA',91,'2019-04-19 09:59:45.057997','2019-04-19 09:59:45.057997'),(1041,'Bissau','BS',93,'2019-04-19 09:59:45.060540','2019-04-19 09:59:45.060540'),(1042,'Leste','L',93,'2019-04-19 09:59:45.063360','2019-04-19 09:59:45.063360'),(1043,'Norte','N',93,'2019-04-19 09:59:45.066177','2019-04-19 09:59:45.066177'),(1044,'Sul','S',93,'2019-04-19 09:59:45.069053','2019-04-19 09:59:45.069053'),(1045,'Barima-Waini','BA',94,'2019-04-19 09:59:45.072002','2019-04-19 09:59:45.072002'),(1046,'Cuyuni-Mazaruni','CU',94,'2019-04-19 09:59:45.074925','2019-04-19 09:59:45.074925'),(1047,'Demerara-Mahaica','DE',94,'2019-04-19 09:59:45.078376','2019-04-19 09:59:45.078376'),(1048,'East Berbice-Corentyne','EB',94,'2019-04-19 09:59:45.081312','2019-04-19 09:59:45.081312'),(1049,'Essequibo Islands-West Demerara','ES',94,'2019-04-19 09:59:45.083885','2019-04-19 09:59:45.083885'),(1050,'Mahaica-Berbice','MA',94,'2019-04-19 09:59:45.086556','2019-04-19 09:59:45.086556'),(1051,'Pomeroon-Supenaam','PM',94,'2019-04-19 09:59:45.089179','2019-04-19 09:59:45.089179'),(1052,'Potaro-Siparuni','PT',94,'2019-04-19 09:59:45.092346','2019-04-19 09:59:45.092346'),(1053,'Upper Demerara-Berbice','UD',94,'2019-04-19 09:59:45.095471','2019-04-19 09:59:45.095471'),(1054,'Upper Takutu-Upper Essequibo','UT',94,'2019-04-19 09:59:45.098562','2019-04-19 09:59:45.098562'),(1055,'Atlántida','AT',97,'2019-04-19 09:59:45.101398','2019-04-19 09:59:45.101398'),(1056,'Choluteca','CH',97,'2019-04-19 09:59:45.103916','2019-04-19 09:59:45.103916'),(1057,'Colón','CL',97,'2019-04-19 09:59:45.109469','2019-04-19 09:59:45.109469'),(1058,'Comayagua','CM',97,'2019-04-19 09:59:45.113173','2019-04-19 09:59:45.113173'),(1059,'Copán','CP',97,'2019-04-19 09:59:45.115905','2019-04-19 09:59:45.115905'),(1060,'Cortés','CR',97,'2019-04-19 09:59:45.118638','2019-04-19 09:59:45.118638'),(1061,'El Paraíso','EP',97,'2019-04-19 09:59:45.121730','2019-04-19 09:59:45.121730'),(1062,'Francisco Morazán','FM',97,'2019-04-19 09:59:45.125046','2019-04-19 09:59:45.125046'),(1063,'Gracias a Dios','GD',97,'2019-04-19 09:59:45.127537','2019-04-19 09:59:45.127537'),(1064,'Islas de la Bahía','IB',97,'2019-04-19 09:59:45.130265','2019-04-19 09:59:45.130265'),(1065,'Intibucá','IN',97,'2019-04-19 09:59:45.132911','2019-04-19 09:59:45.132911'),(1066,'Lempira','LE',97,'2019-04-19 09:59:45.135799','2019-04-19 09:59:45.135799'),(1067,'La Paz','LP',97,'2019-04-19 09:59:45.138836','2019-04-19 09:59:45.138836'),(1068,'Ocotepeque','OC',97,'2019-04-19 09:59:45.142249','2019-04-19 09:59:45.142249'),(1069,'Olancho','OL',97,'2019-04-19 09:59:45.144918','2019-04-19 09:59:45.144918'),(1070,'Santa Bárbara','SB',97,'2019-04-19 09:59:45.147572','2019-04-19 09:59:45.147572'),(1071,'Valle','VA',97,'2019-04-19 09:59:45.150484','2019-04-19 09:59:45.150484'),(1072,'Yoro','YO',97,'2019-04-19 09:59:45.153237','2019-04-19 09:59:45.153237'),(1073,'Zagrebačka županija','01',98,'2019-04-19 09:59:45.156152','2019-04-19 09:59:45.156152'),(1074,'Krapinsko-zagorska županija','02',98,'2019-04-19 09:59:45.159616','2019-04-19 09:59:45.159616'),(1075,'Sisačko-moslavačka županija','03',98,'2019-04-19 09:59:45.162520','2019-04-19 09:59:45.162520'),(1076,'Karlovačka županija','04',98,'2019-04-19 09:59:45.165321','2019-04-19 09:59:45.165321'),(1077,'Varaždinska županija','05',98,'2019-04-19 09:59:45.168070','2019-04-19 09:59:45.168070'),(1078,'Koprivničko-križevačka županija','06',98,'2019-04-19 09:59:45.170658','2019-04-19 09:59:45.170658'),(1079,'Bjelovarsko-bilogorska županija','07',98,'2019-04-19 09:59:45.173748','2019-04-19 09:59:45.173748'),(1080,'Primorsko-goranska županija','08',98,'2019-04-19 09:59:45.176462','2019-04-19 09:59:45.176462'),(1081,'Ličko-senjska županija','09',98,'2019-04-19 09:59:45.178828','2019-04-19 09:59:45.178828'),(1082,'Virovitičko-podravska županija','10',98,'2019-04-19 09:59:45.181526','2019-04-19 09:59:45.181526'),(1083,'Požeško-slavonska županija','11',98,'2019-04-19 09:59:45.184570','2019-04-19 09:59:45.184570'),(1084,'Brodsko-posavska županija','12',98,'2019-04-19 09:59:45.187214','2019-04-19 09:59:45.187214'),(1085,'Zadarska županija','13',98,'2019-04-19 09:59:45.189961','2019-04-19 09:59:45.189961'),(1086,'Osječko-baranjska županija','14',98,'2019-04-19 09:59:45.192914','2019-04-19 09:59:45.192914'),(1087,'Šibensko-kninska županija','15',98,'2019-04-19 09:59:45.195257','2019-04-19 09:59:45.195257'),(1088,'Vukovarsko-srijemska županija','16',98,'2019-04-19 09:59:45.197689','2019-04-19 09:59:45.197689'),(1089,'Splitsko-dalmatinska županija','17',98,'2019-04-19 09:59:45.200013','2019-04-19 09:59:45.200013'),(1090,'Istarska županija','18',98,'2019-04-19 09:59:45.202337','2019-04-19 09:59:45.202337'),(1091,'Dubrovačko-neretvanska županija','19',98,'2019-04-19 09:59:45.204756','2019-04-19 09:59:45.204756'),(1092,'Međimurska županija','20',98,'2019-04-19 09:59:45.207521','2019-04-19 09:59:45.207521'),(1093,'Grad Zagreb','21',98,'2019-04-19 09:59:45.210000','2019-04-19 09:59:45.210000'),(1094,'Artibonite','AR',99,'2019-04-19 09:59:45.212571','2019-04-19 09:59:45.212571'),(1095,'Centre','CE',99,'2019-04-19 09:59:45.214925','2019-04-19 09:59:45.214925'),(1096,'Grande-Anse','GA',99,'2019-04-19 09:59:45.217641','2019-04-19 09:59:45.217641'),(1097,'Nord','ND',99,'2019-04-19 09:59:45.220102','2019-04-19 09:59:45.220102'),(1098,'Nord-Est','NE',99,'2019-04-19 09:59:45.222892','2019-04-19 09:59:45.222892'),(1099,'Nord-Ouest','NO',99,'2019-04-19 09:59:45.226043','2019-04-19 09:59:45.226043'),(1100,'Ouest','OU',99,'2019-04-19 09:59:45.229563','2019-04-19 09:59:45.229563'),(1101,'Sud','SD',99,'2019-04-19 09:59:45.232323','2019-04-19 09:59:45.232323'),(1102,'Sud-Est','SE',99,'2019-04-19 09:59:45.234627','2019-04-19 09:59:45.234627'),(1103,'Baranya','BA',100,'2019-04-19 09:59:45.237025','2019-04-19 09:59:45.237025'),(1104,'Békéscsaba','BC',100,'2019-04-19 09:59:45.239486','2019-04-19 09:59:45.239486'),(1105,'Békés','BE',100,'2019-04-19 09:59:45.241942','2019-04-19 09:59:45.241942'),(1106,'Bács-Kiskun','BK',100,'2019-04-19 09:59:45.244679','2019-04-19 09:59:45.244679'),(1107,'Budapest','BU',100,'2019-04-19 09:59:45.247382','2019-04-19 09:59:45.247382'),(1108,'Borsod-Abaúj-Zemplén','BZ',100,'2019-04-19 09:59:45.249778','2019-04-19 09:59:45.249778'),(1109,'Csongrád','CS',100,'2019-04-19 09:59:45.252076','2019-04-19 09:59:45.252076'),(1110,'Debrecen','DE',100,'2019-04-19 09:59:45.254341','2019-04-19 09:59:45.254341'),(1111,'Dunaújváros','DU',100,'2019-04-19 09:59:45.257225','2019-04-19 09:59:45.257225'),(1112,'Eger','EG',100,'2019-04-19 09:59:45.259645','2019-04-19 09:59:45.259645'),(1113,'Érd','ER',100,'2019-04-19 09:59:45.262198','2019-04-19 09:59:45.262198'),(1114,'Fejér','FE',100,'2019-04-19 09:59:45.264549','2019-04-19 09:59:45.264549'),(1115,'Győr-Moson-Sopron','GS',100,'2019-04-19 09:59:45.267375','2019-04-19 09:59:45.267375'),(1116,'Győr','GY',100,'2019-04-19 09:59:45.269729','2019-04-19 09:59:45.269729'),(1117,'Hajdú-Bihar','HB',100,'2019-04-19 09:59:45.272408','2019-04-19 09:59:45.272408'),(1118,'Heves','HE',100,'2019-04-19 09:59:45.275457','2019-04-19 09:59:45.275457'),(1119,'Hódmezővásárhely','HV',100,'2019-04-19 09:59:45.277863','2019-04-19 09:59:45.277863'),(1120,'Jász-Nagykun-Szolnok','JN',100,'2019-04-19 09:59:45.280327','2019-04-19 09:59:45.280327'),(1121,'Komárom-Esztergom','KE',100,'2019-04-19 09:59:45.282652','2019-04-19 09:59:45.282652'),(1122,'Kecskemét','KM',100,'2019-04-19 09:59:45.286296','2019-04-19 09:59:45.286296'),(1123,'Kaposvár','KV',100,'2019-04-19 09:59:45.289034','2019-04-19 09:59:45.289034'),(1124,'Miskolc','MI',100,'2019-04-19 09:59:45.291785','2019-04-19 09:59:45.291785'),(1125,'Nagykanizsa','NK',100,'2019-04-19 09:59:45.294177','2019-04-19 09:59:45.294177'),(1126,'Nógrád','NO',100,'2019-04-19 09:59:45.296468','2019-04-19 09:59:45.296468'),(1127,'Nyíregyháza','NY',100,'2019-04-19 09:59:45.299240','2019-04-19 09:59:45.299240'),(1128,'Pest','PE',100,'2019-04-19 09:59:45.302206','2019-04-19 09:59:45.302206'),(1129,'Pécs','PS',100,'2019-04-19 09:59:45.304729','2019-04-19 09:59:45.304729'),(1130,'Szeged','SD',100,'2019-04-19 09:59:45.307765','2019-04-19 09:59:45.307765'),(1131,'Székesfehérvár','SF',100,'2019-04-19 09:59:45.310257','2019-04-19 09:59:45.310257'),(1132,'Szombathely','SH',100,'2019-04-19 09:59:45.312675','2019-04-19 09:59:45.312675'),(1133,'Szolnok','SK',100,'2019-04-19 09:59:45.314988','2019-04-19 09:59:45.314988'),(1134,'Sopron','SN',100,'2019-04-19 09:59:45.317340','2019-04-19 09:59:45.317340'),(1135,'Somogy','SO',100,'2019-04-19 09:59:45.319654','2019-04-19 09:59:45.319654'),(1136,'Szekszárd','SS',100,'2019-04-19 09:59:45.322145','2019-04-19 09:59:45.322145'),(1137,'Salgótarján','ST',100,'2019-04-19 09:59:45.325165','2019-04-19 09:59:45.325165'),(1138,'Szabolcs-Szatmár-Bereg','SZ',100,'2019-04-19 09:59:45.327827','2019-04-19 09:59:45.327827'),(1139,'Tatabánya','TB',100,'2019-04-19 09:59:45.330258','2019-04-19 09:59:45.330258'),(1140,'Tolna','TO',100,'2019-04-19 09:59:45.332651','2019-04-19 09:59:45.332651'),(1141,'Vas','VA',100,'2019-04-19 09:59:45.335521','2019-04-19 09:59:45.335521'),(1142,'Veszprém (county)','VE',100,'2019-04-19 09:59:45.338093','2019-04-19 09:59:45.338093'),(1143,'Veszprém','VM',100,'2019-04-19 09:59:45.341551','2019-04-19 09:59:45.341551'),(1144,'Zala','ZA',100,'2019-04-19 09:59:45.344039','2019-04-19 09:59:45.344039'),(1145,'Zalaegerszeg','ZE',100,'2019-04-19 09:59:45.346384','2019-04-19 09:59:45.346384'),(1146,'Papua','IJ',101,'2019-04-19 09:59:45.348705','2019-04-19 09:59:45.348705'),(1147,'Jawa','JW',101,'2019-04-19 09:59:45.350949','2019-04-19 09:59:45.350949'),(1148,'Kalimantan','KA',101,'2019-04-19 09:59:45.353535','2019-04-19 09:59:45.353535'),(1149,'Maluku','ML',101,'2019-04-19 09:59:45.356547','2019-04-19 09:59:45.356547'),(1150,'Nusa Tenggara','NU',101,'2019-04-19 09:59:45.359282','2019-04-19 09:59:45.359282'),(1151,'Sulawesi','SL',101,'2019-04-19 09:59:45.362014','2019-04-19 09:59:45.362014'),(1152,'Sumatera','SM',101,'2019-04-19 09:59:45.365328','2019-04-19 09:59:45.365328'),(1153,'Connacht','C',102,'2019-04-19 09:59:45.369191','2019-04-19 09:59:45.369191'),(1154,'Leinster','L',102,'2019-04-19 09:59:45.372296','2019-04-19 09:59:45.372296'),(1155,'Munster','M',102,'2019-04-19 09:59:45.375390','2019-04-19 09:59:45.375390'),(1156,'Ulster','U',102,'2019-04-19 09:59:45.378218','2019-04-19 09:59:45.378218'),(1157,'HaDarom','D',103,'2019-04-19 09:59:45.381138','2019-04-19 09:59:45.381138'),(1158,'Hefa','HA',103,'2019-04-19 09:59:45.383891','2019-04-19 09:59:45.383891'),(1159,'Yerushalayim Al Quds','JM',103,'2019-04-19 09:59:45.386839','2019-04-19 09:59:45.386839'),(1160,'HaMerkaz','M',103,'2019-04-19 09:59:45.390760','2019-04-19 09:59:45.390760'),(1161,'Tel-Aviv','TA',103,'2019-04-19 09:59:45.394107','2019-04-19 09:59:45.394107'),(1162,'HaZafon','Z',103,'2019-04-19 09:59:45.397216','2019-04-19 09:59:45.397216'),(1163,'Andaman and Nicobar Islands','AN',105,'2019-04-19 09:59:45.400016','2019-04-19 09:59:45.400016'),(1164,'Andhra Pradesh','AP',105,'2019-04-19 09:59:45.402442','2019-04-19 09:59:45.402442'),(1165,'Arunachal Pradesh','AR',105,'2019-04-19 09:59:45.404950','2019-04-19 09:59:45.404950'),(1166,'Assam','AS',105,'2019-04-19 09:59:45.408363','2019-04-19 09:59:45.408363'),(1167,'Bihar','BR',105,'2019-04-19 09:59:45.411055','2019-04-19 09:59:45.411055'),(1168,'Chandigarh','CH',105,'2019-04-19 09:59:45.413330','2019-04-19 09:59:45.413330'),(1169,'Chhattisgarh','CT',105,'2019-04-19 09:59:45.415621','2019-04-19 09:59:45.415621'),(1170,'Damen and Diu','DD',105,'2019-04-19 09:59:45.417944','2019-04-19 09:59:45.417944'),(1171,'Delhi','DL',105,'2019-04-19 09:59:45.420173','2019-04-19 09:59:45.420173'),(1172,'Dadra and Nagar Haveli','DN',105,'2019-04-19 09:59:45.423285','2019-04-19 09:59:45.423285'),(1173,'Goa','GA',105,'2019-04-19 09:59:45.425830','2019-04-19 09:59:45.425830'),(1174,'Gujarat','GJ',105,'2019-04-19 09:59:45.428248','2019-04-19 09:59:45.428248'),(1175,'Himachal Pradesh','HP',105,'2019-04-19 09:59:45.431111','2019-04-19 09:59:45.431111'),(1176,'Haryana','HR',105,'2019-04-19 09:59:45.433708','2019-04-19 09:59:45.433708'),(1177,'Jharkhand','JH',105,'2019-04-19 09:59:45.436093','2019-04-19 09:59:45.436093'),(1178,'Jammu and Kashmir','JK',105,'2019-04-19 09:59:45.438907','2019-04-19 09:59:45.438907'),(1179,'Karnataka','KA',105,'2019-04-19 09:59:45.442311','2019-04-19 09:59:45.442311'),(1180,'Kerala','KL',105,'2019-04-19 09:59:45.444870','2019-04-19 09:59:45.444870'),(1181,'Lakshadweep','LD',105,'2019-04-19 09:59:45.447217','2019-04-19 09:59:45.447217'),(1182,'Maharashtra','MH',105,'2019-04-19 09:59:45.449669','2019-04-19 09:59:45.449669'),(1183,'Meghalaya','ML',105,'2019-04-19 09:59:45.452163','2019-04-19 09:59:45.452163'),(1184,'Manipur','MN',105,'2019-04-19 09:59:45.454576','2019-04-19 09:59:45.454576'),(1185,'Madhya Pradesh','MP',105,'2019-04-19 09:59:45.457507','2019-04-19 09:59:45.457507'),(1186,'Mizoram','MZ',105,'2019-04-19 09:59:45.460675','2019-04-19 09:59:45.460675'),(1187,'Nagaland','NL',105,'2019-04-19 09:59:45.463349','2019-04-19 09:59:45.463349'),(1188,'Orissa','OR',105,'2019-04-19 09:59:45.465799','2019-04-19 09:59:45.465799'),(1189,'Punjab','PB',105,'2019-04-19 09:59:45.468197','2019-04-19 09:59:45.468197'),(1190,'Puducherry','PY',105,'2019-04-19 09:59:45.470551','2019-04-19 09:59:45.470551'),(1191,'Rajasthan','RJ',105,'2019-04-19 09:59:45.473446','2019-04-19 09:59:45.473446'),(1192,'Sikkim','SK',105,'2019-04-19 09:59:45.476219','2019-04-19 09:59:45.476219'),(1193,'Tamil Nadu','TN',105,'2019-04-19 09:59:45.478784','2019-04-19 09:59:45.478784'),(1194,'Tripura','TR',105,'2019-04-19 09:59:45.481190','2019-04-19 09:59:45.481190'),(1195,'Uttar Pradesh','UP',105,'2019-04-19 09:59:45.483672','2019-04-19 09:59:45.483672'),(1196,'Uttarakhand','UT',105,'2019-04-19 09:59:45.486417','2019-04-19 09:59:45.486417'),(1197,'West Bengal','WB',105,'2019-04-19 09:59:45.492407','2019-04-19 09:59:45.492407'),(1198,'Telangana','TG',105,'2019-04-19 09:59:45.495779','2019-04-19 09:59:45.495779'),(1199,'Al Anbar','AN',107,'2019-04-19 09:59:45.498438','2019-04-19 09:59:45.498438'),(1200,'Arbil','AR',107,'2019-04-19 09:59:45.500812','2019-04-19 09:59:45.500812'),(1201,'Al Basrah','BA',107,'2019-04-19 09:59:45.503132','2019-04-19 09:59:45.503132'),(1202,'Babil','BB',107,'2019-04-19 09:59:45.505688','2019-04-19 09:59:45.505688'),(1203,'Baghdad','BG',107,'2019-04-19 09:59:45.509973','2019-04-19 09:59:45.509973'),(1204,'Dahuk','DA',107,'2019-04-19 09:59:45.512583','2019-04-19 09:59:45.512583'),(1205,'Diyala','DI',107,'2019-04-19 09:59:45.515256','2019-04-19 09:59:45.515256'),(1206,'Dhi Qar','DQ',107,'2019-04-19 09:59:45.517552','2019-04-19 09:59:45.517552'),(1207,'Karbala\'','KA',107,'2019-04-19 09:59:45.519884','2019-04-19 09:59:45.519884'),(1208,'Maysan','MA',107,'2019-04-19 09:59:45.522404','2019-04-19 09:59:45.522404'),(1209,'Al Muthanna','MU',107,'2019-04-19 09:59:45.525103','2019-04-19 09:59:45.525103'),(1210,'An Najef','NA',107,'2019-04-19 09:59:45.527413','2019-04-19 09:59:45.527413'),(1211,'Ninawa','NI',107,'2019-04-19 09:59:45.529684','2019-04-19 09:59:45.529684'),(1212,'Al Qadisiyah','QA',107,'2019-04-19 09:59:45.531964','2019-04-19 09:59:45.531964'),(1213,'Salah ad Din','SD',107,'2019-04-19 09:59:45.534199','2019-04-19 09:59:45.534199'),(1214,'As Sulaymaniyah','SW',107,'2019-04-19 09:59:45.536537','2019-04-19 09:59:45.536537'),(1215,'At Ta\'mim','TS',107,'2019-04-19 09:59:45.539294','2019-04-19 09:59:45.539294'),(1216,'Wasit','WA',107,'2019-04-19 09:59:45.542144','2019-04-19 09:59:45.542144'),(1217,'Āzarbāyjān-e Sharqī','01',108,'2019-04-19 09:59:45.544716','2019-04-19 09:59:45.544716'),(1218,'Āzarbāyjān-e Gharbī','02',108,'2019-04-19 09:59:45.547069','2019-04-19 09:59:45.547069'),(1219,'Ardabīl','03',108,'2019-04-19 09:59:45.549331','2019-04-19 09:59:45.549331'),(1220,'Eşfahān','04',108,'2019-04-19 09:59:45.551697','2019-04-19 09:59:45.551697'),(1221,'Īlām','05',108,'2019-04-19 09:59:45.554023','2019-04-19 09:59:45.554023'),(1222,'Būshehr','06',108,'2019-04-19 09:59:45.557097','2019-04-19 09:59:45.557097'),(1223,'Tehrān','07',108,'2019-04-19 09:59:45.559629','2019-04-19 09:59:45.559629'),(1224,'Chahār Mahāll va Bakhtīārī','08',108,'2019-04-19 09:59:45.562112','2019-04-19 09:59:45.562112'),(1225,'Khūzestān','10',108,'2019-04-19 09:59:45.564671','2019-04-19 09:59:45.564671'),(1226,'Zanjān','11',108,'2019-04-19 09:59:45.567279','2019-04-19 09:59:45.567279'),(1227,'Semnān','12',108,'2019-04-19 09:59:45.569664','2019-04-19 09:59:45.569664'),(1228,'Sīstān va Balūchestān','13',108,'2019-04-19 09:59:45.572270','2019-04-19 09:59:45.572270'),(1229,'Fārs','14',108,'2019-04-19 09:59:45.575004','2019-04-19 09:59:45.575004'),(1230,'Kermān','15',108,'2019-04-19 09:59:45.577345','2019-04-19 09:59:45.577345'),(1231,'Kordestān','16',108,'2019-04-19 09:59:45.579754','2019-04-19 09:59:45.579754'),(1232,'Kermānshāh','17',108,'2019-04-19 09:59:45.582478','2019-04-19 09:59:45.582478'),(1233,'Kohgīlūyeh va Būyer Ahmad','18',108,'2019-04-19 09:59:45.584855','2019-04-19 09:59:45.584855'),(1234,'Gīlān','19',108,'2019-04-19 09:59:45.587164','2019-04-19 09:59:45.587164'),(1235,'Lorestān','20',108,'2019-04-19 09:59:45.589832','2019-04-19 09:59:45.589832'),(1236,'Māzandarān','21',108,'2019-04-19 09:59:45.592549','2019-04-19 09:59:45.592549'),(1237,'Markazī','22',108,'2019-04-19 09:59:45.595534','2019-04-19 09:59:45.595534'),(1238,'Hormozgān','23',108,'2019-04-19 09:59:45.598045','2019-04-19 09:59:45.598045'),(1239,'Hamadān','24',108,'2019-04-19 09:59:45.600451','2019-04-19 09:59:45.600451'),(1240,'Yazd','25',108,'2019-04-19 09:59:45.602807','2019-04-19 09:59:45.602807'),(1241,'Qom','26',108,'2019-04-19 09:59:45.605295','2019-04-19 09:59:45.605295'),(1242,'Golestān','27',108,'2019-04-19 09:59:45.608096','2019-04-19 09:59:45.608096'),(1243,'Qazvīn','28',108,'2019-04-19 09:59:45.610421','2019-04-19 09:59:45.610421'),(1244,'Khorāsān-e Janūbī','29',108,'2019-04-19 09:59:45.612758','2019-04-19 09:59:45.612758'),(1245,'Khorāsān-e Razavī','30',108,'2019-04-19 09:59:45.615224','2019-04-19 09:59:45.615224'),(1246,'Khorāsān-e Shemālī','31',108,'2019-04-19 09:59:45.617561','2019-04-19 09:59:45.617561'),(1247,'Reykjavík','0',109,'2019-04-19 09:59:45.620412','2019-04-19 09:59:45.620412'),(1248,'Höfuðborgarsvæðið','1',109,'2019-04-19 09:59:45.623247','2019-04-19 09:59:45.623247'),(1249,'Suðurnes','2',109,'2019-04-19 09:59:45.625772','2019-04-19 09:59:45.625772'),(1250,'Vesturland','3',109,'2019-04-19 09:59:45.628095','2019-04-19 09:59:45.628095'),(1251,'Vestfirðir','4',109,'2019-04-19 09:59:45.630357','2019-04-19 09:59:45.630357'),(1252,'Norðurland vestra','5',109,'2019-04-19 09:59:45.632786','2019-04-19 09:59:45.632786'),(1253,'Norðurland eystra','6',109,'2019-04-19 09:59:45.635197','2019-04-19 09:59:45.635197'),(1254,'Austurland','7',109,'2019-04-19 09:59:45.637696','2019-04-19 09:59:45.637696'),(1255,'Suðurland','8',109,'2019-04-19 09:59:45.640455','2019-04-19 09:59:45.640455'),(1256,'Piemonte','21',110,'2019-04-19 09:59:45.643039','2019-04-19 09:59:45.643039'),(1257,'Valle d\'Aosta','23',110,'2019-04-19 09:59:45.645333','2019-04-19 09:59:45.645333'),(1258,'Lombardia','25',110,'2019-04-19 09:59:45.647871','2019-04-19 09:59:45.647871'),(1259,'Trentino-Alto Adige','32',110,'2019-04-19 09:59:45.650213','2019-04-19 09:59:45.650213'),(1260,'Veneto','34',110,'2019-04-19 09:59:45.652609','2019-04-19 09:59:45.652609'),(1261,'Friuli-Venezia Giulia','36',110,'2019-04-19 09:59:45.654989','2019-04-19 09:59:45.654989'),(1262,'Liguria','42',110,'2019-04-19 09:59:45.657886','2019-04-19 09:59:45.657886'),(1263,'Emilia-Romagna','45',110,'2019-04-19 09:59:45.660356','2019-04-19 09:59:45.660356'),(1264,'Toscana','52',110,'2019-04-19 09:59:45.662726','2019-04-19 09:59:45.662726'),(1265,'Umbria','55',110,'2019-04-19 09:59:45.665025','2019-04-19 09:59:45.665025'),(1266,'Marche','57',110,'2019-04-19 09:59:45.667336','2019-04-19 09:59:45.667336'),(1267,'Lazio','62',110,'2019-04-19 09:59:45.669568','2019-04-19 09:59:45.669568'),(1268,'Abruzzo','65',110,'2019-04-19 09:59:45.672238','2019-04-19 09:59:45.672238'),(1269,'Molise','67',110,'2019-04-19 09:59:45.675336','2019-04-19 09:59:45.675336'),(1270,'Campania','72',110,'2019-04-19 09:59:45.677860','2019-04-19 09:59:45.677860'),(1271,'Puglia','75',110,'2019-04-19 09:59:45.680231','2019-04-19 09:59:45.680231'),(1272,'Basilicata','77',110,'2019-04-19 09:59:45.682523','2019-04-19 09:59:45.682523'),(1273,'Calabria','78',110,'2019-04-19 09:59:45.684914','2019-04-19 09:59:45.684914'),(1274,'Sicilia','82',110,'2019-04-19 09:59:45.687307','2019-04-19 09:59:45.687307'),(1275,'Sardegna','88',110,'2019-04-19 09:59:45.690084','2019-04-19 09:59:45.690084'),(1276,'Kingston','01',112,'2019-04-19 09:59:45.692793','2019-04-19 09:59:45.692793'),(1277,'Saint Andrew','02',112,'2019-04-19 09:59:45.695216','2019-04-19 09:59:45.695216'),(1278,'Saint Thomas','03',112,'2019-04-19 09:59:45.697593','2019-04-19 09:59:45.697593'),(1279,'Portland','04',112,'2019-04-19 09:59:45.700034','2019-04-19 09:59:45.700034'),(1280,'Saint Mary','05',112,'2019-04-19 09:59:45.702397','2019-04-19 09:59:45.702397'),(1281,'Saint Ann','06',112,'2019-04-19 09:59:45.705095','2019-04-19 09:59:45.705095'),(1282,'Trelawny','07',112,'2019-04-19 09:59:45.708490','2019-04-19 09:59:45.708490'),(1283,'Saint James','08',112,'2019-04-19 09:59:45.711423','2019-04-19 09:59:45.711423'),(1284,'Hanover','09',112,'2019-04-19 09:59:45.714227','2019-04-19 09:59:45.714227'),(1285,'Westmoreland','10',112,'2019-04-19 09:59:45.717145','2019-04-19 09:59:45.717145'),(1286,'Saint Elizabeth','11',112,'2019-04-19 09:59:45.719720','2019-04-19 09:59:45.719720'),(1287,'Manchester','12',112,'2019-04-19 09:59:45.722315','2019-04-19 09:59:45.722315'),(1288,'Clarendon','13',112,'2019-04-19 09:59:45.725822','2019-04-19 09:59:45.725822'),(1289,'Saint Catherine','14',112,'2019-04-19 09:59:45.731162','2019-04-19 09:59:45.731162'),(1290,'‘Ajlūn','AJ',113,'2019-04-19 09:59:45.735576','2019-04-19 09:59:45.735576'),(1291,'‘Ammān (Al ‘Aşimah)','AM',113,'2019-04-19 09:59:45.741371','2019-04-19 09:59:45.741371'),(1292,'Al ‘Aqabah','AQ',113,'2019-04-19 09:59:45.745386','2019-04-19 09:59:45.745386'),(1293,'Aţ Ţafīlah','AT',113,'2019-04-19 09:59:45.748734','2019-04-19 09:59:45.748734'),(1294,'Az Zarqā\'','AZ',113,'2019-04-19 09:59:45.751702','2019-04-19 09:59:45.751702'),(1295,'Al Balqā\'','BA',113,'2019-04-19 09:59:45.754794','2019-04-19 09:59:45.754794'),(1296,'Irbid','IR',113,'2019-04-19 09:59:45.758350','2019-04-19 09:59:45.758350'),(1297,'Jarash','JA',113,'2019-04-19 09:59:45.762249','2019-04-19 09:59:45.762249'),(1298,'Al Karak','KA',113,'2019-04-19 09:59:45.765137','2019-04-19 09:59:45.765137'),(1299,'Al Mafraq','MA',113,'2019-04-19 09:59:45.767810','2019-04-19 09:59:45.767810'),(1300,'Mādabā','MD',113,'2019-04-19 09:59:45.770725','2019-04-19 09:59:45.770725'),(1301,'Ma‘ān','MN',113,'2019-04-19 09:59:45.775611','2019-04-19 09:59:45.775611'),(1302,'Hokkaido','01',114,'2019-04-19 09:59:45.779392','2019-04-19 09:59:45.779392'),(1303,'Aomori','02',114,'2019-04-19 09:59:45.786059','2019-04-19 09:59:45.786059'),(1304,'Iwate','03',114,'2019-04-19 09:59:45.789309','2019-04-19 09:59:45.789309'),(1305,'Miyagi','04',114,'2019-04-19 09:59:45.793518','2019-04-19 09:59:45.793518'),(1306,'Akita','05',114,'2019-04-19 09:59:45.796217','2019-04-19 09:59:45.796217'),(1307,'Yamagata','06',114,'2019-04-19 09:59:45.799217','2019-04-19 09:59:45.799217'),(1308,'Fukushima','07',114,'2019-04-19 09:59:45.803675','2019-04-19 09:59:45.803675'),(1309,'Ibaraki','08',114,'2019-04-19 09:59:45.807256','2019-04-19 09:59:45.807256'),(1310,'Tochigi','09',114,'2019-04-19 09:59:45.810253','2019-04-19 09:59:45.810253'),(1311,'Gunma','10',114,'2019-04-19 09:59:45.812784','2019-04-19 09:59:45.812784'),(1312,'Saitama','11',114,'2019-04-19 09:59:45.815378','2019-04-19 09:59:45.815378'),(1313,'Chiba','12',114,'2019-04-19 09:59:45.817944','2019-04-19 09:59:45.817944'),(1314,'Tokyo','13',114,'2019-04-19 09:59:45.820422','2019-04-19 09:59:45.820422'),(1315,'Kanagawa','14',114,'2019-04-19 09:59:45.823118','2019-04-19 09:59:45.823118'),(1316,'Niigata','15',114,'2019-04-19 09:59:45.826344','2019-04-19 09:59:45.826344'),(1317,'Toyama','16',114,'2019-04-19 09:59:45.828809','2019-04-19 09:59:45.828809'),(1318,'Ishikawa','17',114,'2019-04-19 09:59:45.831622','2019-04-19 09:59:45.831622'),(1319,'Fukui','18',114,'2019-04-19 09:59:45.834511','2019-04-19 09:59:45.834511'),(1320,'Yamanashi','19',114,'2019-04-19 09:59:45.837096','2019-04-19 09:59:45.837096'),(1321,'Nagano','20',114,'2019-04-19 09:59:45.839818','2019-04-19 09:59:45.839818'),(1322,'Gifu','21',114,'2019-04-19 09:59:45.843360','2019-04-19 09:59:45.843360'),(1323,'Shizuoka','22',114,'2019-04-19 09:59:45.845838','2019-04-19 09:59:45.845838'),(1324,'Aichi','23',114,'2019-04-19 09:59:45.848670','2019-04-19 09:59:45.848670'),(1325,'Mie','24',114,'2019-04-19 09:59:45.851017','2019-04-19 09:59:45.851017'),(1326,'Shiga','25',114,'2019-04-19 09:59:45.854002','2019-04-19 09:59:45.854002'),(1327,'Kyoto','26',114,'2019-04-19 09:59:45.857767','2019-04-19 09:59:45.857767'),(1328,'Osaka','27',114,'2019-04-19 09:59:45.860648','2019-04-19 09:59:45.860648'),(1329,'Hyogo','28',114,'2019-04-19 09:59:45.862989','2019-04-19 09:59:45.862989'),(1330,'Nara','29',114,'2019-04-19 09:59:45.865314','2019-04-19 09:59:45.865314'),(1331,'Wakayama','30',114,'2019-04-19 09:59:45.867965','2019-04-19 09:59:45.867965'),(1332,'Tottori','31',114,'2019-04-19 09:59:45.870418','2019-04-19 09:59:45.870418'),(1333,'Shimane','32',114,'2019-04-19 09:59:45.873568','2019-04-19 09:59:45.873568'),(1334,'Okayama','33',114,'2019-04-19 09:59:45.876185','2019-04-19 09:59:45.876185'),(1335,'Hiroshima','34',114,'2019-04-19 09:59:45.878614','2019-04-19 09:59:45.878614'),(1336,'Yamaguchi','35',114,'2019-04-19 09:59:45.881035','2019-04-19 09:59:45.881035'),(1337,'Tokushima','36',114,'2019-04-19 09:59:45.883443','2019-04-19 09:59:45.883443'),(1338,'Kagawa','37',114,'2019-04-19 09:59:45.886704','2019-04-19 09:59:45.886704'),(1339,'Ehime','38',114,'2019-04-19 09:59:45.889851','2019-04-19 09:59:45.889851'),(1340,'Kochi','39',114,'2019-04-19 09:59:45.893197','2019-04-19 09:59:45.893197'),(1341,'Fukuoka','40',114,'2019-04-19 09:59:45.895700','2019-04-19 09:59:45.895700'),(1342,'Saga','41',114,'2019-04-19 09:59:45.898397','2019-04-19 09:59:45.898397'),(1343,'Nagasaki','42',114,'2019-04-19 09:59:45.900915','2019-04-19 09:59:45.900915'),(1344,'Kumamoto','43',114,'2019-04-19 09:59:45.903349','2019-04-19 09:59:45.903349'),(1345,'Oita','44',114,'2019-04-19 09:59:45.906195','2019-04-19 09:59:45.906195'),(1346,'Miyazaki','45',114,'2019-04-19 09:59:45.909028','2019-04-19 09:59:45.909028'),(1347,'Kagoshima','46',114,'2019-04-19 09:59:45.911420','2019-04-19 09:59:45.911420'),(1348,'Okinawa','47',114,'2019-04-19 09:59:45.913781','2019-04-19 09:59:45.913781'),(1349,'Baringo','01',115,'2019-04-19 09:59:45.916304','2019-04-19 09:59:45.916304'),(1350,'Bomet','02',115,'2019-04-19 09:59:45.918814','2019-04-19 09:59:45.918814'),(1351,'Bungoma','03',115,'2019-04-19 09:59:45.921449','2019-04-19 09:59:45.921449'),(1352,'Busia','04',115,'2019-04-19 09:59:45.925812','2019-04-19 09:59:45.925812'),(1353,'Elgeyo/Marakwet','05',115,'2019-04-19 09:59:45.929018','2019-04-19 09:59:45.929018'),(1354,'Embu','06',115,'2019-04-19 09:59:45.932567','2019-04-19 09:59:45.932567'),(1355,'Garissa','07',115,'2019-04-19 09:59:45.935501','2019-04-19 09:59:45.935501'),(1356,'Homa Bay','08',115,'2019-04-19 09:59:45.938008','2019-04-19 09:59:45.938008'),(1357,'Isiolo','09',115,'2019-04-19 09:59:45.941978','2019-04-19 09:59:45.941978'),(1358,'Kajiado','10',115,'2019-04-19 09:59:45.944484','2019-04-19 09:59:45.944484'),(1359,'Kakamega','11',115,'2019-04-19 09:59:45.947224','2019-04-19 09:59:45.947224'),(1360,'Kericho','12',115,'2019-04-19 09:59:45.949811','2019-04-19 09:59:45.949811'),(1361,'Kiambu','13',115,'2019-04-19 09:59:45.952430','2019-04-19 09:59:45.952430'),(1362,'Kilifi','14',115,'2019-04-19 09:59:45.955243','2019-04-19 09:59:45.955243'),(1363,'Kirinyaga','15',115,'2019-04-19 09:59:45.958784','2019-04-19 09:59:45.958784'),(1364,'Kisii','16',115,'2019-04-19 09:59:45.961240','2019-04-19 09:59:45.961240'),(1365,'Kisumu','17',115,'2019-04-19 09:59:45.963629','2019-04-19 09:59:45.963629'),(1366,'Kitui','18',115,'2019-04-19 09:59:45.965939','2019-04-19 09:59:45.965939'),(1367,'Kwale','19',115,'2019-04-19 09:59:45.968232','2019-04-19 09:59:45.968232'),(1368,'Laikipia','20',115,'2019-04-19 09:59:45.970978','2019-04-19 09:59:45.970978'),(1369,'Lamu','21',115,'2019-04-19 09:59:45.974112','2019-04-19 09:59:45.974112'),(1370,'Machakos','22',115,'2019-04-19 09:59:45.976794','2019-04-19 09:59:45.976794'),(1371,'Makueni','23',115,'2019-04-19 09:59:45.979311','2019-04-19 09:59:45.979311'),(1372,'Mandera','24',115,'2019-04-19 09:59:45.981940','2019-04-19 09:59:45.981940'),(1373,'Marsabit','25',115,'2019-04-19 09:59:45.984609','2019-04-19 09:59:45.984609'),(1374,'Meru','26',115,'2019-04-19 09:59:45.988515','2019-04-19 09:59:45.988515'),(1375,'Migori','27',115,'2019-04-19 09:59:45.991493','2019-04-19 09:59:45.991493'),(1376,'Mombasa','28',115,'2019-04-19 09:59:45.993898','2019-04-19 09:59:45.993898'),(1377,'Murang\'a','29',115,'2019-04-19 09:59:45.996270','2019-04-19 09:59:45.996270'),(1378,'Nairobi City','30',115,'2019-04-19 09:59:45.998646','2019-04-19 09:59:45.998646'),(1379,'Nakuru','31',115,'2019-04-19 09:59:46.001179','2019-04-19 09:59:46.001179'),(1380,'Nandi','32',115,'2019-04-19 09:59:46.004431','2019-04-19 09:59:46.004431'),(1381,'Narok','33',115,'2019-04-19 09:59:46.008617','2019-04-19 09:59:46.008617'),(1382,'Nyamira','34',115,'2019-04-19 09:59:46.011309','2019-04-19 09:59:46.011309'),(1383,'Nyandarua','35',115,'2019-04-19 09:59:46.013650','2019-04-19 09:59:46.013650'),(1384,'Nyeri','36',115,'2019-04-19 09:59:46.015979','2019-04-19 09:59:46.015979'),(1385,'Samburu','37',115,'2019-04-19 09:59:46.018626','2019-04-19 09:59:46.018626'),(1386,'Siaya','38',115,'2019-04-19 09:59:46.021117','2019-04-19 09:59:46.021117'),(1387,'Taita/Taveta','39',115,'2019-04-19 09:59:46.023865','2019-04-19 09:59:46.023865'),(1388,'Tana River','40',115,'2019-04-19 09:59:46.026590','2019-04-19 09:59:46.026590'),(1389,'Tharaka-Nithi','41',115,'2019-04-19 09:59:46.028985','2019-04-19 09:59:46.028985'),(1390,'Trans Nzoia','42',115,'2019-04-19 09:59:46.031371','2019-04-19 09:59:46.031371'),(1391,'Turkana','43',115,'2019-04-19 09:59:46.034106','2019-04-19 09:59:46.034106'),(1392,'Uasin Gishu','44',115,'2019-04-19 09:59:46.036632','2019-04-19 09:59:46.036632'),(1393,'Vihiga','45',115,'2019-04-19 09:59:46.040630','2019-04-19 09:59:46.040630'),(1394,'Wajir','46',115,'2019-04-19 09:59:46.043527','2019-04-19 09:59:46.043527'),(1395,'West Pokot','47',115,'2019-04-19 09:59:46.045897','2019-04-19 09:59:46.045897'),(1396,'Batken','B',116,'2019-04-19 09:59:46.048281','2019-04-19 09:59:46.048281'),(1397,'Chü','C',116,'2019-04-19 09:59:46.050638','2019-04-19 09:59:46.050638'),(1398,'Bishkek','GB',116,'2019-04-19 09:59:46.052960','2019-04-19 09:59:46.052960'),(1399,'Jalal-Abad','J',116,'2019-04-19 09:59:46.055541','2019-04-19 09:59:46.055541'),(1400,'Naryn','N',116,'2019-04-19 09:59:46.058528','2019-04-19 09:59:46.058528'),(1401,'Osh','O',116,'2019-04-19 09:59:46.061197','2019-04-19 09:59:46.061197'),(1402,'Talas','T',116,'2019-04-19 09:59:46.063715','2019-04-19 09:59:46.063715'),(1403,'Ysyk-Köl','Y',116,'2019-04-19 09:59:46.066108','2019-04-19 09:59:46.066108'),(1404,'Banteay Mean Chey','1',117,'2019-04-19 09:59:46.069399','2019-04-19 09:59:46.069399'),(1405,'Krachoh','10',117,'2019-04-19 09:59:46.072789','2019-04-19 09:59:46.072789'),(1406,'Mondol Kiri','11',117,'2019-04-19 09:59:46.078274','2019-04-19 09:59:46.078274'),(1407,'Phnom Penh','12',117,'2019-04-19 09:59:46.080852','2019-04-19 09:59:46.080852'),(1408,'Preah Vihear','13',117,'2019-04-19 09:59:46.083174','2019-04-19 09:59:46.083174'),(1409,'Prey Veaeng','14',117,'2019-04-19 09:59:46.085679','2019-04-19 09:59:46.085679'),(1410,'Pousaat','15',117,'2019-04-19 09:59:46.089174','2019-04-19 09:59:46.089174'),(1411,'Rotanak Kiri','16',117,'2019-04-19 09:59:46.093559','2019-04-19 09:59:46.093559'),(1412,'Siem Reab','17',117,'2019-04-19 09:59:46.096774','2019-04-19 09:59:46.096774'),(1413,'Krong Preah Sihanouk','18',117,'2019-04-19 09:59:46.099903','2019-04-19 09:59:46.099903'),(1414,'Stueng Traeng','19',117,'2019-04-19 09:59:46.102452','2019-04-19 09:59:46.102452'),(1415,'Battambang','2',117,'2019-04-19 09:59:46.113591','2019-04-19 09:59:46.113591'),(1416,'Svaay Rieng','20',117,'2019-04-19 09:59:46.119364','2019-04-19 09:59:46.119364'),(1417,'Taakaev','21',117,'2019-04-19 09:59:46.125319','2019-04-19 09:59:46.125319'),(1418,'Otdar Mean Chey','22',117,'2019-04-19 09:59:46.134913','2019-04-19 09:59:46.134913'),(1419,'Krong Kaeb','23',117,'2019-04-19 09:59:46.144549','2019-04-19 09:59:46.144549'),(1420,'Krong Pailin','24',117,'2019-04-19 09:59:46.148808','2019-04-19 09:59:46.148808'),(1421,'Kampong Cham','3',117,'2019-04-19 09:59:46.153561','2019-04-19 09:59:46.153561'),(1422,'Kampong Chhnang','4',117,'2019-04-19 09:59:46.158784','2019-04-19 09:59:46.158784'),(1423,'Kampong Speu','5',117,'2019-04-19 09:59:46.163559','2019-04-19 09:59:46.163559'),(1424,'Kampong Thom','6',117,'2019-04-19 09:59:46.166907','2019-04-19 09:59:46.166907'),(1425,'Kampot','7',117,'2019-04-19 09:59:46.171002','2019-04-19 09:59:46.171002'),(1426,'Kandal','8',117,'2019-04-19 09:59:46.175973','2019-04-19 09:59:46.175973'),(1427,'Kach Kong','9',117,'2019-04-19 09:59:46.181130','2019-04-19 09:59:46.181130'),(1428,'Gilbert Islands','G',118,'2019-04-19 09:59:46.184103','2019-04-19 09:59:46.184103'),(1429,'Line Islands','L',118,'2019-04-19 09:59:46.187973','2019-04-19 09:59:46.187973'),(1430,'Phoenix Islands','P',118,'2019-04-19 09:59:46.191950','2019-04-19 09:59:46.191950'),(1431,'Andjouân (Anjwān)','A',119,'2019-04-19 09:59:46.196114','2019-04-19 09:59:46.196114'),(1432,'Andjazîdja (Anjazījah)','G',119,'2019-04-19 09:59:46.199500','2019-04-19 09:59:46.199500'),(1433,'Moûhîlî (Mūhīlī)','M',119,'2019-04-19 09:59:46.202154','2019-04-19 09:59:46.202154'),(1434,'Saint Kitts','K',120,'2019-04-19 09:59:46.205462','2019-04-19 09:59:46.205462'),(1435,'Nevis','N',120,'2019-04-19 09:59:46.209488','2019-04-19 09:59:46.209488'),(1436,'P’yŏngyang','01',121,'2019-04-19 09:59:46.213709','2019-04-19 09:59:46.213709'),(1437,'P’yŏngan-namdo','02',121,'2019-04-19 09:59:46.216815','2019-04-19 09:59:46.216815'),(1438,'P’yŏngan-bukto','03',121,'2019-04-19 09:59:46.220272','2019-04-19 09:59:46.220272'),(1439,'Chagang-do','04',121,'2019-04-19 09:59:46.223756','2019-04-19 09:59:46.223756'),(1440,'Hwanghae-namdo','05',121,'2019-04-19 09:59:46.227896','2019-04-19 09:59:46.227896'),(1441,'Hwanghae-bukto','06',121,'2019-04-19 09:59:46.230681','2019-04-19 09:59:46.230681'),(1442,'Kangwŏn-do','07',121,'2019-04-19 09:59:46.233419','2019-04-19 09:59:46.233419'),(1443,'Hamgyŏng-namdo','08',121,'2019-04-19 09:59:46.236775','2019-04-19 09:59:46.236775'),(1444,'Hamgyŏng-bukto','09',121,'2019-04-19 09:59:46.239666','2019-04-19 09:59:46.239666'),(1445,'Yanggang-do','10',121,'2019-04-19 09:59:46.243258','2019-04-19 09:59:46.243258'),(1446,'Nasŏn (Najin-Sŏnbong)','13',121,'2019-04-19 09:59:46.246008','2019-04-19 09:59:46.246008'),(1447,'Seoul Teugbyeolsi','11',122,'2019-04-19 09:59:46.248725','2019-04-19 09:59:46.248725'),(1448,'Busan Gwang\'yeogsi','26',122,'2019-04-19 09:59:46.251554','2019-04-19 09:59:46.251554'),(1449,'Daegu Gwang\'yeogsi','27',122,'2019-04-19 09:59:46.254221','2019-04-19 09:59:46.254221'),(1450,'Incheon Gwang\'yeogsi','28',122,'2019-04-19 09:59:46.257186','2019-04-19 09:59:46.257186'),(1451,'Gwangju Gwang\'yeogsi','29',122,'2019-04-19 09:59:46.260583','2019-04-19 09:59:46.260583'),(1452,'Daejeon Gwang\'yeogsi','30',122,'2019-04-19 09:59:46.263573','2019-04-19 09:59:46.263573'),(1453,'Ulsan Gwang\'yeogsi','31',122,'2019-04-19 09:59:46.266159','2019-04-19 09:59:46.266159'),(1454,'Gyeonggido','41',122,'2019-04-19 09:59:46.269082','2019-04-19 09:59:46.269082'),(1455,'Gang\'weondo','42',122,'2019-04-19 09:59:46.271748','2019-04-19 09:59:46.271748'),(1456,'Chungcheongbukdo','43',122,'2019-04-19 09:59:46.275260','2019-04-19 09:59:46.275260'),(1457,'Chungcheongnamdo','44',122,'2019-04-19 09:59:46.278037','2019-04-19 09:59:46.278037'),(1458,'Jeonrabukdo','45',122,'2019-04-19 09:59:46.280479','2019-04-19 09:59:46.280479'),(1459,'Jeonranamdo','46',122,'2019-04-19 09:59:46.283379','2019-04-19 09:59:46.283379'),(1460,'Gyeongsangbukdo','47',122,'2019-04-19 09:59:46.286292','2019-04-19 09:59:46.286292'),(1461,'Gyeongsangnamdo','48',122,'2019-04-19 09:59:46.289521','2019-04-19 09:59:46.289521'),(1462,'Jejudo','49',122,'2019-04-19 09:59:46.293352','2019-04-19 09:59:46.293352'),(1463,'Al Ahmadi','AH',123,'2019-04-19 09:59:46.296019','2019-04-19 09:59:46.296019'),(1464,'Al Farwānīyah','FA',123,'2019-04-19 09:59:46.298725','2019-04-19 09:59:46.298725'),(1465,'Hawallī','HA',123,'2019-04-19 09:59:46.301956','2019-04-19 09:59:46.301956'),(1466,'Al Jahrrā’','JA',123,'2019-04-19 09:59:46.304603','2019-04-19 09:59:46.304603'),(1467,'Al Kuwayt (Al ‘Āşimah)','KU',123,'2019-04-19 09:59:46.308106','2019-04-19 09:59:46.308106'),(1468,'Mubārak al Kabīr','MU',123,'2019-04-19 09:59:46.312128','2019-04-19 09:59:46.312128'),(1469,'Aqmola oblysy','AKM',125,'2019-04-19 09:59:46.316653','2019-04-19 09:59:46.316653'),(1470,'Aqtöbe oblysy','AKT',125,'2019-04-19 09:59:46.320369','2019-04-19 09:59:46.320369'),(1471,'Almaty','ALA',125,'2019-04-19 09:59:46.323807','2019-04-19 09:59:46.323807'),(1472,'Almaty oblysy','ALM',125,'2019-04-19 09:59:46.327522','2019-04-19 09:59:46.327522'),(1473,'Astana','AST',125,'2019-04-19 09:59:46.330120','2019-04-19 09:59:46.330120'),(1474,'Atyraū oblysy','ATY',125,'2019-04-19 09:59:46.333283','2019-04-19 09:59:46.333283'),(1475,'Qaraghandy oblysy','KAR',125,'2019-04-19 09:59:46.336103','2019-04-19 09:59:46.336103'),(1476,'Qostanay oblysy','KUS',125,'2019-04-19 09:59:46.338824','2019-04-19 09:59:46.338824'),(1477,'Qyzylorda oblysy','KZY',125,'2019-04-19 09:59:46.342578','2019-04-19 09:59:46.342578'),(1478,'Mangghystaū oblysy','MAN',125,'2019-04-19 09:59:46.345142','2019-04-19 09:59:46.345142'),(1479,'Pavlodar oblysy','PAV',125,'2019-04-19 09:59:46.347972','2019-04-19 09:59:46.347972'),(1480,'Soltüstik Quzaqstan oblysy','SEV',125,'2019-04-19 09:59:46.350588','2019-04-19 09:59:46.350588'),(1481,'Shyghys Qazaqstan oblysy','VOS',125,'2019-04-19 09:59:46.353061','2019-04-19 09:59:46.353061'),(1482,'Ongtüstik Qazaqstan oblysy','YUZ',125,'2019-04-19 09:59:46.356057','2019-04-19 09:59:46.356057'),(1483,'Batys Quzaqstan oblysy','ZAP',125,'2019-04-19 09:59:46.359409','2019-04-19 09:59:46.359409'),(1484,'Zhambyl oblysy','ZHA',125,'2019-04-19 09:59:46.362026','2019-04-19 09:59:46.362026'),(1485,'Attapu','AT',126,'2019-04-19 09:59:46.364905','2019-04-19 09:59:46.364905'),(1486,'Bokèo','BK',126,'2019-04-19 09:59:46.367398','2019-04-19 09:59:46.367398'),(1487,'Bolikhamxai','BL',126,'2019-04-19 09:59:46.370392','2019-04-19 09:59:46.370392'),(1488,'Champasak','CH',126,'2019-04-19 09:59:46.375053','2019-04-19 09:59:46.375053'),(1489,'Houaphan','HO',126,'2019-04-19 09:59:46.378126','2019-04-19 09:59:46.378126'),(1490,'Khammouan','KH',126,'2019-04-19 09:59:46.381157','2019-04-19 09:59:46.381157'),(1491,'Louang Namtha','LM',126,'2019-04-19 09:59:46.383644','2019-04-19 09:59:46.383644'),(1492,'Louangphabang','LP',126,'2019-04-19 09:59:46.386303','2019-04-19 09:59:46.386303'),(1493,'Oudômxai','OU',126,'2019-04-19 09:59:46.390958','2019-04-19 09:59:46.390958'),(1494,'Phôngsali','PH',126,'2019-04-19 09:59:46.394346','2019-04-19 09:59:46.394346'),(1495,'Salavan','SL',126,'2019-04-19 09:59:46.397965','2019-04-19 09:59:46.397965'),(1496,'Savannakhét','SV',126,'2019-04-19 09:59:46.400717','2019-04-19 09:59:46.400717'),(1497,'Vientiane','VI',126,'2019-04-19 09:59:46.404631','2019-04-19 09:59:46.404631'),(1498,'Vientiane','VT',126,'2019-04-19 09:59:46.412083','2019-04-19 09:59:46.412083'),(1499,'Xaignabouli','XA',126,'2019-04-19 09:59:46.415223','2019-04-19 09:59:46.415223'),(1500,'Xékong','XE',126,'2019-04-19 09:59:46.418451','2019-04-19 09:59:46.418451'),(1501,'Xiangkhouang','XI',126,'2019-04-19 09:59:46.423592','2019-04-19 09:59:46.423592'),(1502,'Xaisômboun','XS',126,'2019-04-19 09:59:46.428533','2019-04-19 09:59:46.428533'),(1503,'Aakkâr','AK',127,'2019-04-19 09:59:46.432628','2019-04-19 09:59:46.432628'),(1504,'Liban-Nord','AS',127,'2019-04-19 09:59:46.436114','2019-04-19 09:59:46.436114'),(1505,'Beyrouth','BA',127,'2019-04-19 09:59:46.438977','2019-04-19 09:59:46.438977'),(1506,'Baalbek-Hermel','BH',127,'2019-04-19 09:59:46.442046','2019-04-19 09:59:46.442046'),(1507,'Béqaa','BI',127,'2019-04-19 09:59:46.445061','2019-04-19 09:59:46.445061'),(1508,'Liban-Sud','JA',127,'2019-04-19 09:59:46.447520','2019-04-19 09:59:46.447520'),(1509,'Mont-Liban','JL',127,'2019-04-19 09:59:46.450070','2019-04-19 09:59:46.450070'),(1510,'Nabatîyé','NA',127,'2019-04-19 09:59:46.453461','2019-04-19 09:59:46.453461'),(1511,'Balzers','01',129,'2019-04-19 09:59:46.457050','2019-04-19 09:59:46.457050'),(1512,'Eschen','02',129,'2019-04-19 09:59:46.460563','2019-04-19 09:59:46.460563'),(1513,'Gamprin','03',129,'2019-04-19 09:59:46.463111','2019-04-19 09:59:46.463111'),(1514,'Mauren','04',129,'2019-04-19 09:59:46.465529','2019-04-19 09:59:46.465529'),(1515,'Planken','05',129,'2019-04-19 09:59:46.468258','2019-04-19 09:59:46.468258'),(1516,'Ruggell','06',129,'2019-04-19 09:59:46.471210','2019-04-19 09:59:46.471210'),(1517,'Schaan','07',129,'2019-04-19 09:59:46.474362','2019-04-19 09:59:46.474362'),(1518,'Schellenberg','08',129,'2019-04-19 09:59:46.477330','2019-04-19 09:59:46.477330'),(1519,'Triesen','09',129,'2019-04-19 09:59:46.479806','2019-04-19 09:59:46.479806'),(1520,'Triesenberg','10',129,'2019-04-19 09:59:46.482166','2019-04-19 09:59:46.482166'),(1521,'Vaduz','11',129,'2019-04-19 09:59:46.485068','2019-04-19 09:59:46.485068'),(1522,'Basnāhira paḷāta','1',130,'2019-04-19 09:59:46.488105','2019-04-19 09:59:46.488105'),(1523,'Madhyama paḷāta','2',130,'2019-04-19 09:59:46.492470','2019-04-19 09:59:46.492470'),(1524,'Dakuṇu paḷāta','3',130,'2019-04-19 09:59:46.495200','2019-04-19 09:59:46.495200'),(1525,'Uturu paḷāta','4',130,'2019-04-19 09:59:46.497536','2019-04-19 09:59:46.497536'),(1526,'Næ̆gĕnahira paḷāta','5',130,'2019-04-19 09:59:46.500251','2019-04-19 09:59:46.500251'),(1527,'Vayamba paḷāta','6',130,'2019-04-19 09:59:46.502657','2019-04-19 09:59:46.502657'),(1528,'Uturumæ̆da paḷāta','7',130,'2019-04-19 09:59:46.505105','2019-04-19 09:59:46.505105'),(1529,'Ūva paḷāta','8',130,'2019-04-19 09:59:46.508664','2019-04-19 09:59:46.508664'),(1530,'Sabaragamuva paḷāta','9',130,'2019-04-19 09:59:46.511759','2019-04-19 09:59:46.511759'),(1531,'Bong','BG',131,'2019-04-19 09:59:46.515767','2019-04-19 09:59:46.515767'),(1532,'Bomi','BM',131,'2019-04-19 09:59:46.519055','2019-04-19 09:59:46.519055'),(1533,'Grand Cape Mount','CM',131,'2019-04-19 09:59:46.521869','2019-04-19 09:59:46.521869'),(1534,'Grand Bassa','GB',131,'2019-04-19 09:59:46.527276','2019-04-19 09:59:46.527276'),(1535,'Grand Gedeh','GG',131,'2019-04-19 09:59:46.530867','2019-04-19 09:59:46.530867'),(1536,'Grand Kru','GK',131,'2019-04-19 09:59:46.534452','2019-04-19 09:59:46.534452'),(1537,'Lofa','LO',131,'2019-04-19 09:59:46.537501','2019-04-19 09:59:46.537501'),(1538,'Margibi','MG',131,'2019-04-19 09:59:46.541417','2019-04-19 09:59:46.541417'),(1539,'Montserrado','MO',131,'2019-04-19 09:59:46.544109','2019-04-19 09:59:46.544109'),(1540,'Maryland','MY',131,'2019-04-19 09:59:46.546689','2019-04-19 09:59:46.546689'),(1541,'Nimba','NI',131,'2019-04-19 09:59:46.549832','2019-04-19 09:59:46.549832'),(1542,'Rivercess','RI',131,'2019-04-19 09:59:46.552356','2019-04-19 09:59:46.552356'),(1543,'Sinoe','SI',131,'2019-04-19 09:59:46.554903','2019-04-19 09:59:46.554903'),(1544,'Maseru','A',132,'2019-04-19 09:59:46.558829','2019-04-19 09:59:46.558829'),(1545,'Butha-Buthe','B',132,'2019-04-19 09:59:46.561425','2019-04-19 09:59:46.561425'),(1546,'Leribe','C',132,'2019-04-19 09:59:46.564398','2019-04-19 09:59:46.564398'),(1547,'Berea','D',132,'2019-04-19 09:59:46.566967','2019-04-19 09:59:46.566967'),(1548,'Mafeteng','E',132,'2019-04-19 09:59:46.569537','2019-04-19 09:59:46.569537'),(1549,'Mohale\'s Hoek','F',132,'2019-04-19 09:59:46.573003','2019-04-19 09:59:46.573003'),(1550,'Quthing','G',132,'2019-04-19 09:59:46.576027','2019-04-19 09:59:46.576027'),(1551,'Qacha\'s Nek','H',132,'2019-04-19 09:59:46.578721','2019-04-19 09:59:46.578721'),(1552,'Mokhotlong','J',132,'2019-04-19 09:59:46.581994','2019-04-19 09:59:46.581994'),(1553,'Thaba-Tseka','K',132,'2019-04-19 09:59:46.584755','2019-04-19 09:59:46.584755'),(1554,'Alytaus Apskritis','AL',133,'2019-04-19 09:59:46.588191','2019-04-19 09:59:46.588191'),(1555,'Klaipėdos Apskritis','KL',133,'2019-04-19 09:59:46.591421','2019-04-19 09:59:46.591421'),(1556,'Kauno Apskritis','KU',133,'2019-04-19 09:59:46.594259','2019-04-19 09:59:46.594259'),(1557,'Marijampolės Apskritis','MR',133,'2019-04-19 09:59:46.597360','2019-04-19 09:59:46.597360'),(1558,'Panevėžio Apskritis','PN',133,'2019-04-19 09:59:46.600334','2019-04-19 09:59:46.600334'),(1559,'Šiaulių Apskritis','SA',133,'2019-04-19 09:59:46.603673','2019-04-19 09:59:46.603673'),(1560,'Tauragés Apskritis','TA',133,'2019-04-19 09:59:46.607408','2019-04-19 09:59:46.607408'),(1561,'Telšių Apskritis','TE',133,'2019-04-19 09:59:46.610235','2019-04-19 09:59:46.610235'),(1562,'Utenos Apskritis','UT',133,'2019-04-19 09:59:46.613291','2019-04-19 09:59:46.613291'),(1563,'Vilniaus Apskritis','VL',133,'2019-04-19 09:59:46.616024','2019-04-19 09:59:46.616024'),(1564,'Diekirch','D',134,'2019-04-19 09:59:46.619072','2019-04-19 09:59:46.619072'),(1565,'Grevenmacher','G',134,'2019-04-19 09:59:46.622276','2019-04-19 09:59:46.622276'),(1566,'Luxembourg','L',134,'2019-04-19 09:59:46.625926','2019-04-19 09:59:46.625926'),(1567,'Aglonas novads','001',135,'2019-04-19 09:59:46.628946','2019-04-19 09:59:46.628946'),(1568,'Aizkraukles novads','002',135,'2019-04-19 09:59:46.631615','2019-04-19 09:59:46.631615'),(1569,'Aizputes novads','003',135,'2019-04-19 09:59:46.634212','2019-04-19 09:59:46.634212'),(1570,'Aknīstes novads','004',135,'2019-04-19 09:59:46.636803','2019-04-19 09:59:46.636803'),(1571,'Alojas novads','005',135,'2019-04-19 09:59:46.639589','2019-04-19 09:59:46.639589'),(1572,'Alsungas novads','006',135,'2019-04-19 09:59:46.642854','2019-04-19 09:59:46.642854'),(1573,'Alūksnes novads','007',135,'2019-04-19 09:59:46.645574','2019-04-19 09:59:46.645574'),(1574,'Amatas novads','008',135,'2019-04-19 09:59:46.648273','2019-04-19 09:59:46.648273'),(1575,'Apes novads','009',135,'2019-04-19 09:59:46.650960','2019-04-19 09:59:46.650960'),(1576,'Auces novads','010',135,'2019-04-19 09:59:46.653629','2019-04-19 09:59:46.653629'),(1577,'Ādažu novads','011',135,'2019-04-19 09:59:46.657151','2019-04-19 09:59:46.657151'),(1578,'Babītes novads','012',135,'2019-04-19 09:59:46.659971','2019-04-19 09:59:46.659971'),(1579,'Baldones novads','013',135,'2019-04-19 09:59:46.662617','2019-04-19 09:59:46.662617'),(1580,'Baltinavas novads','014',135,'2019-04-19 09:59:46.665217','2019-04-19 09:59:46.665217'),(1581,'Balvu novads','015',135,'2019-04-19 09:59:46.668636','2019-04-19 09:59:46.668636'),(1582,'Bauskas novads','016',135,'2019-04-19 09:59:46.671809','2019-04-19 09:59:46.671809'),(1583,'Beverīnas novads','017',135,'2019-04-19 09:59:46.675752','2019-04-19 09:59:46.675752'),(1584,'Brocēnu novads','018',135,'2019-04-19 09:59:46.679187','2019-04-19 09:59:46.679187'),(1585,'Burtnieku novads','019',135,'2019-04-19 09:59:46.682643','2019-04-19 09:59:46.682643'),(1586,'Carnikavas novads','020',135,'2019-04-19 09:59:46.685430','2019-04-19 09:59:46.685430'),(1587,'Cesvaines novads','021',135,'2019-04-19 09:59:46.688744','2019-04-19 09:59:46.688744'),(1588,'Cēsu novads','022',135,'2019-04-19 09:59:46.692367','2019-04-19 09:59:46.692367'),(1589,'Ciblas novads','023',135,'2019-04-19 09:59:46.694876','2019-04-19 09:59:46.694876'),(1590,'Dagdas novads','024',135,'2019-04-19 09:59:46.697368','2019-04-19 09:59:46.697368'),(1591,'Daugavpils novads','025',135,'2019-04-19 09:59:46.699795','2019-04-19 09:59:46.699795'),(1592,'Dobeles novads','026',135,'2019-04-19 09:59:46.702274','2019-04-19 09:59:46.702274'),(1593,'Dundagas novads','027',135,'2019-04-19 09:59:46.704879','2019-04-19 09:59:46.704879'),(1594,'Durbes novads','028',135,'2019-04-19 09:59:46.709332','2019-04-19 09:59:46.709332'),(1595,'Engures novads','029',135,'2019-04-19 09:59:46.711945','2019-04-19 09:59:46.711945'),(1596,'Ērgļu novads','030',135,'2019-04-19 09:59:46.714441','2019-04-19 09:59:46.714441'),(1597,'Garkalnes novads','031',135,'2019-04-19 09:59:46.716910','2019-04-19 09:59:46.716910'),(1598,'Grobiņas novads','032',135,'2019-04-19 09:59:46.719234','2019-04-19 09:59:46.719234'),(1599,'Gulbenes novads','033',135,'2019-04-19 09:59:46.722044','2019-04-19 09:59:46.722044'),(1600,'Iecavas novads','034',135,'2019-04-19 09:59:46.724993','2019-04-19 09:59:46.724993'),(1601,'Ikšķiles novads','035',135,'2019-04-19 09:59:46.727697','2019-04-19 09:59:46.727697'),(1602,'Ilūkstes novads','036',135,'2019-04-19 09:59:46.730604','2019-04-19 09:59:46.730604'),(1603,'Inčukalna novads','037',135,'2019-04-19 09:59:46.733361','2019-04-19 09:59:46.733361'),(1604,'Jaunjelgavas novads','038',135,'2019-04-19 09:59:46.735859','2019-04-19 09:59:46.735859'),(1605,'Jaunpiebalgas novads','039',135,'2019-04-19 09:59:46.739847','2019-04-19 09:59:46.739847'),(1606,'Jaunpils novads','040',135,'2019-04-19 09:59:46.753521','2019-04-19 09:59:46.753521'),(1607,'Jelgavas novads','041',135,'2019-04-19 09:59:46.756911','2019-04-19 09:59:46.756911'),(1608,'Jēkabpils novads','042',135,'2019-04-19 09:59:46.760303','2019-04-19 09:59:46.760303'),(1609,'Kandavas novads','043',135,'2019-04-19 09:59:46.764266','2019-04-19 09:59:46.764266'),(1610,'Kārsavas novads','044',135,'2019-04-19 09:59:46.767820','2019-04-19 09:59:46.767820'),(1611,'Kocēnu novads','045',135,'2019-04-19 09:59:46.771654','2019-04-19 09:59:46.771654'),(1612,'Kokneses novads','046',135,'2019-04-19 09:59:46.774918','2019-04-19 09:59:46.774918'),(1613,'Krāslavas novads','047',135,'2019-04-19 09:59:46.777986','2019-04-19 09:59:46.777986'),(1614,'Krimuldas novads','048',135,'2019-04-19 09:59:46.780846','2019-04-19 09:59:46.780846'),(1615,'Krustpils novads','049',135,'2019-04-19 09:59:46.786819','2019-04-19 09:59:46.786819'),(1616,'Kuldīgas novads','050',135,'2019-04-19 09:59:46.789840','2019-04-19 09:59:46.789840'),(1617,'Ķeguma novads','051',135,'2019-04-19 09:59:46.792521','2019-04-19 09:59:46.792521'),(1618,'Ķekavas novads','052',135,'2019-04-19 09:59:46.794991','2019-04-19 09:59:46.794991'),(1619,'Lielvārdes novads','053',135,'2019-04-19 09:59:46.797463','2019-04-19 09:59:46.797463'),(1620,'Limbažu novads','054',135,'2019-04-19 09:59:46.800472','2019-04-19 09:59:46.800472'),(1621,'Līgatnes novads','055',135,'2019-04-19 09:59:46.803948','2019-04-19 09:59:46.803948'),(1622,'Līvānu novads','056',135,'2019-04-19 09:59:46.807388','2019-04-19 09:59:46.807388'),(1623,'Lubānas novads','057',135,'2019-04-19 09:59:46.810033','2019-04-19 09:59:46.810033'),(1624,'Ludzas novads','058',135,'2019-04-19 09:59:46.812662','2019-04-19 09:59:46.812662'),(1625,'Madonas novads','059',135,'2019-04-19 09:59:46.815183','2019-04-19 09:59:46.815183'),(1626,'Mazsalacas novads','060',135,'2019-04-19 09:59:46.817888','2019-04-19 09:59:46.817888'),(1627,'Mālpils novads','061',135,'2019-04-19 09:59:46.820556','2019-04-19 09:59:46.820556'),(1628,'Mārupes novads','062',135,'2019-04-19 09:59:46.823706','2019-04-19 09:59:46.823706'),(1629,'Mērsraga novads','063',135,'2019-04-19 09:59:46.826703','2019-04-19 09:59:46.826703'),(1630,'Naukšēnu novads','064',135,'2019-04-19 09:59:46.829661','2019-04-19 09:59:46.829661'),(1631,'Neretas novads','065',135,'2019-04-19 09:59:46.832784','2019-04-19 09:59:46.832784'),(1632,'Nīcas novads','066',135,'2019-04-19 09:59:46.835621','2019-04-19 09:59:46.835621'),(1633,'Ogres novads','067',135,'2019-04-19 09:59:46.838409','2019-04-19 09:59:46.838409'),(1634,'Olaines novads','068',135,'2019-04-19 09:59:46.842487','2019-04-19 09:59:46.842487'),(1635,'Ozolnieku novads','069',135,'2019-04-19 09:59:46.845222','2019-04-19 09:59:46.845222'),(1636,'Pārgaujas novads','070',135,'2019-04-19 09:59:46.847726','2019-04-19 09:59:46.847726'),(1637,'Pāvilostas novads','071',135,'2019-04-19 09:59:46.850151','2019-04-19 09:59:46.850151'),(1638,'Pļaviņu novads','072',135,'2019-04-19 09:59:46.852922','2019-04-19 09:59:46.852922'),(1639,'Preiļu novads','073',135,'2019-04-19 09:59:46.856351','2019-04-19 09:59:46.856351'),(1640,'Priekules novads','074',135,'2019-04-19 09:59:46.860323','2019-04-19 09:59:46.860323'),(1641,'Priekuļu novads','075',135,'2019-04-19 09:59:46.864194','2019-04-19 09:59:46.864194'),(1642,'Raunas novads','076',135,'2019-04-19 09:59:46.873830','2019-04-19 09:59:46.873830'),(1643,'Rēzeknes novads','077',135,'2019-04-19 09:59:46.877176','2019-04-19 09:59:46.877176'),(1644,'Riebiņu novads','078',135,'2019-04-19 09:59:46.879994','2019-04-19 09:59:46.879994'),(1645,'Rojas novads','079',135,'2019-04-19 09:59:46.882815','2019-04-19 09:59:46.882815'),(1646,'Ropažu novads','080',135,'2019-04-19 09:59:46.885971','2019-04-19 09:59:46.885971'),(1647,'Rucavas novads','081',135,'2019-04-19 09:59:46.889253','2019-04-19 09:59:46.889253'),(1648,'Rugāju novads','082',135,'2019-04-19 09:59:46.893002','2019-04-19 09:59:46.893002'),(1649,'Rundāles novads','083',135,'2019-04-19 09:59:46.895685','2019-04-19 09:59:46.895685'),(1650,'Rūjienas novads','084',135,'2019-04-19 09:59:46.898321','2019-04-19 09:59:46.898321'),(1651,'Salas novads','085',135,'2019-04-19 09:59:46.901649','2019-04-19 09:59:46.901649'),(1652,'Salacgrīvas novads','086',135,'2019-04-19 09:59:46.904634','2019-04-19 09:59:46.904634'),(1653,'Salaspils novads','087',135,'2019-04-19 09:59:46.908609','2019-04-19 09:59:46.908609'),(1654,'Saldus novads','088',135,'2019-04-19 09:59:46.911419','2019-04-19 09:59:46.911419'),(1655,'Saulkrastu novads','089',135,'2019-04-19 09:59:46.919895','2019-04-19 09:59:46.919895'),(1656,'Sējas novads','090',135,'2019-04-19 09:59:46.924653','2019-04-19 09:59:46.924653'),(1657,'Siguldas novads','091',135,'2019-04-19 09:59:46.927561','2019-04-19 09:59:46.927561'),(1658,'Skrīveru novads','092',135,'2019-04-19 09:59:46.930124','2019-04-19 09:59:46.930124'),(1659,'Skrundas novads','093',135,'2019-04-19 09:59:46.933163','2019-04-19 09:59:46.933163'),(1660,'Smiltenes novads','094',135,'2019-04-19 09:59:46.935681','2019-04-19 09:59:46.935681'),(1661,'Stopiņu novads','095',135,'2019-04-19 09:59:46.938132','2019-04-19 09:59:46.938132'),(1662,'Strenču novads','096',135,'2019-04-19 09:59:46.941343','2019-04-19 09:59:46.941343'),(1663,'Talsu novads','097',135,'2019-04-19 09:59:46.943801','2019-04-19 09:59:46.943801'),(1664,'Tērvetes novads','098',135,'2019-04-19 09:59:46.946283','2019-04-19 09:59:46.946283'),(1665,'Tukuma novads','099',135,'2019-04-19 09:59:46.949539','2019-04-19 09:59:46.949539'),(1666,'Vaiņodes novads','100',135,'2019-04-19 09:59:46.952801','2019-04-19 09:59:46.952801'),(1667,'Valkas novads','101',135,'2019-04-19 09:59:46.956117','2019-04-19 09:59:46.956117'),(1668,'Varakļānu novads','102',135,'2019-04-19 09:59:46.959607','2019-04-19 09:59:46.959607'),(1669,'Vārkavas novads','103',135,'2019-04-19 09:59:46.962329','2019-04-19 09:59:46.962329'),(1670,'Vecpiebalgas novads','104',135,'2019-04-19 09:59:46.965552','2019-04-19 09:59:46.965552'),(1671,'Vecumnieku novads','105',135,'2019-04-19 09:59:46.968142','2019-04-19 09:59:46.968142'),(1672,'Ventspils novads','106',135,'2019-04-19 09:59:46.970968','2019-04-19 09:59:46.970968'),(1673,'Viesītes novads','107',135,'2019-04-19 09:59:46.974650','2019-04-19 09:59:46.974650'),(1674,'Viļakas novads','108',135,'2019-04-19 09:59:46.977212','2019-04-19 09:59:46.977212'),(1675,'Viļānu novads','109',135,'2019-04-19 09:59:46.980308','2019-04-19 09:59:46.980308'),(1676,'Zilupes novads','110',135,'2019-04-19 09:59:46.983114','2019-04-19 09:59:46.983114'),(1677,'Daugavpils','DGV',135,'2019-04-19 09:59:46.985725','2019-04-19 09:59:46.985725'),(1678,'Jelgava','JEL',135,'2019-04-19 09:59:46.989073','2019-04-19 09:59:46.989073'),(1679,'Jēkabpils','JKB',135,'2019-04-19 09:59:46.992614','2019-04-19 09:59:46.992614'),(1680,'Jūrmala','JUR',135,'2019-04-19 09:59:46.995365','2019-04-19 09:59:46.995365'),(1681,'Liepāja','LPX',135,'2019-04-19 09:59:46.998645','2019-04-19 09:59:46.998645'),(1682,'Rēzekne','REZ',135,'2019-04-19 09:59:47.002160','2019-04-19 09:59:47.002160'),(1683,'Rīga','RIX',135,'2019-04-19 09:59:47.005812','2019-04-19 09:59:47.005812'),(1684,'Ventspils','VEN',135,'2019-04-19 09:59:47.009609','2019-04-19 09:59:47.009609'),(1685,'Valmiera','VMR',135,'2019-04-19 09:59:47.012550','2019-04-19 09:59:47.012550'),(1686,'Banghāzī','BA',136,'2019-04-19 09:59:47.015785','2019-04-19 09:59:47.015785'),(1687,'Al Buţnān','BU',136,'2019-04-19 09:59:47.018181','2019-04-19 09:59:47.018181'),(1688,'Darnah','DR',136,'2019-04-19 09:59:47.020593','2019-04-19 09:59:47.020593'),(1689,'Ghāt','GT',136,'2019-04-19 09:59:47.023868','2019-04-19 09:59:47.023868'),(1690,'Al Jabal al Akhḑar','JA',136,'2019-04-19 09:59:47.027090','2019-04-19 09:59:47.027090'),(1691,'Jaghbūb','JB',136,'2019-04-19 09:59:47.029755','2019-04-19 09:59:47.029755'),(1692,'Al Jabal al Gharbī','JG',136,'2019-04-19 09:59:47.032495','2019-04-19 09:59:47.032495'),(1693,'Al Jifārah','JI',136,'2019-04-19 09:59:47.034810','2019-04-19 09:59:47.034810'),(1694,'Al Jufrah','JU',136,'2019-04-19 09:59:47.037657','2019-04-19 09:59:47.037657'),(1695,'Al Kufrah','KF',136,'2019-04-19 09:59:47.040764','2019-04-19 09:59:47.040764'),(1696,'Al Marqab','MB',136,'2019-04-19 09:59:47.043424','2019-04-19 09:59:47.043424'),(1697,'Mişrātah','MI',136,'2019-04-19 09:59:47.046413','2019-04-19 09:59:47.046413'),(1698,'Al Marj','MJ',136,'2019-04-19 09:59:47.049092','2019-04-19 09:59:47.049092'),(1699,'Murzuq','MQ',136,'2019-04-19 09:59:47.051454','2019-04-19 09:59:47.051454'),(1700,'Nālūt','NL',136,'2019-04-19 09:59:47.054280','2019-04-19 09:59:47.054280'),(1701,'An Nuqaţ al Khams','NQ',136,'2019-04-19 09:59:47.057422','2019-04-19 09:59:47.057422'),(1702,'Sabhā','SB',136,'2019-04-19 09:59:47.060382','2019-04-19 09:59:47.060382'),(1703,'Surt','SR',136,'2019-04-19 09:59:47.063440','2019-04-19 09:59:47.063440'),(1704,'Ţarābulus','TB',136,'2019-04-19 09:59:47.065825','2019-04-19 09:59:47.065825'),(1705,'Al Wāḩāt','WA',136,'2019-04-19 09:59:47.068351','2019-04-19 09:59:47.068351'),(1706,'Wādī al Ḩayāt','WD',136,'2019-04-19 09:59:47.071556','2019-04-19 09:59:47.071556'),(1707,'Wādī ash Shāţiʾ','WS',136,'2019-04-19 09:59:47.075371','2019-04-19 09:59:47.075371'),(1708,'Az Zāwiyah','ZA',136,'2019-04-19 09:59:47.078574','2019-04-19 09:59:47.078574'),(1709,'Tanger-Tétouan','01',137,'2019-04-19 09:59:47.081531','2019-04-19 09:59:47.081531'),(1710,'Gharb-Chrarda-Beni Hssen','02',137,'2019-04-19 09:59:47.083931','2019-04-19 09:59:47.083931'),(1711,'Taza-Al Hoceima-Taounate','03',137,'2019-04-19 09:59:47.086546','2019-04-19 09:59:47.086546'),(1712,'L\'Oriental','04',137,'2019-04-19 09:59:47.089022','2019-04-19 09:59:47.089022'),(1713,'Fès-Boulemane','05',137,'2019-04-19 09:59:47.092034','2019-04-19 09:59:47.092034'),(1714,'Meknès-Tafilalet','06',137,'2019-04-19 09:59:47.094823','2019-04-19 09:59:47.094823'),(1715,'Rabat-Salé-Zemmour-Zaer','07',137,'2019-04-19 09:59:47.097469','2019-04-19 09:59:47.097469'),(1716,'Grand Casablanca','08',137,'2019-04-19 09:59:47.099829','2019-04-19 09:59:47.099829'),(1717,'Chaouia-Ouardigha','09',137,'2019-04-19 09:59:47.102182','2019-04-19 09:59:47.102182'),(1718,'Doukhala-Abda','10',137,'2019-04-19 09:59:47.105277','2019-04-19 09:59:47.105277'),(1719,'Marrakech-Tensift-Al Haouz','11',137,'2019-04-19 09:59:47.108271','2019-04-19 09:59:47.108271'),(1720,'Tadla-Azilal','12',137,'2019-04-19 09:59:47.111135','2019-04-19 09:59:47.111135'),(1721,'Sous-Massa-Draa','13',137,'2019-04-19 09:59:47.113478','2019-04-19 09:59:47.113478'),(1722,'Guelmim-Es Smara','14',137,'2019-04-19 09:59:47.115829','2019-04-19 09:59:47.115829'),(1723,'Laâyoune-Boujdour-Sakia el Hamra','15',137,'2019-04-19 09:59:47.118234','2019-04-19 09:59:47.118234'),(1724,'Oued ed Dahab-Lagouira','16',137,'2019-04-19 09:59:47.120815','2019-04-19 09:59:47.120815'),(1725,'La Colle','CL',138,'2019-04-19 09:59:47.123898','2019-04-19 09:59:47.123898'),(1726,'La Condamine','CO',138,'2019-04-19 09:59:47.126571','2019-04-19 09:59:47.126571'),(1727,'Fontvieille','FO',138,'2019-04-19 09:59:47.128939','2019-04-19 09:59:47.128939'),(1728,'La Gare','GA',138,'2019-04-19 09:59:47.131190','2019-04-19 09:59:47.131190'),(1729,'Jardin Exotique','JE',138,'2019-04-19 09:59:47.133649','2019-04-19 09:59:47.133649'),(1730,'Larvotto','LA',138,'2019-04-19 09:59:47.136023','2019-04-19 09:59:47.136023'),(1731,'Malbousquet','MA',138,'2019-04-19 09:59:47.138500','2019-04-19 09:59:47.138500'),(1732,'Monte-Carlo','MC',138,'2019-04-19 09:59:47.141945','2019-04-19 09:59:47.141945'),(1733,'Moneghetti','MG',138,'2019-04-19 09:59:47.144823','2019-04-19 09:59:47.144823'),(1734,'Monaco-Ville','MO',138,'2019-04-19 09:59:47.147875','2019-04-19 09:59:47.147875'),(1735,'Moulins','MU',138,'2019-04-19 09:59:47.151110','2019-04-19 09:59:47.151110'),(1736,'Port-Hercule','PH',138,'2019-04-19 09:59:47.153709','2019-04-19 09:59:47.153709'),(1737,'Sainte-Dévote','SD',138,'2019-04-19 09:59:47.156350','2019-04-19 09:59:47.156350'),(1738,'La Source','SO',138,'2019-04-19 09:59:47.159875','2019-04-19 09:59:47.159875'),(1739,'Spélugues','SP',138,'2019-04-19 09:59:47.162394','2019-04-19 09:59:47.162394'),(1740,'Saint-Roman','SR',138,'2019-04-19 09:59:47.165163','2019-04-19 09:59:47.165163'),(1741,'Vallon de la Rousse','VR',138,'2019-04-19 09:59:47.168683','2019-04-19 09:59:47.168683'),(1742,'Anenii Noi','AN',139,'2019-04-19 09:59:47.171307','2019-04-19 09:59:47.171307'),(1743,'Bălți','BA',139,'2019-04-19 09:59:47.174892','2019-04-19 09:59:47.174892'),(1744,'Tighina','BD',139,'2019-04-19 09:59:47.177767','2019-04-19 09:59:47.177767'),(1745,'Briceni','BR',139,'2019-04-19 09:59:47.180070','2019-04-19 09:59:47.180070'),(1746,'Basarabeasca','BS',139,'2019-04-19 09:59:47.183057','2019-04-19 09:59:47.183057'),(1747,'Cahul','CA',139,'2019-04-19 09:59:47.185475','2019-04-19 09:59:47.185475'),(1748,'Călărași','CL',139,'2019-04-19 09:59:47.187716','2019-04-19 09:59:47.187716'),(1749,'Cimișlia','CM',139,'2019-04-19 09:59:47.190677','2019-04-19 09:59:47.190677'),(1750,'Criuleni','CR',139,'2019-04-19 09:59:47.193147','2019-04-19 09:59:47.193147'),(1751,'Căușeni','CS',139,'2019-04-19 09:59:47.195606','2019-04-19 09:59:47.195606'),(1752,'Cantemir','CT',139,'2019-04-19 09:59:47.198639','2019-04-19 09:59:47.198639'),(1753,'Chișinău','CU',139,'2019-04-19 09:59:47.201393','2019-04-19 09:59:47.201393'),(1754,'Dondușeni','DO',139,'2019-04-19 09:59:47.203877','2019-04-19 09:59:47.203877'),(1755,'Drochia','DR',139,'2019-04-19 09:59:47.207326','2019-04-19 09:59:47.207326'),(1756,'Dubăsari','DU',139,'2019-04-19 09:59:47.210355','2019-04-19 09:59:47.210355'),(1757,'Edineț','ED',139,'2019-04-19 09:59:47.212835','2019-04-19 09:59:47.212835'),(1758,'Fălești','FA',139,'2019-04-19 09:59:47.215913','2019-04-19 09:59:47.215913'),(1759,'Florești','FL',139,'2019-04-19 09:59:47.218412','2019-04-19 09:59:47.218412'),(1760,'Găgăuzia, Unitatea teritorială autonomă','GA',139,'2019-04-19 09:59:47.221725','2019-04-19 09:59:47.221725'),(1761,'Glodeni','GL',139,'2019-04-19 09:59:47.225345','2019-04-19 09:59:47.225345'),(1762,'Hîncești','HI',139,'2019-04-19 09:59:47.228679','2019-04-19 09:59:47.228679'),(1763,'Ialoveni','IA',139,'2019-04-19 09:59:47.232019','2019-04-19 09:59:47.232019'),(1764,'Leova','LE',139,'2019-04-19 09:59:47.234801','2019-04-19 09:59:47.234801'),(1765,'Nisporeni','NI',139,'2019-04-19 09:59:47.237536','2019-04-19 09:59:47.237536'),(1766,'Ocnița','OC',139,'2019-04-19 09:59:47.240961','2019-04-19 09:59:47.240961'),(1767,'Orhei','OR',139,'2019-04-19 09:59:47.243703','2019-04-19 09:59:47.243703'),(1768,'Rezina','RE',139,'2019-04-19 09:59:47.246649','2019-04-19 09:59:47.246649'),(1769,'Rîșcani','RI',139,'2019-04-19 09:59:47.249223','2019-04-19 09:59:47.249223'),(1770,'Șoldănești','SD',139,'2019-04-19 09:59:47.251599','2019-04-19 09:59:47.251599'),(1771,'Sîngerei','SI',139,'2019-04-19 09:59:47.254804','2019-04-19 09:59:47.254804'),(1772,'Stînga Nistrului, unitatea teritorială din','SN',139,'2019-04-19 09:59:47.258373','2019-04-19 09:59:47.258373'),(1773,'Soroca','SO',139,'2019-04-19 09:59:47.261128','2019-04-19 09:59:47.261128'),(1774,'Strășeni','ST',139,'2019-04-19 09:59:47.264224','2019-04-19 09:59:47.264224'),(1775,'Ștefan Vodă','SV',139,'2019-04-19 09:59:47.266642','2019-04-19 09:59:47.266642'),(1776,'Taraclia','TA',139,'2019-04-19 09:59:47.269253','2019-04-19 09:59:47.269253'),(1777,'Telenești','TE',139,'2019-04-19 09:59:47.272384','2019-04-19 09:59:47.272384'),(1778,'Ungheni','UN',139,'2019-04-19 09:59:47.275545','2019-04-19 09:59:47.275545'),(1779,'Andrijevica','01',140,'2019-04-19 09:59:47.278892','2019-04-19 09:59:47.278892'),(1780,'Bar','02',140,'2019-04-19 09:59:47.281479','2019-04-19 09:59:47.281479'),(1781,'Berane','03',140,'2019-04-19 09:59:47.284026','2019-04-19 09:59:47.284026'),(1782,'Bijelo Polje','04',140,'2019-04-19 09:59:47.287490','2019-04-19 09:59:47.287490'),(1783,'Budva','05',140,'2019-04-19 09:59:47.290722','2019-04-19 09:59:47.290722'),(1784,'Cetinje','06',140,'2019-04-19 09:59:47.293676','2019-04-19 09:59:47.293676'),(1785,'Danilovgrad','07',140,'2019-04-19 09:59:47.296466','2019-04-19 09:59:47.296466'),(1786,'Herceg-Novi','08',140,'2019-04-19 09:59:47.298813','2019-04-19 09:59:47.298813'),(1787,'Kolašin','09',140,'2019-04-19 09:59:47.301797','2019-04-19 09:59:47.301797'),(1788,'Kotor','10',140,'2019-04-19 09:59:47.305005','2019-04-19 09:59:47.305005'),(1789,'Mojkovac','11',140,'2019-04-19 09:59:47.308153','2019-04-19 09:59:47.308153'),(1790,'Nikšić','12',140,'2019-04-19 09:59:47.311614','2019-04-19 09:59:47.311614'),(1791,'Plav','13',140,'2019-04-19 09:59:47.314114','2019-04-19 09:59:47.314114'),(1792,'Pljevlja','14',140,'2019-04-19 09:59:47.316659','2019-04-19 09:59:47.316659'),(1793,'Plužine','15',140,'2019-04-19 09:59:47.319777','2019-04-19 09:59:47.319777'),(1794,'Podgorica','16',140,'2019-04-19 09:59:47.322334','2019-04-19 09:59:47.322334'),(1795,'Rožaje','17',140,'2019-04-19 09:59:47.325773','2019-04-19 09:59:47.325773'),(1796,'Šavnik','18',140,'2019-04-19 09:59:47.328659','2019-04-19 09:59:47.328659'),(1797,'Tivat','19',140,'2019-04-19 09:59:47.331218','2019-04-19 09:59:47.331218'),(1798,'Ulcinj','20',140,'2019-04-19 09:59:47.333756','2019-04-19 09:59:47.333756'),(1799,'Žabljak','21',140,'2019-04-19 09:59:47.336503','2019-04-19 09:59:47.336503'),(1800,'Toamasina','A',142,'2019-04-19 09:59:47.339348','2019-04-19 09:59:47.339348'),(1801,'Antsiranana','D',142,'2019-04-19 09:59:47.342475','2019-04-19 09:59:47.342475'),(1802,'Fianarantsoa','F',142,'2019-04-19 09:59:47.344975','2019-04-19 09:59:47.344975'),(1803,'Mahajanga','M',142,'2019-04-19 09:59:47.348114','2019-04-19 09:59:47.348114'),(1804,'Antananarivo','T',142,'2019-04-19 09:59:47.351168','2019-04-19 09:59:47.351168'),(1805,'Toliara','U',142,'2019-04-19 09:59:47.353536','2019-04-19 09:59:47.353536'),(1806,'Ralik chain','L',143,'2019-04-19 09:59:47.356910','2019-04-19 09:59:47.356910'),(1807,'Ratak chain','T',143,'2019-04-19 09:59:47.359733','2019-04-19 09:59:47.359733'),(1808,'Aerodrom','01',144,'2019-04-19 09:59:47.362494','2019-04-19 09:59:47.362494'),(1809,'Aračinovo','02',144,'2019-04-19 09:59:47.365359','2019-04-19 09:59:47.365359'),(1810,'Berovo','03',144,'2019-04-19 09:59:47.367950','2019-04-19 09:59:47.367950'),(1811,'Bitola','04',144,'2019-04-19 09:59:47.370355','2019-04-19 09:59:47.370355'),(1812,'Bogdanci','05',144,'2019-04-19 09:59:47.373669','2019-04-19 09:59:47.373669'),(1813,'Bogovinje','06',144,'2019-04-19 09:59:47.376379','2019-04-19 09:59:47.376379'),(1814,'Bosilovo','07',144,'2019-04-19 09:59:47.378870','2019-04-19 09:59:47.378870'),(1815,'Brvenica','08',144,'2019-04-19 09:59:47.381313','2019-04-19 09:59:47.381313'),(1816,'Butel','09',144,'2019-04-19 09:59:47.383637','2019-04-19 09:59:47.383637'),(1817,'Valandovo','10',144,'2019-04-19 09:59:47.385970','2019-04-19 09:59:47.385970'),(1818,'Vasilevo','11',144,'2019-04-19 09:59:47.389050','2019-04-19 09:59:47.389050'),(1819,'Vevčani','12',144,'2019-04-19 09:59:47.392492','2019-04-19 09:59:47.392492'),(1820,'Veles','13',144,'2019-04-19 09:59:47.395440','2019-04-19 09:59:47.395440'),(1821,'Vinica','14',144,'2019-04-19 09:59:47.398098','2019-04-19 09:59:47.398098'),(1822,'Vraneštica','15',144,'2019-04-19 09:59:47.400685','2019-04-19 09:59:47.400685'),(1823,'Vrapčište','16',144,'2019-04-19 09:59:47.403173','2019-04-19 09:59:47.403173'),(1824,'Gazi Baba','17',144,'2019-04-19 09:59:47.408879','2019-04-19 09:59:47.408879'),(1825,'Gevgelija','18',144,'2019-04-19 09:59:47.411964','2019-04-19 09:59:47.411964'),(1826,'Gostivar','19',144,'2019-04-19 09:59:47.414712','2019-04-19 09:59:47.414712'),(1827,'Gradsko','20',144,'2019-04-19 09:59:47.417192','2019-04-19 09:59:47.417192'),(1828,'Debar','21',144,'2019-04-19 09:59:47.419714','2019-04-19 09:59:47.419714'),(1829,'Debarca','22',144,'2019-04-19 09:59:47.422442','2019-04-19 09:59:47.422442'),(1830,'Delčevo','23',144,'2019-04-19 09:59:47.425665','2019-04-19 09:59:47.425665'),(1831,'Demir Kapija','24',144,'2019-04-19 09:59:47.428482','2019-04-19 09:59:47.428482'),(1832,'Demir Hisar','25',144,'2019-04-19 09:59:47.430956','2019-04-19 09:59:47.430956'),(1833,'Dojran','26',144,'2019-04-19 09:59:47.433412','2019-04-19 09:59:47.433412'),(1834,'Dolneni','27',144,'2019-04-19 09:59:47.436187','2019-04-19 09:59:47.436187'),(1835,'Drugovo','28',144,'2019-04-19 09:59:47.439920','2019-04-19 09:59:47.439920'),(1836,'Gjorče Petrov','29',144,'2019-04-19 09:59:47.444083','2019-04-19 09:59:47.444083'),(1837,'Želino','30',144,'2019-04-19 09:59:47.447342','2019-04-19 09:59:47.447342'),(1838,'Zajas','31',144,'2019-04-19 09:59:47.450799','2019-04-19 09:59:47.450799'),(1839,'Zelenikovo','32',144,'2019-04-19 09:59:47.454810','2019-04-19 09:59:47.454810'),(1840,'Zrnovci','33',144,'2019-04-19 09:59:47.457776','2019-04-19 09:59:47.457776'),(1841,'Ilinden','34',144,'2019-04-19 09:59:47.460566','2019-04-19 09:59:47.460566'),(1842,'Jegunovce','35',144,'2019-04-19 09:59:47.463120','2019-04-19 09:59:47.463120'),(1843,'Kavadarci','36',144,'2019-04-19 09:59:47.465776','2019-04-19 09:59:47.465776'),(1844,'Karbinci','37',144,'2019-04-19 09:59:47.469119','2019-04-19 09:59:47.469119'),(1845,'Karpoš','38',144,'2019-04-19 09:59:47.472290','2019-04-19 09:59:47.472290'),(1846,'Kisela Voda','39',144,'2019-04-19 09:59:47.475830','2019-04-19 09:59:47.475830'),(1847,'Kičevo','40',144,'2019-04-19 09:59:47.478431','2019-04-19 09:59:47.478431'),(1848,'Konče','41',144,'2019-04-19 09:59:47.481079','2019-04-19 09:59:47.481079'),(1849,'Kočani','42',144,'2019-04-19 09:59:47.483781','2019-04-19 09:59:47.483781'),(1850,'Kratovo','43',144,'2019-04-19 09:59:47.486430','2019-04-19 09:59:47.486430'),(1851,'Kriva Palanka','44',144,'2019-04-19 09:59:47.489356','2019-04-19 09:59:47.489356'),(1852,'Krivogaštani','45',144,'2019-04-19 09:59:47.492385','2019-04-19 09:59:47.492385'),(1853,'Kruševo','46',144,'2019-04-19 09:59:47.495171','2019-04-19 09:59:47.495171'),(1854,'Kumanovo','47',144,'2019-04-19 09:59:47.498966','2019-04-19 09:59:47.498966'),(1855,'Lipkovo','48',144,'2019-04-19 09:59:47.502149','2019-04-19 09:59:47.502149'),(1856,'Lozovo','49',144,'2019-04-19 09:59:47.504869','2019-04-19 09:59:47.504869'),(1857,'Mavrovo-i-Rostuša','50',144,'2019-04-19 09:59:47.508655','2019-04-19 09:59:47.508655'),(1858,'Makedonska Kamenica','51',144,'2019-04-19 09:59:47.511907','2019-04-19 09:59:47.511907'),(1859,'Makedonski Brod','52',144,'2019-04-19 09:59:47.515067','2019-04-19 09:59:47.515067'),(1860,'Mogila','53',144,'2019-04-19 09:59:47.518052','2019-04-19 09:59:47.518052'),(1861,'Negotino','54',144,'2019-04-19 09:59:47.520827','2019-04-19 09:59:47.520827'),(1862,'Novaci','55',144,'2019-04-19 09:59:47.523878','2019-04-19 09:59:47.523878'),(1863,'Novo Selo','56',144,'2019-04-19 09:59:47.526473','2019-04-19 09:59:47.526473'),(1864,'Oslomej','57',144,'2019-04-19 09:59:47.529027','2019-04-19 09:59:47.529027'),(1865,'Ohrid','58',144,'2019-04-19 09:59:47.532255','2019-04-19 09:59:47.532255'),(1866,'Petrovec','59',144,'2019-04-19 09:59:47.535180','2019-04-19 09:59:47.535180'),(1867,'Pehčevo','60',144,'2019-04-19 09:59:47.537908','2019-04-19 09:59:47.537908'),(1868,'Plasnica','61',144,'2019-04-19 09:59:47.541597','2019-04-19 09:59:47.541597'),(1869,'Prilep','62',144,'2019-04-19 09:59:47.544518','2019-04-19 09:59:47.544518'),(1870,'Probištip','63',144,'2019-04-19 09:59:47.547231','2019-04-19 09:59:47.547231'),(1871,'Radoviš','64',144,'2019-04-19 09:59:47.550040','2019-04-19 09:59:47.550040'),(1872,'Rankovce','65',144,'2019-04-19 09:59:47.552947','2019-04-19 09:59:47.552947'),(1873,'Resen','66',144,'2019-04-19 09:59:47.556105','2019-04-19 09:59:47.556105'),(1874,'Rosoman','67',144,'2019-04-19 09:59:47.560189','2019-04-19 09:59:47.560189'),(1875,'Saraj','68',144,'2019-04-19 09:59:47.563034','2019-04-19 09:59:47.563034'),(1876,'Sveti Nikole','69',144,'2019-04-19 09:59:47.565636','2019-04-19 09:59:47.565636'),(1877,'Sopište','70',144,'2019-04-19 09:59:47.568063','2019-04-19 09:59:47.568063'),(1878,'Staro Nagoričane','71',144,'2019-04-19 09:59:47.570782','2019-04-19 09:59:47.570782'),(1879,'Struga','72',144,'2019-04-19 09:59:47.574093','2019-04-19 09:59:47.574093'),(1880,'Strumica','73',144,'2019-04-19 09:59:47.577348','2019-04-19 09:59:47.577348'),(1881,'Studeničani','74',144,'2019-04-19 09:59:47.580924','2019-04-19 09:59:47.580924'),(1882,'Tearce','75',144,'2019-04-19 09:59:47.584010','2019-04-19 09:59:47.584010'),(1883,'Tetovo','76',144,'2019-04-19 09:59:47.586679','2019-04-19 09:59:47.586679'),(1884,'Centar','77',144,'2019-04-19 09:59:47.590110','2019-04-19 09:59:47.590110'),(1885,'Centar Župa','78',144,'2019-04-19 09:59:47.592910','2019-04-19 09:59:47.592910'),(1886,'Čair','79',144,'2019-04-19 09:59:47.595892','2019-04-19 09:59:47.595892'),(1887,'Čaška','80',144,'2019-04-19 09:59:47.599231','2019-04-19 09:59:47.599231'),(1888,'Češinovo-Obleševo','81',144,'2019-04-19 09:59:47.602442','2019-04-19 09:59:47.602442'),(1889,'Čučer Sandevo','82',144,'2019-04-19 09:59:47.605924','2019-04-19 09:59:47.605924'),(1890,'Štip','83',144,'2019-04-19 09:59:47.609259','2019-04-19 09:59:47.609259'),(1891,'Šuto Orizari','84',144,'2019-04-19 09:59:47.612276','2019-04-19 09:59:47.612276'),(1892,'Kayes','1',145,'2019-04-19 09:59:47.615294','2019-04-19 09:59:47.615294'),(1893,'Koulikoro','2',145,'2019-04-19 09:59:47.618639','2019-04-19 09:59:47.618639'),(1894,'Sikasso','3',145,'2019-04-19 09:59:47.621610','2019-04-19 09:59:47.621610'),(1895,'Ségou','4',145,'2019-04-19 09:59:47.626041','2019-04-19 09:59:47.626041'),(1896,'Mopti','5',145,'2019-04-19 09:59:47.629889','2019-04-19 09:59:47.629889'),(1897,'Tombouctou','6',145,'2019-04-19 09:59:47.632896','2019-04-19 09:59:47.632896'),(1898,'Gao','7',145,'2019-04-19 09:59:47.636040','2019-04-19 09:59:47.636040'),(1899,'Kidal','8',145,'2019-04-19 09:59:47.640075','2019-04-19 09:59:47.640075'),(1900,'Bamako','BK0',145,'2019-04-19 09:59:47.643120','2019-04-19 09:59:47.643120'),(1901,'Sagaing','01',146,'2019-04-19 09:59:47.646232','2019-04-19 09:59:47.646232'),(1902,'Bago','02',146,'2019-04-19 09:59:47.649331','2019-04-19 09:59:47.649331'),(1903,'Magway','03',146,'2019-04-19 09:59:47.652331','2019-04-19 09:59:47.652331'),(1904,'Mandalay','04',146,'2019-04-19 09:59:47.655631','2019-04-19 09:59:47.655631'),(1905,'Tanintharyi','05',146,'2019-04-19 09:59:47.658495','2019-04-19 09:59:47.658495'),(1906,'Yangon','06',146,'2019-04-19 09:59:47.661936','2019-04-19 09:59:47.661936'),(1907,'Ayeyarwady','07',146,'2019-04-19 09:59:47.664916','2019-04-19 09:59:47.664916'),(1908,'Kachin','11',146,'2019-04-19 09:59:47.668312','2019-04-19 09:59:47.668312'),(1909,'Kayah','12',146,'2019-04-19 09:59:47.671830','2019-04-19 09:59:47.671830'),(1910,'Kayin','13',146,'2019-04-19 09:59:47.674739','2019-04-19 09:59:47.674739'),(1911,'Chin','14',146,'2019-04-19 09:59:47.678103','2019-04-19 09:59:47.678103'),(1912,'Mon','15',146,'2019-04-19 09:59:47.682159','2019-04-19 09:59:47.682159'),(1913,'Rakhine','16',146,'2019-04-19 09:59:47.686109','2019-04-19 09:59:47.686109'),(1914,'Shan','17',146,'2019-04-19 09:59:47.689593','2019-04-19 09:59:47.689593'),(1915,'Orhon','035',147,'2019-04-19 09:59:47.694374','2019-04-19 09:59:47.694374'),(1916,'Darhan uul','037',147,'2019-04-19 09:59:47.700442','2019-04-19 09:59:47.700442'),(1917,'Hentiy','039',147,'2019-04-19 09:59:47.704682','2019-04-19 09:59:47.704682'),(1918,'Hövsgöl','041',147,'2019-04-19 09:59:47.708714','2019-04-19 09:59:47.708714'),(1919,'Hovd','043',147,'2019-04-19 09:59:47.712576','2019-04-19 09:59:47.712576'),(1920,'Uvs','046',147,'2019-04-19 09:59:47.715462','2019-04-19 09:59:47.715462'),(1921,'Töv','047',147,'2019-04-19 09:59:47.720180','2019-04-19 09:59:47.720180'),(1922,'Selenge','049',147,'2019-04-19 09:59:47.725487','2019-04-19 09:59:47.725487'),(1923,'Sühbaatar','051',147,'2019-04-19 09:59:47.734303','2019-04-19 09:59:47.734303'),(1924,'Ömnögovi','053',147,'2019-04-19 09:59:47.737122','2019-04-19 09:59:47.737122'),(1925,'Övörhangay','055',147,'2019-04-19 09:59:47.741008','2019-04-19 09:59:47.741008'),(1926,'Dzavhan','057',147,'2019-04-19 09:59:47.744257','2019-04-19 09:59:47.744257'),(1927,'Dundgovi','059',147,'2019-04-19 09:59:47.747402','2019-04-19 09:59:47.747402'),(1928,'Dornod','061',147,'2019-04-19 09:59:47.751781','2019-04-19 09:59:47.751781'),(1929,'Dornogovi','063',147,'2019-04-19 09:59:47.755051','2019-04-19 09:59:47.755051'),(1930,'Govi-Sumber','064',147,'2019-04-19 09:59:47.758764','2019-04-19 09:59:47.758764'),(1931,'Govi-Altay','065',147,'2019-04-19 09:59:47.761480','2019-04-19 09:59:47.761480'),(1932,'Bulgan','067',147,'2019-04-19 09:59:47.764066','2019-04-19 09:59:47.764066'),(1933,'Bayanhongor','069',147,'2019-04-19 09:59:47.767191','2019-04-19 09:59:47.767191'),(1934,'Bayan-Ölgiy','071',147,'2019-04-19 09:59:47.769954','2019-04-19 09:59:47.769954'),(1935,'Arhangay','073',147,'2019-04-19 09:59:47.772884','2019-04-19 09:59:47.772884'),(1936,'Ulanbaatar','1',147,'2019-04-19 09:59:47.777998','2019-04-19 09:59:47.777998'),(1937,'Hodh ech Chargui','01',151,'2019-04-19 09:59:47.781385','2019-04-19 09:59:47.781385'),(1938,'Hodh el Charbi','02',151,'2019-04-19 09:59:47.784206','2019-04-19 09:59:47.784206'),(1939,'Assaba','03',151,'2019-04-19 09:59:47.786962','2019-04-19 09:59:47.786962'),(1940,'Gorgol','04',151,'2019-04-19 09:59:47.790246','2019-04-19 09:59:47.790246'),(1941,'Brakna','05',151,'2019-04-19 09:59:47.793541','2019-04-19 09:59:47.793541'),(1942,'Trarza','06',151,'2019-04-19 09:59:47.796113','2019-04-19 09:59:47.796113'),(1943,'Adrar','07',151,'2019-04-19 09:59:47.799213','2019-04-19 09:59:47.799213'),(1944,'Dakhlet Nouadhibou','08',151,'2019-04-19 09:59:47.802106','2019-04-19 09:59:47.802106'),(1945,'Tagant','09',151,'2019-04-19 09:59:47.804990','2019-04-19 09:59:47.804990'),(1946,'Guidimaka','10',151,'2019-04-19 09:59:47.808413','2019-04-19 09:59:47.808413'),(1947,'Tiris Zemmour','11',151,'2019-04-19 09:59:47.811096','2019-04-19 09:59:47.811096'),(1948,'Inchiri','12',151,'2019-04-19 09:59:47.814073','2019-04-19 09:59:47.814073'),(1949,'Nouakchott','NKC',151,'2019-04-19 09:59:47.816677','2019-04-19 09:59:47.816677'),(1950,'Attard','01',153,'2019-04-19 09:59:47.819332','2019-04-19 09:59:47.819332'),(1951,'Balzan','02',153,'2019-04-19 09:59:47.822628','2019-04-19 09:59:47.822628'),(1952,'Birgu','03',153,'2019-04-19 09:59:47.825316','2019-04-19 09:59:47.825316'),(1953,'Birkirkara','04',153,'2019-04-19 09:59:47.827864','2019-04-19 09:59:47.827864'),(1954,'Birżebbuġa','05',153,'2019-04-19 09:59:47.830936','2019-04-19 09:59:47.830936'),(1955,'Bormla','06',153,'2019-04-19 09:59:47.833740','2019-04-19 09:59:47.833740'),(1956,'Dingli','07',153,'2019-04-19 09:59:47.836291','2019-04-19 09:59:47.836291'),(1957,'Fgura','08',153,'2019-04-19 09:59:47.839916','2019-04-19 09:59:47.839916'),(1958,'Floriana','09',153,'2019-04-19 09:59:47.842980','2019-04-19 09:59:47.842980'),(1959,'Fontana','10',153,'2019-04-19 09:59:47.846377','2019-04-19 09:59:47.846377'),(1960,'Gudja','11',153,'2019-04-19 09:59:47.849113','2019-04-19 09:59:47.849113'),(1961,'Gżira','12',153,'2019-04-19 09:59:47.851986','2019-04-19 09:59:47.851986'),(1962,'Għajnsielem','13',153,'2019-04-19 09:59:47.855207','2019-04-19 09:59:47.855207'),(1963,'Għarb','14',153,'2019-04-19 09:59:47.858263','2019-04-19 09:59:47.858263'),(1964,'Għargħur','15',153,'2019-04-19 09:59:47.861414','2019-04-19 09:59:47.861414'),(1965,'Għasri','16',153,'2019-04-19 09:59:47.864449','2019-04-19 09:59:47.864449'),(1966,'Għaxaq','17',153,'2019-04-19 09:59:47.866977','2019-04-19 09:59:47.866977'),(1967,'Ħamrun','18',153,'2019-04-19 09:59:47.870268','2019-04-19 09:59:47.870268'),(1968,'Iklin','19',153,'2019-04-19 09:59:47.873196','2019-04-19 09:59:47.873196'),(1969,'Isla','20',153,'2019-04-19 09:59:47.876502','2019-04-19 09:59:47.876502'),(1970,'Kalkara','21',153,'2019-04-19 09:59:47.879590','2019-04-19 09:59:47.879590'),(1971,'Kerċem','22',153,'2019-04-19 09:59:47.882226','2019-04-19 09:59:47.882226'),(1972,'Kirkop','23',153,'2019-04-19 09:59:47.885012','2019-04-19 09:59:47.885012'),(1973,'Lija','24',153,'2019-04-19 09:59:47.887856','2019-04-19 09:59:47.887856'),(1974,'Luqa','25',153,'2019-04-19 09:59:47.890889','2019-04-19 09:59:47.890889'),(1975,'Marsa','26',153,'2019-04-19 09:59:47.894374','2019-04-19 09:59:47.894374'),(1976,'Marsaskala','27',153,'2019-04-19 09:59:47.897221','2019-04-19 09:59:47.897221'),(1977,'Marsaxlokk','28',153,'2019-04-19 09:59:47.899950','2019-04-19 09:59:47.899950'),(1978,'Mdina','29',153,'2019-04-19 09:59:47.902812','2019-04-19 09:59:47.902812'),(1979,'Mellieħa','30',153,'2019-04-19 09:59:47.905512','2019-04-19 09:59:47.905512'),(1980,'Mġarr','31',153,'2019-04-19 09:59:47.909069','2019-04-19 09:59:47.909069'),(1981,'Mosta','32',153,'2019-04-19 09:59:47.913317','2019-04-19 09:59:47.913317'),(1982,'Mqabba','33',153,'2019-04-19 09:59:47.917182','2019-04-19 09:59:47.917182'),(1983,'Msida','34',153,'2019-04-19 09:59:47.920449','2019-04-19 09:59:47.920449'),(1984,'Mtarfa','35',153,'2019-04-19 09:59:47.924143','2019-04-19 09:59:47.924143'),(1985,'Munxar','36',153,'2019-04-19 09:59:47.927660','2019-04-19 09:59:47.927660'),(1986,'Nadur','37',153,'2019-04-19 09:59:47.930450','2019-04-19 09:59:47.930450'),(1987,'Naxxar','38',153,'2019-04-19 09:59:47.933210','2019-04-19 09:59:47.933210'),(1988,'Paola','39',153,'2019-04-19 09:59:47.936198','2019-04-19 09:59:47.936198'),(1989,'Pembroke','40',153,'2019-04-19 09:59:47.939045','2019-04-19 09:59:47.939045'),(1990,'Pietà','41',153,'2019-04-19 09:59:47.942522','2019-04-19 09:59:47.942522'),(1991,'Qala','42',153,'2019-04-19 09:59:47.945346','2019-04-19 09:59:47.945346'),(1992,'Qormi','43',153,'2019-04-19 09:59:47.948587','2019-04-19 09:59:47.948587'),(1993,'Qrendi','44',153,'2019-04-19 09:59:47.951884','2019-04-19 09:59:47.951884'),(1994,'Rabat Għawdex','45',153,'2019-04-19 09:59:47.955185','2019-04-19 09:59:47.955185'),(1995,'Rabat Malta','46',153,'2019-04-19 09:59:47.958208','2019-04-19 09:59:47.958208'),(1996,'Safi','47',153,'2019-04-19 09:59:47.960962','2019-04-19 09:59:47.960962'),(1997,'San Ġiljan','48',153,'2019-04-19 09:59:47.963575','2019-04-19 09:59:47.963575'),(1998,'San Ġwann','49',153,'2019-04-19 09:59:47.967053','2019-04-19 09:59:47.967053'),(1999,'San Lawrenz','50',153,'2019-04-19 09:59:47.969735','2019-04-19 09:59:47.969735'),(2000,'San Pawl il-Baħar','51',153,'2019-04-19 09:59:47.972816','2019-04-19 09:59:47.972816'),(2001,'Sannat','52',153,'2019-04-19 09:59:47.976265','2019-04-19 09:59:47.976265'),(2002,'Santa Luċija','53',153,'2019-04-19 09:59:47.979263','2019-04-19 09:59:47.979263'),(2003,'Santa Venera','54',153,'2019-04-19 09:59:47.982119','2019-04-19 09:59:47.982119'),(2004,'Siġġiewi','55',153,'2019-04-19 09:59:47.985378','2019-04-19 09:59:47.985378'),(2005,'Sliema','56',153,'2019-04-19 09:59:47.989254','2019-04-19 09:59:47.989254'),(2006,'Swieqi','57',153,'2019-04-19 09:59:47.992722','2019-04-19 09:59:47.992722'),(2007,'Ta’ Xbiex','58',153,'2019-04-19 09:59:47.995440','2019-04-19 09:59:47.995440'),(2008,'Tarxien','59',153,'2019-04-19 09:59:47.998536','2019-04-19 09:59:47.998536'),(2009,'Valletta','60',153,'2019-04-19 09:59:48.002372','2019-04-19 09:59:48.002372'),(2010,'Xagħra','61',153,'2019-04-19 09:59:48.006159','2019-04-19 09:59:48.006159'),(2011,'Xewkija','62',153,'2019-04-19 09:59:48.009144','2019-04-19 09:59:48.009144'),(2012,'Xgħajra','63',153,'2019-04-19 09:59:48.012120','2019-04-19 09:59:48.012120'),(2013,'Żabbar','64',153,'2019-04-19 09:59:48.017050','2019-04-19 09:59:48.017050'),(2014,'Żebbuġ Għawdex','65',153,'2019-04-19 09:59:48.021761','2019-04-19 09:59:48.021761'),(2015,'Żebbuġ Malta','66',153,'2019-04-19 09:59:48.025673','2019-04-19 09:59:48.025673'),(2016,'Żejtun','67',153,'2019-04-19 09:59:48.029388','2019-04-19 09:59:48.029388'),(2017,'Żurrieq','68',153,'2019-04-19 09:59:48.033525','2019-04-19 09:59:48.033525'),(2018,'Agalega Islands','AG',154,'2019-04-19 09:59:48.036982','2019-04-19 09:59:48.036982'),(2019,'Black River','BL',154,'2019-04-19 09:59:48.040487','2019-04-19 09:59:48.040487'),(2020,'Beau Bassin-Rose Hill','BR',154,'2019-04-19 09:59:48.043500','2019-04-19 09:59:48.043500'),(2021,'Cargados Carajos Shoals','CC',154,'2019-04-19 09:59:48.046700','2019-04-19 09:59:48.046700'),(2022,'Curepipe','CU',154,'2019-04-19 09:59:48.049569','2019-04-19 09:59:48.049569'),(2023,'Flacq','FL',154,'2019-04-19 09:59:48.052817','2019-04-19 09:59:48.052817'),(2024,'Grand Port','GP',154,'2019-04-19 09:59:48.055914','2019-04-19 09:59:48.055914'),(2025,'Moka','MO',154,'2019-04-19 09:59:48.058660','2019-04-19 09:59:48.058660'),(2026,'Pamplemousses','PA',154,'2019-04-19 09:59:48.061816','2019-04-19 09:59:48.061816'),(2027,'Port Louis','PL',154,'2019-04-19 09:59:48.065205','2019-04-19 09:59:48.065205'),(2028,'Port Louis','PU',154,'2019-04-19 09:59:48.068318','2019-04-19 09:59:48.068318'),(2029,'Plaines Wilhems','PW',154,'2019-04-19 09:59:48.071565','2019-04-19 09:59:48.071565'),(2030,'Quatre Bornes','QB',154,'2019-04-19 09:59:48.076192','2019-04-19 09:59:48.076192'),(2031,'Rodrigues Island','RO',154,'2019-04-19 09:59:48.079950','2019-04-19 09:59:48.079950'),(2032,'Rivière du Rempart','RP',154,'2019-04-19 09:59:48.082516','2019-04-19 09:59:48.082516'),(2033,'Savanne','SA',154,'2019-04-19 09:59:48.087872','2019-04-19 09:59:48.087872'),(2034,'Vacoas-Phoenix','VP',154,'2019-04-19 09:59:48.091472','2019-04-19 09:59:48.091472'),(2035,'Central','CE',155,'2019-04-19 09:59:48.094526','2019-04-19 09:59:48.094526'),(2036,'Male','MLE',155,'2019-04-19 09:59:48.097140','2019-04-19 09:59:48.097140'),(2037,'North Central','NC',155,'2019-04-19 09:59:48.099878','2019-04-19 09:59:48.099878'),(2038,'North','NO',155,'2019-04-19 09:59:48.105059','2019-04-19 09:59:48.105059'),(2039,'South Central','SC',155,'2019-04-19 09:59:48.109352','2019-04-19 09:59:48.109352'),(2040,'South','SU',155,'2019-04-19 09:59:48.112270','2019-04-19 09:59:48.112270'),(2041,'Upper North','UN',155,'2019-04-19 09:59:48.115119','2019-04-19 09:59:48.115119'),(2042,'Upper South','US',155,'2019-04-19 09:59:48.118929','2019-04-19 09:59:48.118929'),(2043,'Central Region','C',156,'2019-04-19 09:59:48.124099','2019-04-19 09:59:48.124099'),(2044,'Northern Region','N',156,'2019-04-19 09:59:48.128305','2019-04-19 09:59:48.128305'),(2045,'Southern Region','S',156,'2019-04-19 09:59:48.131335','2019-04-19 09:59:48.131335'),(2046,'Aguascalientes','AGU',157,'2019-04-19 09:59:48.134730','2019-04-19 09:59:48.134730'),(2047,'Baja California','BCN',157,'2019-04-19 09:59:48.137582','2019-04-19 09:59:48.137582'),(2048,'Baja California Sur','BCS',157,'2019-04-19 09:59:48.141407','2019-04-19 09:59:48.141407'),(2049,'Campeche','CAM',157,'2019-04-19 09:59:48.144690','2019-04-19 09:59:48.144690'),(2050,'Chihuahua','CHH',157,'2019-04-19 09:59:48.147773','2019-04-19 09:59:48.147773'),(2051,'Chiapas','CHP',157,'2019-04-19 09:59:48.151157','2019-04-19 09:59:48.151157'),(2052,'Coahuila','COA',157,'2019-04-19 09:59:48.154116','2019-04-19 09:59:48.154116'),(2053,'Colima','COL',157,'2019-04-19 09:59:48.160209','2019-04-19 09:59:48.160209'),(2054,'Ciudad de México','CDMX',157,'2019-04-19 09:59:48.164093','2019-04-19 09:59:48.164093'),(2055,'Durango','DUR',157,'2019-04-19 09:59:48.167225','2019-04-19 09:59:48.167225'),(2056,'Guerrero','GRO',157,'2019-04-19 09:59:48.170095','2019-04-19 09:59:48.170095'),(2057,'Guanajuato','GUA',157,'2019-04-19 09:59:48.173572','2019-04-19 09:59:48.173572'),(2058,'Hidalgo','HID',157,'2019-04-19 09:59:48.178790','2019-04-19 09:59:48.178790'),(2059,'Jalisco','JAL',157,'2019-04-19 09:59:48.183340','2019-04-19 09:59:48.183340'),(2060,'México','MEX',157,'2019-04-19 09:59:48.186880','2019-04-19 09:59:48.186880'),(2061,'Michoacán','MIC',157,'2019-04-19 09:59:48.191181','2019-04-19 09:59:48.191181'),(2062,'Morelos','MOR',157,'2019-04-19 09:59:48.194902','2019-04-19 09:59:48.194902'),(2063,'Nayarit','NAY',157,'2019-04-19 09:59:48.198058','2019-04-19 09:59:48.198058'),(2064,'Nuevo León','NLE',157,'2019-04-19 09:59:48.200868','2019-04-19 09:59:48.200868'),(2065,'Oaxaca','OAX',157,'2019-04-19 09:59:48.203727','2019-04-19 09:59:48.203727'),(2066,'Puebla','PUE',157,'2019-04-19 09:59:48.207316','2019-04-19 09:59:48.207316'),(2067,'Querétaro','QUE',157,'2019-04-19 09:59:48.211815','2019-04-19 09:59:48.211815'),(2068,'Quintana Roo','ROO',157,'2019-04-19 09:59:48.214872','2019-04-19 09:59:48.214872'),(2069,'Sinaloa','SIN',157,'2019-04-19 09:59:48.217651','2019-04-19 09:59:48.217651'),(2070,'San Luis Potosí','SLP',157,'2019-04-19 09:59:48.221191','2019-04-19 09:59:48.221191'),(2071,'Sonora','SON',157,'2019-04-19 09:59:48.224823','2019-04-19 09:59:48.224823'),(2072,'Tabasco','TAB',157,'2019-04-19 09:59:48.227443','2019-04-19 09:59:48.227443'),(2073,'Tamaulipas','TAM',157,'2019-04-19 09:59:48.230613','2019-04-19 09:59:48.230613'),(2074,'Tlaxcala','TLA',157,'2019-04-19 09:59:48.233381','2019-04-19 09:59:48.233381'),(2075,'Veracruz','VER',157,'2019-04-19 09:59:48.236289','2019-04-19 09:59:48.236289'),(2076,'Yucatán','YUC',157,'2019-04-19 09:59:48.239636','2019-04-19 09:59:48.239636'),(2077,'Zacatecas','ZAC',157,'2019-04-19 09:59:48.243139','2019-04-19 09:59:48.243139'),(2078,'Johor','01',158,'2019-04-19 09:59:48.246151','2019-04-19 09:59:48.246151'),(2079,'Kedah','02',158,'2019-04-19 09:59:48.248678','2019-04-19 09:59:48.248678'),(2080,'Kelantan','03',158,'2019-04-19 09:59:48.250977','2019-04-19 09:59:48.250977'),(2081,'Melaka','04',158,'2019-04-19 09:59:48.253921','2019-04-19 09:59:48.253921'),(2082,'Negeri Sembilan','05',158,'2019-04-19 09:59:48.257248','2019-04-19 09:59:48.257248'),(2083,'Pahang','06',158,'2019-04-19 09:59:48.259872','2019-04-19 09:59:48.259872'),(2084,'Pulau Pinang','07',158,'2019-04-19 09:59:48.263319','2019-04-19 09:59:48.263319'),(2085,'Perak','08',158,'2019-04-19 09:59:48.266371','2019-04-19 09:59:48.266371'),(2086,'Perlis','09',158,'2019-04-19 09:59:48.269228','2019-04-19 09:59:48.269228'),(2087,'Selangor','10',158,'2019-04-19 09:59:48.272738','2019-04-19 09:59:48.272738'),(2088,'Terengganu','11',158,'2019-04-19 09:59:48.275548','2019-04-19 09:59:48.275548'),(2089,'Sabah','12',158,'2019-04-19 09:59:48.278352','2019-04-19 09:59:48.278352'),(2090,'Sarawak','13',158,'2019-04-19 09:59:48.281088','2019-04-19 09:59:48.281088'),(2091,'Wilayah Persekutuan Kuala Lumpur','14',158,'2019-04-19 09:59:48.283670','2019-04-19 09:59:48.283670'),(2092,'Wilayah Persekutuan Labuan','15',158,'2019-04-19 09:59:48.287203','2019-04-19 09:59:48.287203'),(2093,'Wilayah Persekutuan Putrajaya','16',158,'2019-04-19 09:59:48.290818','2019-04-19 09:59:48.290818'),(2094,'Niassa','A',159,'2019-04-19 09:59:48.294626','2019-04-19 09:59:48.294626'),(2095,'Manica','B',159,'2019-04-19 09:59:48.298106','2019-04-19 09:59:48.298106'),(2096,'Gaza','G',159,'2019-04-19 09:59:48.301401','2019-04-19 09:59:48.301401'),(2097,'Inhambane','I',159,'2019-04-19 09:59:48.304237','2019-04-19 09:59:48.304237'),(2098,'Maputo','L',159,'2019-04-19 09:59:48.307574','2019-04-19 09:59:48.307574'),(2099,'Maputo (city)','MPM',159,'2019-04-19 09:59:48.310842','2019-04-19 09:59:48.310842'),(2100,'Nampula','N',159,'2019-04-19 09:59:48.313412','2019-04-19 09:59:48.313412'),(2101,'Cabo Delgado','P',159,'2019-04-19 09:59:48.316135','2019-04-19 09:59:48.316135'),(2102,'Zambézia','Q',159,'2019-04-19 09:59:48.319448','2019-04-19 09:59:48.319448'),(2103,'Sofala','S',159,'2019-04-19 09:59:48.322391','2019-04-19 09:59:48.322391'),(2104,'Tete','T',159,'2019-04-19 09:59:48.325740','2019-04-19 09:59:48.325740'),(2105,'Caprivi','CA',160,'2019-04-19 09:59:48.328388','2019-04-19 09:59:48.328388'),(2106,'Erongo','ER',160,'2019-04-19 09:59:48.331055','2019-04-19 09:59:48.331055'),(2107,'Hardap','HA',160,'2019-04-19 09:59:48.334429','2019-04-19 09:59:48.334429'),(2108,'Karas','KA',160,'2019-04-19 09:59:48.339442','2019-04-19 09:59:48.339442'),(2109,'Khomas','KH',160,'2019-04-19 09:59:48.343939','2019-04-19 09:59:48.343939'),(2110,'Kunene','KU',160,'2019-04-19 09:59:48.347570','2019-04-19 09:59:48.347570'),(2111,'Otjozondjupa','OD',160,'2019-04-19 09:59:48.351137','2019-04-19 09:59:48.351137'),(2112,'Omaheke','OH',160,'2019-04-19 09:59:48.354541','2019-04-19 09:59:48.354541'),(2113,'Okavango','OK',160,'2019-04-19 09:59:48.357825','2019-04-19 09:59:48.357825'),(2114,'Oshana','ON',160,'2019-04-19 09:59:48.360475','2019-04-19 09:59:48.360475'),(2115,'Omusati','OS',160,'2019-04-19 09:59:48.362973','2019-04-19 09:59:48.362973'),(2116,'Oshikoto','OT',160,'2019-04-19 09:59:48.365755','2019-04-19 09:59:48.365755'),(2117,'Ohangwena','OW',160,'2019-04-19 09:59:48.368492','2019-04-19 09:59:48.368492'),(2118,'Agadez','1',162,'2019-04-19 09:59:48.371580','2019-04-19 09:59:48.371580'),(2119,'Diffa','2',162,'2019-04-19 09:59:48.375923','2019-04-19 09:59:48.375923'),(2120,'Dosso','3',162,'2019-04-19 09:59:48.379934','2019-04-19 09:59:48.379934'),(2121,'Maradi','4',162,'2019-04-19 09:59:48.383034','2019-04-19 09:59:48.383034'),(2122,'Tahoua','5',162,'2019-04-19 09:59:48.385860','2019-04-19 09:59:48.385860'),(2123,'Tillabéri','6',162,'2019-04-19 09:59:48.389627','2019-04-19 09:59:48.389627'),(2124,'Zinder','7',162,'2019-04-19 09:59:48.393495','2019-04-19 09:59:48.393495'),(2125,'Niamey','8',162,'2019-04-19 09:59:48.397206','2019-04-19 09:59:48.397206'),(2126,'Abia','AB',164,'2019-04-19 09:59:48.400776','2019-04-19 09:59:48.400776'),(2127,'Adamawa','AD',164,'2019-04-19 09:59:48.403836','2019-04-19 09:59:48.403836'),(2128,'Akwa Ibom','AK',164,'2019-04-19 09:59:48.407956','2019-04-19 09:59:48.407956'),(2129,'Anambra','AN',164,'2019-04-19 09:59:48.412144','2019-04-19 09:59:48.412144'),(2130,'Bauchi','BA',164,'2019-04-19 09:59:48.421676','2019-04-19 09:59:48.421676'),(2131,'Benue','BE',164,'2019-04-19 09:59:48.426282','2019-04-19 09:59:48.426282'),(2132,'Borno','BO',164,'2019-04-19 09:59:48.430668','2019-04-19 09:59:48.430668'),(2133,'Bayelsa','BY',164,'2019-04-19 09:59:48.433872','2019-04-19 09:59:48.433872'),(2134,'Cross River','CR',164,'2019-04-19 09:59:48.438564','2019-04-19 09:59:48.438564'),(2135,'Delta','DE',164,'2019-04-19 09:59:48.442989','2019-04-19 09:59:48.442989'),(2136,'Ebonyi','EB',164,'2019-04-19 09:59:48.447292','2019-04-19 09:59:48.447292'),(2137,'Edo','ED',164,'2019-04-19 09:59:48.451751','2019-04-19 09:59:48.451751'),(2138,'Ekiti','EK',164,'2019-04-19 09:59:48.455873','2019-04-19 09:59:48.455873'),(2139,'Enugu','EN',164,'2019-04-19 09:59:48.459936','2019-04-19 09:59:48.459936'),(2140,'Abuja Capital Territory','FC',164,'2019-04-19 09:59:48.464741','2019-04-19 09:59:48.464741'),(2141,'Gombe','GO',164,'2019-04-19 09:59:48.469233','2019-04-19 09:59:48.469233'),(2142,'Imo','IM',164,'2019-04-19 09:59:48.473347','2019-04-19 09:59:48.473347'),(2143,'Jigawa','JI',164,'2019-04-19 09:59:48.476902','2019-04-19 09:59:48.476902'),(2144,'Kaduna','KD',164,'2019-04-19 09:59:48.481038','2019-04-19 09:59:48.481038'),(2145,'Kebbi','KE',164,'2019-04-19 09:59:48.485371','2019-04-19 09:59:48.485371'),(2146,'Kano','KN',164,'2019-04-19 09:59:48.490028','2019-04-19 09:59:48.490028'),(2147,'Kogi','KO',164,'2019-04-19 09:59:48.496613','2019-04-19 09:59:48.496613'),(2148,'Katsina','KT',164,'2019-04-19 09:59:48.500728','2019-04-19 09:59:48.500728'),(2149,'Kwara','KW',164,'2019-04-19 09:59:48.504741','2019-04-19 09:59:48.504741'),(2150,'Lagos','LA',164,'2019-04-19 09:59:48.509495','2019-04-19 09:59:48.509495'),(2151,'Nassarawa','NA',164,'2019-04-19 09:59:48.513627','2019-04-19 09:59:48.513627'),(2152,'Niger','NI',164,'2019-04-19 09:59:48.518069','2019-04-19 09:59:48.518069'),(2153,'Ogun','OG',164,'2019-04-19 09:59:48.522752','2019-04-19 09:59:48.522752'),(2154,'Ondo','ON',164,'2019-04-19 09:59:48.529227','2019-04-19 09:59:48.529227'),(2155,'Osun','OS',164,'2019-04-19 09:59:48.534023','2019-04-19 09:59:48.534023'),(2156,'Oyo','OY',164,'2019-04-19 09:59:48.538881','2019-04-19 09:59:48.538881'),(2157,'Plateau','PL',164,'2019-04-19 09:59:48.545903','2019-04-19 09:59:48.545903'),(2158,'Rivers','RI',164,'2019-04-19 09:59:48.550769','2019-04-19 09:59:48.550769'),(2159,'Sokoto','SO',164,'2019-04-19 09:59:48.555561','2019-04-19 09:59:48.555561'),(2160,'Taraba','TA',164,'2019-04-19 09:59:48.561380','2019-04-19 09:59:48.561380'),(2161,'Yobe','YO',164,'2019-04-19 09:59:48.566880','2019-04-19 09:59:48.566880'),(2162,'Zamfara','ZA',164,'2019-04-19 09:59:48.570644','2019-04-19 09:59:48.570644'),(2163,'Atlántico Norte','AN',165,'2019-04-19 09:59:48.576729','2019-04-19 09:59:48.576729'),(2164,'Atlántico Sur','AS',165,'2019-04-19 09:59:48.581087','2019-04-19 09:59:48.581087'),(2165,'Boaco','BO',165,'2019-04-19 09:59:48.584535','2019-04-19 09:59:48.584535'),(2166,'Carazo','CA',165,'2019-04-19 09:59:48.588183','2019-04-19 09:59:48.588183'),(2167,'Chinandega','CI',165,'2019-04-19 09:59:48.592875','2019-04-19 09:59:48.592875'),(2168,'Chontales','CO',165,'2019-04-19 09:59:48.596895','2019-04-19 09:59:48.596895'),(2169,'Estelí','ES',165,'2019-04-19 09:59:48.601452','2019-04-19 09:59:48.601452'),(2170,'Granada','GR',165,'2019-04-19 09:59:48.605454','2019-04-19 09:59:48.605454'),(2171,'Jinotega','JI',165,'2019-04-19 09:59:48.609174','2019-04-19 09:59:48.609174'),(2172,'León','LE',165,'2019-04-19 09:59:48.612379','2019-04-19 09:59:48.612379'),(2173,'Madriz','MD',165,'2019-04-19 09:59:48.616380','2019-04-19 09:59:48.616380'),(2174,'Managua','MN',165,'2019-04-19 09:59:48.620298','2019-04-19 09:59:48.620298'),(2175,'Masaya','MS',165,'2019-04-19 09:59:48.624446','2019-04-19 09:59:48.624446'),(2176,'Matagalpa','MT',165,'2019-04-19 09:59:48.627836','2019-04-19 09:59:48.627836'),(2177,'Nueva Segovia','NS',165,'2019-04-19 09:59:48.632108','2019-04-19 09:59:48.632108'),(2178,'Rivas','RI',165,'2019-04-19 09:59:48.635959','2019-04-19 09:59:48.635959'),(2179,'Río San Juan','SJ',165,'2019-04-19 09:59:48.639795','2019-04-19 09:59:48.639795'),(2180,'Aruba','AW',166,'2019-04-19 09:59:48.643881','2019-04-19 09:59:48.643881'),(2181,'Bonaire','BQ1',166,'2019-04-19 09:59:48.647995','2019-04-19 09:59:48.647995'),(2182,'Saba','BQ2',166,'2019-04-19 09:59:48.652013','2019-04-19 09:59:48.652013'),(2183,'Sint Eustatius','BQ3',166,'2019-04-19 09:59:48.655820','2019-04-19 09:59:48.655820'),(2184,'Curaçao','CW',166,'2019-04-19 09:59:48.659482','2019-04-19 09:59:48.659482'),(2185,'Drenthe','DR',166,'2019-04-19 09:59:48.663715','2019-04-19 09:59:48.663715'),(2186,'Flevoland','FL',166,'2019-04-19 09:59:48.667238','2019-04-19 09:59:48.667238'),(2187,'Friesland','FR',166,'2019-04-19 09:59:48.670905','2019-04-19 09:59:48.670905'),(2188,'Gelderland','GE',166,'2019-04-19 09:59:48.675534','2019-04-19 09:59:48.675534'),(2189,'Groningen','GR',166,'2019-04-19 09:59:48.680064','2019-04-19 09:59:48.680064'),(2190,'Limburg','LI',166,'2019-04-19 09:59:48.684144','2019-04-19 09:59:48.684144'),(2191,'Noord-Brabant','NB',166,'2019-04-19 09:59:48.687883','2019-04-19 09:59:48.687883'),(2192,'Noord-Holland','NH',166,'2019-04-19 09:59:48.692164','2019-04-19 09:59:48.692164'),(2193,'Overijssel','OV',166,'2019-04-19 09:59:48.696111','2019-04-19 09:59:48.696111'),(2194,'Sint Maarten','SX',166,'2019-04-19 09:59:48.700750','2019-04-19 09:59:48.700750'),(2195,'Utrecht','UT',166,'2019-04-19 09:59:48.703998','2019-04-19 09:59:48.703998'),(2196,'Zeeland','ZE',166,'2019-04-19 09:59:48.708326','2019-04-19 09:59:48.708326'),(2197,'Zuid-Holland','ZH',166,'2019-04-19 09:59:48.712053','2019-04-19 09:59:48.712053'),(2198,'Østfold','01',167,'2019-04-19 09:59:48.716073','2019-04-19 09:59:48.716073'),(2199,'Akershus','02',167,'2019-04-19 09:59:48.719968','2019-04-19 09:59:48.719968'),(2200,'Oslo','03',167,'2019-04-19 09:59:48.723973','2019-04-19 09:59:48.723973'),(2201,'Hedmark','04',167,'2019-04-19 09:59:48.728435','2019-04-19 09:59:48.728435'),(2202,'Oppland','05',167,'2019-04-19 09:59:48.732246','2019-04-19 09:59:48.732246'),(2203,'Buskerud','06',167,'2019-04-19 09:59:48.736769','2019-04-19 09:59:48.736769'),(2204,'Vestfold','07',167,'2019-04-19 09:59:48.741485','2019-04-19 09:59:48.741485'),(2205,'Telemark','08',167,'2019-04-19 09:59:48.745515','2019-04-19 09:59:48.745515'),(2206,'Aust-Agder','09',167,'2019-04-19 09:59:48.748645','2019-04-19 09:59:48.748645'),(2207,'Vest-Agder','10',167,'2019-04-19 09:59:48.751600','2019-04-19 09:59:48.751600'),(2208,'Rogaland','11',167,'2019-04-19 09:59:48.754571','2019-04-19 09:59:48.754571'),(2209,'Hordaland','12',167,'2019-04-19 09:59:48.757965','2019-04-19 09:59:48.757965'),(2210,'Sogn og Fjordane','14',167,'2019-04-19 09:59:48.760836','2019-04-19 09:59:48.760836'),(2211,'Møre og Romsdal','15',167,'2019-04-19 09:59:48.763712','2019-04-19 09:59:48.763712'),(2212,'Sør-Trøndelag','16',167,'2019-04-19 09:59:48.767314','2019-04-19 09:59:48.767314'),(2213,'Nord-Trøndelag','17',167,'2019-04-19 09:59:48.770488','2019-04-19 09:59:48.770488'),(2214,'Nordland','18',167,'2019-04-19 09:59:48.773953','2019-04-19 09:59:48.773953'),(2215,'Troms','19',167,'2019-04-19 09:59:48.776570','2019-04-19 09:59:48.776570'),(2216,'Finnmark','20',167,'2019-04-19 09:59:48.779014','2019-04-19 09:59:48.779014'),(2217,'Svalbard (Arctic Region)','21',167,'2019-04-19 09:59:48.781863','2019-04-19 09:59:48.781863'),(2218,'Jan Mayen (Arctic Region)','22',167,'2019-04-19 09:59:48.784513','2019-04-19 09:59:48.784513'),(2219,'Madhyamanchal','1',168,'2019-04-19 09:59:48.787214','2019-04-19 09:59:48.787214'),(2220,'Madhya Pashchimanchal','2',168,'2019-04-19 09:59:48.791015','2019-04-19 09:59:48.791015'),(2221,'Pashchimanchal','3',168,'2019-04-19 09:59:48.794311','2019-04-19 09:59:48.794311'),(2222,'Purwanchal','4',168,'2019-04-19 09:59:48.797265','2019-04-19 09:59:48.797265'),(2223,'Sudur Pashchimanchal','5',168,'2019-04-19 09:59:48.800207','2019-04-19 09:59:48.800207'),(2224,'Aiwo','01',169,'2019-04-19 09:59:48.803003','2019-04-19 09:59:48.803003'),(2225,'Anabar','02',169,'2019-04-19 09:59:48.806064','2019-04-19 09:59:48.806064'),(2226,'Anetan','03',169,'2019-04-19 09:59:48.808960','2019-04-19 09:59:48.808960'),(2227,'Anibare','04',169,'2019-04-19 09:59:48.812778','2019-04-19 09:59:48.812778'),(2228,'Baiti','05',169,'2019-04-19 09:59:48.816686','2019-04-19 09:59:48.816686'),(2229,'Boe','06',169,'2019-04-19 09:59:48.819637','2019-04-19 09:59:48.819637'),(2230,'Buada','07',169,'2019-04-19 09:59:48.823292','2019-04-19 09:59:48.823292'),(2231,'Denigomodu','08',169,'2019-04-19 09:59:48.826259','2019-04-19 09:59:48.826259'),(2232,'Ewa','09',169,'2019-04-19 09:59:48.829106','2019-04-19 09:59:48.829106'),(2233,'Ijuw','10',169,'2019-04-19 09:59:48.832322','2019-04-19 09:59:48.832322'),(2234,'Meneng','11',169,'2019-04-19 09:59:48.835066','2019-04-19 09:59:48.835066'),(2235,'Nibok','12',169,'2019-04-19 09:59:48.838229','2019-04-19 09:59:48.838229'),(2236,'Uaboe','13',169,'2019-04-19 09:59:48.841237','2019-04-19 09:59:48.841237'),(2237,'Yaren','14',169,'2019-04-19 09:59:48.844156','2019-04-19 09:59:48.844156'),(2238,'Chatham Islands Territory','CIT',171,'2019-04-19 09:59:48.847694','2019-04-19 09:59:48.847694'),(2239,'Auckland','AUK',171,'2019-04-19 09:59:48.850582','2019-04-19 09:59:48.850582'),(2240,'Bay of Plenty','BOP',171,'2019-04-19 09:59:48.854201','2019-04-19 09:59:48.854201'),(2241,'Canterbury','CAN',171,'2019-04-19 09:59:48.859518','2019-04-19 09:59:48.859518'),(2242,'Gisborne','GIS',171,'2019-04-19 09:59:48.863129','2019-04-19 09:59:48.863129'),(2243,'Hawke\'s Bay','HKB',171,'2019-04-19 09:59:48.866435','2019-04-19 09:59:48.866435'),(2244,'Manawatu-Wanganui','MWT',171,'2019-04-19 09:59:48.869998','2019-04-19 09:59:48.869998'),(2245,'Marlborough','MBH',171,'2019-04-19 09:59:48.873075','2019-04-19 09:59:48.873075'),(2246,'Nelson','NSN',171,'2019-04-19 09:59:48.878357','2019-04-19 09:59:48.878357'),(2247,'Northland','NTL',171,'2019-04-19 09:59:48.881305','2019-04-19 09:59:48.881305'),(2248,'Otago','OTA',171,'2019-04-19 09:59:48.885463','2019-04-19 09:59:48.885463'),(2249,'Southland','STL',171,'2019-04-19 09:59:48.893471','2019-04-19 09:59:48.893471'),(2250,'Taranaki','TKI',171,'2019-04-19 09:59:48.896187','2019-04-19 09:59:48.896187'),(2251,'Tasman','TAS',171,'2019-04-19 09:59:48.898780','2019-04-19 09:59:48.898780'),(2252,'Wellington','WGN',171,'2019-04-19 09:59:48.901849','2019-04-19 09:59:48.901849'),(2253,'Waikato','WKO',171,'2019-04-19 09:59:48.904545','2019-04-19 09:59:48.904545'),(2254,'West Coast','WTC',171,'2019-04-19 09:59:48.907554','2019-04-19 09:59:48.907554'),(2255,'Al Bāţinah','BA',172,'2019-04-19 09:59:48.911210','2019-04-19 09:59:48.911210'),(2256,'Al Buraymī','BU',172,'2019-04-19 09:59:48.914382','2019-04-19 09:59:48.914382'),(2257,'Ad Dākhilīya','DA',172,'2019-04-19 09:59:48.917337','2019-04-19 09:59:48.917337'),(2258,'Masqaţ','MA',172,'2019-04-19 09:59:48.920063','2019-04-19 09:59:48.920063'),(2259,'Musandam','MU',172,'2019-04-19 09:59:48.923542','2019-04-19 09:59:48.923542'),(2260,'Ash Sharqīyah','SH',172,'2019-04-19 09:59:48.926627','2019-04-19 09:59:48.926627'),(2261,'Al Wusţá','WU',172,'2019-04-19 09:59:48.929132','2019-04-19 09:59:48.929132'),(2262,'Az̧ Z̧āhirah','ZA',172,'2019-04-19 09:59:48.931906','2019-04-19 09:59:48.931906'),(2263,'Z̧ufār','ZU',172,'2019-04-19 09:59:48.934792','2019-04-19 09:59:48.934792'),(2264,'Bocas del Toro','1',173,'2019-04-19 09:59:48.937385','2019-04-19 09:59:48.937385'),(2265,'Coclé','2',173,'2019-04-19 09:59:48.940271','2019-04-19 09:59:48.940271'),(2266,'Colón','3',173,'2019-04-19 09:59:48.943407','2019-04-19 09:59:48.943407'),(2267,'Chiriquí','4',173,'2019-04-19 09:59:48.945853','2019-04-19 09:59:48.945853'),(2268,'Darién','5',173,'2019-04-19 09:59:48.948360','2019-04-19 09:59:48.948360'),(2269,'Herrera','6',173,'2019-04-19 09:59:48.951745','2019-04-19 09:59:48.951745'),(2270,'Los Santos','7',173,'2019-04-19 09:59:48.954862','2019-04-19 09:59:48.954862'),(2271,'Panamá','8',173,'2019-04-19 09:59:48.958629','2019-04-19 09:59:48.958629'),(2272,'Veraguas','9',173,'2019-04-19 09:59:48.961261','2019-04-19 09:59:48.961261'),(2273,'Emberá','EM',173,'2019-04-19 09:59:48.963716','2019-04-19 09:59:48.963716'),(2274,'Kuna Yala','KY',173,'2019-04-19 09:59:48.966699','2019-04-19 09:59:48.966699'),(2275,'Ngöbe-Buglé','NB',173,'2019-04-19 09:59:48.969429','2019-04-19 09:59:48.969429'),(2276,'Amazonas','AMA',174,'2019-04-19 09:59:48.972252','2019-04-19 09:59:48.972252'),(2277,'Ancash','ANC',174,'2019-04-19 09:59:48.976354','2019-04-19 09:59:48.976354'),(2278,'Apurímac','APU',174,'2019-04-19 09:59:48.979312','2019-04-19 09:59:48.979312'),(2279,'Arequipa','ARE',174,'2019-04-19 09:59:48.983045','2019-04-19 09:59:48.983045'),(2280,'Ayacucho','AYA',174,'2019-04-19 09:59:48.985840','2019-04-19 09:59:48.985840'),(2281,'Cajamarca','CAJ',174,'2019-04-19 09:59:48.988296','2019-04-19 09:59:48.988296'),(2282,'El Callao','CAL',174,'2019-04-19 09:59:48.992009','2019-04-19 09:59:48.992009'),(2283,'Cusco [Cuzco]','CUS',174,'2019-04-19 09:59:48.995673','2019-04-19 09:59:48.995673'),(2284,'Huánuco','HUC',174,'2019-04-19 09:59:48.998654','2019-04-19 09:59:48.998654'),(2285,'Huancavelica','HUV',174,'2019-04-19 09:59:49.001316','2019-04-19 09:59:49.001316'),(2286,'Ica','ICA',174,'2019-04-19 09:59:49.004480','2019-04-19 09:59:49.004480'),(2287,'Junín','JUN',174,'2019-04-19 09:59:49.009044','2019-04-19 09:59:49.009044'),(2288,'La Libertad','LAL',174,'2019-04-19 09:59:49.012936','2019-04-19 09:59:49.012936'),(2289,'Lambayeque','LAM',174,'2019-04-19 09:59:49.017002','2019-04-19 09:59:49.017002'),(2290,'Lima','LIM',174,'2019-04-19 09:59:49.021687','2019-04-19 09:59:49.021687'),(2291,'Municipalidad Metropolitana de Lima','LMA',174,'2019-04-19 09:59:49.025317','2019-04-19 09:59:49.025317'),(2292,'Loreto','LOR',174,'2019-04-19 09:59:49.027962','2019-04-19 09:59:49.027962'),(2293,'Madre de Dios','MDD',174,'2019-04-19 09:59:49.031065','2019-04-19 09:59:49.031065'),(2294,'Moquegua','MOQ',174,'2019-04-19 09:59:49.033679','2019-04-19 09:59:49.033679'),(2295,'Pasco','PAS',174,'2019-04-19 09:59:49.036651','2019-04-19 09:59:49.036651'),(2296,'Piura','PIU',174,'2019-04-19 09:59:49.040429','2019-04-19 09:59:49.040429'),(2297,'Puno','PUN',174,'2019-04-19 09:59:49.043979','2019-04-19 09:59:49.043979'),(2298,'San Martín','SAM',174,'2019-04-19 09:59:49.047762','2019-04-19 09:59:49.047762'),(2299,'Tacna','TAC',174,'2019-04-19 09:59:49.050508','2019-04-19 09:59:49.050508'),(2300,'Tumbes','TUM',174,'2019-04-19 09:59:49.053917','2019-04-19 09:59:49.053917'),(2301,'Ucayali','UCA',174,'2019-04-19 09:59:49.058259','2019-04-19 09:59:49.058259'),(2302,'Chimbu','CPK',176,'2019-04-19 09:59:49.064512','2019-04-19 09:59:49.064512'),(2303,'Central','CPM',176,'2019-04-19 09:59:49.068616','2019-04-19 09:59:49.068616'),(2304,'East New Britain','EBR',176,'2019-04-19 09:59:49.072069','2019-04-19 09:59:49.072069'),(2305,'Eastern Highlands','EHG',176,'2019-04-19 09:59:49.075220','2019-04-19 09:59:49.075220'),(2306,'Enga','EPW',176,'2019-04-19 09:59:49.078147','2019-04-19 09:59:49.078147'),(2307,'East Sepik','ESW',176,'2019-04-19 09:59:49.080648','2019-04-19 09:59:49.080648'),(2308,'Gulf','GPK',176,'2019-04-19 09:59:49.083139','2019-04-19 09:59:49.083139'),(2309,'Milne Bay','MBA',176,'2019-04-19 09:59:49.085779','2019-04-19 09:59:49.085779'),(2310,'Morobe','MPL',176,'2019-04-19 09:59:49.088372','2019-04-19 09:59:49.088372'),(2311,'Madang','MPM',176,'2019-04-19 09:59:49.091803','2019-04-19 09:59:49.091803'),(2312,'Manus','MRL',176,'2019-04-19 09:59:49.094604','2019-04-19 09:59:49.094604'),(2313,'National Capital District (Port Moresby)','NCD',176,'2019-04-19 09:59:49.097112','2019-04-19 09:59:49.097112'),(2314,'New Ireland','NIK',176,'2019-04-19 09:59:49.099527','2019-04-19 09:59:49.099527'),(2315,'Northern','NPP',176,'2019-04-19 09:59:49.102070','2019-04-19 09:59:49.102070'),(2316,'Bougainville','NSB',176,'2019-04-19 09:59:49.104608','2019-04-19 09:59:49.104608'),(2317,'Sandaun','SAN',176,'2019-04-19 09:59:49.107754','2019-04-19 09:59:49.107754'),(2318,'Southern Highlands','SHM',176,'2019-04-19 09:59:49.110760','2019-04-19 09:59:49.110760'),(2319,'West New Britain','WBK',176,'2019-04-19 09:59:49.113378','2019-04-19 09:59:49.113378'),(2320,'Western Highlands','WHM',176,'2019-04-19 09:59:49.115870','2019-04-19 09:59:49.115870'),(2321,'Western','WPD',176,'2019-04-19 09:59:49.118834','2019-04-19 09:59:49.118834'),(2322,'National Capital Region','00',177,'2019-04-19 09:59:49.122787','2019-04-19 09:59:49.122787'),(2323,'Ilocos (Region I)','01',177,'2019-04-19 09:59:49.126660','2019-04-19 09:59:49.126660'),(2324,'Cagayan Valley (Region II)','02',177,'2019-04-19 09:59:49.129216','2019-04-19 09:59:49.129216'),(2325,'Central Luzon (Region III)','03',177,'2019-04-19 09:59:49.131799','2019-04-19 09:59:49.131799'),(2326,'Bicol (Region V)','05',177,'2019-04-19 09:59:49.134966','2019-04-19 09:59:49.134966'),(2327,'Western Visayas (Region VI)','06',177,'2019-04-19 09:59:49.138017','2019-04-19 09:59:49.138017'),(2328,'Central Visayas (Region VII)','07',177,'2019-04-19 09:59:49.141890','2019-04-19 09:59:49.141890'),(2329,'Eastern Visayas (Region VIII)','08',177,'2019-04-19 09:59:49.144727','2019-04-19 09:59:49.144727'),(2330,'Zamboanga Peninsula (Region IX)','09',177,'2019-04-19 09:59:49.147720','2019-04-19 09:59:49.147720'),(2331,'Northern Mindanao (Region X)','10',177,'2019-04-19 09:59:49.151337','2019-04-19 09:59:49.151337'),(2332,'Davao (Region XI)','11',177,'2019-04-19 09:59:49.154590','2019-04-19 09:59:49.154590'),(2333,'Soccsksargen (Region XII)','12',177,'2019-04-19 09:59:49.158349','2019-04-19 09:59:49.158349'),(2334,'Caraga (Region XIII)','13',177,'2019-04-19 09:59:49.161431','2019-04-19 09:59:49.161431'),(2335,'Autonomous Region in Muslim Mindanao (ARMM)','14',177,'2019-04-19 09:59:49.165802','2019-04-19 09:59:49.165802'),(2336,'Cordillera Administrative Region (CAR)','15',177,'2019-04-19 09:59:49.168997','2019-04-19 09:59:49.168997'),(2337,'CALABARZON (Region IV-A)','40',177,'2019-04-19 09:59:49.171857','2019-04-19 09:59:49.171857'),(2338,'MIMAROPA (Region IV-B)','41',177,'2019-04-19 09:59:49.177246','2019-04-19 09:59:49.177246'),(2339,'Balochistan','BA',178,'2019-04-19 09:59:49.181264','2019-04-19 09:59:49.181264'),(2340,'Gilgit-Baltistan','GB',178,'2019-04-19 09:59:49.184398','2019-04-19 09:59:49.184398'),(2341,'Islamabad','IS',178,'2019-04-19 09:59:49.187165','2019-04-19 09:59:49.187165'),(2342,'Azad Kashmir','JK',178,'2019-04-19 09:59:49.192210','2019-04-19 09:59:49.192210'),(2343,'Khyber Pakhtunkhwa','KP',178,'2019-04-19 09:59:49.195892','2019-04-19 09:59:49.195892'),(2344,'Punjab','PB',178,'2019-04-19 09:59:49.198581','2019-04-19 09:59:49.198581'),(2345,'Sindh','SD',178,'2019-04-19 09:59:49.201026','2019-04-19 09:59:49.201026'),(2346,'Federally Administered Tribal Areas','TA',178,'2019-04-19 09:59:49.203742','2019-04-19 09:59:49.203742'),(2347,'Dolnośląskie','DS',179,'2019-04-19 09:59:49.206910','2019-04-19 09:59:49.206910'),(2348,'Kujawsko-pomorskie','KP',179,'2019-04-19 09:59:49.209472','2019-04-19 09:59:49.209472'),(2349,'Lubuskie','LB',179,'2019-04-19 09:59:49.211934','2019-04-19 09:59:49.211934'),(2350,'Łódzkie','LD',179,'2019-04-19 09:59:49.214650','2019-04-19 09:59:49.214650'),(2351,'Lubelskie','LU',179,'2019-04-19 09:59:49.217371','2019-04-19 09:59:49.217371'),(2352,'Małopolskie','MA',179,'2019-04-19 09:59:49.219990','2019-04-19 09:59:49.219990'),(2353,'Mazowieckie','MZ',179,'2019-04-19 09:59:49.223170','2019-04-19 09:59:49.223170'),(2354,'Opolskie','OP',179,'2019-04-19 09:59:49.226604','2019-04-19 09:59:49.226604'),(2355,'Podlaskie','PD',179,'2019-04-19 09:59:49.229678','2019-04-19 09:59:49.229678'),(2356,'Podkarpackie','PK',179,'2019-04-19 09:59:49.232580','2019-04-19 09:59:49.232580'),(2357,'Pomorskie','PM',179,'2019-04-19 09:59:49.235327','2019-04-19 09:59:49.235327'),(2358,'Świętokrzyskie','SK',179,'2019-04-19 09:59:49.238483','2019-04-19 09:59:49.238483'),(2359,'Śląskie','SL',179,'2019-04-19 09:59:49.242052','2019-04-19 09:59:49.242052'),(2360,'Warmińsko-mazurskie','WN',179,'2019-04-19 09:59:49.244706','2019-04-19 09:59:49.244706'),(2361,'Wielkopolskie','WP',179,'2019-04-19 09:59:49.247416','2019-04-19 09:59:49.247416'),(2362,'Zachodniopomorskie','ZP',179,'2019-04-19 09:59:49.249934','2019-04-19 09:59:49.249934'),(2363,'Bethlehem','BTH',183,'2019-04-19 09:59:49.252811','2019-04-19 09:59:49.252811'),(2364,'Deir El Balah','DEB',183,'2019-04-19 09:59:49.256204','2019-04-19 09:59:49.256204'),(2365,'Gaza','GZA',183,'2019-04-19 09:59:49.259583','2019-04-19 09:59:49.259583'),(2366,'Hebron','HBN',183,'2019-04-19 09:59:49.262858','2019-04-19 09:59:49.262858'),(2367,'Jerusalem','JEM',183,'2019-04-19 09:59:49.265679','2019-04-19 09:59:49.265679'),(2368,'Jenin','JEN',183,'2019-04-19 09:59:49.268345','2019-04-19 09:59:49.268345'),(2369,'Jericho - Al Aghwar','JRH',183,'2019-04-19 09:59:49.271383','2019-04-19 09:59:49.271383'),(2370,'Khan Yunis','KYS',183,'2019-04-19 09:59:49.274350','2019-04-19 09:59:49.274350'),(2371,'Nablus','NBS',183,'2019-04-19 09:59:49.277107','2019-04-19 09:59:49.277107'),(2372,'North Gaza','NGZ',183,'2019-04-19 09:59:49.279829','2019-04-19 09:59:49.279829'),(2373,'Qalqilya','QQA',183,'2019-04-19 09:59:49.282630','2019-04-19 09:59:49.282630'),(2374,'Ramallah','RBH',183,'2019-04-19 09:59:49.285893','2019-04-19 09:59:49.285893'),(2375,'Rafah','RFH',183,'2019-04-19 09:59:49.291372','2019-04-19 09:59:49.291372'),(2376,'Salfit','SLT',183,'2019-04-19 09:59:49.297208','2019-04-19 09:59:49.297208'),(2377,'Tubas','TBS',183,'2019-04-19 09:59:49.300323','2019-04-19 09:59:49.300323'),(2378,'Tulkarm','TKM',183,'2019-04-19 09:59:49.304131','2019-04-19 09:59:49.304131'),(2379,'Aveiro','01',184,'2019-04-19 09:59:49.308085','2019-04-19 09:59:49.308085'),(2380,'Beja','02',184,'2019-04-19 09:59:49.312753','2019-04-19 09:59:49.312753'),(2381,'Braga','03',184,'2019-04-19 09:59:49.318503','2019-04-19 09:59:49.318503'),(2382,'Bragança','04',184,'2019-04-19 09:59:49.321769','2019-04-19 09:59:49.321769'),(2383,'Castelo Branco','05',184,'2019-04-19 09:59:49.328089','2019-04-19 09:59:49.328089'),(2384,'Coimbra','06',184,'2019-04-19 09:59:49.333543','2019-04-19 09:59:49.333543'),(2385,'Évora','07',184,'2019-04-19 09:59:49.336773','2019-04-19 09:59:49.336773'),(2386,'Faro','08',184,'2019-04-19 09:59:49.342916','2019-04-19 09:59:49.342916'),(2387,'Guarda','09',184,'2019-04-19 09:59:49.350508','2019-04-19 09:59:49.350508'),(2388,'Leiria','10',184,'2019-04-19 09:59:49.363399','2019-04-19 09:59:49.363399'),(2389,'Lisboa','11',184,'2019-04-19 09:59:49.368260','2019-04-19 09:59:49.368260'),(2390,'Portalegre','12',184,'2019-04-19 09:59:49.371718','2019-04-19 09:59:49.371718'),(2391,'Porto','13',184,'2019-04-19 09:59:49.380174','2019-04-19 09:59:49.380174'),(2392,'Santarém','14',184,'2019-04-19 09:59:49.384534','2019-04-19 09:59:49.384534'),(2393,'Setúbal','15',184,'2019-04-19 09:59:49.387666','2019-04-19 09:59:49.387666'),(2394,'Viana do Castelo','16',184,'2019-04-19 09:59:49.393939','2019-04-19 09:59:49.393939'),(2395,'Vila Real','17',184,'2019-04-19 09:59:49.399823','2019-04-19 09:59:49.399823'),(2396,'Viseu','18',184,'2019-04-19 09:59:49.403137','2019-04-19 09:59:49.403137'),(2397,'Região Autónoma dos Açores','20',184,'2019-04-19 09:59:49.408003','2019-04-19 09:59:49.408003'),(2398,'Região Autónoma da Madeira','30',184,'2019-04-19 09:59:49.412899','2019-04-19 09:59:49.412899'),(2399,'Aimeliik','002',185,'2019-04-19 09:59:49.416309','2019-04-19 09:59:49.416309'),(2400,'Airai','004',185,'2019-04-19 09:59:49.418901','2019-04-19 09:59:49.418901'),(2401,'Angaur','010',185,'2019-04-19 09:59:49.422765','2019-04-19 09:59:49.422765'),(2402,'Hatobohei','050',185,'2019-04-19 09:59:49.428058','2019-04-19 09:59:49.428058'),(2403,'Kayangel','100',185,'2019-04-19 09:59:49.431617','2019-04-19 09:59:49.431617'),(2404,'Koror','150',185,'2019-04-19 09:59:49.434411','2019-04-19 09:59:49.434411'),(2405,'Melekeok','212',185,'2019-04-19 09:59:49.437410','2019-04-19 09:59:49.437410'),(2406,'Ngaraard','214',185,'2019-04-19 09:59:49.442986','2019-04-19 09:59:49.442986'),(2407,'Ngarchelong','218',185,'2019-04-19 09:59:49.447480','2019-04-19 09:59:49.447480'),(2408,'Ngardmau','222',185,'2019-04-19 09:59:49.451831','2019-04-19 09:59:49.451831'),(2409,'Ngatpang','224',185,'2019-04-19 09:59:49.454884','2019-04-19 09:59:49.454884'),(2410,'Ngchesar','226',185,'2019-04-19 09:59:49.459700','2019-04-19 09:59:49.459700'),(2411,'Ngeremlengui','227',185,'2019-04-19 09:59:49.463321','2019-04-19 09:59:49.463321'),(2412,'Ngiwal','228',185,'2019-04-19 09:59:49.466114','2019-04-19 09:59:49.466114'),(2413,'Peleliu','350',185,'2019-04-19 09:59:49.469180','2019-04-19 09:59:49.469180'),(2414,'Sonsorol','370',185,'2019-04-19 09:59:49.472017','2019-04-19 09:59:49.472017'),(2415,'Concepción','1',186,'2019-04-19 09:59:49.476513','2019-04-19 09:59:49.476513'),(2416,'Alto Paraná','10',186,'2019-04-19 09:59:49.479387','2019-04-19 09:59:49.479387'),(2417,'Central','11',186,'2019-04-19 09:59:49.481946','2019-04-19 09:59:49.481946'),(2418,'Ñeembucú','12',186,'2019-04-19 09:59:49.484585','2019-04-19 09:59:49.484585'),(2419,'Amambay','13',186,'2019-04-19 09:59:49.487120','2019-04-19 09:59:49.487120'),(2420,'Canindeyú','14',186,'2019-04-19 09:59:49.490065','2019-04-19 09:59:49.490065'),(2421,'Presidente Hayes','15',186,'2019-04-19 09:59:49.493232','2019-04-19 09:59:49.493232'),(2422,'Alto Paraguay','16',186,'2019-04-19 09:59:49.496264','2019-04-19 09:59:49.496264'),(2423,'Boquerón','19',186,'2019-04-19 09:59:49.499222','2019-04-19 09:59:49.499222'),(2424,'San Pedro','2',186,'2019-04-19 09:59:49.501818','2019-04-19 09:59:49.501818'),(2425,'Cordillera','3',186,'2019-04-19 09:59:49.504707','2019-04-19 09:59:49.504707'),(2426,'Guairá','4',186,'2019-04-19 09:59:49.507869','2019-04-19 09:59:49.507869'),(2427,'Caaguazú','5',186,'2019-04-19 09:59:49.510532','2019-04-19 09:59:49.510532'),(2428,'Caazapá','6',186,'2019-04-19 09:59:49.513154','2019-04-19 09:59:49.513154'),(2429,'Itapúa','7',186,'2019-04-19 09:59:49.515687','2019-04-19 09:59:49.515687'),(2430,'Misiones','8',186,'2019-04-19 09:59:49.518483','2019-04-19 09:59:49.518483'),(2431,'Paraguarí','9',186,'2019-04-19 09:59:49.521389','2019-04-19 09:59:49.521389'),(2432,'Asunción','ASU',186,'2019-04-19 09:59:49.524350','2019-04-19 09:59:49.524350'),(2433,'Ad Dawhah','DA',187,'2019-04-19 09:59:49.527396','2019-04-19 09:59:49.527396'),(2434,'Al Khawr wa adh Dhakhīrah','KH',187,'2019-04-19 09:59:49.530427','2019-04-19 09:59:49.530427'),(2435,'Ash Shamal','MS',187,'2019-04-19 09:59:49.533567','2019-04-19 09:59:49.533567'),(2436,'Ar Rayyan','RA',187,'2019-04-19 09:59:49.536816','2019-04-19 09:59:49.536816'),(2437,'Umm Salal','US',187,'2019-04-19 09:59:49.540262','2019-04-19 09:59:49.540262'),(2438,'Al Wakrah','WA',187,'2019-04-19 09:59:49.544018','2019-04-19 09:59:49.544018'),(2439,'Az̧ Z̧a‘āyin','ZA',187,'2019-04-19 09:59:49.546896','2019-04-19 09:59:49.546896'),(2440,'Alba','AB',189,'2019-04-19 09:59:49.550400','2019-04-19 09:59:49.550400'),(2441,'Argeș','AG',189,'2019-04-19 09:59:49.553501','2019-04-19 09:59:49.553501'),(2442,'Arad','AR',189,'2019-04-19 09:59:49.556691','2019-04-19 09:59:49.556691'),(2443,'București','B',189,'2019-04-19 09:59:49.559990','2019-04-19 09:59:49.559990'),(2444,'Bacău','BC',189,'2019-04-19 09:59:49.563077','2019-04-19 09:59:49.563077'),(2445,'Bihor','BH',189,'2019-04-19 09:59:49.566438','2019-04-19 09:59:49.566438'),(2446,'Bistrița-Năsăud','BN',189,'2019-04-19 09:59:49.569406','2019-04-19 09:59:49.569406'),(2447,'Brăila','BR',189,'2019-04-19 09:59:49.572883','2019-04-19 09:59:49.572883'),(2448,'Botoșani','BT',189,'2019-04-19 09:59:49.576547','2019-04-19 09:59:49.576547'),(2449,'Brașov','BV',189,'2019-04-19 09:59:49.581533','2019-04-19 09:59:49.581533'),(2450,'Buzău','BZ',189,'2019-04-19 09:59:49.584601','2019-04-19 09:59:49.584601'),(2451,'Cluj','CJ',189,'2019-04-19 09:59:49.588167','2019-04-19 09:59:49.588167'),(2452,'Călărași','CL',189,'2019-04-19 09:59:49.593524','2019-04-19 09:59:49.593524'),(2453,'Caraș-Severin','CS',189,'2019-04-19 09:59:49.596879','2019-04-19 09:59:49.596879'),(2454,'Constanța','CT',189,'2019-04-19 09:59:49.599536','2019-04-19 09:59:49.599536'),(2455,'Covasna','CV',189,'2019-04-19 09:59:49.602048','2019-04-19 09:59:49.602048'),(2456,'Dâmbovița','DB',189,'2019-04-19 09:59:49.604819','2019-04-19 09:59:49.604819'),(2457,'Dolj','DJ',189,'2019-04-19 09:59:49.608279','2019-04-19 09:59:49.608279'),(2458,'Gorj','GJ',189,'2019-04-19 09:59:49.611041','2019-04-19 09:59:49.611041'),(2459,'Galați','GL',189,'2019-04-19 09:59:49.613987','2019-04-19 09:59:49.613987'),(2460,'Giurgiu','GR',189,'2019-04-19 09:59:49.616885','2019-04-19 09:59:49.616885'),(2461,'Hunedoara','HD',189,'2019-04-19 09:59:49.620648','2019-04-19 09:59:49.620648'),(2462,'Harghita','HR',189,'2019-04-19 09:59:49.626452','2019-04-19 09:59:49.626452'),(2463,'Ilfov','IF',189,'2019-04-19 09:59:49.630836','2019-04-19 09:59:49.630836'),(2464,'Ialomița','IL',189,'2019-04-19 09:59:49.633601','2019-04-19 09:59:49.633601'),(2465,'Iași','IS',189,'2019-04-19 09:59:49.636338','2019-04-19 09:59:49.636338'),(2466,'Mehedinți','MH',189,'2019-04-19 09:59:49.639450','2019-04-19 09:59:49.639450'),(2467,'Maramureș','MM',189,'2019-04-19 09:59:49.642706','2019-04-19 09:59:49.642706'),(2468,'Mureș','MS',189,'2019-04-19 09:59:49.645819','2019-04-19 09:59:49.645819'),(2469,'Neamț','NT',189,'2019-04-19 09:59:49.648599','2019-04-19 09:59:49.648599'),(2470,'Olt','OT',189,'2019-04-19 09:59:49.651293','2019-04-19 09:59:49.651293'),(2471,'Prahova','PH',189,'2019-04-19 09:59:49.654052','2019-04-19 09:59:49.654052'),(2472,'Sibiu','SB',189,'2019-04-19 09:59:49.657015','2019-04-19 09:59:49.657015'),(2473,'Sălaj','SJ',189,'2019-04-19 09:59:49.660394','2019-04-19 09:59:49.660394'),(2474,'Satu Mare','SM',189,'2019-04-19 09:59:49.663651','2019-04-19 09:59:49.663651'),(2475,'Suceava','SV',189,'2019-04-19 09:59:49.667181','2019-04-19 09:59:49.667181'),(2476,'Tulcea','TL',189,'2019-04-19 09:59:49.671668','2019-04-19 09:59:49.671668'),(2477,'Timiș','TM',189,'2019-04-19 09:59:49.675525','2019-04-19 09:59:49.675525'),(2478,'Teleorman','TR',189,'2019-04-19 09:59:49.678793','2019-04-19 09:59:49.678793'),(2479,'Vâlcea','VL',189,'2019-04-19 09:59:49.682479','2019-04-19 09:59:49.682479'),(2480,'Vrancea','VN',189,'2019-04-19 09:59:49.685642','2019-04-19 09:59:49.685642'),(2481,'Vaslui','VS',189,'2019-04-19 09:59:49.689208','2019-04-19 09:59:49.689208'),(2482,'Beograd','00',190,'2019-04-19 09:59:49.694150','2019-04-19 09:59:49.694150'),(2483,'Mačvanski okrug','08',190,'2019-04-19 09:59:49.698435','2019-04-19 09:59:49.698435'),(2484,'Kolubarski okrug','09',190,'2019-04-19 09:59:49.701045','2019-04-19 09:59:49.701045'),(2485,'Podunavski okrug','10',190,'2019-04-19 09:59:49.703873','2019-04-19 09:59:49.703873'),(2486,'Braničevski okrug','11',190,'2019-04-19 09:59:49.706849','2019-04-19 09:59:49.706849'),(2487,'Šumadijski okrug','12',190,'2019-04-19 09:59:49.709572','2019-04-19 09:59:49.709572'),(2488,'Pomoravski okrug','13',190,'2019-04-19 09:59:49.718538','2019-04-19 09:59:49.718538'),(2489,'Borski okrug','14',190,'2019-04-19 09:59:49.721802','2019-04-19 09:59:49.721802'),(2490,'Zaječarski okrug','15',190,'2019-04-19 09:59:49.725518','2019-04-19 09:59:49.725518'),(2491,'Zlatiborski okrug','16',190,'2019-04-19 09:59:49.729009','2019-04-19 09:59:49.729009'),(2492,'Moravički okrug','17',190,'2019-04-19 09:59:49.733279','2019-04-19 09:59:49.733279'),(2493,'Raški okrug','18',190,'2019-04-19 09:59:49.736797','2019-04-19 09:59:49.736797'),(2494,'Rasinski okrug','19',190,'2019-04-19 09:59:49.741106','2019-04-19 09:59:49.741106'),(2495,'Nišavski okrug','20',190,'2019-04-19 09:59:49.744170','2019-04-19 09:59:49.744170'),(2496,'Toplički okrug','21',190,'2019-04-19 09:59:49.747291','2019-04-19 09:59:49.747291'),(2497,'Pirotski okrug','22',190,'2019-04-19 09:59:49.750046','2019-04-19 09:59:49.750046'),(2498,'Jablanički okrug','23',190,'2019-04-19 09:59:49.752999','2019-04-19 09:59:49.752999'),(2499,'Pčinjski okrug','24',190,'2019-04-19 09:59:49.756090','2019-04-19 09:59:49.756090'),(2500,'Kosovo-Metohija','KM',190,'2019-04-19 09:59:49.758983','2019-04-19 09:59:49.758983'),(2501,'Vojvodina','VO',190,'2019-04-19 09:59:49.761791','2019-04-19 09:59:49.761791'),(2502,'Adygeya, Respublika','AD',191,'2019-04-19 09:59:49.764906','2019-04-19 09:59:49.764906'),(2503,'Altay, Respublika','AL',191,'2019-04-19 09:59:49.768216','2019-04-19 09:59:49.768216'),(2504,'Altayskiy kray','ALT',191,'2019-04-19 09:59:49.773306','2019-04-19 09:59:49.773306'),(2505,'Amurskaya oblast\'','AMU',191,'2019-04-19 09:59:49.776699','2019-04-19 09:59:49.776699'),(2506,'Arkhangel\'skaya oblast\'','ARK',191,'2019-04-19 09:59:49.779673','2019-04-19 09:59:49.779673'),(2507,'Astrakhanskaya oblast\'','AST',191,'2019-04-19 09:59:49.782640','2019-04-19 09:59:49.782640'),(2508,'Bashkortostan, Respublika','BA',191,'2019-04-19 09:59:49.785546','2019-04-19 09:59:49.785546'),(2509,'Belgorodskaya oblast\'','BEL',191,'2019-04-19 09:59:49.788874','2019-04-19 09:59:49.788874'),(2510,'Bryanskaya oblast\'','BRY',191,'2019-04-19 09:59:49.792339','2019-04-19 09:59:49.792339'),(2511,'Buryatiya, Respublika','BU',191,'2019-04-19 09:59:49.795962','2019-04-19 09:59:49.795962'),(2512,'Chechenskaya Respublika','CE',191,'2019-04-19 09:59:49.799736','2019-04-19 09:59:49.799736'),(2513,'Chelyabinskaya oblast\'','CHE',191,'2019-04-19 09:59:49.802878','2019-04-19 09:59:49.802878'),(2514,'Chukotskiy avtonomnyy okrug','CHU',191,'2019-04-19 09:59:49.805709','2019-04-19 09:59:49.805709'),(2515,'Chuvashskaya Respublika','CU',191,'2019-04-19 09:59:49.808689','2019-04-19 09:59:49.808689'),(2516,'Dagestan, Respublika','DA',191,'2019-04-19 09:59:49.811568','2019-04-19 09:59:49.811568'),(2517,'Respublika Ingushetiya','IN',191,'2019-04-19 09:59:49.814404','2019-04-19 09:59:49.814404'),(2518,'Irkutiskaya oblast\'','IRK',191,'2019-04-19 09:59:49.817131','2019-04-19 09:59:49.817131'),(2519,'Ivanovskaya oblast\'','IVA',191,'2019-04-19 09:59:49.820048','2019-04-19 09:59:49.820048'),(2520,'Kamchatskiy kray','KAM',191,'2019-04-19 09:59:49.822623','2019-04-19 09:59:49.822623'),(2521,'Kabardino-Balkarskaya Respublika','KB',191,'2019-04-19 09:59:49.825623','2019-04-19 09:59:49.825623'),(2522,'Karachayevo-Cherkesskaya Respublika','KC',191,'2019-04-19 09:59:49.828927','2019-04-19 09:59:49.828927'),(2523,'Krasnodarskiy kray','KDA',191,'2019-04-19 09:59:49.831647','2019-04-19 09:59:49.831647'),(2524,'Kemerovskaya oblast\'','KEM',191,'2019-04-19 09:59:49.834385','2019-04-19 09:59:49.834385'),(2525,'Kaliningradskaya oblast\'','KGD',191,'2019-04-19 09:59:49.837785','2019-04-19 09:59:49.837785'),(2526,'Kurganskaya oblast\'','KGN',191,'2019-04-19 09:59:49.840976','2019-04-19 09:59:49.840976'),(2527,'Khabarovskiy kray','KHA',191,'2019-04-19 09:59:49.843823','2019-04-19 09:59:49.843823'),(2528,'Khanty-Mansiysky avtonomnyy okrug-Yugra','KHM',191,'2019-04-19 09:59:49.846413','2019-04-19 09:59:49.846413'),(2529,'Kirovskaya oblast\'','KIR',191,'2019-04-19 09:59:49.849015','2019-04-19 09:59:49.849015'),(2530,'Khakasiya, Respublika','KK',191,'2019-04-19 09:59:49.851543','2019-04-19 09:59:49.851543'),(2531,'Kalmykiya, Respublika','KL',191,'2019-04-19 09:59:49.854304','2019-04-19 09:59:49.854304'),(2532,'Kaluzhskaya oblast\'','KLU',191,'2019-04-19 09:59:49.858235','2019-04-19 09:59:49.858235'),(2533,'Komi, Respublika','KO',191,'2019-04-19 09:59:49.862061','2019-04-19 09:59:49.862061'),(2534,'Kostromskaya oblast\'','KOS',191,'2019-04-19 09:59:49.865145','2019-04-19 09:59:49.865145'),(2535,'Kareliya, Respublika','KR',191,'2019-04-19 09:59:49.868503','2019-04-19 09:59:49.868503'),(2536,'Kurskaya oblast\'','KRS',191,'2019-04-19 09:59:49.871484','2019-04-19 09:59:49.871484'),(2537,'Krasnoyarskiy kray','KYA',191,'2019-04-19 09:59:49.874749','2019-04-19 09:59:49.874749'),(2538,'Leningradskaya oblast\'','LEN',191,'2019-04-19 09:59:49.878294','2019-04-19 09:59:49.878294'),(2539,'Lipetskaya oblast\'','LIP',191,'2019-04-19 09:59:49.881071','2019-04-19 09:59:49.881071'),(2540,'Magadanskaya oblast\'','MAG',191,'2019-04-19 09:59:49.883951','2019-04-19 09:59:49.883951'),(2541,'Mariy El, Respublika','ME',191,'2019-04-19 09:59:49.886829','2019-04-19 09:59:49.886829'),(2542,'Mordoviya, Respublika','MO',191,'2019-04-19 09:59:49.889755','2019-04-19 09:59:49.889755'),(2543,'Moskovskaya oblast\'','MOS',191,'2019-04-19 09:59:49.894008','2019-04-19 09:59:49.894008'),(2544,'Moskva','MOW',191,'2019-04-19 09:59:49.896927','2019-04-19 09:59:49.896927'),(2545,'Murmanskaya oblast\'','MUR',191,'2019-04-19 09:59:49.899608','2019-04-19 09:59:49.899608'),(2546,'Nenetskiy avtonomnyy okrug','NEN',191,'2019-04-19 09:59:49.902068','2019-04-19 09:59:49.902068'),(2547,'Novgorodskaya oblast\'','NGR',191,'2019-04-19 09:59:49.904523','2019-04-19 09:59:49.904523'),(2548,'Nizhegorodskaya oblast\'','NIZ',191,'2019-04-19 09:59:49.907731','2019-04-19 09:59:49.907731'),(2549,'Novosibirskaya oblast\'','NVS',191,'2019-04-19 09:59:49.910705','2019-04-19 09:59:49.910705'),(2550,'Omskaya oblast\'','OMS',191,'2019-04-19 09:59:49.913294','2019-04-19 09:59:49.913294'),(2551,'Orenburgskaya oblast\'','ORE',191,'2019-04-19 09:59:49.915881','2019-04-19 09:59:49.915881'),(2552,'Orlovskaya oblast\'','ORL',191,'2019-04-19 09:59:49.918600','2019-04-19 09:59:49.918600'),(2553,'Permskiy kray','PER',191,'2019-04-19 09:59:49.921295','2019-04-19 09:59:49.921295'),(2554,'Penzenskaya oblast\'','PNZ',191,'2019-04-19 09:59:49.924989','2019-04-19 09:59:49.924989'),(2555,'Primorskiy kray','PRI',191,'2019-04-19 09:59:49.927656','2019-04-19 09:59:49.927656'),(2556,'Pskovskaya oblast\'','PSK',191,'2019-04-19 09:59:49.930206','2019-04-19 09:59:49.930206'),(2557,'Rostovskaya oblast\'','ROS',191,'2019-04-19 09:59:49.932869','2019-04-19 09:59:49.932869'),(2558,'Ryazanskaya oblast\'','RYA',191,'2019-04-19 09:59:49.935618','2019-04-19 09:59:49.935618'),(2559,'Sakha, Respublika [Yakutiya]','SA',191,'2019-04-19 09:59:49.938602','2019-04-19 09:59:49.938602'),(2560,'Sakhalinskaya oblast\'','SAK',191,'2019-04-19 09:59:49.942142','2019-04-19 09:59:49.942142'),(2561,'Samaraskaya oblast\'','SAM',191,'2019-04-19 09:59:49.944986','2019-04-19 09:59:49.944986'),(2562,'Saratovskaya oblast\'','SAR',191,'2019-04-19 09:59:49.947747','2019-04-19 09:59:49.947747'),(2563,'Severnaya Osetiya-Alaniya, Respublika','SE',191,'2019-04-19 09:59:49.951157','2019-04-19 09:59:49.951157'),(2564,'Smolenskaya oblast\'','SMO',191,'2019-04-19 09:59:49.954364','2019-04-19 09:59:49.954364'),(2565,'Sankt-Peterburg','SPE',191,'2019-04-19 09:59:49.958289','2019-04-19 09:59:49.958289'),(2566,'Stavropol\'skiy kray','STA',191,'2019-04-19 09:59:49.961288','2019-04-19 09:59:49.961288'),(2567,'Sverdlovskaya oblast\'','SVE',191,'2019-04-19 09:59:49.964675','2019-04-19 09:59:49.964675'),(2568,'Tatarstan, Respublika','TA',191,'2019-04-19 09:59:49.967460','2019-04-19 09:59:49.967460'),(2569,'Tambovskaya oblast\'','TAM',191,'2019-04-19 09:59:49.970244','2019-04-19 09:59:49.970244'),(2570,'Tomskaya oblast\'','TOM',191,'2019-04-19 09:59:49.973427','2019-04-19 09:59:49.973427'),(2571,'Tul\'skaya oblast\'','TUL',191,'2019-04-19 09:59:49.981732','2019-04-19 09:59:49.981732'),(2572,'Tverskaya oblast\'','TVE',191,'2019-04-19 09:59:49.985468','2019-04-19 09:59:49.985468'),(2573,'Tyva, Respublika [Tuva]','TY',191,'2019-04-19 09:59:49.988553','2019-04-19 09:59:49.988553'),(2574,'Tyumenskaya oblast\'','TYU',191,'2019-04-19 09:59:49.991630','2019-04-19 09:59:49.991630'),(2575,'Udmurtskaya Respublika','UD',191,'2019-04-19 09:59:49.994359','2019-04-19 09:59:49.994359'),(2576,'Ul\'yanovskaya oblast\'','ULY',191,'2019-04-19 09:59:49.997136','2019-04-19 09:59:49.997136'),(2577,'Volgogradskaya oblast\'','VGG',191,'2019-04-19 09:59:49.999800','2019-04-19 09:59:49.999800'),(2578,'Vladimirskaya oblast\'','VLA',191,'2019-04-19 09:59:50.004325','2019-04-19 09:59:50.004325'),(2579,'Vologodskaya oblast\'','VLG',191,'2019-04-19 09:59:50.008871','2019-04-19 09:59:50.008871'),(2580,'Voronezhskaya oblast\'','VOR',191,'2019-04-19 09:59:50.011947','2019-04-19 09:59:50.011947'),(2581,'Yamalo-Nenetskiy avtonomnyy okrug','YAN',191,'2019-04-19 09:59:50.014885','2019-04-19 09:59:50.014885'),(2582,'Yaroslavskaya oblast\'','YAR',191,'2019-04-19 09:59:50.017669','2019-04-19 09:59:50.017669'),(2583,'Yevreyskaya avtonomnaya oblast\'','YEV',191,'2019-04-19 09:59:50.021640','2019-04-19 09:59:50.021640'),(2584,'Zabajkal\'skij kraj','ZAB',191,'2019-04-19 09:59:50.025441','2019-04-19 09:59:50.025441'),(2585,'Ville de Kigali','01',192,'2019-04-19 09:59:50.029087','2019-04-19 09:59:50.029087'),(2586,'Est','02',192,'2019-04-19 09:59:50.031768','2019-04-19 09:59:50.031768'),(2587,'Nord','03',192,'2019-04-19 09:59:50.035077','2019-04-19 09:59:50.035077'),(2588,'Ouest','04',192,'2019-04-19 09:59:50.038935','2019-04-19 09:59:50.038935'),(2589,'Sud','05',192,'2019-04-19 09:59:50.042670','2019-04-19 09:59:50.042670'),(2590,'Ar Riyāḍ','01',193,'2019-04-19 09:59:50.046916','2019-04-19 09:59:50.046916'),(2591,'Makkah','02',193,'2019-04-19 09:59:50.050151','2019-04-19 09:59:50.050151'),(2592,'Al Madīnah','03',193,'2019-04-19 09:59:50.053328','2019-04-19 09:59:50.053328'),(2593,'Ash Sharqīyah','04',193,'2019-04-19 09:59:50.056717','2019-04-19 09:59:50.056717'),(2594,'Al Qaşīm','05',193,'2019-04-19 09:59:50.059713','2019-04-19 09:59:50.059713'),(2595,'Ḥā\'il','06',193,'2019-04-19 09:59:50.063068','2019-04-19 09:59:50.063068'),(2596,'Tabūk','07',193,'2019-04-19 09:59:50.066097','2019-04-19 09:59:50.066097'),(2597,'Al Ḥudūd ash Shamāliyah','08',193,'2019-04-19 09:59:50.071087','2019-04-19 09:59:50.071087'),(2598,'Jīzan','09',193,'2019-04-19 09:59:50.075252','2019-04-19 09:59:50.075252'),(2599,'Najrān','10',193,'2019-04-19 09:59:50.092983','2019-04-19 09:59:50.092983'),(2600,'Al Bāhah','11',193,'2019-04-19 09:59:50.096693','2019-04-19 09:59:50.096693'),(2601,'Al Jawf','12',193,'2019-04-19 09:59:50.101961','2019-04-19 09:59:50.101961'),(2602,'`Asīr','14',193,'2019-04-19 09:59:50.105733','2019-04-19 09:59:50.105733'),(2603,'Central','CE',194,'2019-04-19 09:59:50.113543','2019-04-19 09:59:50.113543'),(2604,'Choiseul','CH',194,'2019-04-19 09:59:50.117782','2019-04-19 09:59:50.117782'),(2605,'Capital Territory (Honiara)','CT',194,'2019-04-19 09:59:50.121055','2019-04-19 09:59:50.121055'),(2606,'Guadalcanal','GU',194,'2019-04-19 09:59:50.130937','2019-04-19 09:59:50.130937'),(2607,'Isabel','IS',194,'2019-04-19 09:59:50.134569','2019-04-19 09:59:50.134569'),(2608,'Makira','MK',194,'2019-04-19 09:59:50.138088','2019-04-19 09:59:50.138088'),(2609,'Malaita','ML',194,'2019-04-19 09:59:50.144094','2019-04-19 09:59:50.144094'),(2610,'Rennell and Bellona','RB',194,'2019-04-19 09:59:50.148148','2019-04-19 09:59:50.148148'),(2611,'Temotu','TE',194,'2019-04-19 09:59:50.151925','2019-04-19 09:59:50.151925'),(2612,'Western','WE',194,'2019-04-19 09:59:50.155867','2019-04-19 09:59:50.155867'),(2613,'Anse aux Pins','01',195,'2019-04-19 09:59:50.163193','2019-04-19 09:59:50.163193'),(2614,'Anse Boileau','02',195,'2019-04-19 09:59:50.166660','2019-04-19 09:59:50.166660'),(2615,'Anse Etoile','03',195,'2019-04-19 09:59:50.169549','2019-04-19 09:59:50.169549'),(2616,'Anse Louis','04',195,'2019-04-19 09:59:50.173222','2019-04-19 09:59:50.173222'),(2617,'Anse Royale','05',195,'2019-04-19 09:59:50.179707','2019-04-19 09:59:50.179707'),(2618,'Baie Lazare','06',195,'2019-04-19 09:59:50.182980','2019-04-19 09:59:50.182980'),(2619,'Baie Sainte Anne','07',195,'2019-04-19 09:59:50.185750','2019-04-19 09:59:50.185750'),(2620,'Beau Vallon','08',195,'2019-04-19 09:59:50.189281','2019-04-19 09:59:50.189281'),(2621,'Bel Air','09',195,'2019-04-19 09:59:50.194600','2019-04-19 09:59:50.194600'),(2622,'Bel Ombre','10',195,'2019-04-19 09:59:50.198495','2019-04-19 09:59:50.198495'),(2623,'Cascade','11',195,'2019-04-19 09:59:50.201923','2019-04-19 09:59:50.201923'),(2624,'Glacis','12',195,'2019-04-19 09:59:50.205170','2019-04-19 09:59:50.205170'),(2625,'Grand Anse Mahe','13',195,'2019-04-19 09:59:50.210209','2019-04-19 09:59:50.210209'),(2626,'Grand Anse Praslin','14',195,'2019-04-19 09:59:50.215246','2019-04-19 09:59:50.215246'),(2627,'La Digue','15',195,'2019-04-19 09:59:50.219225','2019-04-19 09:59:50.219225'),(2628,'English River','16',195,'2019-04-19 09:59:50.222695','2019-04-19 09:59:50.222695'),(2629,'Mont Buxton','17',195,'2019-04-19 09:59:50.228347','2019-04-19 09:59:50.228347'),(2630,'Mont Fleuri','18',195,'2019-04-19 09:59:50.232836','2019-04-19 09:59:50.232836'),(2631,'Plaisance','19',195,'2019-04-19 09:59:50.236000','2019-04-19 09:59:50.236000'),(2632,'Pointe Larue','20',195,'2019-04-19 09:59:50.239489','2019-04-19 09:59:50.239489'),(2633,'Port Glaud','21',195,'2019-04-19 09:59:50.245605','2019-04-19 09:59:50.245605'),(2634,'Saint Louis','22',195,'2019-04-19 09:59:50.248922','2019-04-19 09:59:50.248922'),(2635,'Takamaka','23',195,'2019-04-19 09:59:50.252021','2019-04-19 09:59:50.252021'),(2636,'Les Mamelles','24',195,'2019-04-19 09:59:50.255483','2019-04-19 09:59:50.255483'),(2637,'Roche Caiman','25',195,'2019-04-19 09:59:50.260644','2019-04-19 09:59:50.260644'),(2638,'Zalingei','DC',196,'2019-04-19 09:59:50.264254','2019-04-19 09:59:50.264254'),(2639,'Sharq Dārfūr','DE',196,'2019-04-19 09:59:50.267244','2019-04-19 09:59:50.267244'),(2640,'Shamāl Dārfūr','DN',196,'2019-04-19 09:59:50.270722','2019-04-19 09:59:50.270722'),(2641,'Janūb Dārfūr','DS',196,'2019-04-19 09:59:50.274015','2019-04-19 09:59:50.274015'),(2642,'Gharb Dārfūr','DW',196,'2019-04-19 09:59:50.281065','2019-04-19 09:59:50.281065'),(2643,'Al Qaḑārif','GD',196,'2019-04-19 09:59:50.284409','2019-04-19 09:59:50.284409'),(2644,'Al Jazīrah','GZ',196,'2019-04-19 09:59:50.287163','2019-04-19 09:59:50.287163'),(2645,'Kassalā','KA',196,'2019-04-19 09:59:50.290318','2019-04-19 09:59:50.290318'),(2646,'Al Kharţūm','KH',196,'2019-04-19 09:59:50.293371','2019-04-19 09:59:50.293371'),(2647,'Shamāl Kurdufān','KN',196,'2019-04-19 09:59:50.296030','2019-04-19 09:59:50.296030'),(2648,'Janūb Kurdufān','KS',196,'2019-04-19 09:59:50.299381','2019-04-19 09:59:50.299381'),(2649,'An Nīl al Azraq','NB',196,'2019-04-19 09:59:50.302997','2019-04-19 09:59:50.302997'),(2650,'Ash Shamālīyah','NO',196,'2019-04-19 09:59:50.306968','2019-04-19 09:59:50.306968'),(2651,'An Nīl','NR',196,'2019-04-19 09:59:50.311710','2019-04-19 09:59:50.311710'),(2652,'An Nīl al Abyaḑ','NW',196,'2019-04-19 09:59:50.316008','2019-04-19 09:59:50.316008'),(2653,'Al Baḩr al Aḩmar','RS',196,'2019-04-19 09:59:50.319923','2019-04-19 09:59:50.319923'),(2654,'Sinnār','SI',196,'2019-04-19 09:59:50.324662','2019-04-19 09:59:50.324662'),(2655,'Stockholms län','AB',197,'2019-04-19 09:59:50.329149','2019-04-19 09:59:50.329149'),(2656,'Västerbottens län','AC',197,'2019-04-19 09:59:50.332439','2019-04-19 09:59:50.332439'),(2657,'Norrbottens län','BD',197,'2019-04-19 09:59:50.362905','2019-04-19 09:59:50.362905'),(2658,'Uppsala län','C',197,'2019-04-19 09:59:50.367878','2019-04-19 09:59:50.367878'),(2659,'Södermanlands län','D',197,'2019-04-19 09:59:50.375530','2019-04-19 09:59:50.375530'),(2660,'Östergötlands län','E',197,'2019-04-19 09:59:50.379822','2019-04-19 09:59:50.379822'),(2661,'Jönköpings län','F',197,'2019-04-19 09:59:50.383223','2019-04-19 09:59:50.383223'),(2662,'Kronobergs län','G',197,'2019-04-19 09:59:50.385887','2019-04-19 09:59:50.385887'),(2663,'Kalmar län','H',197,'2019-04-19 09:59:50.388781','2019-04-19 09:59:50.388781'),(2664,'Gotlands län','I',197,'2019-04-19 09:59:50.392561','2019-04-19 09:59:50.392561'),(2665,'Blekinge län','K',197,'2019-04-19 09:59:50.395177','2019-04-19 09:59:50.395177'),(2666,'Skåne län','M',197,'2019-04-19 09:59:50.397890','2019-04-19 09:59:50.397890'),(2667,'Hallands län','N',197,'2019-04-19 09:59:50.400388','2019-04-19 09:59:50.400388'),(2668,'Västra Götalands län','O',197,'2019-04-19 09:59:50.403075','2019-04-19 09:59:50.403075'),(2669,'Värmlands län','S',197,'2019-04-19 09:59:50.406353','2019-04-19 09:59:50.406353'),(2670,'Örebro län','T',197,'2019-04-19 09:59:50.409289','2019-04-19 09:59:50.409289'),(2671,'Västmanlands län','U',197,'2019-04-19 09:59:50.411953','2019-04-19 09:59:50.411953'),(2672,'Dalarnas län','W',197,'2019-04-19 09:59:50.414524','2019-04-19 09:59:50.414524'),(2673,'Gävleborgs län','X',197,'2019-04-19 09:59:50.416991','2019-04-19 09:59:50.416991'),(2674,'Västernorrlands län','Y',197,'2019-04-19 09:59:50.420229','2019-04-19 09:59:50.420229'),(2675,'Jämtlands län','Z',197,'2019-04-19 09:59:50.424350','2019-04-19 09:59:50.424350'),(2676,'Central Singapore','01',198,'2019-04-19 09:59:50.427835','2019-04-19 09:59:50.427835'),(2677,'North East','02',198,'2019-04-19 09:59:50.430384','2019-04-19 09:59:50.430384'),(2678,'North West','03',198,'2019-04-19 09:59:50.433561','2019-04-19 09:59:50.433561'),(2679,'South East','04',198,'2019-04-19 09:59:50.436592','2019-04-19 09:59:50.436592'),(2680,'South West','05',198,'2019-04-19 09:59:50.439119','2019-04-19 09:59:50.439119'),(2681,'Ascension','AC',199,'2019-04-19 09:59:50.442627','2019-04-19 09:59:50.442627'),(2682,'Saint Helena','HL',199,'2019-04-19 09:59:50.445542','2019-04-19 09:59:50.445542'),(2683,'Tristan da Cunha','TA',199,'2019-04-19 09:59:50.448394','2019-04-19 09:59:50.448394'),(2684,'Ajdovščina','001',200,'2019-04-19 09:59:50.451594','2019-04-19 09:59:50.451594'),(2685,'Beltinci','002',200,'2019-04-19 09:59:50.454893','2019-04-19 09:59:50.454893'),(2686,'Bled','003',200,'2019-04-19 09:59:50.459601','2019-04-19 09:59:50.459601'),(2687,'Bohinj','004',200,'2019-04-19 09:59:50.462728','2019-04-19 09:59:50.462728'),(2688,'Borovnica','005',200,'2019-04-19 09:59:50.466151','2019-04-19 09:59:50.466151'),(2689,'Bovec','006',200,'2019-04-19 09:59:50.468821','2019-04-19 09:59:50.468821'),(2690,'Brda','007',200,'2019-04-19 09:59:50.472344','2019-04-19 09:59:50.472344'),(2691,'Brezovica','008',200,'2019-04-19 09:59:50.475954','2019-04-19 09:59:50.475954'),(2692,'Brežice','009',200,'2019-04-19 09:59:50.478658','2019-04-19 09:59:50.478658'),(2693,'Tišina','010',200,'2019-04-19 09:59:50.481462','2019-04-19 09:59:50.481462'),(2694,'Celje','011',200,'2019-04-19 09:59:50.485001','2019-04-19 09:59:50.485001'),(2695,'Cerklje na Gorenjskem','012',200,'2019-04-19 09:59:50.487991','2019-04-19 09:59:50.487991'),(2696,'Cerknica','013',200,'2019-04-19 09:59:50.491611','2019-04-19 09:59:50.491611'),(2697,'Cerkno','014',200,'2019-04-19 09:59:50.494552','2019-04-19 09:59:50.494552'),(2698,'Črenšovci','015',200,'2019-04-19 09:59:50.497205','2019-04-19 09:59:50.497205'),(2699,'Črna na Koroškem','016',200,'2019-04-19 09:59:50.500069','2019-04-19 09:59:50.500069'),(2700,'Črnomelj','017',200,'2019-04-19 09:59:50.502589','2019-04-19 09:59:50.502589'),(2701,'Destrnik','018',200,'2019-04-19 09:59:50.505124','2019-04-19 09:59:50.505124'),(2702,'Divača','019',200,'2019-04-19 09:59:50.508752','2019-04-19 09:59:50.508752'),(2703,'Dobrepolje','020',200,'2019-04-19 09:59:50.511893','2019-04-19 09:59:50.511893'),(2704,'Dobrova-Polhov Gradec','021',200,'2019-04-19 09:59:50.514733','2019-04-19 09:59:50.514733'),(2705,'Dol pri Ljubljani','022',200,'2019-04-19 09:59:50.517550','2019-04-19 09:59:50.517550'),(2706,'Domžale','023',200,'2019-04-19 09:59:50.520193','2019-04-19 09:59:50.520193'),(2707,'Dornava','024',200,'2019-04-19 09:59:50.522797','2019-04-19 09:59:50.522797'),(2708,'Dravograd','025',200,'2019-04-19 09:59:50.525595','2019-04-19 09:59:50.525595'),(2709,'Duplek','026',200,'2019-04-19 09:59:50.528035','2019-04-19 09:59:50.528035'),(2710,'Gorenja vas-Poljane','027',200,'2019-04-19 09:59:50.530639','2019-04-19 09:59:50.530639'),(2711,'Gorišnica','028',200,'2019-04-19 09:59:50.533266','2019-04-19 09:59:50.533266'),(2712,'Gornja Radgona','029',200,'2019-04-19 09:59:50.535800','2019-04-19 09:59:50.535800'),(2713,'Gornji Grad','030',200,'2019-04-19 09:59:50.538197','2019-04-19 09:59:50.538197'),(2714,'Gornji Petrovci','031',200,'2019-04-19 09:59:50.542832','2019-04-19 09:59:50.542832'),(2715,'Grosuplje','032',200,'2019-04-19 09:59:50.547922','2019-04-19 09:59:50.547922'),(2716,'Šalovci','033',200,'2019-04-19 09:59:50.550842','2019-04-19 09:59:50.550842'),(2717,'Hrastnik','034',200,'2019-04-19 09:59:50.553777','2019-04-19 09:59:50.553777'),(2718,'Hrpelje-Kozina','035',200,'2019-04-19 09:59:50.556458','2019-04-19 09:59:50.556458'),(2719,'Idrija','036',200,'2019-04-19 09:59:50.559812','2019-04-19 09:59:50.559812'),(2720,'Ig','037',200,'2019-04-19 09:59:50.562772','2019-04-19 09:59:50.562772'),(2721,'Ilirska Bistrica','038',200,'2019-04-19 09:59:50.565422','2019-04-19 09:59:50.565422'),(2722,'Ivančna Gorica','039',200,'2019-04-19 09:59:50.568979','2019-04-19 09:59:50.568979'),(2723,'Izola/Isola','040',200,'2019-04-19 09:59:50.571991','2019-04-19 09:59:50.571991'),(2724,'Jesenice','041',200,'2019-04-19 09:59:50.575672','2019-04-19 09:59:50.575672'),(2725,'Juršinci','042',200,'2019-04-19 09:59:50.578882','2019-04-19 09:59:50.578882'),(2726,'Kamnik','043',200,'2019-04-19 09:59:50.581576','2019-04-19 09:59:50.581576'),(2727,'Kanal','044',200,'2019-04-19 09:59:50.584384','2019-04-19 09:59:50.584384'),(2728,'Kidričevo','045',200,'2019-04-19 09:59:50.587187','2019-04-19 09:59:50.587187'),(2729,'Kobarid','046',200,'2019-04-19 09:59:50.590551','2019-04-19 09:59:50.590551'),(2730,'Kobilje','047',200,'2019-04-19 09:59:50.593576','2019-04-19 09:59:50.593576'),(2731,'Kočevje','048',200,'2019-04-19 09:59:50.596537','2019-04-19 09:59:50.596537'),(2732,'Komen','049',200,'2019-04-19 09:59:50.598991','2019-04-19 09:59:50.598991'),(2733,'Koper/Capodistria','050',200,'2019-04-19 09:59:50.602152','2019-04-19 09:59:50.602152'),(2734,'Kozje','051',200,'2019-04-19 09:59:50.605143','2019-04-19 09:59:50.605143'),(2735,'Kranj','052',200,'2019-04-19 09:59:50.608494','2019-04-19 09:59:50.608494'),(2736,'Kranjska Gora','053',200,'2019-04-19 09:59:50.611512','2019-04-19 09:59:50.611512'),(2737,'Krško','054',200,'2019-04-19 09:59:50.614278','2019-04-19 09:59:50.614278'),(2738,'Kungota','055',200,'2019-04-19 09:59:50.617635','2019-04-19 09:59:50.617635'),(2739,'Kuzma','056',200,'2019-04-19 09:59:50.620555','2019-04-19 09:59:50.620555'),(2740,'Laško','057',200,'2019-04-19 09:59:50.623759','2019-04-19 09:59:50.623759'),(2741,'Lenart','058',200,'2019-04-19 09:59:50.626850','2019-04-19 09:59:50.626850'),(2742,'Lendava/Lendva','059',200,'2019-04-19 09:59:50.629637','2019-04-19 09:59:50.629637'),(2743,'Litija','060',200,'2019-04-19 09:59:50.632231','2019-04-19 09:59:50.632231'),(2744,'Ljubljana','061',200,'2019-04-19 09:59:50.635014','2019-04-19 09:59:50.635014'),(2745,'Ljubno','062',200,'2019-04-19 09:59:50.637485','2019-04-19 09:59:50.637485'),(2746,'Ljutomer','063',200,'2019-04-19 09:59:50.640542','2019-04-19 09:59:50.640542'),(2747,'Logatec','064',200,'2019-04-19 09:59:50.643370','2019-04-19 09:59:50.643370'),(2748,'Loška dolina','065',200,'2019-04-19 09:59:50.646050','2019-04-19 09:59:50.646050'),(2749,'Loški Potok','066',200,'2019-04-19 09:59:50.648773','2019-04-19 09:59:50.648773'),(2750,'Luče','067',200,'2019-04-19 09:59:50.651537','2019-04-19 09:59:50.651537'),(2751,'Lukovica','068',200,'2019-04-19 09:59:50.654175','2019-04-19 09:59:50.654175'),(2752,'Majšperk','069',200,'2019-04-19 09:59:50.657662','2019-04-19 09:59:50.657662'),(2753,'Maribor','070',200,'2019-04-19 09:59:50.661310','2019-04-19 09:59:50.661310'),(2754,'Medvode','071',200,'2019-04-19 09:59:50.664367','2019-04-19 09:59:50.664367'),(2755,'Mengeš','072',200,'2019-04-19 09:59:50.667059','2019-04-19 09:59:50.667059'),(2756,'Metlika','073',200,'2019-04-19 09:59:50.669584','2019-04-19 09:59:50.669584'),(2757,'Mežica','074',200,'2019-04-19 09:59:50.672089','2019-04-19 09:59:50.672089'),(2758,'Miren-Kostanjevica','075',200,'2019-04-19 09:59:50.675403','2019-04-19 09:59:50.675403'),(2759,'Mislinja','076',200,'2019-04-19 09:59:50.679100','2019-04-19 09:59:50.679100'),(2760,'Moravče','077',200,'2019-04-19 09:59:50.682263','2019-04-19 09:59:50.682263'),(2761,'Moravske Toplice','078',200,'2019-04-19 09:59:50.685928','2019-04-19 09:59:50.685928'),(2762,'Mozirje','079',200,'2019-04-19 09:59:50.688916','2019-04-19 09:59:50.688916'),(2763,'Murska Sobota','080',200,'2019-04-19 09:59:50.692502','2019-04-19 09:59:50.692502'),(2764,'Muta','081',200,'2019-04-19 09:59:50.695558','2019-04-19 09:59:50.695558'),(2765,'Naklo','082',200,'2019-04-19 09:59:50.699808','2019-04-19 09:59:50.699808'),(2766,'Nazarje','083',200,'2019-04-19 09:59:50.703589','2019-04-19 09:59:50.703589'),(2767,'Nova Gorica','084',200,'2019-04-19 09:59:50.707193','2019-04-19 09:59:50.707193'),(2768,'Novo mesto','085',200,'2019-04-19 09:59:50.710389','2019-04-19 09:59:50.710389'),(2769,'Odranci','086',200,'2019-04-19 09:59:50.713260','2019-04-19 09:59:50.713260'),(2770,'Ormož','087',200,'2019-04-19 09:59:50.716488','2019-04-19 09:59:50.716488'),(2771,'Osilnica','088',200,'2019-04-19 09:59:50.720357','2019-04-19 09:59:50.720357'),(2772,'Pesnica','089',200,'2019-04-19 09:59:50.724715','2019-04-19 09:59:50.724715'),(2773,'Piran/Pirano','090',200,'2019-04-19 09:59:50.728186','2019-04-19 09:59:50.728186'),(2774,'Pivka','091',200,'2019-04-19 09:59:50.731442','2019-04-19 09:59:50.731442'),(2775,'Podčetrtek','092',200,'2019-04-19 09:59:50.734901','2019-04-19 09:59:50.734901'),(2776,'Podvelka','093',200,'2019-04-19 09:59:50.738602','2019-04-19 09:59:50.738602'),(2777,'Postojna','094',200,'2019-04-19 09:59:50.742850','2019-04-19 09:59:50.742850'),(2778,'Preddvor','095',200,'2019-04-19 09:59:50.746121','2019-04-19 09:59:50.746121'),(2779,'Ptuj','096',200,'2019-04-19 09:59:50.748871','2019-04-19 09:59:50.748871'),(2780,'Puconci','097',200,'2019-04-19 09:59:50.751953','2019-04-19 09:59:50.751953'),(2781,'Rače-Fram','098',200,'2019-04-19 09:59:50.755610','2019-04-19 09:59:50.755610'),(2782,'Radeče','099',200,'2019-04-19 09:59:50.759753','2019-04-19 09:59:50.759753'),(2783,'Radenci','100',200,'2019-04-19 09:59:50.763440','2019-04-19 09:59:50.763440'),(2784,'Radlje ob Dravi','101',200,'2019-04-19 09:59:50.766101','2019-04-19 09:59:50.766101'),(2785,'Radovljica','102',200,'2019-04-19 09:59:50.769706','2019-04-19 09:59:50.769706'),(2786,'Ravne na Koroškem','103',200,'2019-04-19 09:59:50.772582','2019-04-19 09:59:50.772582'),(2787,'Ribnica','104',200,'2019-04-19 09:59:50.778209','2019-04-19 09:59:50.778209'),(2788,'Rogašovci','105',200,'2019-04-19 09:59:50.781439','2019-04-19 09:59:50.781439'),(2789,'Rogaška Slatina','106',200,'2019-04-19 09:59:50.784413','2019-04-19 09:59:50.784413'),(2790,'Rogatec','107',200,'2019-04-19 09:59:50.787304','2019-04-19 09:59:50.787304'),(2791,'Ruše','108',200,'2019-04-19 09:59:50.790478','2019-04-19 09:59:50.790478'),(2792,'Semič','109',200,'2019-04-19 09:59:50.794289','2019-04-19 09:59:50.794289'),(2793,'Sevnica','110',200,'2019-04-19 09:59:50.797463','2019-04-19 09:59:50.797463'),(2794,'Sežana','111',200,'2019-04-19 09:59:50.800434','2019-04-19 09:59:50.800434'),(2795,'Slovenj Gradec','112',200,'2019-04-19 09:59:50.803155','2019-04-19 09:59:50.803155'),(2796,'Slovenska Bistrica','113',200,'2019-04-19 09:59:50.805672','2019-04-19 09:59:50.805672'),(2797,'Slovenske Konjice','114',200,'2019-04-19 09:59:50.809839','2019-04-19 09:59:50.809839'),(2798,'Starče','115',200,'2019-04-19 09:59:50.813023','2019-04-19 09:59:50.813023'),(2799,'Sveti Jurij','116',200,'2019-04-19 09:59:50.815593','2019-04-19 09:59:50.815593'),(2800,'Šenčur','117',200,'2019-04-19 09:59:50.818879','2019-04-19 09:59:50.818879'),(2801,'Šentilj','118',200,'2019-04-19 09:59:50.821582','2019-04-19 09:59:50.821582'),(2802,'Šentjernej','119',200,'2019-04-19 09:59:50.827606','2019-04-19 09:59:50.827606'),(2803,'Šentjur','120',200,'2019-04-19 09:59:50.831109','2019-04-19 09:59:50.831109'),(2804,'Škocjan','121',200,'2019-04-19 09:59:50.834231','2019-04-19 09:59:50.834231'),(2805,'Škofja Loka','122',200,'2019-04-19 09:59:50.837118','2019-04-19 09:59:50.837118'),(2806,'Škofljica','123',200,'2019-04-19 09:59:50.840912','2019-04-19 09:59:50.840912'),(2807,'Šmarje pri Jelšah','124',200,'2019-04-19 09:59:50.844308','2019-04-19 09:59:50.844308'),(2808,'Šmartno ob Paki','125',200,'2019-04-19 09:59:50.847217','2019-04-19 09:59:50.847217'),(2809,'Šoštanj','126',200,'2019-04-19 09:59:50.850256','2019-04-19 09:59:50.850256'),(2810,'Štore','127',200,'2019-04-19 09:59:50.853094','2019-04-19 09:59:50.853094'),(2811,'Tolmin','128',200,'2019-04-19 09:59:50.855893','2019-04-19 09:59:50.855893'),(2812,'Trbovlje','129',200,'2019-04-19 09:59:50.860375','2019-04-19 09:59:50.860375'),(2813,'Trebnje','130',200,'2019-04-19 09:59:50.863566','2019-04-19 09:59:50.863566'),(2814,'Tržič','131',200,'2019-04-19 09:59:50.866863','2019-04-19 09:59:50.866863'),(2815,'Turnišče','132',200,'2019-04-19 09:59:50.869783','2019-04-19 09:59:50.869783'),(2816,'Velenje','133',200,'2019-04-19 09:59:50.872656','2019-04-19 09:59:50.872656'),(2817,'Velike Lašče','134',200,'2019-04-19 09:59:50.876462','2019-04-19 09:59:50.876462'),(2818,'Videm','135',200,'2019-04-19 09:59:50.879384','2019-04-19 09:59:50.879384'),(2819,'Vipava','136',200,'2019-04-19 09:59:50.884286','2019-04-19 09:59:50.884286'),(2820,'Vitanje','137',200,'2019-04-19 09:59:50.886863','2019-04-19 09:59:50.886863'),(2821,'Vodice','138',200,'2019-04-19 09:59:50.890618','2019-04-19 09:59:50.890618'),(2822,'Vojnik','139',200,'2019-04-19 09:59:50.894197','2019-04-19 09:59:50.894197'),(2823,'Vrhnika','140',200,'2019-04-19 09:59:50.896983','2019-04-19 09:59:50.896983'),(2824,'Vuzenica','141',200,'2019-04-19 09:59:50.899703','2019-04-19 09:59:50.899703'),(2825,'Zagorje ob Savi','142',200,'2019-04-19 09:59:50.902275','2019-04-19 09:59:50.902275'),(2826,'Zavrč','143',200,'2019-04-19 09:59:50.905132','2019-04-19 09:59:50.905132'),(2827,'Zreče','144',200,'2019-04-19 09:59:50.908871','2019-04-19 09:59:50.908871'),(2828,'Železniki','146',200,'2019-04-19 09:59:50.911796','2019-04-19 09:59:50.911796'),(2829,'Žiri','147',200,'2019-04-19 09:59:50.914482','2019-04-19 09:59:50.914482'),(2830,'Benedikt','148',200,'2019-04-19 09:59:50.917018','2019-04-19 09:59:50.917018'),(2831,'Bistrica ob Sotli','149',200,'2019-04-19 09:59:50.920180','2019-04-19 09:59:50.920180'),(2832,'Bloke','150',200,'2019-04-19 09:59:50.923117','2019-04-19 09:59:50.923117'),(2833,'Braslovče','151',200,'2019-04-19 09:59:50.926177','2019-04-19 09:59:50.926177'),(2834,'Cankova','152',200,'2019-04-19 09:59:50.928982','2019-04-19 09:59:50.928982'),(2835,'Cerkvenjak','153',200,'2019-04-19 09:59:50.931631','2019-04-19 09:59:50.931631'),(2836,'Dobje','154',200,'2019-04-19 09:59:50.934152','2019-04-19 09:59:50.934152'),(2837,'Dobrna','155',200,'2019-04-19 09:59:50.936915','2019-04-19 09:59:50.936915'),(2838,'Dobrovnik/Dobronak','156',200,'2019-04-19 09:59:50.941253','2019-04-19 09:59:50.941253'),(2839,'Dolenjske Toplice','157',200,'2019-04-19 09:59:50.945377','2019-04-19 09:59:50.945377'),(2840,'Grad','158',200,'2019-04-19 09:59:50.948088','2019-04-19 09:59:50.948088'),(2841,'Hajdina','159',200,'2019-04-19 09:59:50.951177','2019-04-19 09:59:50.951177'),(2842,'Hoče-Slivnica','160',200,'2019-04-19 09:59:50.953974','2019-04-19 09:59:50.953974'),(2843,'Hodoš/Hodos','161',200,'2019-04-19 09:59:50.956670','2019-04-19 09:59:50.956670'),(2844,'Horjul','162',200,'2019-04-19 09:59:50.959511','2019-04-19 09:59:50.959511'),(2845,'Jezersko','163',200,'2019-04-19 09:59:50.962273','2019-04-19 09:59:50.962273'),(2846,'Komenda','164',200,'2019-04-19 09:59:50.964815','2019-04-19 09:59:50.964815'),(2847,'Kostel','165',200,'2019-04-19 09:59:50.967344','2019-04-19 09:59:50.967344'),(2848,'Križevci','166',200,'2019-04-19 09:59:50.970246','2019-04-19 09:59:50.970246'),(2849,'Lovrenc na Pohorju','167',200,'2019-04-19 09:59:50.973912','2019-04-19 09:59:50.973912'),(2850,'Markovci','168',200,'2019-04-19 09:59:50.978233','2019-04-19 09:59:50.978233'),(2851,'Miklavž na Dravskem polju','169',200,'2019-04-19 09:59:50.981521','2019-04-19 09:59:50.981521'),(2852,'Mirna Peč','170',200,'2019-04-19 09:59:50.984273','2019-04-19 09:59:50.984273'),(2853,'Oplotnica','171',200,'2019-04-19 09:59:50.988096','2019-04-19 09:59:50.988096'),(2854,'Podlehnik','172',200,'2019-04-19 09:59:50.991991','2019-04-19 09:59:50.991991'),(2855,'Polzela','173',200,'2019-04-19 09:59:50.995031','2019-04-19 09:59:50.995031'),(2856,'Prebold','174',200,'2019-04-19 09:59:50.997972','2019-04-19 09:59:50.997972'),(2857,'Prevalje','175',200,'2019-04-19 09:59:51.002142','2019-04-19 09:59:51.002142'),(2858,'Razkrižje','176',200,'2019-04-19 09:59:51.006584','2019-04-19 09:59:51.006584'),(2859,'Ribnica na Pohorju','177',200,'2019-04-19 09:59:51.010283','2019-04-19 09:59:51.010283'),(2860,'Selnica ob Dravi','178',200,'2019-04-19 09:59:51.013648','2019-04-19 09:59:51.013648'),(2861,'Sodražica','179',200,'2019-04-19 09:59:51.016818','2019-04-19 09:59:51.016818'),(2862,'Solčava','180',200,'2019-04-19 09:59:51.019923','2019-04-19 09:59:51.019923'),(2863,'Sveta Ana','181',200,'2019-04-19 09:59:51.023075','2019-04-19 09:59:51.023075'),(2864,'Sveta Andraž v Slovenskih Goricah','182',200,'2019-04-19 09:59:51.026859','2019-04-19 09:59:51.026859'),(2865,'Šempeter-Vrtojba','183',200,'2019-04-19 09:59:51.030607','2019-04-19 09:59:51.030607'),(2866,'Tabor','184',200,'2019-04-19 09:59:51.036126','2019-04-19 09:59:51.036126'),(2867,'Trnovska vas','185',200,'2019-04-19 09:59:51.039860','2019-04-19 09:59:51.039860'),(2868,'Trzin','186',200,'2019-04-19 09:59:51.043749','2019-04-19 09:59:51.043749'),(2869,'Velika Polana','187',200,'2019-04-19 09:59:51.046556','2019-04-19 09:59:51.046556'),(2870,'Veržej','188',200,'2019-04-19 09:59:51.049735','2019-04-19 09:59:51.049735'),(2871,'Vransko','189',200,'2019-04-19 09:59:51.052810','2019-04-19 09:59:51.052810'),(2872,'Žalec','190',200,'2019-04-19 09:59:51.055901','2019-04-19 09:59:51.055901'),(2873,'Žetale','191',200,'2019-04-19 09:59:51.062908','2019-04-19 09:59:51.062908'),(2874,'Žirovnica','192',200,'2019-04-19 09:59:51.066078','2019-04-19 09:59:51.066078'),(2875,'Žužemberk','193',200,'2019-04-19 09:59:51.068940','2019-04-19 09:59:51.068940'),(2876,'Šmartno pri Litiji','194',200,'2019-04-19 09:59:51.072156','2019-04-19 09:59:51.072156'),(2877,'Apače','195',200,'2019-04-19 09:59:51.077177','2019-04-19 09:59:51.077177'),(2878,'Cirkulane','196',200,'2019-04-19 09:59:51.080630','2019-04-19 09:59:51.080630'),(2879,'Kosanjevica na Krki','197',200,'2019-04-19 09:59:51.084718','2019-04-19 09:59:51.084718'),(2880,'Makole','198',200,'2019-04-19 09:59:51.088870','2019-04-19 09:59:51.088870'),(2881,'Mokronog-Trebelno','199',200,'2019-04-19 09:59:51.093700','2019-04-19 09:59:51.093700'),(2882,'Poljčane','200',200,'2019-04-19 09:59:51.096842','2019-04-19 09:59:51.096842'),(2883,'Renče-Vogrsko','201',200,'2019-04-19 09:59:51.101080','2019-04-19 09:59:51.101080'),(2884,'Središče ob Dravi','202',200,'2019-04-19 09:59:51.106093','2019-04-19 09:59:51.106093'),(2885,'Straža','203',200,'2019-04-19 09:59:51.111675','2019-04-19 09:59:51.111675'),(2886,'Sveta Trojica v Slovenskih Goricah','204',200,'2019-04-19 09:59:51.114660','2019-04-19 09:59:51.114660'),(2887,'Sveti Tomaž','205',200,'2019-04-19 09:59:51.117487','2019-04-19 09:59:51.117487'),(2888,'Šmarjeske Topliče','206',200,'2019-04-19 09:59:51.120418','2019-04-19 09:59:51.120418'),(2889,'Gorje','207',200,'2019-04-19 09:59:51.125585','2019-04-19 09:59:51.125585'),(2890,'Log-Dragomer','208',200,'2019-04-19 09:59:51.129389','2019-04-19 09:59:51.129389'),(2891,'Rečica ob Savinji','209',200,'2019-04-19 09:59:51.132638','2019-04-19 09:59:51.132638'),(2892,'Sveti Jurij v Slovenskih Goricah','210',200,'2019-04-19 09:59:51.136877','2019-04-19 09:59:51.136877'),(2893,'Šentrupert','211',200,'2019-04-19 09:59:51.141667','2019-04-19 09:59:51.141667'),(2894,'Banskobystrický kraj','BC',202,'2019-04-19 09:59:51.146279','2019-04-19 09:59:51.146279'),(2895,'Bratislavský kraj','BL',202,'2019-04-19 09:59:51.150545','2019-04-19 09:59:51.150545'),(2896,'Košický kraj','KI',202,'2019-04-19 09:59:51.154585','2019-04-19 09:59:51.154585'),(2897,'Nitriansky kraj','NI',202,'2019-04-19 09:59:51.162163','2019-04-19 09:59:51.162163'),(2898,'Prešovský kraj','PV',202,'2019-04-19 09:59:51.165174','2019-04-19 09:59:51.165174'),(2899,'Trnavský kraj','TA',202,'2019-04-19 09:59:51.167932','2019-04-19 09:59:51.167932'),(2900,'Trenčiansky kraj','TC',202,'2019-04-19 09:59:51.170763','2019-04-19 09:59:51.170763'),(2901,'Žilinský kraj','ZI',202,'2019-04-19 09:59:51.175022','2019-04-19 09:59:51.175022'),(2902,'Eastern','E',203,'2019-04-19 09:59:51.178959','2019-04-19 09:59:51.178959'),(2903,'Northern','N',203,'2019-04-19 09:59:51.181844','2019-04-19 09:59:51.181844'),(2904,'Southern (Sierra Leone)','S',203,'2019-04-19 09:59:51.184614','2019-04-19 09:59:51.184614'),(2905,'Western Area (Freetown)','W',203,'2019-04-19 09:59:51.187867','2019-04-19 09:59:51.187867'),(2906,'Acquaviva','01',204,'2019-04-19 09:59:51.191339','2019-04-19 09:59:51.191339'),(2907,'Chiesanuova','02',204,'2019-04-19 09:59:51.194287','2019-04-19 09:59:51.194287'),(2908,'Domagnano','03',204,'2019-04-19 09:59:51.197193','2019-04-19 09:59:51.197193'),(2909,'Faetano','04',204,'2019-04-19 09:59:51.200231','2019-04-19 09:59:51.200231'),(2910,'Fiorentino','05',204,'2019-04-19 09:59:51.203209','2019-04-19 09:59:51.203209'),(2911,'Borgo Maggiore','06',204,'2019-04-19 09:59:51.206241','2019-04-19 09:59:51.206241'),(2912,'San Marino','07',204,'2019-04-19 09:59:51.209697','2019-04-19 09:59:51.209697'),(2913,'Montegiardino','08',204,'2019-04-19 09:59:51.213410','2019-04-19 09:59:51.213410'),(2914,'Serravalle','09',204,'2019-04-19 09:59:51.216757','2019-04-19 09:59:51.216757'),(2915,'Diourbel','DB',205,'2019-04-19 09:59:51.219597','2019-04-19 09:59:51.219597'),(2916,'Dakar','DK',205,'2019-04-19 09:59:51.224092','2019-04-19 09:59:51.224092'),(2917,'Fatick','FK',205,'2019-04-19 09:59:51.227628','2019-04-19 09:59:51.227628'),(2918,'Kaffrine','KA',205,'2019-04-19 09:59:51.230721','2019-04-19 09:59:51.230721'),(2919,'Kolda','KD',205,'2019-04-19 09:59:51.233494','2019-04-19 09:59:51.233494'),(2920,'Kédougou','KE',205,'2019-04-19 09:59:51.236282','2019-04-19 09:59:51.236282'),(2921,'Kaolack','KL',205,'2019-04-19 09:59:51.239150','2019-04-19 09:59:51.239150'),(2922,'Louga','LG',205,'2019-04-19 09:59:51.242738','2019-04-19 09:59:51.242738'),(2923,'Matam','MT',205,'2019-04-19 09:59:51.245571','2019-04-19 09:59:51.245571'),(2924,'Sédhiou','SE',205,'2019-04-19 09:59:51.248108','2019-04-19 09:59:51.248108'),(2925,'Saint-Louis','SL',205,'2019-04-19 09:59:51.250868','2019-04-19 09:59:51.250868'),(2926,'Tambacounda','TC',205,'2019-04-19 09:59:51.253903','2019-04-19 09:59:51.253903'),(2927,'Thiès','TH',205,'2019-04-19 09:59:51.256911','2019-04-19 09:59:51.256911'),(2928,'Ziguinchor','ZG',205,'2019-04-19 09:59:51.259796','2019-04-19 09:59:51.259796'),(2929,'Awdal','AW',206,'2019-04-19 09:59:51.262511','2019-04-19 09:59:51.262511'),(2930,'Bakool','BK',206,'2019-04-19 09:59:51.265039','2019-04-19 09:59:51.265039'),(2931,'Banaadir','BN',206,'2019-04-19 09:59:51.268064','2019-04-19 09:59:51.268064'),(2932,'Bari','BR',206,'2019-04-19 09:59:51.271258','2019-04-19 09:59:51.271258'),(2933,'Bay','BY',206,'2019-04-19 09:59:51.274982','2019-04-19 09:59:51.274982'),(2934,'Galguduud','GA',206,'2019-04-19 09:59:51.278314','2019-04-19 09:59:51.278314'),(2935,'Gedo','GE',206,'2019-04-19 09:59:51.281016','2019-04-19 09:59:51.281016'),(2936,'Hiirsan','HI',206,'2019-04-19 09:59:51.283677','2019-04-19 09:59:51.283677'),(2937,'Jubbada Dhexe','JD',206,'2019-04-19 09:59:51.286354','2019-04-19 09:59:51.286354'),(2938,'Jubbada Hoose','JH',206,'2019-04-19 09:59:51.290333','2019-04-19 09:59:51.290333'),(2939,'Mudug','MU',206,'2019-04-19 09:59:51.293427','2019-04-19 09:59:51.293427'),(2940,'Nugaal','NU',206,'2019-04-19 09:59:51.296140','2019-04-19 09:59:51.296140'),(2941,'Saneag','SA',206,'2019-04-19 09:59:51.298808','2019-04-19 09:59:51.298808'),(2942,'Shabeellaha Dhexe','SD',206,'2019-04-19 09:59:51.301324','2019-04-19 09:59:51.301324'),(2943,'Shabeellaha Hoose','SH',206,'2019-04-19 09:59:51.304421','2019-04-19 09:59:51.304421'),(2944,'Sool','SO',206,'2019-04-19 09:59:51.307158','2019-04-19 09:59:51.307158'),(2945,'Togdheer','TO',206,'2019-04-19 09:59:51.309721','2019-04-19 09:59:51.309721'),(2946,'Woqooyi Galbeed','WO',206,'2019-04-19 09:59:51.312731','2019-04-19 09:59:51.312731'),(2947,'Brokopondo','BR',207,'2019-04-19 09:59:51.315808','2019-04-19 09:59:51.315808'),(2948,'Commewijne','CM',207,'2019-04-19 09:59:51.318861','2019-04-19 09:59:51.318861'),(2949,'Coronie','CR',207,'2019-04-19 09:59:51.322235','2019-04-19 09:59:51.322235'),(2950,'Marowijne','MA',207,'2019-04-19 09:59:51.325717','2019-04-19 09:59:51.325717'),(2951,'Nickerie','NI',207,'2019-04-19 09:59:51.328290','2019-04-19 09:59:51.328290'),(2952,'Paramaribo','PM',207,'2019-04-19 09:59:51.331239','2019-04-19 09:59:51.331239'),(2953,'Para','PR',207,'2019-04-19 09:59:51.333932','2019-04-19 09:59:51.333932'),(2954,'Saramacca','SA',207,'2019-04-19 09:59:51.337239','2019-04-19 09:59:51.337239'),(2955,'Sipaliwini','SI',207,'2019-04-19 09:59:51.341975','2019-04-19 09:59:51.341975'),(2956,'Wanica','WA',207,'2019-04-19 09:59:51.345609','2019-04-19 09:59:51.345609'),(2957,'Northern Bahr el-Ghazal','BN',208,'2019-04-19 09:59:51.348713','2019-04-19 09:59:51.348713'),(2958,'Western Bahr el-Ghazal','BW',208,'2019-04-19 09:59:51.352043','2019-04-19 09:59:51.352043'),(2959,'Central Equatoria','EC',208,'2019-04-19 09:59:51.357148','2019-04-19 09:59:51.357148'),(2960,'Eastern Equatoria','EE8',208,'2019-04-19 09:59:51.360366','2019-04-19 09:59:51.360366'),(2961,'Western Equatoria','EW',208,'2019-04-19 09:59:51.363982','2019-04-19 09:59:51.363982'),(2962,'Jonglei','JG',208,'2019-04-19 09:59:51.366727','2019-04-19 09:59:51.366727'),(2963,'Lakes','LK',208,'2019-04-19 09:59:51.369524','2019-04-19 09:59:51.369524'),(2964,'Upper Nile','NU',208,'2019-04-19 09:59:51.372250','2019-04-19 09:59:51.372250'),(2965,'Unity','UY',208,'2019-04-19 09:59:51.375402','2019-04-19 09:59:51.375402'),(2966,'Warrap','WR',208,'2019-04-19 09:59:51.378951','2019-04-19 09:59:51.378951'),(2967,'Príncipe','P',209,'2019-04-19 09:59:51.383210','2019-04-19 09:59:51.383210'),(2968,'São Tomé','S',209,'2019-04-19 09:59:51.385814','2019-04-19 09:59:51.385814'),(2969,'Ahuachapán','AH',210,'2019-04-19 09:59:51.388279','2019-04-19 09:59:51.388279'),(2970,'Cabañas','CA',210,'2019-04-19 09:59:51.391168','2019-04-19 09:59:51.391168'),(2971,'Chalatenango','CH',210,'2019-04-19 09:59:51.394196','2019-04-19 09:59:51.394196'),(2972,'Cuscatlán','CU',210,'2019-04-19 09:59:51.397219','2019-04-19 09:59:51.397219'),(2973,'La Libertad','LI',210,'2019-04-19 09:59:51.400559','2019-04-19 09:59:51.400559'),(2974,'Morazán','MO',210,'2019-04-19 09:59:51.403703','2019-04-19 09:59:51.403703'),(2975,'La Paz','PA',210,'2019-04-19 09:59:51.407143','2019-04-19 09:59:51.407143'),(2976,'Santa Ana','SA',210,'2019-04-19 09:59:51.410280','2019-04-19 09:59:51.410280'),(2977,'San Miguel','SM',210,'2019-04-19 09:59:51.413409','2019-04-19 09:59:51.413409'),(2978,'Sonsonate','SO',210,'2019-04-19 09:59:51.416712','2019-04-19 09:59:51.416712'),(2979,'San Salvador','SS',210,'2019-04-19 09:59:51.419607','2019-04-19 09:59:51.419607'),(2980,'San Vicente','SV',210,'2019-04-19 09:59:51.422380','2019-04-19 09:59:51.422380'),(2981,'La Unión','UN',210,'2019-04-19 09:59:51.425901','2019-04-19 09:59:51.425901'),(2982,'Usulután','US',210,'2019-04-19 09:59:51.430058','2019-04-19 09:59:51.430058'),(2983,'Dimashq','DI',212,'2019-04-19 09:59:51.434123','2019-04-19 09:59:51.434123'),(2984,'Dar\'a','DR',212,'2019-04-19 09:59:51.437201','2019-04-19 09:59:51.437201'),(2985,'Dayr az Zawr','DY',212,'2019-04-19 09:59:51.440035','2019-04-19 09:59:51.440035'),(2986,'Al Hasakah','HA',212,'2019-04-19 09:59:51.442816','2019-04-19 09:59:51.442816'),(2987,'Homs','HI',212,'2019-04-19 09:59:51.445557','2019-04-19 09:59:51.445557'),(2988,'Halab','HL',212,'2019-04-19 09:59:51.448436','2019-04-19 09:59:51.448436'),(2989,'Hamah','HM',212,'2019-04-19 09:59:51.451421','2019-04-19 09:59:51.451421'),(2990,'Idlib','ID',212,'2019-04-19 09:59:51.455035','2019-04-19 09:59:51.455035'),(2991,'Al Ladhiqiyah','LA',212,'2019-04-19 09:59:51.458915','2019-04-19 09:59:51.458915'),(2992,'Al Qunaytirah','QU',212,'2019-04-19 09:59:51.462385','2019-04-19 09:59:51.462385'),(2993,'Ar Raqqah','RA',212,'2019-04-19 09:59:51.471464','2019-04-19 09:59:51.471464'),(2994,'Rif Dimashq','RD',212,'2019-04-19 09:59:51.474765','2019-04-19 09:59:51.474765'),(2995,'As Suwayda\'','SU',212,'2019-04-19 09:59:51.477903','2019-04-19 09:59:51.477903'),(2996,'Tartus','TA',212,'2019-04-19 09:59:51.480647','2019-04-19 09:59:51.480647'),(2997,'Hhohho','HH',213,'2019-04-19 09:59:51.483583','2019-04-19 09:59:51.483583'),(2998,'Lubombo','LU',213,'2019-04-19 09:59:51.486223','2019-04-19 09:59:51.486223'),(2999,'Manzini','MA',213,'2019-04-19 09:59:51.488991','2019-04-19 09:59:51.488991'),(3000,'Shiselweni','SH',213,'2019-04-19 09:59:51.491903','2019-04-19 09:59:51.491903'),(3001,'Al Baṭḩah','BA',215,'2019-04-19 09:59:51.495145','2019-04-19 09:59:51.495145'),(3002,'Baḩr al Ghazāl','BG',215,'2019-04-19 09:59:51.499451','2019-04-19 09:59:51.499451'),(3003,'Būrkū','BO',215,'2019-04-19 09:59:51.503289','2019-04-19 09:59:51.503289'),(3004,'Shārī Bāqirmī','CB',215,'2019-04-19 09:59:51.506254','2019-04-19 09:59:51.506254'),(3005,'Innīdī','EN',215,'2019-04-19 09:59:51.509559','2019-04-19 09:59:51.509559'),(3006,'Qīrā','GR',215,'2019-04-19 09:59:51.513438','2019-04-19 09:59:51.513438'),(3007,'Ḥajjar Lamīs','HL',215,'2019-04-19 09:59:51.516776','2019-04-19 09:59:51.516776'),(3008,'Kānim','KA',215,'2019-04-19 09:59:51.520554','2019-04-19 09:59:51.520554'),(3009,'Al Buḩayrah','LC',215,'2019-04-19 09:59:51.524287','2019-04-19 09:59:51.524287'),(3010,'Lūqūn al Gharbī','LO',215,'2019-04-19 09:59:51.527517','2019-04-19 09:59:51.527517'),(3011,'Lūqūn ash Sharqī','LR',215,'2019-04-19 09:59:51.530387','2019-04-19 09:59:51.530387'),(3012,'Māndūl','MA',215,'2019-04-19 09:59:51.533179','2019-04-19 09:59:51.533179'),(3013,'Shārī al Awsaṭ','MC',215,'2019-04-19 09:59:51.535920','2019-04-19 09:59:51.535920'),(3014,'Māyū Kībbī ash Sharqī','ME',215,'2019-04-19 09:59:51.538849','2019-04-19 09:59:51.538849'),(3015,'Māyū Kībbī al Gharbī','MO',215,'2019-04-19 09:59:51.541925','2019-04-19 09:59:51.541925'),(3016,'Madīnat Injamīnā','ND',215,'2019-04-19 09:59:51.545217','2019-04-19 09:59:51.545217'),(3017,'Waddāy','OD',215,'2019-04-19 09:59:51.548256','2019-04-19 09:59:51.548256'),(3018,'Salāmāt','SA',215,'2019-04-19 09:59:51.550941','2019-04-19 09:59:51.550941'),(3019,'Sīlā','SI',215,'2019-04-19 09:59:51.553844','2019-04-19 09:59:51.553844'),(3020,'Tānjilī','TA',215,'2019-04-19 09:59:51.556678','2019-04-19 09:59:51.556678'),(3021,'Tibastī','TI',215,'2019-04-19 09:59:51.559650','2019-04-19 09:59:51.559650'),(3022,'Wādī Fīrā','WF',215,'2019-04-19 09:59:51.562968','2019-04-19 09:59:51.562968'),(3023,'Région du Centre','C',217,'2019-04-19 09:59:51.565858','2019-04-19 09:59:51.565858'),(3024,'Région de la Kara','K',217,'2019-04-19 09:59:51.569291','2019-04-19 09:59:51.569291'),(3025,'Région Maritime','M',217,'2019-04-19 09:59:51.573493','2019-04-19 09:59:51.573493'),(3026,'Région des Plateaux','P',217,'2019-04-19 09:59:51.577180','2019-04-19 09:59:51.577180'),(3027,'Région des Savannes','S',217,'2019-04-19 09:59:51.580931','2019-04-19 09:59:51.580931'),(3028,'Krung Thep Maha Nakhon Bangkok','10',218,'2019-04-19 09:59:51.585276','2019-04-19 09:59:51.585276'),(3029,'Samut Prakan','11',218,'2019-04-19 09:59:51.589159','2019-04-19 09:59:51.589159'),(3030,'Nonthaburi','12',218,'2019-04-19 09:59:51.593574','2019-04-19 09:59:51.593574'),(3031,'Pathum Thani','13',218,'2019-04-19 09:59:51.598232','2019-04-19 09:59:51.598232'),(3032,'Phra Nakhon Si Ayutthaya','14',218,'2019-04-19 09:59:51.601818','2019-04-19 09:59:51.601818'),(3033,'Ang Thong','15',218,'2019-04-19 09:59:51.605844','2019-04-19 09:59:51.605844'),(3034,'Lop Buri','16',218,'2019-04-19 09:59:51.609857','2019-04-19 09:59:51.609857'),(3035,'Sing Buri','17',218,'2019-04-19 09:59:51.613158','2019-04-19 09:59:51.613158'),(3036,'Chai Nat','18',218,'2019-04-19 09:59:51.615731','2019-04-19 09:59:51.615731'),(3037,'Saraburi','19',218,'2019-04-19 09:59:51.618294','2019-04-19 09:59:51.618294'),(3038,'Chon Buri','20',218,'2019-04-19 09:59:51.620979','2019-04-19 09:59:51.620979'),(3039,'Rayong','21',218,'2019-04-19 09:59:51.623682','2019-04-19 09:59:51.623682'),(3040,'Chanthaburi','22',218,'2019-04-19 09:59:51.626636','2019-04-19 09:59:51.626636'),(3041,'Trat','23',218,'2019-04-19 09:59:51.629301','2019-04-19 09:59:51.629301'),(3042,'Chachoengsao','24',218,'2019-04-19 09:59:51.632468','2019-04-19 09:59:51.632468'),(3043,'Prachin Buri','25',218,'2019-04-19 09:59:51.635231','2019-04-19 09:59:51.635231'),(3044,'Nakhon Nayok','26',218,'2019-04-19 09:59:51.637789','2019-04-19 09:59:51.637789'),(3045,'Sa Kaeo','27',218,'2019-04-19 09:59:51.640551','2019-04-19 09:59:51.640551'),(3046,'Nakhon Ratchasima','30',218,'2019-04-19 09:59:51.643313','2019-04-19 09:59:51.643313'),(3047,'Buri Ram','31',218,'2019-04-19 09:59:51.646425','2019-04-19 09:59:51.646425'),(3048,'Surin','32',218,'2019-04-19 09:59:51.650261','2019-04-19 09:59:51.650261'),(3049,'Si Sa Ket','33',218,'2019-04-19 09:59:51.654684','2019-04-19 09:59:51.654684'),(3050,'Ubon Ratchathani','34',218,'2019-04-19 09:59:51.658409','2019-04-19 09:59:51.658409'),(3051,'Yasothon','35',218,'2019-04-19 09:59:51.661352','2019-04-19 09:59:51.661352'),(3052,'Chaiyaphum','36',218,'2019-04-19 09:59:51.664293','2019-04-19 09:59:51.664293'),(3053,'Amnat Charoen','37',218,'2019-04-19 09:59:51.667531','2019-04-19 09:59:51.667531'),(3054,'Nong Bua Lam Phu','39',218,'2019-04-19 09:59:51.670160','2019-04-19 09:59:51.670160'),(3055,'Khon Kaen','40',218,'2019-04-19 09:59:51.673027','2019-04-19 09:59:51.673027'),(3056,'Udon Thani','41',218,'2019-04-19 09:59:51.675724','2019-04-19 09:59:51.675724'),(3057,'Loei','42',218,'2019-04-19 09:59:51.678317','2019-04-19 09:59:51.678317'),(3058,'Nong Khai','43',218,'2019-04-19 09:59:51.681237','2019-04-19 09:59:51.681237'),(3059,'Maha Sarakham','44',218,'2019-04-19 09:59:51.732464','2019-04-19 09:59:51.732464'),(3060,'Roi Et','45',218,'2019-04-19 09:59:51.738718','2019-04-19 09:59:51.738718'),(3061,'Kalasin','46',218,'2019-04-19 09:59:51.741745','2019-04-19 09:59:51.741745'),(3062,'Sakon Nakhon','47',218,'2019-04-19 09:59:51.744742','2019-04-19 09:59:51.744742'),(3063,'Nakhon Phanom','48',218,'2019-04-19 09:59:51.747731','2019-04-19 09:59:51.747731'),(3064,'Mukdahan','49',218,'2019-04-19 09:59:51.751514','2019-04-19 09:59:51.751514'),(3065,'Chiang Mai','50',218,'2019-04-19 09:59:51.756201','2019-04-19 09:59:51.756201'),(3066,'Lamphun','51',218,'2019-04-19 09:59:51.760538','2019-04-19 09:59:51.760538'),(3067,'Lampang','52',218,'2019-04-19 09:59:51.763786','2019-04-19 09:59:51.763786'),(3068,'Uttaradit','53',218,'2019-04-19 09:59:51.767117','2019-04-19 09:59:51.767117'),(3069,'Phrae','54',218,'2019-04-19 09:59:51.771148','2019-04-19 09:59:51.771148'),(3070,'Nan','55',218,'2019-04-19 09:59:51.775754','2019-04-19 09:59:51.775754'),(3071,'Phayao','56',218,'2019-04-19 09:59:51.780640','2019-04-19 09:59:51.780640'),(3072,'Chiang Rai','57',218,'2019-04-19 09:59:51.785073','2019-04-19 09:59:51.785073'),(3073,'Mae Hong Son','58',218,'2019-04-19 09:59:51.792650','2019-04-19 09:59:51.792650'),(3074,'Nakhon Sawan','60',218,'2019-04-19 09:59:51.795388','2019-04-19 09:59:51.795388'),(3075,'Uthai Thani','61',218,'2019-04-19 09:59:51.798108','2019-04-19 09:59:51.798108'),(3076,'Kamphaeng Phet','62',218,'2019-04-19 09:59:51.800816','2019-04-19 09:59:51.800816'),(3077,'Tak','63',218,'2019-04-19 09:59:51.803496','2019-04-19 09:59:51.803496'),(3078,'Sukhothai','64',218,'2019-04-19 09:59:51.806168','2019-04-19 09:59:51.806168'),(3079,'Phitsanulok','65',218,'2019-04-19 09:59:51.808919','2019-04-19 09:59:51.808919'),(3080,'Phichit','66',218,'2019-04-19 09:59:51.811631','2019-04-19 09:59:51.811631'),(3081,'Phetchabun','67',218,'2019-04-19 09:59:51.814421','2019-04-19 09:59:51.814421'),(3082,'Ratchaburi','70',218,'2019-04-19 09:59:51.817174','2019-04-19 09:59:51.817174'),(3083,'Kanchanaburi','71',218,'2019-04-19 09:59:51.820479','2019-04-19 09:59:51.820479'),(3084,'Suphan Buri','72',218,'2019-04-19 09:59:51.823998','2019-04-19 09:59:51.823998'),(3085,'Nakhon Pathom','73',218,'2019-04-19 09:59:51.826947','2019-04-19 09:59:51.826947'),(3086,'Samut Sakhon','74',218,'2019-04-19 09:59:51.830358','2019-04-19 09:59:51.830358'),(3087,'Samut Songkhram','75',218,'2019-04-19 09:59:51.834701','2019-04-19 09:59:51.834701'),(3088,'Phetchaburi','76',218,'2019-04-19 09:59:51.837484','2019-04-19 09:59:51.837484'),(3089,'Prachuap Khiri Khan','77',218,'2019-04-19 09:59:51.840365','2019-04-19 09:59:51.840365'),(3090,'Nakhon Si Thammarat','80',218,'2019-04-19 09:59:51.844315','2019-04-19 09:59:51.844315'),(3091,'Krabi','81',218,'2019-04-19 09:59:51.847050','2019-04-19 09:59:51.847050'),(3092,'Phangnga','82',218,'2019-04-19 09:59:51.850339','2019-04-19 09:59:51.850339'),(3093,'Phuket','83',218,'2019-04-19 09:59:51.854005','2019-04-19 09:59:51.854005'),(3094,'Surat Thani','84',218,'2019-04-19 09:59:51.857248','2019-04-19 09:59:51.857248'),(3095,'Ranong','85',218,'2019-04-19 09:59:51.860186','2019-04-19 09:59:51.860186'),(3096,'Chumphon','86',218,'2019-04-19 09:59:51.863891','2019-04-19 09:59:51.863891'),(3097,'Songkhla','90',218,'2019-04-19 09:59:51.867014','2019-04-19 09:59:51.867014'),(3098,'Satun','91',218,'2019-04-19 09:59:51.870554','2019-04-19 09:59:51.870554'),(3099,'Trang','92',218,'2019-04-19 09:59:51.874618','2019-04-19 09:59:51.874618'),(3100,'Phatthalung','93',218,'2019-04-19 09:59:51.878909','2019-04-19 09:59:51.878909'),(3101,'Pattani','94',218,'2019-04-19 09:59:51.881767','2019-04-19 09:59:51.881767'),(3102,'Yala','95',218,'2019-04-19 09:59:51.884690','2019-04-19 09:59:51.884690'),(3103,'Narathiwat','96',218,'2019-04-19 09:59:51.887479','2019-04-19 09:59:51.887479'),(3104,'Phatthaya','S',218,'2019-04-19 09:59:51.890185','2019-04-19 09:59:51.890185'),(3105,'Gorno-Badakhshan','GB',219,'2019-04-19 09:59:51.893661','2019-04-19 09:59:51.893661'),(3106,'Khatlon','KT',219,'2019-04-19 09:59:51.896355','2019-04-19 09:59:51.896355'),(3107,'Sughd','SU',219,'2019-04-19 09:59:51.899527','2019-04-19 09:59:51.899527'),(3108,'Aileu','AL',221,'2019-04-19 09:59:51.903076','2019-04-19 09:59:51.903076'),(3109,'Ainaro','AN',221,'2019-04-19 09:59:51.905938','2019-04-19 09:59:51.905938'),(3110,'Baucau','BA',221,'2019-04-19 09:59:51.908714','2019-04-19 09:59:51.908714'),(3111,'Bobonaro','BO',221,'2019-04-19 09:59:51.911165','2019-04-19 09:59:51.911165'),(3112,'Cova Lima','CO',221,'2019-04-19 09:59:51.913557','2019-04-19 09:59:51.913557'),(3113,'Díli','DI',221,'2019-04-19 09:59:51.916124','2019-04-19 09:59:51.916124'),(3114,'Ermera','ER',221,'2019-04-19 09:59:51.918866','2019-04-19 09:59:51.918866'),(3115,'Lautem','LA',221,'2019-04-19 09:59:51.935901','2019-04-19 09:59:51.935901'),(3116,'Liquiça','LI',221,'2019-04-19 09:59:51.942694','2019-04-19 09:59:51.942694'),(3117,'Manufahi','MF',221,'2019-04-19 09:59:51.951242','2019-04-19 09:59:51.951242'),(3118,'Manatuto','MT',221,'2019-04-19 09:59:51.955199','2019-04-19 09:59:51.955199'),(3119,'Oecussi','OE',221,'2019-04-19 09:59:51.959080','2019-04-19 09:59:51.959080'),(3120,'Viqueque','VI',221,'2019-04-19 09:59:51.962273','2019-04-19 09:59:51.962273'),(3121,'Ahal','A',222,'2019-04-19 09:59:51.968094','2019-04-19 09:59:51.968094'),(3122,'Balkan','B',222,'2019-04-19 09:59:51.972857','2019-04-19 09:59:51.972857'),(3123,'Daşoguz','D',222,'2019-04-19 09:59:51.977261','2019-04-19 09:59:51.977261'),(3124,'Lebap','L',222,'2019-04-19 09:59:51.981364','2019-04-19 09:59:51.981364'),(3125,'Mary','M',222,'2019-04-19 09:59:51.985187','2019-04-19 09:59:51.985187'),(3126,'Aşgabat','S',222,'2019-04-19 09:59:51.989760','2019-04-19 09:59:51.989760'),(3127,'Tunis','11',223,'2019-04-19 09:59:51.995176','2019-04-19 09:59:51.995176'),(3128,'Ariana','12',223,'2019-04-19 09:59:51.998153','2019-04-19 09:59:51.998153'),(3129,'Ben Arous','13',223,'2019-04-19 09:59:52.001659','2019-04-19 09:59:52.001659'),(3130,'La Manouba','14',223,'2019-04-19 09:59:52.005339','2019-04-19 09:59:52.005339'),(3131,'Nabeul','21',223,'2019-04-19 09:59:52.009212','2019-04-19 09:59:52.009212'),(3132,'Zaghouan','22',223,'2019-04-19 09:59:52.013464','2019-04-19 09:59:52.013464'),(3133,'Bizerte','23',223,'2019-04-19 09:59:52.016787','2019-04-19 09:59:52.016787'),(3134,'Béja','31',223,'2019-04-19 09:59:52.019745','2019-04-19 09:59:52.019745'),(3135,'Jendouba','32',223,'2019-04-19 09:59:52.023574','2019-04-19 09:59:52.023574'),(3136,'Le Kef','33',223,'2019-04-19 09:59:52.027084','2019-04-19 09:59:52.027084'),(3137,'Siliana','34',223,'2019-04-19 09:59:52.030762','2019-04-19 09:59:52.030762'),(3138,'Kairouan','41',223,'2019-04-19 09:59:52.033970','2019-04-19 09:59:52.033970'),(3139,'Kasserine','42',223,'2019-04-19 09:59:52.036969','2019-04-19 09:59:52.036969'),(3140,'Sidi Bouzid','43',223,'2019-04-19 09:59:52.040253','2019-04-19 09:59:52.040253'),(3141,'Sousse','51',223,'2019-04-19 09:59:52.043603','2019-04-19 09:59:52.043603'),(3142,'Monastir','52',223,'2019-04-19 09:59:52.046886','2019-04-19 09:59:52.046886'),(3143,'Mahdia','53',223,'2019-04-19 09:59:52.050571','2019-04-19 09:59:52.050571'),(3144,'Sfax','61',223,'2019-04-19 09:59:52.054017','2019-04-19 09:59:52.054017'),(3145,'Gafsa','71',223,'2019-04-19 09:59:52.057363','2019-04-19 09:59:52.057363'),(3146,'Tozeur','72',223,'2019-04-19 09:59:52.061264','2019-04-19 09:59:52.061264'),(3147,'Kebili','73',223,'2019-04-19 09:59:52.064265','2019-04-19 09:59:52.064265'),(3148,'Gabès','81',223,'2019-04-19 09:59:52.067871','2019-04-19 09:59:52.067871'),(3149,'Medenine','82',223,'2019-04-19 09:59:52.070694','2019-04-19 09:59:52.070694'),(3150,'Tataouine','83',223,'2019-04-19 09:59:52.074048','2019-04-19 09:59:52.074048'),(3151,'\'Eua','01',224,'2019-04-19 09:59:52.077571','2019-04-19 09:59:52.077571'),(3152,'Ha\'apai','02',224,'2019-04-19 09:59:52.081409','2019-04-19 09:59:52.081409'),(3153,'Niuas','03',224,'2019-04-19 09:59:52.085889','2019-04-19 09:59:52.085889'),(3154,'Tongatapu','04',224,'2019-04-19 09:59:52.090465','2019-04-19 09:59:52.090465'),(3155,'Vava\'u','05',224,'2019-04-19 09:59:52.095279','2019-04-19 09:59:52.095279'),(3156,'Adana','01',225,'2019-04-19 09:59:52.099975','2019-04-19 09:59:52.099975'),(3157,'Adıyaman','02',225,'2019-04-19 09:59:52.105352','2019-04-19 09:59:52.105352'),(3158,'Afyonkarahisar','03',225,'2019-04-19 09:59:52.108514','2019-04-19 09:59:52.108514'),(3159,'Ağrı','04',225,'2019-04-19 09:59:52.115419','2019-04-19 09:59:52.115419'),(3160,'Amasya','05',225,'2019-04-19 09:59:52.121815','2019-04-19 09:59:52.121815'),(3161,'Ankara','06',225,'2019-04-19 09:59:52.125850','2019-04-19 09:59:52.125850'),(3162,'Antalya','07',225,'2019-04-19 09:59:52.129475','2019-04-19 09:59:52.129475'),(3163,'Artvin','08',225,'2019-04-19 09:59:52.132887','2019-04-19 09:59:52.132887'),(3164,'Aydın','09',225,'2019-04-19 09:59:52.136335','2019-04-19 09:59:52.136335'),(3165,'Balıkesir','10',225,'2019-04-19 09:59:52.141611','2019-04-19 09:59:52.141611'),(3166,'Bilecik','11',225,'2019-04-19 09:59:52.146290','2019-04-19 09:59:52.146290'),(3167,'Bingöl','12',225,'2019-04-19 09:59:52.150076','2019-04-19 09:59:52.150076'),(3168,'Bitlis','13',225,'2019-04-19 09:59:52.154119','2019-04-19 09:59:52.154119'),(3169,'Bolu','14',225,'2019-04-19 09:59:52.157764','2019-04-19 09:59:52.157764'),(3170,'Burdur','15',225,'2019-04-19 09:59:52.161490','2019-04-19 09:59:52.161490'),(3171,'Bursa','16',225,'2019-04-19 09:59:52.164848','2019-04-19 09:59:52.164848'),(3172,'Çanakkale','17',225,'2019-04-19 09:59:52.169250','2019-04-19 09:59:52.169250'),(3173,'Çankırı','18',225,'2019-04-19 09:59:52.173462','2019-04-19 09:59:52.173462'),(3174,'Çorum','19',225,'2019-04-19 09:59:52.177301','2019-04-19 09:59:52.177301'),(3175,'Denizli','20',225,'2019-04-19 09:59:52.181877','2019-04-19 09:59:52.181877'),(3176,'Diyarbakır','21',225,'2019-04-19 09:59:52.186365','2019-04-19 09:59:52.186365'),(3177,'Edirne','22',225,'2019-04-19 09:59:52.189988','2019-04-19 09:59:52.189988'),(3178,'Elazığ','23',225,'2019-04-19 09:59:52.193824','2019-04-19 09:59:52.193824'),(3179,'Erzincan','24',225,'2019-04-19 09:59:52.197503','2019-04-19 09:59:52.197503'),(3180,'Erzurum','25',225,'2019-04-19 09:59:52.201463','2019-04-19 09:59:52.201463'),(3181,'Eskişehir','26',225,'2019-04-19 09:59:52.204532','2019-04-19 09:59:52.204532'),(3182,'Gaziantep','27',225,'2019-04-19 09:59:52.207991','2019-04-19 09:59:52.207991'),(3183,'Giresun','28',225,'2019-04-19 09:59:52.211769','2019-04-19 09:59:52.211769'),(3184,'Gümüşhane','29',225,'2019-04-19 09:59:52.215823','2019-04-19 09:59:52.215823'),(3185,'Hakkâri','30',225,'2019-04-19 09:59:52.219414','2019-04-19 09:59:52.219414'),(3186,'Hatay','31',225,'2019-04-19 09:59:52.223069','2019-04-19 09:59:52.223069'),(3187,'Isparta','32',225,'2019-04-19 09:59:52.226229','2019-04-19 09:59:52.226229'),(3188,'Mersin','33',225,'2019-04-19 09:59:52.229708','2019-04-19 09:59:52.229708'),(3189,'İstanbul','34',225,'2019-04-19 09:59:52.232708','2019-04-19 09:59:52.232708'),(3190,'İzmir','35',225,'2019-04-19 09:59:52.235852','2019-04-19 09:59:52.235852'),(3191,'Kars','36',225,'2019-04-19 09:59:52.239322','2019-04-19 09:59:52.239322'),(3192,'Kastamonu','37',225,'2019-04-19 09:59:52.243043','2019-04-19 09:59:52.243043'),(3193,'Kayseri','38',225,'2019-04-19 09:59:52.246812','2019-04-19 09:59:52.246812'),(3194,'Kırklareli','39',225,'2019-04-19 09:59:52.250408','2019-04-19 09:59:52.250408'),(3195,'Kırşehir','40',225,'2019-04-19 09:59:52.254556','2019-04-19 09:59:52.254556'),(3196,'Kocaeli','41',225,'2019-04-19 09:59:52.258949','2019-04-19 09:59:52.258949'),(3197,'Konya','42',225,'2019-04-19 09:59:52.263223','2019-04-19 09:59:52.263223'),(3198,'Kütahya','43',225,'2019-04-19 09:59:52.266938','2019-04-19 09:59:52.266938'),(3199,'Malatya','44',225,'2019-04-19 09:59:52.270351','2019-04-19 09:59:52.270351'),(3200,'Manisa','45',225,'2019-04-19 09:59:52.273378','2019-04-19 09:59:52.273378'),(3201,'Kahramanmaraş','46',225,'2019-04-19 09:59:52.276094','2019-04-19 09:59:52.276094'),(3202,'Mardin','47',225,'2019-04-19 09:59:52.278614','2019-04-19 09:59:52.278614'),(3203,'Muğla','48',225,'2019-04-19 09:59:52.282269','2019-04-19 09:59:52.282269'),(3204,'Muş','49',225,'2019-04-19 09:59:52.285440','2019-04-19 09:59:52.285440'),(3205,'Nevşehir','50',225,'2019-04-19 09:59:52.289053','2019-04-19 09:59:52.289053'),(3206,'Niğde','51',225,'2019-04-19 09:59:52.292277','2019-04-19 09:59:52.292277'),(3207,'Ordu','52',225,'2019-04-19 09:59:52.295087','2019-04-19 09:59:52.295087'),(3208,'Rize','53',225,'2019-04-19 09:59:52.298099','2019-04-19 09:59:52.298099'),(3209,'Sakarya','54',225,'2019-04-19 09:59:52.301001','2019-04-19 09:59:52.301001'),(3210,'Samsun','55',225,'2019-04-19 09:59:52.305147','2019-04-19 09:59:52.305147'),(3211,'Siirt','56',225,'2019-04-19 09:59:52.308311','2019-04-19 09:59:52.308311'),(3212,'Sinop','57',225,'2019-04-19 09:59:52.311327','2019-04-19 09:59:52.311327'),(3213,'Sivas','58',225,'2019-04-19 09:59:52.314375','2019-04-19 09:59:52.314375'),(3214,'Tekirdağ','59',225,'2019-04-19 09:59:52.317748','2019-04-19 09:59:52.317748'),(3215,'Tokat','60',225,'2019-04-19 09:59:52.322479','2019-04-19 09:59:52.322479'),(3216,'Trabzon','61',225,'2019-04-19 09:59:52.325691','2019-04-19 09:59:52.325691'),(3217,'Tunceli','62',225,'2019-04-19 09:59:52.328578','2019-04-19 09:59:52.328578'),(3218,'Şanlıurfa','63',225,'2019-04-19 09:59:52.331524','2019-04-19 09:59:52.331524'),(3219,'Uşak','64',225,'2019-04-19 09:59:52.334436','2019-04-19 09:59:52.334436'),(3220,'Van','65',225,'2019-04-19 09:59:52.337715','2019-04-19 09:59:52.337715'),(3221,'Yozgat','66',225,'2019-04-19 09:59:52.340773','2019-04-19 09:59:52.340773'),(3222,'Zonguldak','67',225,'2019-04-19 09:59:52.344748','2019-04-19 09:59:52.344748'),(3223,'Aksaray','68',225,'2019-04-19 09:59:52.348367','2019-04-19 09:59:52.348367'),(3224,'Bayburt','69',225,'2019-04-19 09:59:52.352601','2019-04-19 09:59:52.352601'),(3225,'Karaman','70',225,'2019-04-19 09:59:52.356000','2019-04-19 09:59:52.356000'),(3226,'Kırıkkale','71',225,'2019-04-19 09:59:52.358999','2019-04-19 09:59:52.358999'),(3227,'Batman','72',225,'2019-04-19 09:59:52.362451','2019-04-19 09:59:52.362451'),(3228,'Şırnak','73',225,'2019-04-19 09:59:52.365996','2019-04-19 09:59:52.365996'),(3229,'Bartın','74',225,'2019-04-19 09:59:52.369332','2019-04-19 09:59:52.369332'),(3230,'Ardahan','75',225,'2019-04-19 09:59:52.372768','2019-04-19 09:59:52.372768'),(3231,'Iğdır','76',225,'2019-04-19 09:59:52.376008','2019-04-19 09:59:52.376008'),(3232,'Yalova','77',225,'2019-04-19 09:59:52.379137','2019-04-19 09:59:52.379137'),(3233,'Karabük','78',225,'2019-04-19 09:59:52.382289','2019-04-19 09:59:52.382289'),(3234,'Kilis','79',225,'2019-04-19 09:59:52.385204','2019-04-19 09:59:52.385204'),(3235,'Osmaniye','80',225,'2019-04-19 09:59:52.387873','2019-04-19 09:59:52.387873'),(3236,'Düzce','81',225,'2019-04-19 09:59:52.390441','2019-04-19 09:59:52.390441'),(3237,'Arima','ARI',226,'2019-04-19 09:59:52.393437','2019-04-19 09:59:52.393437'),(3238,'Chaguanas','CHA',226,'2019-04-19 09:59:52.396204','2019-04-19 09:59:52.396204'),(3239,'Couva-Tabaquite-Talparo','CTT',226,'2019-04-19 09:59:52.399152','2019-04-19 09:59:52.399152'),(3240,'Diego Martin','DMN',226,'2019-04-19 09:59:52.402858','2019-04-19 09:59:52.402858'),(3241,'Eastern Tobago','ETO',226,'2019-04-19 09:59:52.405955','2019-04-19 09:59:52.405955'),(3242,'Penal-Debe','PED',226,'2019-04-19 09:59:52.408861','2019-04-19 09:59:52.408861'),(3243,'Port of Spain','POS',226,'2019-04-19 09:59:52.411502','2019-04-19 09:59:52.411502'),(3244,'Princes Town','PRT',226,'2019-04-19 09:59:52.414112','2019-04-19 09:59:52.414112'),(3245,'Point Fortin','PTF',226,'2019-04-19 09:59:52.416763','2019-04-19 09:59:52.416763'),(3246,'Rio Claro-Mayaro','RCM',226,'2019-04-19 09:59:52.419567','2019-04-19 09:59:52.419567'),(3247,'San Fernando','SFO',226,'2019-04-19 09:59:52.422229','2019-04-19 09:59:52.422229'),(3248,'Sangre Grande','SGE',226,'2019-04-19 09:59:52.425850','2019-04-19 09:59:52.425850'),(3249,'Siparia','SIP',226,'2019-04-19 09:59:52.428978','2019-04-19 09:59:52.428978'),(3250,'San Juan-Laventille','SJL',226,'2019-04-19 09:59:52.432054','2019-04-19 09:59:52.432054'),(3251,'Tunapuna-Piarco','TUP',226,'2019-04-19 09:59:52.434942','2019-04-19 09:59:52.434942'),(3252,'Western Tobago','WTO',226,'2019-04-19 09:59:52.438186','2019-04-19 09:59:52.438186'),(3253,'Funafuti','FUN',227,'2019-04-19 09:59:52.441827','2019-04-19 09:59:52.441827'),(3254,'Niutao','NIT',227,'2019-04-19 09:59:52.444442','2019-04-19 09:59:52.444442'),(3255,'Nukufetau','NKF',227,'2019-04-19 09:59:52.447106','2019-04-19 09:59:52.447106'),(3256,'Nukulaelae','NKL',227,'2019-04-19 09:59:52.449818','2019-04-19 09:59:52.449818'),(3257,'Nanumea','NMA',227,'2019-04-19 09:59:52.452550','2019-04-19 09:59:52.452550'),(3258,'Nanumanga','NMG',227,'2019-04-19 09:59:52.466240','2019-04-19 09:59:52.466240'),(3259,'Nui','NUI',227,'2019-04-19 09:59:52.503159','2019-04-19 09:59:52.503159'),(3260,'Vaitupu','VAI',227,'2019-04-19 09:59:52.507471','2019-04-19 09:59:52.507471'),(3261,'Changhua','CHA',228,'2019-04-19 09:59:52.510703','2019-04-19 09:59:52.510703'),(3262,'Chiay City','CYI',228,'2019-04-19 09:59:52.525511','2019-04-19 09:59:52.525511'),(3263,'Chiayi','CYQ',228,'2019-04-19 09:59:52.529086','2019-04-19 09:59:52.529086'),(3264,'Hsinchu','HSQ',228,'2019-04-19 09:59:52.532889','2019-04-19 09:59:52.532889'),(3265,'Hsinchui City','HSZ',228,'2019-04-19 09:59:52.536141','2019-04-19 09:59:52.536141'),(3266,'Hualien','HUA',228,'2019-04-19 09:59:52.539757','2019-04-19 09:59:52.539757'),(3267,'Ilan','ILA',228,'2019-04-19 09:59:52.542630','2019-04-19 09:59:52.542630'),(3268,'Keelung City','KEE',228,'2019-04-19 09:59:52.545641','2019-04-19 09:59:52.545641'),(3269,'Kaohsiung City','KHH',228,'2019-04-19 09:59:52.548848','2019-04-19 09:59:52.548848'),(3270,'Kaohsiung','KHQ',228,'2019-04-19 09:59:52.552020','2019-04-19 09:59:52.552020'),(3271,'Miaoli','MIA',228,'2019-04-19 09:59:52.556338','2019-04-19 09:59:52.556338'),(3272,'Nantou','NAN',228,'2019-04-19 09:59:52.559227','2019-04-19 09:59:52.559227'),(3273,'Penghu','PEN',228,'2019-04-19 09:59:52.562330','2019-04-19 09:59:52.562330'),(3274,'Pingtung','PIF',228,'2019-04-19 09:59:52.565256','2019-04-19 09:59:52.565256'),(3275,'Taoyuan','TAO',228,'2019-04-19 09:59:52.570154','2019-04-19 09:59:52.570154'),(3276,'Tainan City','TNN',228,'2019-04-19 09:59:52.574106','2019-04-19 09:59:52.574106'),(3277,'Tainan','TNQ',228,'2019-04-19 09:59:52.577127','2019-04-19 09:59:52.577127'),(3278,'Taipei City','TPE',228,'2019-04-19 09:59:52.580815','2019-04-19 09:59:52.580815'),(3279,'Taipei','TPQ',228,'2019-04-19 09:59:52.594702','2019-04-19 09:59:52.594702'),(3280,'Taitung','TTT',228,'2019-04-19 09:59:52.612530','2019-04-19 09:59:52.612530'),(3281,'Taichung City','TXG',228,'2019-04-19 09:59:52.616524','2019-04-19 09:59:52.616524'),(3282,'Taichung','TXQ',228,'2019-04-19 09:59:52.620298','2019-04-19 09:59:52.620298'),(3283,'Yunlin','YUN',228,'2019-04-19 09:59:52.623512','2019-04-19 09:59:52.623512'),(3284,'Arusha','01',229,'2019-04-19 09:59:52.626440','2019-04-19 09:59:52.626440'),(3285,'Dar-es-Salaam','02',229,'2019-04-19 09:59:52.628977','2019-04-19 09:59:52.628977'),(3286,'Dodoma','03',229,'2019-04-19 09:59:52.632131','2019-04-19 09:59:52.632131'),(3287,'Iringa','04',229,'2019-04-19 09:59:52.635126','2019-04-19 09:59:52.635126'),(3288,'Kagera','05',229,'2019-04-19 09:59:52.639650','2019-04-19 09:59:52.639650'),(3289,'Kaskazini Pemba','06',229,'2019-04-19 09:59:52.642832','2019-04-19 09:59:52.642832'),(3290,'Kaskazini Unguja','07',229,'2019-04-19 09:59:52.645490','2019-04-19 09:59:52.645490'),(3291,'Kigoma','08',229,'2019-04-19 09:59:52.648856','2019-04-19 09:59:52.648856'),(3292,'Kilimanjaro','09',229,'2019-04-19 09:59:52.651541','2019-04-19 09:59:52.651541'),(3293,'Kusini Pemba','10',229,'2019-04-19 09:59:52.655185','2019-04-19 09:59:52.655185'),(3294,'Kusini Unguja','11',229,'2019-04-19 09:59:52.659512','2019-04-19 09:59:52.659512'),(3295,'Lindi','12',229,'2019-04-19 09:59:52.662685','2019-04-19 09:59:52.662685'),(3296,'Mara','13',229,'2019-04-19 09:59:52.665663','2019-04-19 09:59:52.665663'),(3297,'Mbeya','14',229,'2019-04-19 09:59:52.669051','2019-04-19 09:59:52.669051'),(3298,'Mjini Magharibi','15',229,'2019-04-19 09:59:52.672293','2019-04-19 09:59:52.672293'),(3299,'Morogoro','16',229,'2019-04-19 09:59:52.674971','2019-04-19 09:59:52.674971'),(3300,'Mtwara','17',229,'2019-04-19 09:59:52.677532','2019-04-19 09:59:52.677532'),(3301,'Mwanza','18',229,'2019-04-19 09:59:52.680276','2019-04-19 09:59:52.680276'),(3302,'Pwani','19',229,'2019-04-19 09:59:52.683056','2019-04-19 09:59:52.683056'),(3303,'Rukwa','20',229,'2019-04-19 09:59:52.686167','2019-04-19 09:59:52.686167'),(3304,'Ruvuma','21',229,'2019-04-19 09:59:52.690152','2019-04-19 09:59:52.690152'),(3305,'Shinyanga','22',229,'2019-04-19 09:59:52.693498','2019-04-19 09:59:52.693498'),(3306,'Singida','23',229,'2019-04-19 09:59:52.696248','2019-04-19 09:59:52.696248'),(3307,'Tabora','24',229,'2019-04-19 09:59:52.699097','2019-04-19 09:59:52.699097'),(3308,'Tanga','25',229,'2019-04-19 09:59:52.701759','2019-04-19 09:59:52.701759'),(3309,'Manyara','26',229,'2019-04-19 09:59:52.704816','2019-04-19 09:59:52.704816'),(3310,'Vinnyts\'ka Oblast\'','05',230,'2019-04-19 09:59:52.707888','2019-04-19 09:59:52.707888'),(3311,'Volyns\'ka Oblast\'','07',230,'2019-04-19 09:59:52.710824','2019-04-19 09:59:52.710824'),(3312,'Luhans\'ka Oblast\'','09',230,'2019-04-19 09:59:52.713972','2019-04-19 09:59:52.713972'),(3313,'Dnipropetrovs\'ka Oblast\'','12',230,'2019-04-19 09:59:52.716872','2019-04-19 09:59:52.716872'),(3314,'Donets\'ka Oblast\'','14',230,'2019-04-19 09:59:52.719572','2019-04-19 09:59:52.719572'),(3315,'Zhytomyrs\'ka Oblast\'','18',230,'2019-04-19 09:59:52.722304','2019-04-19 09:59:52.722304'),(3316,'Zakarpats\'ka Oblast\'','21',230,'2019-04-19 09:59:52.725251','2019-04-19 09:59:52.725251'),(3317,'Zaporiz\'ka Oblast\'','23',230,'2019-04-19 09:59:52.727968','2019-04-19 09:59:52.727968'),(3318,'Ivano-Frankivs\'ka Oblast\'','26',230,'2019-04-19 09:59:52.731861','2019-04-19 09:59:52.731861'),(3319,'Kyïvs\'ka mis\'ka rada','30',230,'2019-04-19 09:59:52.736779','2019-04-19 09:59:52.736779'),(3320,'Kyïvs\'ka Oblast\'','32',230,'2019-04-19 09:59:52.741603','2019-04-19 09:59:52.741603'),(3321,'Kirovohrads\'ka Oblast\'','35',230,'2019-04-19 09:59:52.744999','2019-04-19 09:59:52.744999'),(3322,'Sevastopol','40',230,'2019-04-19 09:59:52.747854','2019-04-19 09:59:52.747854'),(3323,'Respublika Krym','43',230,'2019-04-19 09:59:52.750729','2019-04-19 09:59:52.750729'),(3324,'L\'vivs\'ka Oblast\'','46',230,'2019-04-19 09:59:52.753746','2019-04-19 09:59:52.753746'),(3325,'Mykolaïvs\'ka Oblast\'','48',230,'2019-04-19 09:59:52.756652','2019-04-19 09:59:52.756652'),(3326,'Odes\'ka Oblast\'','51',230,'2019-04-19 09:59:52.759718','2019-04-19 09:59:52.759718'),(3327,'Poltavs\'ka Oblast\'','53',230,'2019-04-19 09:59:52.762803','2019-04-19 09:59:52.762803'),(3328,'Rivnens\'ka Oblast\'','56',230,'2019-04-19 09:59:52.766115','2019-04-19 09:59:52.766115'),(3329,'Sums \'ka Oblast\'','59',230,'2019-04-19 09:59:52.769508','2019-04-19 09:59:52.769508'),(3330,'Ternopil\'s\'ka Oblast\'','61',230,'2019-04-19 09:59:52.773315','2019-04-19 09:59:52.773315'),(3331,'Kharkivs\'ka Oblast\'','63',230,'2019-04-19 09:59:52.781638','2019-04-19 09:59:52.781638'),(3332,'Khersons\'ka Oblast\'','65',230,'2019-04-19 09:59:52.786546','2019-04-19 09:59:52.786546'),(3333,'Khmel\'nyts\'ka Oblast\'','68',230,'2019-04-19 09:59:52.789312','2019-04-19 09:59:52.789312'),(3334,'Cherkas\'ka Oblast\'','71',230,'2019-04-19 09:59:52.793382','2019-04-19 09:59:52.793382'),(3335,'Chernihivs\'ka Oblast\'','74',230,'2019-04-19 09:59:52.796570','2019-04-19 09:59:52.796570'),(3336,'Chernivets\'ka Oblast\'','77',230,'2019-04-19 09:59:52.799861','2019-04-19 09:59:52.799861'),(3337,'Central','C',231,'2019-04-19 09:59:52.802755','2019-04-19 09:59:52.802755'),(3338,'Eastern','E',231,'2019-04-19 09:59:52.805825','2019-04-19 09:59:52.805825'),(3339,'Northern','N',231,'2019-04-19 09:59:52.809450','2019-04-19 09:59:52.809450'),(3340,'Western','W',231,'2019-04-19 09:59:52.812230','2019-04-19 09:59:52.812230'),(3341,'Johnston Atoll','67',232,'2019-04-19 09:59:52.815395','2019-04-19 09:59:52.815395'),(3342,'Midway Islands','71',232,'2019-04-19 09:59:52.819534','2019-04-19 09:59:52.819534'),(3343,'Navassa Island','76',232,'2019-04-19 09:59:52.823277','2019-04-19 09:59:52.823277'),(3344,'Wake Island','79',232,'2019-04-19 09:59:52.826381','2019-04-19 09:59:52.826381'),(3345,'Baker Island','81',232,'2019-04-19 09:59:52.830278','2019-04-19 09:59:52.830278'),(3346,'Howland Island','84',232,'2019-04-19 09:59:52.834308','2019-04-19 09:59:52.834308'),(3347,'Jarvis Island','86',232,'2019-04-19 09:59:52.837128','2019-04-19 09:59:52.837128'),(3348,'Kingman Reef','89',232,'2019-04-19 09:59:52.839881','2019-04-19 09:59:52.839881'),(3349,'Palmyra Atoll','95',232,'2019-04-19 09:59:52.843237','2019-04-19 09:59:52.843237'),(3350,'Alaska','AK',233,'2019-04-19 09:59:52.846061','2019-04-19 09:59:52.846061'),(3351,'Alabama','AL',233,'2019-04-19 09:59:52.849319','2019-04-19 09:59:52.849319'),(3352,'Arkansas','AR',233,'2019-04-19 09:59:52.852532','2019-04-19 09:59:52.852532'),(3353,'American Samoa','AS',233,'2019-04-19 09:59:52.855421','2019-04-19 09:59:52.855421'),(3354,'Arizona','AZ',233,'2019-04-19 09:59:52.858108','2019-04-19 09:59:52.858108'),(3355,'California','CA',233,'2019-04-19 09:59:52.861599','2019-04-19 09:59:52.861599'),(3356,'Colorado','CO',233,'2019-04-19 09:59:52.864593','2019-04-19 09:59:52.864593'),(3357,'Connecticut','CT',233,'2019-04-19 09:59:52.867970','2019-04-19 09:59:52.867970'),(3358,'District of Columbia','DC',233,'2019-04-19 09:59:52.870753','2019-04-19 09:59:52.870753'),(3359,'Delaware','DE',233,'2019-04-19 09:59:52.873983','2019-04-19 09:59:52.873983'),(3360,'Florida','FL',233,'2019-04-19 09:59:52.877320','2019-04-19 09:59:52.877320'),(3361,'Georgia','GA',233,'2019-04-19 09:59:52.879947','2019-04-19 09:59:52.879947'),(3362,'Guam','GU',233,'2019-04-19 09:59:52.882763','2019-04-19 09:59:52.882763'),(3363,'Hawaii','HI',233,'2019-04-19 09:59:52.886151','2019-04-19 09:59:52.886151'),(3364,'Iowa','IA',233,'2019-04-19 09:59:52.888900','2019-04-19 09:59:52.888900'),(3365,'Idaho','ID',233,'2019-04-19 09:59:52.892211','2019-04-19 09:59:52.892211'),(3366,'Illinois','IL',233,'2019-04-19 09:59:52.895062','2019-04-19 09:59:52.895062'),(3367,'Indiana','IN',233,'2019-04-19 09:59:52.897741','2019-04-19 09:59:52.897741'),(3368,'Kansas','KS',233,'2019-04-19 09:59:52.901105','2019-04-19 09:59:52.901105'),(3369,'Kentucky','KY',233,'2019-04-19 09:59:52.904564','2019-04-19 09:59:52.904564'),(3370,'Louisiana','LA',233,'2019-04-19 09:59:52.907741','2019-04-19 09:59:52.907741'),(3371,'Massachusetts','MA',233,'2019-04-19 09:59:52.910617','2019-04-19 09:59:52.910617'),(3372,'Maryland','MD',233,'2019-04-19 09:59:52.913494','2019-04-19 09:59:52.913494'),(3373,'Maine','ME',233,'2019-04-19 09:59:52.916709','2019-04-19 09:59:52.916709'),(3374,'Michigan','MI',233,'2019-04-19 09:59:52.919557','2019-04-19 09:59:52.919557'),(3375,'Minnesota','MN',233,'2019-04-19 09:59:52.923313','2019-04-19 09:59:52.923313'),(3376,'Missouri','MO',233,'2019-04-19 09:59:52.926362','2019-04-19 09:59:52.926362'),(3377,'Northern Mariana Islands','MP',233,'2019-04-19 09:59:52.929372','2019-04-19 09:59:52.929372'),(3378,'Mississippi','MS',233,'2019-04-19 09:59:52.932523','2019-04-19 09:59:52.932523'),(3379,'Montana','MT',233,'2019-04-19 09:59:52.935950','2019-04-19 09:59:52.935950'),(3380,'North Carolina','NC',233,'2019-04-19 09:59:52.939928','2019-04-19 09:59:52.939928'),(3381,'North Dakota','ND',233,'2019-04-19 09:59:52.943450','2019-04-19 09:59:52.943450'),(3382,'Nebraska','NE',233,'2019-04-19 09:59:52.946442','2019-04-19 09:59:52.946442'),(3383,'New Hampshire','NH',233,'2019-04-19 09:59:52.949941','2019-04-19 09:59:52.949941'),(3384,'New Jersey','NJ',233,'2019-04-19 09:59:52.953374','2019-04-19 09:59:52.953374'),(3385,'New Mexico','NM',233,'2019-04-19 09:59:52.956465','2019-04-19 09:59:52.956465'),(3386,'Nevada','NV',233,'2019-04-19 09:59:52.959251','2019-04-19 09:59:52.959251'),(3387,'New York','NY',233,'2019-04-19 09:59:52.962055','2019-04-19 09:59:52.962055'),(3388,'Ohio','OH',233,'2019-04-19 09:59:52.965499','2019-04-19 09:59:52.965499'),(3389,'Oklahoma','OK',233,'2019-04-19 09:59:52.968286','2019-04-19 09:59:52.968286'),(3390,'Oregon','OR',233,'2019-04-19 09:59:52.971536','2019-04-19 09:59:52.971536'),(3391,'Pennsylvania','PA',233,'2019-04-19 09:59:52.974817','2019-04-19 09:59:52.974817'),(3392,'Puerto Rico','PR',233,'2019-04-19 09:59:52.977927','2019-04-19 09:59:52.977927'),(3393,'Rhode Island','RI',233,'2019-04-19 09:59:52.980744','2019-04-19 09:59:52.980744'),(3394,'South Carolina','SC',233,'2019-04-19 09:59:52.983533','2019-04-19 09:59:52.983533'),(3395,'South Dakota','SD',233,'2019-04-19 09:59:52.986222','2019-04-19 09:59:52.986222'),(3396,'Tennessee','TN',233,'2019-04-19 09:59:52.989549','2019-04-19 09:59:52.989549'),(3397,'Texas','TX',233,'2019-04-19 09:59:52.992413','2019-04-19 09:59:52.992413'),(3398,'United States Minor Outlying Islands','UM',233,'2019-04-19 09:59:52.995490','2019-04-19 09:59:52.995490'),(3399,'Utah','UT',233,'2019-04-19 09:59:52.998772','2019-04-19 09:59:52.998772'),(3400,'Virginia','VA',233,'2019-04-19 09:59:53.003174','2019-04-19 09:59:53.003174'),(3401,'Virgin Islands','VI',233,'2019-04-19 09:59:53.007417','2019-04-19 09:59:53.007417'),(3402,'Vermont','VT',233,'2019-04-19 09:59:53.012232','2019-04-19 09:59:53.012232'),(3403,'Washington','WA',233,'2019-04-19 09:59:53.015837','2019-04-19 09:59:53.015837'),(3404,'Wisconsin','WI',233,'2019-04-19 09:59:53.019570','2019-04-19 09:59:53.019570'),(3405,'West Virginia','WV',233,'2019-04-19 09:59:53.022920','2019-04-19 09:59:53.022920'),(3406,'Wyoming','WY',233,'2019-04-19 09:59:53.026125','2019-04-19 09:59:53.026125'),(3407,'Armed Forces Americas (except Canada)','AA',233,'2019-04-19 09:59:53.029159','2019-04-19 09:59:53.029159'),(3408,'Armed Forces Africa, Canada, Europe, Middle East','AE',233,'2019-04-19 09:59:53.031937','2019-04-19 09:59:53.031937'),(3409,'Armed Forces Pacific','AP',233,'2019-04-19 09:59:53.035554','2019-04-19 09:59:53.035554'),(3410,'Artigas','AR',234,'2019-04-19 09:59:53.039066','2019-04-19 09:59:53.039066'),(3411,'Canelones','CA',234,'2019-04-19 09:59:53.041611','2019-04-19 09:59:53.041611'),(3412,'Cerro Largo','CL',234,'2019-04-19 09:59:53.045009','2019-04-19 09:59:53.045009'),(3413,'Colonia','CO',234,'2019-04-19 09:59:53.047868','2019-04-19 09:59:53.047868'),(3414,'Durazno','DU',234,'2019-04-19 09:59:53.050498','2019-04-19 09:59:53.050498'),(3415,'Florida','FD',234,'2019-04-19 09:59:53.053104','2019-04-19 09:59:53.053104'),(3416,'Flores','FS',234,'2019-04-19 09:59:53.055755','2019-04-19 09:59:53.055755'),(3417,'Lavalleja','LA',234,'2019-04-19 09:59:53.058519','2019-04-19 09:59:53.058519'),(3418,'Maldonado','MA',234,'2019-04-19 09:59:53.061568','2019-04-19 09:59:53.061568'),(3419,'Montevideo','MO',234,'2019-04-19 09:59:53.064163','2019-04-19 09:59:53.064163'),(3420,'Paysandú','PA',234,'2019-04-19 09:59:53.066907','2019-04-19 09:59:53.066907'),(3421,'Río Negro','RN',234,'2019-04-19 09:59:53.069691','2019-04-19 09:59:53.069691'),(3422,'Rocha','RO',234,'2019-04-19 09:59:53.072882','2019-04-19 09:59:53.072882'),(3423,'Rivera','RV',234,'2019-04-19 09:59:53.076049','2019-04-19 09:59:53.076049'),(3424,'Salto','SA',234,'2019-04-19 09:59:53.078854','2019-04-19 09:59:53.078854'),(3425,'San José','SJ',234,'2019-04-19 09:59:53.083067','2019-04-19 09:59:53.083067'),(3426,'Soriano','SO',234,'2019-04-19 09:59:53.086681','2019-04-19 09:59:53.086681'),(3427,'Tacuarembó','TA',234,'2019-04-19 09:59:53.089858','2019-04-19 09:59:53.089858'),(3428,'Treinta y Tres','TT',234,'2019-04-19 09:59:53.092988','2019-04-19 09:59:53.092988'),(3429,'Andijon','AN',235,'2019-04-19 09:59:53.096893','2019-04-19 09:59:53.096893'),(3430,'Buxoro','BU',235,'2019-04-19 09:59:53.099792','2019-04-19 09:59:53.099792'),(3431,'Farg\'ona','FA',235,'2019-04-19 09:59:53.103732','2019-04-19 09:59:53.103732'),(3432,'Jizzax','JI',235,'2019-04-19 09:59:53.108178','2019-04-19 09:59:53.108178'),(3433,'Namangan','NG',235,'2019-04-19 09:59:53.112006','2019-04-19 09:59:53.112006'),(3434,'Navoiy','NW',235,'2019-04-19 09:59:53.116472','2019-04-19 09:59:53.116472'),(3435,'Qashqadaryo','QA',235,'2019-04-19 09:59:53.119958','2019-04-19 09:59:53.119958'),(3436,'Qoraqalpog\'iston Respublikasi','QR',235,'2019-04-19 09:59:53.123344','2019-04-19 09:59:53.123344'),(3437,'Samarqand','SA',235,'2019-04-19 09:59:53.126749','2019-04-19 09:59:53.126749'),(3438,'Sirdaryo','SI',235,'2019-04-19 09:59:53.130069','2019-04-19 09:59:53.130069'),(3439,'Surxondaryo','SU',235,'2019-04-19 09:59:53.133710','2019-04-19 09:59:53.133710'),(3440,'Toshkent','TK',235,'2019-04-19 09:59:53.138299','2019-04-19 09:59:53.138299'),(3441,'Toshkent','TO',235,'2019-04-19 09:59:53.143702','2019-04-19 09:59:53.143702'),(3442,'Xorazm','XO',235,'2019-04-19 09:59:53.148010','2019-04-19 09:59:53.148010'),(3443,'Charlotte','01',237,'2019-04-19 09:59:53.152608','2019-04-19 09:59:53.152608'),(3444,'Saint Andrew','02',237,'2019-04-19 09:59:53.156850','2019-04-19 09:59:53.156850'),(3445,'Saint David','03',237,'2019-04-19 09:59:53.160831','2019-04-19 09:59:53.160831'),(3446,'Saint George','04',237,'2019-04-19 09:59:53.164783','2019-04-19 09:59:53.164783'),(3447,'Saint Patrick','05',237,'2019-04-19 09:59:53.168799','2019-04-19 09:59:53.168799'),(3448,'Grenadines','06',237,'2019-04-19 09:59:53.172798','2019-04-19 09:59:53.172798'),(3449,'Distrito Federal','A',238,'2019-04-19 09:59:53.177020','2019-04-19 09:59:53.177020'),(3450,'Anzoátegui','B',238,'2019-04-19 09:59:53.180700','2019-04-19 09:59:53.180700'),(3451,'Apure','C',238,'2019-04-19 09:59:53.184530','2019-04-19 09:59:53.184530'),(3452,'Aragua','D',238,'2019-04-19 09:59:53.187479','2019-04-19 09:59:53.187479'),(3453,'Barinas','E',238,'2019-04-19 09:59:53.190191','2019-04-19 09:59:53.190191'),(3454,'Bolívar','F',238,'2019-04-19 09:59:53.192748','2019-04-19 09:59:53.192748'),(3455,'Carabobo','G',238,'2019-04-19 09:59:53.195706','2019-04-19 09:59:53.195706'),(3456,'Cojedes','H',238,'2019-04-19 09:59:53.199160','2019-04-19 09:59:53.199160'),(3457,'Falcón','I',238,'2019-04-19 09:59:53.203116','2019-04-19 09:59:53.203116'),(3458,'Guárico','J',238,'2019-04-19 09:59:53.207547','2019-04-19 09:59:53.207547'),(3459,'Lara','K',238,'2019-04-19 09:59:53.210939','2019-04-19 09:59:53.210939'),(3460,'Mérida','L',238,'2019-04-19 09:59:53.214077','2019-04-19 09:59:53.214077'),(3461,'Miranda','M',238,'2019-04-19 09:59:53.217325','2019-04-19 09:59:53.217325'),(3462,'Monagas','N',238,'2019-04-19 09:59:53.220139','2019-04-19 09:59:53.220139'),(3463,'Nueva Esparta','O',238,'2019-04-19 09:59:53.223396','2019-04-19 09:59:53.223396'),(3464,'Portuguesa','P',238,'2019-04-19 09:59:53.228711','2019-04-19 09:59:53.228711'),(3465,'Sucre','R',238,'2019-04-19 09:59:53.236332','2019-04-19 09:59:53.236332'),(3466,'Táchira','S',238,'2019-04-19 09:59:53.240449','2019-04-19 09:59:53.240449'),(3467,'Trujillo','T',238,'2019-04-19 09:59:53.244130','2019-04-19 09:59:53.244130'),(3468,'Yaracuy','U',238,'2019-04-19 09:59:53.247358','2019-04-19 09:59:53.247358'),(3469,'Zulia','V',238,'2019-04-19 09:59:53.250490','2019-04-19 09:59:53.250490'),(3470,'Dependencias Federales','W',238,'2019-04-19 09:59:53.253610','2019-04-19 09:59:53.253610'),(3471,'Vargas','X',238,'2019-04-19 09:59:53.256341','2019-04-19 09:59:53.256341'),(3472,'Delta Amacuro','Y',238,'2019-04-19 09:59:53.259838','2019-04-19 09:59:53.259838'),(3473,'Amazonas','Z',238,'2019-04-19 09:59:53.263237','2019-04-19 09:59:53.263237'),(3474,'Lai Châu','01',241,'2019-04-19 09:59:53.268494','2019-04-19 09:59:53.268494'),(3475,'Lào Cai','02',241,'2019-04-19 09:59:53.271432','2019-04-19 09:59:53.271432'),(3476,'Hà Giang','03',241,'2019-04-19 09:59:53.274411','2019-04-19 09:59:53.274411'),(3477,'Cao Bằng','04',241,'2019-04-19 09:59:53.277165','2019-04-19 09:59:53.277165'),(3478,'Sơn La','05',241,'2019-04-19 09:59:53.280000','2019-04-19 09:59:53.280000'),(3479,'Yên Bái','06',241,'2019-04-19 09:59:53.282853','2019-04-19 09:59:53.282853'),(3480,'Tuyên Quang','07',241,'2019-04-19 09:59:53.285620','2019-04-19 09:59:53.285620'),(3481,'Lạng Sơn','09',241,'2019-04-19 09:59:53.288597','2019-04-19 09:59:53.288597'),(3482,'Quảng Ninh','13',241,'2019-04-19 09:59:53.291577','2019-04-19 09:59:53.291577'),(3483,'Hoà Bình','14',241,'2019-04-19 09:59:53.294334','2019-04-19 09:59:53.294334'),(3484,'Hà Tây','15',241,'2019-04-19 09:59:53.298093','2019-04-19 09:59:53.298093'),(3485,'Ninh Bình','18',241,'2019-04-19 09:59:53.302129','2019-04-19 09:59:53.302129'),(3486,'Thái Bình','20',241,'2019-04-19 09:59:53.305338','2019-04-19 09:59:53.305338'),(3487,'Thanh Hóa','21',241,'2019-04-19 09:59:53.310539','2019-04-19 09:59:53.310539'),(3488,'Nghệ An','22',241,'2019-04-19 09:59:53.313664','2019-04-19 09:59:53.313664'),(3489,'Hà Tỉnh','23',241,'2019-04-19 09:59:53.317596','2019-04-19 09:59:53.317596'),(3490,'Quảng Bình','24',241,'2019-04-19 09:59:53.321883','2019-04-19 09:59:53.321883'),(3491,'Quảng Trị','25',241,'2019-04-19 09:59:53.329321','2019-04-19 09:59:53.329321'),(3492,'Thừa Thiên-Huế','26',241,'2019-04-19 09:59:53.332957','2019-04-19 09:59:53.332957'),(3493,'Quảng Nam','27',241,'2019-04-19 09:59:53.339705','2019-04-19 09:59:53.339705'),(3494,'Kon Tum','28',241,'2019-04-19 09:59:53.343314','2019-04-19 09:59:53.343314'),(3495,'Quảng Ngãi','29',241,'2019-04-19 09:59:53.347048','2019-04-19 09:59:53.347048'),(3496,'Gia Lai','30',241,'2019-04-19 09:59:53.350579','2019-04-19 09:59:53.350579'),(3497,'Bình Định','31',241,'2019-04-19 09:59:53.353712','2019-04-19 09:59:53.353712'),(3498,'Phú Yên','32',241,'2019-04-19 09:59:53.357450','2019-04-19 09:59:53.357450'),(3499,'Đắc Lắk','33',241,'2019-04-19 09:59:53.360302','2019-04-19 09:59:53.360302'),(3500,'Khánh Hòa','34',241,'2019-04-19 09:59:53.363357','2019-04-19 09:59:53.363357'),(3501,'Lâm Đồng','35',241,'2019-04-19 09:59:53.366409','2019-04-19 09:59:53.366409'),(3502,'Ninh Thuận','36',241,'2019-04-19 09:59:53.369787','2019-04-19 09:59:53.369787'),(3503,'Tây Ninh','37',241,'2019-04-19 09:59:53.373284','2019-04-19 09:59:53.373284'),(3504,'Đồng Nai','39',241,'2019-04-19 09:59:53.376111','2019-04-19 09:59:53.376111'),(3505,'Bình Thuận','40',241,'2019-04-19 09:59:53.379137','2019-04-19 09:59:53.379137'),(3506,'Long An','41',241,'2019-04-19 09:59:53.382288','2019-04-19 09:59:53.382288'),(3507,'Bà Rịa-Vũng Tàu','43',241,'2019-04-19 09:59:53.385070','2019-04-19 09:59:53.385070'),(3508,'An Giang','44',241,'2019-04-19 09:59:53.388719','2019-04-19 09:59:53.388719'),(3509,'Đồng Tháp','45',241,'2019-04-19 09:59:53.391289','2019-04-19 09:59:53.391289'),(3510,'Tiền Giang','46',241,'2019-04-19 09:59:53.394131','2019-04-19 09:59:53.394131'),(3511,'Kiên Giang','47',241,'2019-04-19 09:59:53.397963','2019-04-19 09:59:53.397963'),(3512,'Vĩnh Long','49',241,'2019-04-19 09:59:53.401172','2019-04-19 09:59:53.401172'),(3513,'Bến Tre','50',241,'2019-04-19 09:59:53.404368','2019-04-19 09:59:53.404368'),(3514,'Trà Vinh','51',241,'2019-04-19 09:59:53.407096','2019-04-19 09:59:53.407096'),(3515,'Sóc Trăng','52',241,'2019-04-19 09:59:53.409866','2019-04-19 09:59:53.409866'),(3516,'Bắc Kạn','53',241,'2019-04-19 09:59:53.413577','2019-04-19 09:59:53.413577'),(3517,'Bắc Giang','54',241,'2019-04-19 09:59:53.416363','2019-04-19 09:59:53.416363'),(3518,'Bạc Liêu','55',241,'2019-04-19 09:59:53.420447','2019-04-19 09:59:53.420447'),(3519,'Bắc Ninh','56',241,'2019-04-19 09:59:53.425197','2019-04-19 09:59:53.425197'),(3520,'Bình Dương','57',241,'2019-04-19 09:59:53.428948','2019-04-19 09:59:53.428948'),(3521,'Bình Phước','58',241,'2019-04-19 09:59:53.431846','2019-04-19 09:59:53.431846'),(3522,'Cà Mau','59',241,'2019-04-19 09:59:53.434704','2019-04-19 09:59:53.434704'),(3523,'Hải Duong','61',241,'2019-04-19 09:59:53.438263','2019-04-19 09:59:53.438263'),(3524,'Hà Nam','63',241,'2019-04-19 09:59:53.441155','2019-04-19 09:59:53.441155'),(3525,'Hưng Yên','66',241,'2019-04-19 09:59:53.444836','2019-04-19 09:59:53.444836'),(3526,'Nam Định','67',241,'2019-04-19 09:59:53.447906','2019-04-19 09:59:53.447906'),(3527,'Phú Thọ','68',241,'2019-04-19 09:59:53.451621','2019-04-19 09:59:53.451621'),(3528,'Thái Nguyên','69',241,'2019-04-19 09:59:53.454678','2019-04-19 09:59:53.454678'),(3529,'Vĩnh Phúc','70',241,'2019-04-19 09:59:53.457445','2019-04-19 09:59:53.457445'),(3530,'Điện Biên','71',241,'2019-04-19 09:59:53.460491','2019-04-19 09:59:53.460491'),(3531,'Đắk Nông','72',241,'2019-04-19 09:59:53.464574','2019-04-19 09:59:53.464574'),(3532,'Hậu Giang','73',241,'2019-04-19 09:59:53.468160','2019-04-19 09:59:53.468160'),(3533,'Cần Thơ','CT',241,'2019-04-19 09:59:53.472266','2019-04-19 09:59:53.472266'),(3534,'Đà Nẵng','DN',241,'2019-04-19 09:59:53.475605','2019-04-19 09:59:53.475605'),(3535,'Hà Nội','HN',241,'2019-04-19 09:59:53.478761','2019-04-19 09:59:53.478761'),(3536,'Hải Phòng','HP',241,'2019-04-19 09:59:53.481952','2019-04-19 09:59:53.481952'),(3537,'Hồ Chí Minh [Sài Gòn]','SG',241,'2019-04-19 09:59:53.486314','2019-04-19 09:59:53.486314'),(3538,'Malampa','MAP',242,'2019-04-19 09:59:53.490722','2019-04-19 09:59:53.490722'),(3539,'Pénama','PAM',242,'2019-04-19 09:59:53.494904','2019-04-19 09:59:53.494904'),(3540,'Sanma','SAM',242,'2019-04-19 09:59:53.499250','2019-04-19 09:59:53.499250'),(3541,'Shéfa','SEE',242,'2019-04-19 09:59:53.502937','2019-04-19 09:59:53.502937'),(3542,'Taféa','TAE',242,'2019-04-19 09:59:53.506405','2019-04-19 09:59:53.506405'),(3543,'Torba','TOB',242,'2019-04-19 09:59:53.510076','2019-04-19 09:59:53.510076'),(3544,'A\'ana','AA',244,'2019-04-19 09:59:53.514988','2019-04-19 09:59:53.514988'),(3545,'Aiga-i-le-Tai','AL',244,'2019-04-19 09:59:53.518589','2019-04-19 09:59:53.518589'),(3546,'Atua','AT',244,'2019-04-19 09:59:53.522808','2019-04-19 09:59:53.522808'),(3547,'Fa\'asaleleaga','FA',244,'2019-04-19 09:59:53.527068','2019-04-19 09:59:53.527068'),(3548,'Gaga\'emauga','GE',244,'2019-04-19 09:59:53.530615','2019-04-19 09:59:53.530615'),(3549,'Gagaifomauga','GI',244,'2019-04-19 09:59:53.534136','2019-04-19 09:59:53.534136'),(3550,'Palauli','PA',244,'2019-04-19 09:59:53.537662','2019-04-19 09:59:53.537662'),(3551,'Satupa\'itea','SA',244,'2019-04-19 09:59:53.541559','2019-04-19 09:59:53.541559'),(3552,'Tuamasaga','TU',244,'2019-04-19 09:59:53.545364','2019-04-19 09:59:53.545364'),(3553,'Va\'a-o-Fonoti','VF',244,'2019-04-19 09:59:53.549027','2019-04-19 09:59:53.549027'),(3554,'Vaisigano','VS',244,'2019-04-19 09:59:53.551763','2019-04-19 09:59:53.551763'),(3555,'Abyān','AB',245,'2019-04-19 09:59:53.554918','2019-04-19 09:59:53.554918'),(3556,'\'Adan','AD',245,'2019-04-19 09:59:53.557604','2019-04-19 09:59:53.557604'),(3557,'\'Amrān','AM',245,'2019-04-19 09:59:53.560179','2019-04-19 09:59:53.560179'),(3558,'Al Bayḑā\'','BA',245,'2019-04-19 09:59:53.562991','2019-04-19 09:59:53.562991'),(3559,'Aḑ Ḑāli‘','DA',245,'2019-04-19 09:59:53.565736','2019-04-19 09:59:53.565736'),(3560,'Dhamār','DH',245,'2019-04-19 09:59:53.569077','2019-04-19 09:59:53.569077'),(3561,'Ḩaḑramawt','HD',245,'2019-04-19 09:59:53.572137','2019-04-19 09:59:53.572137'),(3562,'Ḩajjah','HJ',245,'2019-04-19 09:59:53.576823','2019-04-19 09:59:53.576823'),(3563,'Ibb','IB',245,'2019-04-19 09:59:53.580523','2019-04-19 09:59:53.580523'),(3564,'Al Jawf','JA',245,'2019-04-19 09:59:53.583677','2019-04-19 09:59:53.583677'),(3565,'Laḩij','LA',245,'2019-04-19 09:59:53.586640','2019-04-19 09:59:53.586640'),(3566,'Ma\'rib','MA',245,'2019-04-19 09:59:53.589436','2019-04-19 09:59:53.589436'),(3567,'Al Mahrah','MR',245,'2019-04-19 09:59:53.592580','2019-04-19 09:59:53.592580'),(3568,'Al Ḩudaydah','MU',245,'2019-04-19 09:59:53.597269','2019-04-19 09:59:53.597269'),(3569,'Al Maḩwīt','MW',245,'2019-04-19 09:59:53.601014','2019-04-19 09:59:53.601014'),(3570,'Raymah','RA',245,'2019-04-19 09:59:53.604204','2019-04-19 09:59:53.604204'),(3571,'Şa\'dah','SD',245,'2019-04-19 09:59:53.608075','2019-04-19 09:59:53.608075'),(3572,'Shabwah','SH',245,'2019-04-19 09:59:53.611409','2019-04-19 09:59:53.611409'),(3573,'Şan\'ā\'','SN',245,'2019-04-19 09:59:53.614757','2019-04-19 09:59:53.614757'),(3574,'Tā\'izz','TA',245,'2019-04-19 09:59:53.618862','2019-04-19 09:59:53.618862'),(3575,'Eastern Cape','EC',247,'2019-04-19 09:59:53.623366','2019-04-19 09:59:53.623366'),(3576,'Free State','FS',247,'2019-04-19 09:59:53.627625','2019-04-19 09:59:53.627625'),(3577,'Gauteng','GP',247,'2019-04-19 09:59:53.633017','2019-04-19 09:59:53.633017'),(3578,'Limpopo','LP',247,'2019-04-19 09:59:53.637011','2019-04-19 09:59:53.637011'),(3579,'Mpumalanga','MP',247,'2019-04-19 09:59:53.639765','2019-04-19 09:59:53.639765'),(3580,'Northern Cape','NC',247,'2019-04-19 09:59:53.642488','2019-04-19 09:59:53.642488'),(3581,'North-West (South Africa)','NW',247,'2019-04-19 09:59:53.645568','2019-04-19 09:59:53.645568'),(3582,'Western Cape','WC',247,'2019-04-19 09:59:53.648076','2019-04-19 09:59:53.648076'),(3583,'Kwazulu-Natal','ZN',247,'2019-04-19 09:59:53.651456','2019-04-19 09:59:53.651456'),(3584,'Western','01',248,'2019-04-19 09:59:53.655837','2019-04-19 09:59:53.655837'),(3585,'Central','02',248,'2019-04-19 09:59:53.659462','2019-04-19 09:59:53.659462'),(3586,'Eastern','03',248,'2019-04-19 09:59:53.662217','2019-04-19 09:59:53.662217'),(3587,'Luapula','04',248,'2019-04-19 09:59:53.664826','2019-04-19 09:59:53.664826'),(3588,'Northern','05',248,'2019-04-19 09:59:53.667550','2019-04-19 09:59:53.667550'),(3589,'North-Western','06',248,'2019-04-19 09:59:53.670597','2019-04-19 09:59:53.670597'),(3590,'Southern (Zambia)','07',248,'2019-04-19 09:59:53.673528','2019-04-19 09:59:53.673528'),(3591,'Copperbelt','08',248,'2019-04-19 09:59:53.676281','2019-04-19 09:59:53.676281'),(3592,'Lusaka','09',248,'2019-04-19 09:59:53.678904','2019-04-19 09:59:53.678904'),(3593,'Bulawayo','BU',249,'2019-04-19 09:59:53.681837','2019-04-19 09:59:53.681837'),(3594,'Harare','HA',249,'2019-04-19 09:59:53.685007','2019-04-19 09:59:53.685007'),(3595,'Manicaland','MA',249,'2019-04-19 09:59:53.688284','2019-04-19 09:59:53.688284'),(3596,'Mashonaland Central','MC',249,'2019-04-19 09:59:53.691458','2019-04-19 09:59:53.691458'),(3597,'Mashonaland East','ME',249,'2019-04-19 09:59:53.694157','2019-04-19 09:59:53.694157'),(3598,'Midlands','MI',249,'2019-04-19 09:59:53.697017','2019-04-19 09:59:53.697017'),(3599,'Matabeleland North','MN',249,'2019-04-19 09:59:53.700131','2019-04-19 09:59:53.700131'),(3600,'Matabeleland South','MS',249,'2019-04-19 09:59:53.703021','2019-04-19 09:59:53.703021'),(3601,'Masvingo','MV',249,'2019-04-19 09:59:53.705943','2019-04-19 09:59:53.705943'),(3602,'Mashonaland West','MW',249,'2019-04-19 09:59:53.709510','2019-04-19 09:59:53.709510');
/*!40000 ALTER TABLE `spree_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_items`
--

DROP TABLE IF EXISTS `spree_stock_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_location_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `count_on_hand` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `backorderable` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_items_on_deleted_at` (`deleted_at`),
  KEY `stock_item_by_loc_and_var_id` (`stock_location_id`,`variant_id`),
  KEY `index_spree_stock_items_on_stock_location_id` (`stock_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_items`
--

LOCK TABLES `spree_stock_items` WRITE;
/*!40000 ALTER TABLE `spree_stock_items` DISABLE KEYS */;
INSERT INTO `spree_stock_items` VALUES (1,1,1,9,'2019-04-19 10:02:12.487657','2019-04-19 10:02:29.438538',1,NULL),(2,1,2,9,'2019-04-19 10:02:12.582295','2019-04-19 10:02:30.828232',1,NULL),(3,1,3,10,'2019-04-19 10:02:12.645034','2019-04-19 10:02:15.139094',1,NULL),(4,1,4,10,'2019-04-19 10:02:12.697760','2019-04-19 10:02:15.163107',1,NULL),(5,1,5,10,'2019-04-19 10:02:12.753680','2019-04-19 10:02:15.185120',1,NULL),(6,1,6,10,'2019-04-19 10:02:12.827154','2019-04-19 10:02:15.206892',1,NULL),(7,1,7,10,'2019-04-19 10:02:12.899693','2019-04-19 10:02:15.227870',1,NULL),(8,1,8,10,'2019-04-19 10:02:12.979152','2019-04-19 10:02:15.249566',1,NULL),(9,1,9,10,'2019-04-19 10:02:13.036245','2019-04-19 10:02:15.272478',1,NULL),(10,1,10,10,'2019-04-19 10:02:14.486863','2019-04-19 10:02:15.295700',1,NULL),(11,1,11,10,'2019-04-19 10:02:14.534685','2019-04-19 10:02:15.316967',1,NULL),(12,1,12,10,'2019-04-19 10:02:14.565204','2019-04-19 10:02:15.339056',1,NULL),(13,1,13,10,'2019-04-19 10:02:14.594839','2019-04-19 10:02:15.359800',1,NULL),(14,1,14,10,'2019-04-19 10:02:14.621436','2019-04-19 10:02:15.381744',1,NULL),(15,1,15,10,'2019-04-19 10:02:14.650313','2019-04-19 10:02:15.403515',1,NULL),(16,1,16,10,'2019-04-19 10:02:14.679890','2019-04-19 10:02:15.424850',1,NULL),(17,1,17,10,'2019-04-19 10:02:14.707300','2019-04-19 10:02:15.448190',1,NULL),(18,1,18,10,'2019-04-19 10:02:14.734149','2019-04-19 10:02:15.470971',1,NULL),(19,1,19,10,'2019-04-19 10:02:14.764299','2019-04-19 10:02:15.491429',1,NULL);
/*!40000 ALTER TABLE `spree_stock_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_locations`
--

DROP TABLE IF EXISTS `spree_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `backorderable_default` tinyint(1) DEFAULT '0',
  `propagate_all_variants` tinyint(1) DEFAULT '1',
  `admin_name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `restock_inventory` tinyint(1) NOT NULL DEFAULT '1',
  `fulfillable` tinyint(1) NOT NULL DEFAULT '1',
  `code` varchar(255) DEFAULT NULL,
  `check_stock_on_transfer` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_locations_on_country_id` (`country_id`),
  KEY `index_spree_stock_locations_on_state_id` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_locations`
--

LOCK TABLES `spree_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_stock_locations` DISABLE KEYS */;
INSERT INTO `spree_stock_locations` VALUES (1,'default','2019-04-19 09:59:53.778548','2019-04-19 09:59:53.778548',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,1,1,1,NULL,1);
/*!40000 ALTER TABLE `spree_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stock_movements`
--

DROP TABLE IF EXISTS `spree_stock_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stock_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stock_movements_on_stock_item_id` (`stock_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stock_movements`
--

LOCK TABLES `spree_stock_movements` WRITE;
/*!40000 ALTER TABLE `spree_stock_movements` DISABLE KEYS */;
INSERT INTO `spree_stock_movements` VALUES (1,1,10,NULL,'2019-04-19 10:02:14.997717','2019-04-19 10:02:14.997717',NULL,NULL),(2,2,10,NULL,'2019-04-19 10:02:15.100478','2019-04-19 10:02:15.100478',NULL,NULL),(3,3,10,NULL,'2019-04-19 10:02:15.121903','2019-04-19 10:02:15.121903',NULL,NULL),(4,4,10,NULL,'2019-04-19 10:02:15.152112','2019-04-19 10:02:15.152112',NULL,NULL),(5,5,10,NULL,'2019-04-19 10:02:15.175167','2019-04-19 10:02:15.175167',NULL,NULL),(6,6,10,NULL,'2019-04-19 10:02:15.196263','2019-04-19 10:02:15.196263',NULL,NULL),(7,7,10,NULL,'2019-04-19 10:02:15.218814','2019-04-19 10:02:15.218814',NULL,NULL),(8,8,10,NULL,'2019-04-19 10:02:15.238941','2019-04-19 10:02:15.238941',NULL,NULL),(9,9,10,NULL,'2019-04-19 10:02:15.261839','2019-04-19 10:02:15.261839',NULL,NULL),(10,10,10,NULL,'2019-04-19 10:02:15.284657','2019-04-19 10:02:15.284657',NULL,NULL),(11,11,10,NULL,'2019-04-19 10:02:15.307926','2019-04-19 10:02:15.307926',NULL,NULL),(12,12,10,NULL,'2019-04-19 10:02:15.328796','2019-04-19 10:02:15.328796',NULL,NULL),(13,13,10,NULL,'2019-04-19 10:02:15.350694','2019-04-19 10:02:15.350694',NULL,NULL),(14,14,10,NULL,'2019-04-19 10:02:15.371217','2019-04-19 10:02:15.371217',NULL,NULL),(15,15,10,NULL,'2019-04-19 10:02:15.393709','2019-04-19 10:02:15.393709',NULL,NULL),(16,16,10,NULL,'2019-04-19 10:02:15.414778','2019-04-19 10:02:15.414778',NULL,NULL),(17,17,10,NULL,'2019-04-19 10:02:15.438461','2019-04-19 10:02:15.438461',NULL,NULL),(18,18,10,NULL,'2019-04-19 10:02:15.460387','2019-04-19 10:02:15.460387',NULL,NULL),(19,19,10,NULL,'2019-04-19 10:02:15.482443','2019-04-19 10:02:15.482443',NULL,NULL),(20,1,-1,NULL,'2019-04-19 10:02:29.431939','2019-04-19 10:02:29.431939','Spree::Shipment',1),(21,2,-1,NULL,'2019-04-19 10:02:30.822172','2019-04-19 10:02:30.822172','Spree::Shipment',2);
/*!40000 ALTER TABLE `spree_stock_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_credit_categories`
--

DROP TABLE IF EXISTS `spree_store_credit_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_credit_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_credit_categories`
--

LOCK TABLES `spree_store_credit_categories` WRITE;
/*!40000 ALTER TABLE `spree_store_credit_categories` DISABLE KEYS */;
INSERT INTO `spree_store_credit_categories` VALUES (1,'Default','2019-04-19 09:59:39.995866','2019-04-19 09:59:39.995866'),(2,'Gift Card','2019-04-19 09:59:40.136616','2019-04-19 09:59:40.136616');
/*!40000 ALTER TABLE `spree_store_credit_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_credit_events`
--

DROP TABLE IF EXISTS `spree_store_credit_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_credit_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_credit_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `user_total_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `authorization_code` varchar(255) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `originator_type` varchar(255) DEFAULT NULL,
  `originator_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `amount_remaining` decimal(8,2) DEFAULT NULL,
  `store_credit_reason_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_store_credit_events_on_deleted_at` (`deleted_at`),
  KEY `index_spree_store_credit_events_on_store_credit_id` (`store_credit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_credit_events`
--

LOCK TABLES `spree_store_credit_events` WRITE;
/*!40000 ALTER TABLE `spree_store_credit_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_store_credit_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_credit_reasons`
--

DROP TABLE IF EXISTS `spree_store_credit_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_credit_reasons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_credit_reasons`
--

LOCK TABLES `spree_store_credit_reasons` WRITE;
/*!40000 ALTER TABLE `spree_store_credit_reasons` DISABLE KEYS */;
INSERT INTO `spree_store_credit_reasons` VALUES (1,'Credit Given In Error',1,'2019-04-19 09:59:40','2019-04-19 09:59:40');
/*!40000 ALTER TABLE `spree_store_credit_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_credit_types`
--

DROP TABLE IF EXISTS `spree_store_credit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_credit_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_store_credit_types_on_priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_credit_types`
--

LOCK TABLES `spree_store_credit_types` WRITE;
/*!40000 ALTER TABLE `spree_store_credit_types` DISABLE KEYS */;
INSERT INTO `spree_store_credit_types` VALUES (1,'Expiring',1,'2019-04-19 09:59:40.072451','2019-04-19 09:59:40.072451'),(2,'Non-expiring',2,'2019-04-19 09:59:40.075688','2019-04-19 09:59:40.075688');
/*!40000 ALTER TABLE `spree_store_credit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_credits`
--

DROP TABLE IF EXISTS `spree_store_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_credits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amount_used` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amount_authorized` decimal(8,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(255) DEFAULT NULL,
  `memo` text,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `invalidated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_store_credits_on_deleted_at` (`deleted_at`),
  KEY `index_spree_store_credits_on_type_id` (`type_id`),
  KEY `index_spree_store_credits_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_credits`
--

LOCK TABLES `spree_store_credits` WRITE;
/*!40000 ALTER TABLE `spree_store_credits` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_store_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_payment_methods`
--

DROP TABLE IF EXISTS `spree_store_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_store_payment_methods_on_payment_method_id` (`payment_method_id`),
  KEY `index_spree_store_payment_methods_on_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_payment_methods`
--

LOCK TABLES `spree_store_payment_methods` WRITE;
/*!40000 ALTER TABLE `spree_store_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_store_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_store_shipping_methods`
--

DROP TABLE IF EXISTS `spree_store_shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_store_shipping_methods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` bigint(20) NOT NULL,
  `shipping_method_id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_store_shipping_methods_on_store_id` (`store_id`),
  KEY `index_spree_store_shipping_methods_on_shipping_method_id` (`shipping_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_store_shipping_methods`
--

LOCK TABLES `spree_store_shipping_methods` WRITE;
/*!40000 ALTER TABLE `spree_store_shipping_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_store_shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_stores`
--

DROP TABLE IF EXISTS `spree_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `mail_from_address` varchar(255) DEFAULT NULL,
  `default_currency` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `cart_tax_country_iso` varchar(255) DEFAULT NULL,
  `available_locales` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_stores_on_code` (`code`),
  KEY `index_spree_stores_on_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_stores`
--

LOCK TABLES `spree_stores` WRITE;
/*!40000 ALTER TABLE `spree_stores` DISABLE KEYS */;
INSERT INTO `spree_stores` VALUES (1,'Sample Store','example.com',NULL,NULL,NULL,'store@example.com',NULL,'sample-store',1,'2019-04-19 09:59:39.862164','2019-04-19 09:59:39.862164',NULL,NULL);
/*!40000 ALTER TABLE `spree_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_categories`
--

LOCK TABLES `spree_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_categories` VALUES (1,'Default',NULL,0,NULL,'2019-04-19 10:02:11.532187','2019-04-19 10:02:11.532187',NULL);
/*!40000 ALTER TABLE `spree_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rate_tax_categories`
--

DROP TABLE IF EXISTS `spree_tax_rate_tax_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rate_tax_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_category_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_tax_rate_tax_categories_on_tax_category_id` (`tax_category_id`),
  KEY `index_spree_tax_rate_tax_categories_on_tax_rate_id` (`tax_rate_id`),
  CONSTRAINT `fk_rails_3e6fe87e12` FOREIGN KEY (`tax_rate_id`) REFERENCES `spree_tax_rates` (`id`),
  CONSTRAINT `fk_rails_499313ce8e` FOREIGN KEY (`tax_category_id`) REFERENCES `spree_tax_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rate_tax_categories`
--

LOCK TABLES `spree_tax_rate_tax_categories` WRITE;
/*!40000 ALTER TABLE `spree_tax_rate_tax_categories` DISABLE KEYS */;
INSERT INTO `spree_tax_rate_tax_categories` VALUES (1,1,1);
/*!40000 ALTER TABLE `spree_tax_rate_tax_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_tax_rates`
--

DROP TABLE IF EXISTS `spree_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(8,5) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `included_in_price` tinyint(1) DEFAULT '0',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `show_rate_in_label` tinyint(1) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_tax_rates_on_deleted_at` (`deleted_at`),
  KEY `index_spree_tax_rates_on_zone_id` (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_tax_rates`
--

LOCK TABLES `spree_tax_rates` WRITE;
/*!40000 ALTER TABLE `spree_tax_rates` DISABLE KEYS */;
INSERT INTO `spree_tax_rates` VALUES (1,0.05000,2,0,'2019-04-19 10:02:11.707537','2019-04-19 10:02:11.707537','North America',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spree_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxonomies`
--

DROP TABLE IF EXISTS `spree_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_spree_taxonomies_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxonomies`
--

LOCK TABLES `spree_taxonomies` WRITE;
/*!40000 ALTER TABLE `spree_taxonomies` DISABLE KEYS */;
INSERT INTO `spree_taxonomies` VALUES (1,'Categories','2019-04-19 10:02:13.103145','2019-04-19 10:02:30.836263',1),(2,'Brand','2019-04-19 10:02:13.143935','2019-04-19 10:02:30.836263',2);
/*!40000 ALTER TABLE `spree_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_taxons`
--

DROP TABLE IF EXISTS `spree_taxons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_taxons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `icon_content_type` varchar(255) DEFAULT NULL,
  `icon_file_size` int(11) DEFAULT NULL,
  `icon_updated_at` datetime DEFAULT NULL,
  `description` text,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taxons_on_parent_id` (`parent_id`),
  KEY `index_taxons_on_permalink` (`permalink`),
  KEY `index_spree_taxons_on_position` (`position`),
  KEY `index_taxons_on_taxonomy_id` (`taxonomy_id`),
  KEY `index_spree_taxons_on_lft` (`lft`),
  KEY `index_spree_taxons_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_taxons`
--

LOCK TABLES `spree_taxons` WRITE;
/*!40000 ALTER TABLE `spree_taxons` DISABLE KEYS */;
INSERT INTO `spree_taxons` VALUES (1,NULL,0,'Categories','categories',1,1,12,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.124427','2019-04-19 10:02:30.835432',NULL,NULL,NULL,0),(2,NULL,0,'Brand','brand',2,13,20,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.148243','2019-04-19 10:02:30.835432',NULL,NULL,NULL,0),(3,1,1,'Bags','categories/bags',1,2,3,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.203902','2019-04-19 10:02:30.835432',NULL,NULL,NULL,1),(4,1,2,'Mugs','categories/mugs',1,4,5,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.255853','2019-04-19 10:02:27.409171',NULL,NULL,NULL,1),(5,1,0,'Clothing','categories/clothing',1,6,11,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.289473','2019-04-19 10:02:28.363701',NULL,NULL,NULL,1),(6,5,0,'Shirts','categories/clothing/shirts',1,7,8,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.312457','2019-04-19 10:02:25.240639',NULL,NULL,NULL,2),(7,5,0,'T-Shirts','categories/clothing/t-shirts',1,9,10,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.368497','2019-04-19 10:02:28.363701',NULL,NULL,NULL,2),(8,2,0,'Ruby','brand/ruby',2,14,15,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.425365','2019-04-19 10:02:28.363701',NULL,NULL,NULL,1),(9,2,0,'Apache','brand/apache',2,16,17,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.455243','2019-04-19 10:02:27.879561',NULL,NULL,NULL,1),(10,2,0,'Rails','brand/rails',2,18,19,NULL,NULL,NULL,NULL,NULL,'2019-04-19 10:02:13.502673','2019-04-19 10:02:30.835432',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `spree_taxons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_unit_cancels`
--

DROP TABLE IF EXISTS `spree_unit_cancels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_unit_cancels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_unit_id` int(11) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_unit_cancels_on_inventory_unit_id` (`inventory_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_unit_cancels`
--

LOCK TABLES `spree_unit_cancels` WRITE;
/*!40000 ALTER TABLE `spree_unit_cancels` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_unit_cancels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_user_addresses`
--

DROP TABLE IF EXISTS `spree_user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_user_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `default` tinyint(1) DEFAULT '0',
  `archived` tinyint(1) DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_user_addresses_on_user_id_and_address_id` (`user_id`,`address_id`),
  KEY `index_spree_user_addresses_on_address_id` (`address_id`),
  KEY `index_spree_user_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_user_addresses`
--

LOCK TABLES `spree_user_addresses` WRITE;
/*!40000 ALTER TABLE `spree_user_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_user_stock_locations`
--

DROP TABLE IF EXISTS `spree_user_stock_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_user_stock_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `stock_location_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_user_stock_locations_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_user_stock_locations`
--

LOCK TABLES `spree_user_stock_locations` WRITE;
/*!40000 ALTER TABLE `spree_user_stock_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_user_stock_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_users`
--

DROP TABLE IF EXISTS `spree_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypted_password` varchar(128) DEFAULT NULL,
  `password_salt` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `ship_address_id` int(11) DEFAULT NULL,
  `bill_address_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `spree_api_key` varchar(48) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `unlock_token` varchar(255) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_idx_unique` (`email`),
  UNIQUE KEY `index_spree_users_on_reset_password_token_solidus_auth_devise` (`reset_password_token`),
  KEY `index_spree_users_on_spree_api_key` (`spree_api_key`),
  KEY `index_spree_users_on_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_users`
--

LOCK TABLES `spree_users` WRITE;
/*!40000 ALTER TABLE `spree_users` DISABLE KEYS */;
INSERT INTO `spree_users` VALUES (1,'dce8643624643b8c2059d1bcadc69b4d7b14b2eb3a42a58a7d0c55df73a7b884f0455df6878b85255ab9be98b1b24f8fa4cd48d0f7140918849db92641c42bfc','t5hQrQ-2mdd6Y-kdPh8X','admin@example.com',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'admin@example.com',NULL,NULL,'2019-04-19 10:02:07.717274','2019-04-19 10:02:07.771062','6446666e0e639528fc7b328ba0b267c39cf1d93938fa147a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `spree_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variant_property_rule_conditions`
--

DROP TABLE IF EXISTS `spree_variant_property_rule_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variant_property_rule_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_value_id` int(11) DEFAULT NULL,
  `variant_property_rule_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variant_prop_rule_conditions_on_rule_and_optval` (`variant_property_rule_id`,`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variant_property_rule_conditions`
--

LOCK TABLES `spree_variant_property_rule_conditions` WRITE;
/*!40000 ALTER TABLE `spree_variant_property_rule_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_variant_property_rule_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variant_property_rule_values`
--

DROP TABLE IF EXISTS `spree_variant_property_rule_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variant_property_rule_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text,
  `position` int(11) DEFAULT '0',
  `property_id` int(11) DEFAULT NULL,
  `variant_property_rule_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variant_property_rule_values_on_property_id` (`property_id`),
  KEY `index_spree_variant_property_rule_values_on_rule` (`variant_property_rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variant_property_rule_values`
--

LOCK TABLES `spree_variant_property_rule_values` WRITE;
/*!40000 ALTER TABLE `spree_variant_property_rule_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_variant_property_rule_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variant_property_rules`
--

DROP TABLE IF EXISTS `spree_variant_property_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variant_property_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variant_property_rules_on_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variant_property_rules`
--

LOCK TABLES `spree_variant_property_rules` WRITE;
/*!40000 ALTER TABLE `spree_variant_property_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_variant_property_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_variants`
--

DROP TABLE IF EXISTS `spree_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_variants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `weight` decimal(8,2) DEFAULT '0.00',
  `height` decimal(8,2) DEFAULT NULL,
  `width` decimal(8,2) DEFAULT NULL,
  `depth` decimal(8,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_master` tinyint(1) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `cost_price` decimal(10,2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `cost_currency` varchar(255) DEFAULT NULL,
  `track_inventory` tinyint(1) DEFAULT '1',
  `tax_category_id` int(11) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_variants_on_position` (`position`),
  KEY `index_spree_variants_on_product_id` (`product_id`),
  KEY `index_spree_variants_on_sku` (`sku`),
  KEY `index_spree_variants_on_tax_category_id` (`tax_category_id`),
  KEY `index_spree_variants_on_track_inventory` (`track_inventory`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_variants`
--

LOCK TABLES `spree_variants` WRITE;
/*!40000 ALTER TABLE `spree_variants` DISABLE KEYS */;
INSERT INTO `spree_variants` VALUES (1,'ROR-00011',0.00,NULL,NULL,NULL,NULL,1,1,17.00,1,'USD',1,NULL,'2019-04-19 10:02:29.439713','2019-04-19 10:02:12.384618'),(2,'ROR-00012',0.00,NULL,NULL,NULL,NULL,1,2,21.00,1,'USD',1,NULL,'2019-04-19 10:02:30.829205','2019-04-19 10:02:12.574513'),(3,'ROR-001',0.00,NULL,NULL,NULL,NULL,1,3,17.00,1,'USD',1,NULL,'2019-04-19 10:02:24.848409','2019-04-19 10:02:12.635051'),(4,'ROR-00013',0.00,NULL,NULL,NULL,NULL,1,4,17.00,1,'USD',1,NULL,'2019-04-19 10:02:25.222967','2019-04-19 10:02:12.688950'),(5,'ROR-00015',0.00,NULL,NULL,NULL,NULL,1,5,17.00,1,'USD',1,NULL,'2019-04-19 10:02:26.678827','2019-04-19 10:02:12.741991'),(6,'RUB-00001',0.00,NULL,NULL,NULL,NULL,1,6,17.00,1,'USD',1,NULL,'2019-04-19 10:02:28.348037','2019-04-19 10:02:12.816246'),(7,'APC-00001',0.00,NULL,NULL,NULL,NULL,1,7,17.00,1,'USD',1,NULL,'2019-04-19 10:02:27.864830','2019-04-19 10:02:12.889583'),(8,'ROR-00014',0.00,NULL,NULL,NULL,NULL,1,8,11.00,1,'USD',1,NULL,'2019-04-19 10:02:25.959142','2019-04-19 10:02:12.969247'),(9,'ROR-00016',0.00,NULL,NULL,NULL,NULL,1,9,15.00,1,'USD',1,NULL,'2019-04-19 10:02:27.393023','2019-04-19 10:02:13.029372'),(10,'ROR-00001',0.00,NULL,NULL,NULL,NULL,0,3,17.00,3,'USD',1,NULL,'2019-04-19 10:02:16.377551','2019-04-19 10:02:14.476347'),(11,'ROR-00002',0.00,NULL,NULL,NULL,NULL,0,3,17.00,5,'USD',1,NULL,'2019-04-19 10:02:17.098941','2019-04-19 10:02:14.523726'),(12,'ROR-00003',0.00,NULL,NULL,NULL,NULL,0,3,17.00,7,'USD',1,NULL,'2019-04-19 10:02:17.838047','2019-04-19 10:02:14.555021'),(13,'ROR-00004',0.00,NULL,NULL,NULL,NULL,0,3,17.00,9,'USD',1,NULL,'2019-04-19 10:02:18.554115','2019-04-19 10:02:14.585251'),(14,'ROR-00005',0.00,NULL,NULL,NULL,NULL,0,3,17.00,11,'USD',1,NULL,'2019-04-19 10:02:19.273710','2019-04-19 10:02:14.612775'),(15,'ROR-00006',0.00,NULL,NULL,NULL,NULL,0,3,17.00,13,'USD',1,NULL,'2019-04-19 10:02:20.017229','2019-04-19 10:02:14.641497'),(16,'ROR-00007',0.00,NULL,NULL,NULL,NULL,0,3,17.00,15,'USD',1,NULL,'2019-04-19 10:02:20.761072','2019-04-19 10:02:14.670580'),(17,'ROR-00008',0.00,NULL,NULL,NULL,NULL,0,3,17.00,17,'USD',1,NULL,'2019-04-19 10:02:21.484604','2019-04-19 10:02:14.698415'),(18,'ROR-00009',0.00,NULL,NULL,NULL,NULL,0,3,17.00,19,'USD',1,NULL,'2019-04-19 10:02:22.206688','2019-04-19 10:02:14.725598'),(19,'ROR-00010',0.00,NULL,NULL,NULL,NULL,0,3,17.00,21,'USD',1,NULL,'2019-04-19 10:02:22.948500','2019-04-19 10:02:14.754931');
/*!40000 ALTER TABLE `spree_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_wallet_payment_sources`
--

DROP TABLE IF EXISTS `spree_wallet_payment_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_wallet_payment_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `payment_source_type` varchar(255) NOT NULL,
  `payment_source_id` int(11) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_spree_wallet_payment_sources_on_source_and_user` (`user_id`,`payment_source_id`,`payment_source_type`),
  KEY `index_spree_wallet_payment_sources_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_5dd6e027c5` FOREIGN KEY (`user_id`) REFERENCES `spree_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_wallet_payment_sources`
--

LOCK TABLES `spree_wallet_payment_sources` WRITE;
/*!40000 ALTER TABLE `spree_wallet_payment_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `spree_wallet_payment_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zone_members`
--

DROP TABLE IF EXISTS `spree_zone_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zone_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zoneable_type` varchar(255) DEFAULT NULL,
  `zoneable_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_spree_zone_members_on_zone_id` (`zone_id`),
  KEY `index_spree_zone_members_on_zoneable_id_and_zoneable_type` (`zoneable_id`,`zoneable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zone_members`
--

LOCK TABLES `spree_zone_members` WRITE;
/*!40000 ALTER TABLE `spree_zone_members` DISABLE KEYS */;
INSERT INTO `spree_zone_members` VALUES (1,'Spree::Country',179,1,'2019-04-19 09:59:53.963686','2019-04-19 09:59:53.963686'),(2,'Spree::Country',70,1,'2019-04-19 09:59:53.975380','2019-04-19 09:59:53.975380'),(3,'Spree::Country',184,1,'2019-04-19 09:59:53.986611','2019-04-19 09:59:53.986611'),(4,'Spree::Country',189,1,'2019-04-19 09:59:53.998672','2019-04-19 09:59:53.998672'),(5,'Spree::Country',57,1,'2019-04-19 09:59:54.039436','2019-04-19 09:59:54.039436'),(6,'Spree::Country',75,1,'2019-04-19 09:59:54.058036','2019-04-19 09:59:54.058036'),(7,'Spree::Country',202,1,'2019-04-19 09:59:54.063512','2019-04-19 09:59:54.063512'),(8,'Spree::Country',100,1,'2019-04-19 09:59:54.070083','2019-04-19 09:59:54.070083'),(9,'Spree::Country',200,1,'2019-04-19 09:59:54.075136','2019-04-19 09:59:54.075136'),(10,'Spree::Country',102,1,'2019-04-19 09:59:54.080387','2019-04-19 09:59:54.080387'),(11,'Spree::Country',12,1,'2019-04-19 09:59:54.090786','2019-04-19 09:59:54.090786'),(12,'Spree::Country',68,1,'2019-04-19 09:59:54.107681','2019-04-19 09:59:54.107681'),(13,'Spree::Country',110,1,'2019-04-19 09:59:54.135001','2019-04-19 09:59:54.135001'),(14,'Spree::Country',20,1,'2019-04-19 09:59:54.144712','2019-04-19 09:59:54.144712'),(15,'Spree::Country',197,1,'2019-04-19 09:59:54.150329','2019-04-19 09:59:54.150329'),(16,'Spree::Country',135,1,'2019-04-19 09:59:54.155849','2019-04-19 09:59:54.155849'),(17,'Spree::Country',22,1,'2019-04-19 09:59:54.160849','2019-04-19 09:59:54.160849'),(18,'Spree::Country',77,1,'2019-04-19 09:59:54.165212','2019-04-19 09:59:54.165212'),(19,'Spree::Country',133,1,'2019-04-19 09:59:54.170125','2019-04-19 09:59:54.170125'),(20,'Spree::Country',55,1,'2019-04-19 09:59:54.175119','2019-04-19 09:59:54.175119'),(21,'Spree::Country',134,1,'2019-04-19 09:59:54.179818','2019-04-19 09:59:54.179818'),(22,'Spree::Country',153,1,'2019-04-19 09:59:54.184370','2019-04-19 09:59:54.184370'),(23,'Spree::Country',59,1,'2019-04-19 09:59:54.188772','2019-04-19 09:59:54.188772'),(24,'Spree::Country',166,1,'2019-04-19 09:59:54.193043','2019-04-19 09:59:54.193043'),(25,'Spree::Country',64,1,'2019-04-19 09:59:54.197198','2019-04-19 09:59:54.197198'),(26,'Spree::Country',98,1,'2019-04-19 09:59:54.201220','2019-04-19 09:59:54.201220'),(27,'Spree::Country',56,1,'2019-04-19 09:59:54.205910','2019-04-19 09:59:54.205910'),(28,'Spree::Country',89,1,'2019-04-19 09:59:54.210350','2019-04-19 09:59:54.210350'),(29,'Spree::Country',233,2,'2019-04-19 09:59:54.214892','2019-04-19 09:59:54.214892'),(30,'Spree::Country',38,2,'2019-04-19 09:59:54.223911','2019-04-19 09:59:54.223911');
/*!40000 ALTER TABLE `spree_zone_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spree_zones`
--

DROP TABLE IF EXISTS `spree_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spree_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `zone_members_count` int(11) DEFAULT '0',
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spree_zones`
--

LOCK TABLES `spree_zones` WRITE;
/*!40000 ALTER TABLE `spree_zones` DISABLE KEYS */;
INSERT INTO `spree_zones` VALUES (1,'EU_VAT','Countries that make up the EU VAT zone.',28,'2019-04-19 09:59:53.890101','2019-04-19 09:59:53.890101'),(2,'North America','USA + Canada',2,'2019-04-19 09:59:53.939418','2019-04-19 09:59:53.939418');
/*!40000 ALTER TABLE `spree_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-19 12:04:41
