-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: multitrader
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `envs`
--

CREATE DATABASE IF NOT EXISTS multitrader;
USE multitrader;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `envs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_user` varchar(254) DEFAULT NULL,
  `crm_password` varchar(254) DEFAULT NULL,
  `crm_login_uri` varchar(254) DEFAULT NULL,
  `platform_user` varchar(254) DEFAULT NULL,
  `platform_password` varchar(254) DEFAULT NULL,
  `platform_guest_token` varchar(254) DEFAULT NULL,
  `platform_customer_token_uri` varchar(254) DEFAULT NULL,
  `platform_cfd_api_uri` varchar(254) DEFAULT NULL,
  `crm_campaign_list` varchar(254) DEFAULT NULL,
  `crm_customer_list` varchar(254) DEFAULT NULL,
  `platform_stream_url` varchar(254) DEFAULT NULL,
  `platform_stream_token` varchar(254) DEFAULT NULL,
  `x_api_token` varchar(254) DEFAULT NULL,
  `x_api_boot_token` varchar(254) DEFAULT NULL,
  `is_demo_test` tinyint(1) DEFAULT '1',
  `max_concurrent` int(11) NOT NULL DEFAULT '20',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(254) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `envs_id_uindex` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envs`
--

LOCK TABLES `envs` WRITE;
/*!40000 ALTER TABLE `envs` DISABLE KEYS */;
/*!40000 ALTER TABLE `envs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 11:37:45
