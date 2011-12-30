-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: lfd_production
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

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
-- Table structure for table `content_links`
--

DROP TABLE IF EXISTS `content_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_internal` tinyint(1) DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_links`
--

LOCK TABLES `content_links` WRITE;
/*!40000 ALTER TABLE `content_links` DISABLE KEYS */;
INSERT INTO `content_links` VALUES (1,'RSVP for wedding &amp; reception',1,'rsvps'),(2,'More Info',0,'http://www.ci.austin.tx.us/austinairport/default.htm'),(3,'Reserve Online',0,'https://ssl.omnihotels.com/Omni?Perseus_state=clear&lang_code=en-us&prop=AUSCTR&group_code=13600109405'),(4,'RSVP for wedding &amp; reception',1,'rsvps');
/*!40000 ALTER TABLE `content_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_texts`
--

DROP TABLE IF EXISTS `content_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_texts`
--

LOCK TABLES `content_texts` WRITE;
/*!40000 ALTER TABLE `content_texts` DISABLE KEYS */;
INSERT INTO `content_texts` VALUES (1,'<p>Approximately 8 miles from downtown Austin</p>'),(2,'<p>700 San Jacinto at 8th Street, Austin, TX<br />Reservations: (512) 476-3700</p> \n<p>There is a wedding block set up at with discounted rates for the weekend. Please call and ask for the \"Ryu/Chen\" wedding block or reserve online with Group Code: 13600109405.</p> \n<p><strong>Must reserve by 8/1.</strong></p> \n<p>Special rate: $139/night for standard guestroom with a King or two Double bed accomodations.</p> \n'),(3,'<p>We have coordinated buses for guests to take to and from the wedding so everyone can have a great time and not worry about designating drivers.</p>\n<p>Pick-up and drop-off will be from the Omni Austin Downtown Hotel. Please RSVP by 6/27 if you will be taking the shuttle so we can make sure you have a ride!</p>\n<p>\n<b>Pick-up time:</b> 5:30pm<br />\n<b>Return times:</b> 10:00pm and 11:00pm<br />\n</p>\n');
/*!40000 ALTER TABLE `content_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wedding_id` int(11) DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` VALUES (1,1,'caroline-and-tony.com','2011-05-19 07:33:19','2011-05-19 07:33:19'),(2,1,'www.caroline-and-tony.com','2011-05-19 07:33:19','2011-05-19 07:33:19');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `map_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Austin','',NULL,'Austin','1','78619','30.000000','-98.000000','2011-05-19 07:33:19','2011-05-19 07:33:19',NULL),(2,'Thurman\'s Mansion at the Salt Lick BBQ','18300 Farm to Market Road 1826',NULL,'driftwood','1','78619','30.131695','-98.017504','2011-05-19 07:33:19','2011-06-22 08:22:00','http://maps.google.com/maps?f=d&source=s_d&saddr=700+San+Jacinto+at+8th+Street,+Austin,+TX&daddr=18300+Farm+to+Market+Road+1826,+Driftwood,+TX&hl=en&geocode=FXjezQEd_5ks-ilFVkg_p7VEhjGd-ppcWLIwIg%3BFYTEywEdkm4o-im7wzFj5URbhjFy0mcmUBc5uA&mra=ls&sll=30.2656'),(3,'Austin-Bergstrom International Airport (AUS)','3600 Presidential Blvd.',NULL,'austin','1','78719','30.202495','-97.667612','2011-06-22 08:22:00','2011-06-22 08:22:00','http://maps.google.com/maps?q=Austin-Bergstrom+International+Airport+(AUS)&hl=en&sll=37.0625,-95.677068&sspn=45.197878,93.076172&z=14'),(4,'Omni Austin Downtown Hotel','700 San Jacinto at 8th Street',NULL,'austin','1','78701','30.268438','-97.740127','2011-06-22 08:22:00','2011-06-22 08:22:00','http://maps.google.com/maps?q=Omni+Austin+Downtown+Hotel&hl=en&ll=30.269298,-97.740297&spn=0.011638,0.022724&sll=30.269048,-97.740289&sspn=0.012102,0.022724&z=16&iwloc=A'),(5,'Colorado St & W 4th St','Colorado St & W 4th St',NULL,'austin','1','78702','30.266569','-97.744811','2011-06-22 08:22:00','2011-06-22 08:22:00','http://maps.google.com/maps?q=4th+and+colorado,+austin,+TX&hl=en&sll=37.0625,-95.677068&sspn=45.197878,93.076172&z=16&iwloc=A');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_widgets`
--

DROP TABLE IF EXISTS `page_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `widget_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_id` int(11) DEFAULT NULL,
  `verticle_order` int(11) DEFAULT NULL,
  `widget_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_widgets`
--

LOCK TABLES `page_widgets` WRITE;
/*!40000 ALTER TABLE `page_widgets` DISABLE KEYS */;
INSERT INTO `page_widgets` VALUES (1,2,'WidgetText',1,1,NULL),(3,4,'WidgetText',3,1,NULL),(5,1,'WidgetText',5,2,NULL),(7,8,'WidgetText',7,1,NULL),(9,3,'WidgetText',9,1,NULL),(10,7,'WidgetEvent',3,1,1),(12,7,'WidgetEvent',4,3,1),(14,6,'WidgetInformation',1,1,2),(15,6,'WidgetInformation',2,2,2),(16,6,'WidgetInformation',3,3,2),(17,5,'WidgetText',10,1,NULL),(18,9,'WidgetText',11,1,NULL),(19,10,'WidgetText',12,1,NULL);
/*!40000 ALTER TABLE `page_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wedding_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `navigation_order` int(11) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT '0',
  `is_home` tinyint(1) DEFAULT '0',
  `show_title` tinyint(1) DEFAULT '1',
  `show_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_static` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'welcome',1,'Welcome','welcome',1,1,1,0,1,0),(2,'invitation',1,'The Wedding','invitation',3,0,0,0,1,0),(3,'about_us',1,'About Us','guest_and_travel',2,0,0,0,1,0),(4,'photos',1,'Photos','comingsoon',4,0,0,0,0,0),(5,'wedding_party',1,'Wedding Party','guest_and_travel',5,0,0,0,1,0),(6,'guest_and_travel',1,'Guest & Travel Information','guest_and_travel',7,0,0,0,1,0),(7,'events',1,'Event Details','events',6,0,0,0,1,0),(9,'things_to_do',1,'Things To Do','things_to_do',9,0,0,0,1,0),(10,'registry',1,'Registry',NULL,10,0,0,0,1,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsvp_options`
--

DROP TABLE IF EXISTS `rsvp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsvp_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rsvp_question_id` int(11) DEFAULT NULL,
  `option` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsvp_options`
--

LOCK TABLES `rsvp_options` WRITE;
/*!40000 ALTER TABLE `rsvp_options` DISABLE KEYS */;
INSERT INTO `rsvp_options` VALUES (1,1,'BBQ'),(2,1,'Vegetarian'),(3,3,'Yes, I\'d like a ride'),(4,3,'No, I will not need a ride');
/*!40000 ALTER TABLE `rsvp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsvp_questions`
--

DROP TABLE IF EXISTS `rsvp_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsvp_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wedding_id` int(11) DEFAULT NULL,
  `html_form_type` int(11) DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsvp_questions`
--

LOCK TABLES `rsvp_questions` WRITE;
/*!40000 ALTER TABLE `rsvp_questions` DISABLE KEYS */;
INSERT INTO `rsvp_questions` VALUES (1,1,0,'Food Preference:',1,1),(2,1,2,'Have you booked accommodations for your stay?<br>If so, please let us know where:',0,2),(3,1,0,'Transportation is provided to/from the wedding at the Omni Austin Downtown Hotel. Please indicate if you\'d like a ride:',1,3),(4,1,4,'For more information, visit the Guest & Travel tab.',NULL,4);
/*!40000 ALTER TABLE `rsvp_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsvp_selections`
--

DROP TABLE IF EXISTS `rsvp_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsvp_selections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rsvp_id` int(11) DEFAULT NULL,
  `rsvp_question_id` int(11) DEFAULT NULL,
  `rsvp_option_id` int(11) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsvp_selections`
--

LOCK TABLES `rsvp_selections` WRITE;
/*!40000 ALTER TABLE `rsvp_selections` DISABLE KEYS */;
INSERT INTO `rsvp_selections` VALUES (1,1,1,2,NULL),(2,1,2,NULL,'HOTEL TEST'),(3,1,3,3,NULL),(4,2,1,1,NULL),(5,2,2,NULL,'not yet. '),(6,2,3,3,NULL),(7,3,1,1,NULL),(8,3,2,NULL,'not yet. '),(9,3,3,3,NULL),(10,4,1,1,NULL),(11,4,3,4,NULL),(12,7,1,1,NULL),(13,7,3,4,NULL),(14,8,1,1,NULL),(15,8,2,NULL,'friend\'s place '),(16,8,3,4,NULL),(17,9,1,2,NULL),(18,9,2,NULL,'Omni Austin Downtown Hotel'),(19,9,3,3,NULL),(20,10,1,1,NULL),(21,10,3,3,NULL),(22,11,1,1,NULL),(23,11,2,NULL,'will book omni'),(24,11,3,3,NULL),(25,12,1,1,NULL),(26,12,2,NULL,'House and then the Omni for sat'),(27,12,3,3,NULL),(28,14,1,1,NULL),(29,14,3,3,NULL),(30,15,1,1,NULL),(31,15,3,3,NULL),(32,16,1,1,NULL),(33,16,2,NULL,'No. Probably will be at the Omni though. '),(34,16,3,3,NULL),(35,17,1,1,NULL),(36,17,2,NULL,'No. Probably Omni Hotel though. '),(37,17,3,3,NULL),(38,18,1,1,NULL),(39,18,3,4,NULL),(40,19,1,1,NULL),(41,19,3,3,NULL),(42,20,1,1,NULL),(43,20,2,NULL,'Omni'),(44,20,3,3,NULL),(45,21,1,1,NULL),(46,21,2,NULL,'omni austin'),(47,21,3,3,NULL),(48,22,1,1,NULL),(49,22,2,NULL,'Yes... ask steven'),(50,22,3,4,NULL),(51,23,1,1,NULL),(52,23,3,4,NULL),(53,24,1,1,NULL),(54,24,2,NULL,'Friend\'s Place'),(55,24,3,3,NULL),(56,25,1,1,NULL),(57,25,2,NULL,'Friend\'s Place'),(58,25,3,3,NULL),(59,26,1,1,NULL),(60,26,3,3,NULL),(61,27,1,1,NULL),(62,27,3,3,NULL),(63,28,1,1,NULL),(64,28,3,3,NULL),(65,29,1,2,NULL),(66,29,3,3,NULL),(67,30,1,1,NULL),(68,30,3,3,NULL),(69,31,1,1,NULL),(70,31,3,3,NULL),(71,32,1,1,NULL),(72,32,2,NULL,'Omni Austin Downtown Hotel'),(73,32,3,3,NULL),(74,33,1,1,NULL),(75,33,3,3,NULL),(76,34,1,1,NULL),(77,34,2,NULL,'Omni Austin Downtown Hotel'),(78,34,3,3,NULL),(79,35,1,1,NULL),(80,35,2,NULL,'Omni '),(81,35,3,3,NULL),(82,36,1,1,NULL),(83,36,3,3,NULL),(84,37,1,1,NULL),(85,37,2,NULL,'Omni Austin Downtown'),(86,37,3,3,NULL),(87,38,1,1,NULL),(88,38,3,3,NULL),(89,39,1,1,NULL),(90,39,3,3,NULL),(91,40,1,1,NULL),(92,40,2,NULL,'Omni'),(93,40,3,3,NULL),(94,41,1,1,NULL),(95,41,3,3,NULL),(96,42,1,1,NULL),(97,42,2,NULL,'I believe at the Omni'),(98,42,3,3,NULL),(99,43,1,1,NULL),(100,43,3,3,NULL),(101,44,1,1,NULL),(102,44,2,NULL,'w/skinny&sammie @omni'),(103,44,3,3,NULL),(104,45,1,1,NULL),(105,45,2,NULL,'with the guys'),(106,45,3,4,NULL),(107,47,1,1,NULL),(108,47,2,NULL,'Omni '),(109,47,3,3,NULL),(110,48,1,1,NULL),(111,48,2,NULL,'Rental house and Omni with the group'),(112,48,3,3,NULL),(113,49,1,1,NULL),(114,49,2,NULL,'Willie\'s sister\'s house'),(115,49,3,4,NULL),(116,50,1,1,NULL),(117,50,2,NULL,'Auntie Carol\'s house'),(118,50,3,4,NULL),(119,52,1,1,NULL),(120,52,2,NULL,'Omni Hotel'),(121,52,3,3,NULL),(122,55,1,1,NULL),(123,55,2,NULL,'No - probably with the other girls.'),(124,55,3,3,NULL),(125,56,1,1,NULL),(126,56,2,NULL,'Omni Downtown Austin'),(127,56,3,3,NULL),(128,57,1,1,NULL),(129,57,2,NULL,'Omni'),(130,57,3,3,NULL),(131,61,1,1,NULL),(132,61,2,NULL,'friends place'),(133,61,3,4,NULL),(134,62,1,1,NULL),(135,62,2,NULL,'not yet but probably omni'),(136,62,3,3,NULL),(137,63,1,1,NULL),(138,63,3,4,NULL),(139,65,1,1,NULL),(140,65,2,NULL,'hi'),(141,65,3,3,NULL),(142,67,1,1,NULL),(143,67,2,NULL,'Omni Hotel'),(144,67,3,3,NULL),(145,68,1,1,NULL),(146,68,2,NULL,'We\'ll be staying with family'),(147,68,3,3,NULL),(148,69,1,1,NULL),(149,69,3,3,NULL),(150,70,1,1,NULL),(151,70,3,3,NULL),(152,71,1,1,NULL),(153,71,3,4,NULL),(154,72,1,1,NULL),(155,72,3,3,NULL),(156,73,1,1,NULL),(157,73,2,NULL,'Omni'),(158,73,3,3,NULL),(159,74,1,1,NULL),(160,74,3,3,NULL),(161,75,1,1,NULL),(162,75,3,3,NULL),(163,77,1,1,NULL),(164,77,2,NULL,'Omni w/ Brian N.'),(165,77,3,3,NULL),(166,78,1,1,NULL),(167,78,2,NULL,'Omni'),(168,78,3,3,NULL),(169,79,1,1,NULL),(170,79,3,3,NULL),(171,80,1,1,NULL),(172,80,3,3,NULL),(173,81,1,1,NULL),(174,81,2,NULL,'Omni'),(175,81,3,3,NULL),(176,82,1,1,NULL),(177,82,2,NULL,'Sadly no, Can I stay with you guys?'),(178,82,3,3,NULL),(179,83,1,1,NULL),(180,83,3,3,NULL),(181,84,1,1,NULL),(182,84,3,3,NULL),(183,85,1,1,NULL),(184,85,2,NULL,'Omni'),(185,85,3,3,NULL),(186,86,1,1,NULL),(187,86,3,3,NULL),(188,87,1,1,NULL),(189,87,3,3,NULL),(190,88,1,1,NULL),(191,88,2,NULL,'Omni'),(192,88,3,3,NULL),(193,89,1,1,NULL),(194,89,2,NULL,'With family'),(195,89,3,3,NULL),(196,90,1,1,NULL),(197,90,3,4,NULL),(198,93,1,1,NULL),(199,93,3,4,NULL),(200,94,1,1,NULL),(201,94,3,4,NULL),(202,95,1,1,NULL),(203,95,3,4,NULL),(204,97,1,1,NULL),(205,97,3,3,NULL),(206,99,1,1,NULL),(207,99,3,4,NULL),(208,100,1,1,NULL),(209,100,3,3,NULL),(210,101,1,1,NULL),(211,101,2,NULL,'Yes - Omni'),(212,101,3,3,NULL),(213,103,1,1,NULL),(214,103,3,4,NULL),(215,104,1,2,NULL),(216,104,3,4,NULL),(217,105,1,1,NULL),(218,105,2,NULL,'yep, i think i\'m staying in the house too? '),(219,105,3,3,NULL),(220,107,1,1,NULL),(221,107,2,NULL,'Omni Austin Downtown'),(222,107,3,3,NULL);
/*!40000 ALTER TABLE `rsvp_selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsvps`
--

DROP TABLE IF EXISTS `rsvps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsvps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wedding_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_attend` tinyint(1) DEFAULT NULL,
  `additional_notes` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsvps`
--

LOCK TABLES `rsvps` WRITE;
/*!40000 ALTER TABLE `rsvps` DISABLE KEYS */;
INSERT INTO `rsvps` VALUES (1,1,'CAROLINE TEST',1,'COMMENT TEST','2011-05-19 07:41:15','2011-05-19 07:41:15'),(2,1,'Diana Quach and Ray Chindaphorn',1,'','2011-05-19 09:11:21','2011-05-19 09:11:21'),(3,1,'Ray Chindaphorn (Diana\'s date)',1,'sorry! just RSVPing separately. ','2011-05-19 09:12:28','2011-05-19 09:12:28'),(4,1,'Jerry, Rachel and the boys',1,'Yay! :)','2011-05-19 09:16:13','2011-05-19 09:16:13'),(5,1,'Jason Helvey',0,'','2011-05-19 11:49:44','2011-05-19 11:49:44'),(6,1,'Amy Endo',0,'','2011-05-19 11:49:57','2011-05-19 11:49:57'),(7,1,'Brian M. Ngo',1,'','2011-05-19 13:23:02','2011-05-19 13:23:02'),(8,1,'Lara Chung & John Choi',1,'Please let us know if you have any special requests','2011-05-19 16:14:57','2011-05-19 16:14:57'),(9,1,'Meeka Wu',1,'can\'t wait!','2011-05-19 16:25:25','2011-05-19 16:25:25'),(10,1,'Mike Cheng',1,'','2011-05-19 16:48:50','2011-05-19 16:48:50'),(11,1,'james lee',1,'Please let us know if you have any special requests','2011-05-19 18:27:26','2011-05-19 18:27:26'),(12,1,'Lijen Tan',1,'wooohoo','2011-05-19 18:40:16','2011-05-19 18:40:16'),(13,1,'Erina Kim',0,'','2011-05-19 18:58:24','2011-05-19 18:58:24'),(14,1,'Cecilia Chan',1,'Please let us know if you have any special requests','2011-05-19 19:10:21','2011-05-19 19:10:21'),(15,1,'JD Bennett',1,'Please let us know if you have any special requests','2011-05-19 19:10:37','2011-05-19 19:10:37'),(16,1,'Stephanie Chan',1,'Please let us know if you have any special requests','2011-05-19 19:11:17','2011-05-19 19:11:17'),(17,1,'Ronnie Zo',1,'This is Steph. Sorry I forgot to RSVP for Ronnie on my own RSVP.  :)','2011-05-19 19:13:49','2011-05-19 19:13:49'),(18,1,'Venus & Ryan Wills',1,'Will there be unicorns?','2011-05-19 21:20:13','2011-05-19 21:20:13'),(19,1,'Natasha L. Chong',1,'I don\'t eat pork, so if the BBQ is pork then my food preference is vegetarian.  If not, the count me in for the BBQ :)','2011-05-19 22:23:19','2011-05-19 22:23:19'),(20,1,'Sammie',1,'Please let us know if you have any special requests','2011-05-19 22:39:02','2011-05-19 22:39:02'),(21,1,'christine you',1,'can\'t wait :)','2011-05-19 23:02:42','2011-05-19 23:02:42'),(22,1,'Charles Shieh',1,'','2011-05-20 02:40:20','2011-05-20 02:40:20'),(23,1,'Julie Hahn',1,'','2011-05-20 06:27:17','2011-05-20 06:27:17'),(24,1,'Susan Lee',1,'','2011-05-20 06:44:38','2011-05-20 06:44:38'),(25,1,'Carlos Chan',1,'','2011-05-20 06:44:59','2011-05-20 06:44:59'),(26,1,'sharyne ng',1,'','2011-05-20 15:11:17','2011-05-20 15:11:17'),(27,1,'caroline ku',1,'','2011-05-20 15:39:10','2011-05-20 15:39:10'),(28,1,'Bert Shen',1,'Please let us know if you have any special requests','2011-05-20 18:11:22','2011-05-20 18:11:22'),(29,1,'Carolyn Ching',1,'YAY for your wedding!!! ','2011-05-20 19:13:28','2011-05-20 19:13:28'),(30,1,'kathryn chin',1,'yayyy!! HAPPY HAPPY DAY!','2011-05-21 04:51:59','2011-05-21 04:51:59'),(31,1,'Mike Chang',1,'Please let us know if you have any special requests','2011-05-21 06:22:35','2011-05-21 06:22:35'),(32,1,'Ben Tan',1,'','2011-05-21 07:04:09','2011-05-21 07:04:09'),(33,1,'Chris & Tina Nelson',1,'','2011-05-22 01:14:37','2011-05-22 01:14:37'),(34,1,'James Choi',1,'Congrats again guys!  Looking forward to it.','2011-05-23 00:10:12','2011-05-23 00:10:12'),(35,1,'Stephanie Le',1,'','2011-05-23 00:57:41','2011-05-23 00:57:41'),(36,1,'Michelle Chang',1,'WOOOHOOOOOOOO!!!','2011-05-23 16:13:52','2011-05-23 16:13:52'),(37,1,'Kevin Park and Helen Park',1,'Let us know if we need Helen to submit her RSVP as well. ','2011-05-25 06:04:58','2011-05-25 06:04:58'),(38,1,'Hannah Wu',1,'Please let us know if you have any special requests','2011-05-25 22:02:34','2011-05-25 22:02:34'),(39,1,'Eric Wu',1,'Please let us know if you have any special requests','2011-05-25 22:02:50','2011-05-25 22:02:50'),(40,1,'Steven Huang',1,'','2011-05-25 23:38:39','2011-05-25 23:38:39'),(41,1,'Diana Eng & Jason Wong (or if you want you can call us Mr & Mrs. Wong or even Mr and Mrs. Eng) haha!',1,'My special request: Have a wonderful day! Don\'t stress about all the little details and just enjoy the moment! Can\'t wait for your big day!! ','2011-05-26 17:59:30','2011-05-26 17:59:30'),(42,1,'Albert Shin',1,'Congrats!','2011-05-27 23:21:40','2011-05-27 23:21:40'),(43,1,'Natalie Hoshi',1,'Unfortunately David cannot make it bc of work =( but I will be there on behalf of both of us to celebrate your beautiful wedding Texas style!!! Can\'t wait!','2011-06-01 04:43:05','2011-06-01 04:43:05'),(44,1,'Sar Mutka',1,'richard&noah are staying home. just me! :)  \r\n\r\ntime to partaaayyyy!! cant wait guys :)','2011-06-01 19:55:18','2011-06-01 19:55:18'),(45,1,'Bryan Fong',1,'','2011-06-05 16:41:30','2011-06-05 16:41:30'),(46,1,'Elaine Hsiao',0,'Please let us know if you have any special requests','2011-06-06 20:08:12','2011-06-06 20:08:12'),(47,1,'Norman Hsieh',1,'','2011-06-06 22:33:13','2011-06-06 22:33:13'),(48,1,'Laurie Kim',1,'','2011-06-08 16:38:33','2011-06-08 16:38:33'),(49,1,'Willie and JoAnn Kim',1,'Please let us know if you have any special requests','2011-06-11 06:54:12','2011-06-11 06:54:12'),(50,1,'Stephanie and Kristina Kim',1,'Please let us know if you have any special requests','2011-06-11 06:55:09','2011-06-11 06:55:09'),(51,1,'stephanie choung/landrem',0,'','2011-06-12 02:25:46','2011-06-12 02:25:46'),(52,1,'Christina Wang',1,'congrats!!! yay, woohoo!','2011-06-13 23:01:21','2011-06-13 23:01:21'),(53,1,'Eiki Tanaka',0,'','2011-06-14 18:17:55','2011-06-14 18:17:55'),(54,1,'Jennifer Louie',0,'','2011-06-14 18:18:14','2011-06-14 18:18:14'),(55,1,'Mika Kondo',1,'Hi Carol! Can\'t waittttttttttt. Hi Tony.','2011-06-17 17:29:48','2011-06-17 17:29:48'),(56,1,'Carol Han',1,'Please let us know if you have any special requests','2011-06-17 19:16:19','2011-06-17 19:16:19'),(57,1,'Janet Cheng',1,'','2011-06-18 20:06:02','2011-06-18 20:06:02'),(58,1,'Sandra Wu',0,'Please let us know if you have any special requests','2011-06-19 21:12:03','2011-06-19 21:12:03'),(59,1,'Mia Kim',0,'','2011-06-20 04:53:50','2011-06-20 04:53:50'),(60,1,'Jimmy Liu',0,'Please let us know if you have any special requests','2011-06-21 18:07:31','2011-06-21 18:07:31'),(61,1,'John Choi',1,'Please let us know if you have any special requests','2011-06-21 19:24:23','2011-06-21 19:24:23'),(62,1,'Jeff Lee',1,'Please let us know if you have any special requests','2011-06-21 20:13:36','2011-06-21 20:13:36'),(63,1,'Sharon Park',1,'Please let us know if you have any special requests','2011-06-21 20:34:47','2011-06-21 20:34:47'),(64,1,'Lijen Test NO',0,'','2011-06-22 09:04:34','2011-06-22 09:04:34'),(65,1,'Lijen Test YES',1,'asdf','2011-06-22 09:04:57','2011-06-22 09:04:57'),(66,1,'Josephine Park',0,'','2011-06-22 16:26:04','2011-06-22 16:26:04'),(67,1,'Monica Chan',1,'','2011-06-22 16:54:27','2011-06-22 16:54:27'),(68,1,'Samantha Elliott',1,'','2011-06-22 17:10:22','2011-06-22 17:10:22'),(69,1,'Daniel Lee',1,'','2011-06-22 17:16:53','2011-06-22 17:16:53'),(70,1,'Esther Yum',1,'<3  Phil and Claire are awesome... I love them~  Congrats again guys!','2011-06-22 17:20:40','2011-06-22 17:20:40'),(71,1,'Tim Kim',1,'','2011-06-22 17:27:52','2011-06-22 17:27:52'),(72,1,'Hsin-Mei Wang',1,'','2011-06-22 17:42:29','2011-06-22 17:42:29'),(73,1,'Natasha Chong',1,'I think I already RSVP\'d but wanted to do it again just in case!   Also, if the BBQ is pork, then please change my food preference to Vegetarian.  Thanks!','2011-06-22 20:53:04','2011-06-22 20:53:04'),(74,1,'Kaytee Wei',1,'','2011-06-22 22:17:31','2011-06-22 22:17:31'),(75,1,'Jowin Wang',1,'','2011-06-22 22:17:53','2011-06-22 22:17:53'),(76,1,'Jong Dae (JD) and Jong Won (Jane) Lee',0,'','2011-06-22 22:28:50','2011-06-22 22:28:50'),(77,1,'Albert Shin',1,'','2011-06-23 00:22:13','2011-06-23 00:22:13'),(78,1,'David Hwang',1,'','2011-06-23 01:28:37','2011-06-23 01:28:37'),(79,1,'mandy lin',1,'','2011-06-23 01:50:11','2011-06-23 01:50:11'),(80,1,'Ben Tan',1,'','2011-06-23 04:45:21','2011-06-23 04:45:21'),(81,1,'Gloria Lee',1,'','2011-06-23 07:38:15','2011-06-23 07:38:15'),(82,1,'Shanko Wang',1,'','2011-06-23 08:51:35','2011-06-23 08:51:35'),(83,1,'Christy Seto',1,'Congrats!! I\'m super excited to see you at your wedding! ','2011-06-23 16:33:03','2011-06-23 16:33:03'),(84,1,'James Kang',1,'','2011-06-23 19:58:30','2011-06-23 19:58:30'),(85,1,'Matt Sun and Christina Wang',1,'','2011-06-24 18:28:04','2011-06-24 18:28:04'),(86,1,'Kathy Chen',1,'','2011-06-25 00:57:17','2011-06-25 00:57:17'),(87,1,'Dexter Lam',1,'','2011-06-25 00:57:35','2011-06-25 00:57:35'),(88,1,'Andrew Kim (Julie Hahn\'s date)',1,'','2011-06-26 17:06:43','2011-06-26 17:06:43'),(89,1,'John Elliott',1,'','2011-06-26 17:48:43','2011-06-26 17:48:43'),(90,1,'Joo Sung',1,'','2011-06-26 23:06:38','2011-06-26 23:06:38'),(91,1,'Jennifer Wang',0,'','2011-06-27 15:59:43','2011-06-27 15:59:43'),(92,1,'Ojas Sitapara',0,'','2011-06-27 16:45:41','2011-06-27 16:45:41'),(93,1,'Ki Kim',1,'','2011-06-27 23:55:41','2011-06-27 23:55:41'),(94,1,'Christine Kim',1,'','2011-06-27 23:56:59','2011-06-27 23:56:59'),(95,1,'Christine Kim',1,'','2011-06-27 23:57:41','2011-06-27 23:57:41'),(96,1,'Sharon Kwun',0,'','2011-06-28 01:57:04','2011-06-28 01:57:04'),(97,1,'Grace Lau',1,'so sorry! i thought i responded to this the first day i received it! :(','2011-06-28 19:17:34','2011-06-28 19:17:34'),(98,1,'min jae sung',0,'','2011-06-29 16:13:59','2011-06-29 16:13:59'),(99,1,'Susan Ryu',1,'','2011-06-30 06:13:19','2011-06-30 06:13:19'),(100,1,'Grace Su',1,'','2011-06-30 19:32:59','2011-06-30 19:32:59'),(101,1,'Miranda Wang',1,'','2011-06-30 20:04:46','2011-06-30 20:04:46'),(102,1,'Erika Choung',0,'','2011-07-07 15:27:06','2011-07-07 15:27:06'),(103,1,'Alex Ryu',1,'Elena and baby hay are coming too.','2011-07-08 04:06:48','2011-07-08 04:06:48'),(104,1,'Elena Ryu',1,'','2011-07-08 04:07:13','2011-07-08 04:07:13'),(105,1,'Young Yuk',1,'Sorry, I lagged on this -- I thought Meeka would RSVP for me.  ','2011-07-08 15:09:39','2011-07-08 15:09:39'),(106,1,'Nate Suangpo',0,'','2011-07-13 04:07:00','2011-07-13 04:07:00'),(107,1,'Hannah Park & Michael Park',1,'Hi Carol + Tony! We\'re so sorry about the late RSVP. It took us a bit to get the logistics figured out, but we\'re so excited to share your big day and can\'t wait!!! \r\n\r\nBy the way, will you be leaving the country from Austin or going back to SF? \r\n\r\nHannah + Mike','2011-08-01 03:15:46','2011-08-01 03:15:46');
/*!40000 ALTER TABLE `rsvps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110508021645'),('20110508033557'),('20110508190244'),('20110508191514'),('20110508221026'),('20110508221106'),('20110508224609'),('20110509010408'),('20110509014313'),('20110509014342'),('20110509014428'),('20110509014618'),('20110510064113'),('20110514003148'),('20110518190928'),('20110518202719'),('20110518203416'),('20110519071013'),('20110521185957'),('20110521195550'),('20110525073652'),('20110525073653'),('20110525073928'),('20110525073929'),('20110529080999'),('20110529081000'),('20110608061302'),('20110613021709'),('20110615065405'),('20110622032241'),('20110622041315'),('20110622084246');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'texas','TX','2011-05-19 07:33:19','2011-05-19 07:33:19');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auths`
--

DROP TABLE IF EXISTS `user_auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auths`
--

LOCK TABLES `user_auths` WRITE;
/*!40000 ALTER TABLE `user_auths` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wedding_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_authentications`
--

DROP TABLE IF EXISTS `wedding_authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wedding_authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wedding_id` int(11) DEFAULT NULL,
  `service_provider` int(11) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_authentications`
--

LOCK TABLES `wedding_authentications` WRITE;
/*!40000 ALTER TABLE `wedding_authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weddings`
--

DROP TABLE IF EXISTS `weddings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weddings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_html` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rsvp_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `text_announcement_image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_gallery_id` int(11) DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `bride_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bride_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groom_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groom_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ga_tag` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weddings`
--

LOCK TABLES `weddings` WRITE;
/*!40000 ALTER TABLE `weddings` DISABLE KEYS */;
INSERT INTO `weddings` VALUES (1,'Caroline &amp; Tony','Caroline <em>&amp;</em> Tony','Kindly reply for each guest by 6/27/11. Thanks!','2011-08-27 18:30:00',NULL,NULL,NULL,1,'Caroline','Ryu','Tony','Chen','<script type=\"text/javascript\">\n\n  var _gaq = _gaq || [];\n  _gaq.push([\'_setAccount\', \'UA-2311903-14\']);\n  _gaq.push([\'_trackPageview\']);\n\n  (function() {\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\n  })();\n\n</script>\n','2011-05-19 07:33:19','2011-05-19 07:33:19');
/*!40000 ALTER TABLE `weddings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_albums`
--

DROP TABLE IF EXISTS `widget_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_provider` int(11) DEFAULT NULL,
  `gallery_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_albums`
--

LOCK TABLES `widget_albums` WRITE;
/*!40000 ALTER TABLE `widget_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_contents`
--

DROP TABLE IF EXISTS `widget_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `widget_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_id` int(11) DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `verticle_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_contents`
--

LOCK TABLES `widget_contents` WRITE;
/*!40000 ALTER TABLE `widget_contents` DISABLE KEYS */;
INSERT INTO `widget_contents` VALUES (1,'WidgetEvent',3,'ContentLink',1,1),(2,'WidgetInformation',1,'Location',3,1),(3,'WidgetInformation',1,'ContentLink',2,2),(4,'WidgetInformation',2,'Location',4,1),(5,'WidgetInformation',2,'ContentLink',3,2),(6,'WidgetInformation',3,'Location',4,1),(7,'WidgetInformation',3,'Location',2,2),(8,'WidgetInformation',3,'ContentLink',4,3);
/*!40000 ALTER TABLE `widget_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_events`
--

DROP TABLE IF EXISTS `widget_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_rsvp_event` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_events`
--

LOCK TABLES `widget_events` WRITE;
/*!40000 ALTER TABLE `widget_events` DISABLE KEYS */;
INSERT INTO `widget_events` VALUES (1,2,'Caroline &amp; Tony\'s Wedding','2011-08-27 19:00:00','2011-08-27 23:00:00',1,'2011-05-19 07:33:19','2011-05-19 07:33:19',NULL),(3,2,'wedding &amp; reception','2011-08-27 18:30:00',NULL,1,'2011-06-22 08:22:00','2011-06-22 08:22:00','The outdoor ceremony will be followed by cocktail hour and a bbq dinner reception.'),(4,5,'after party','2011-08-27 23:30:00',NULL,0,'2011-06-22 08:22:00','2011-06-22 08:22:00','Immediately following the reception, we will be heading back to downtown Austin to continue the celebration on 4th Street.  Hope to see y\'all there!');
/*!40000 ALTER TABLE `widget_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_galleries`
--

DROP TABLE IF EXISTS `widget_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `src` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_galleries`
--

LOCK TABLES `widget_galleries` WRITE;
/*!40000 ALTER TABLE `widget_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_group_widgets`
--

DROP TABLE IF EXISTS `widget_group_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_group_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `widget_group_id` int(11) DEFAULT NULL,
  `widget_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `widget_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_group_widgets`
--

LOCK TABLES `widget_group_widgets` WRITE;
/*!40000 ALTER TABLE `widget_group_widgets` DISABLE KEYS */;
INSERT INTO `widget_group_widgets` VALUES (1,1,'WidgetEvent',2),(2,1,'WidgetEvent',3),(3,1,'WidgetEvent',4),(4,1,'WidgetEvent',5),(5,2,'WidgetInformation',1),(6,2,'WidgetInformation',2),(7,2,'WidgetInformation',3);
/*!40000 ALTER TABLE `widget_group_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_groups`
--

DROP TABLE IF EXISTS `widget_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_groups`
--

LOCK TABLES `widget_groups` WRITE;
/*!40000 ALTER TABLE `widget_groups` DISABLE KEYS */;
INSERT INTO `widget_groups` VALUES (1,'Wedding Events',NULL,1),(2,'Guest &amp; Travel Information',NULL,1);
/*!40000 ALTER TABLE `widget_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_informations`
--

DROP TABLE IF EXISTS `widget_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_url` text COLLATE utf8_unicode_ci,
  `tab_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_content_text_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_informations`
--

LOCK TABLES `widget_informations` WRITE;
/*!40000 ALTER TABLE `widget_informations` DISABLE KEYS */;
INSERT INTO `widget_informations` VALUES (1,'Austin-Bergstrom International Airport (AUS)','http://www.ci.austin.tx.us/austinairport/default.htm','airport',1),(2,'Omni Austin Downtown Hotel','http://www.omnihotels.com/FindAHotel/AustinDowntown/GuestRoomsAndSuites.aspx','accomodations',2),(3,'Transportation',NULL,'transportation',3);
/*!40000 ALTER TABLE `widget_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_texts`
--

DROP TABLE IF EXISTS `widget_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_texts`
--

LOCK TABLES `widget_texts` WRITE;
/*!40000 ALTER TABLE `widget_texts` DISABLE KEYS */;
INSERT INTO `widget_texts` VALUES (1,NULL,'<p>together with their family and friends</p>\n<p><strong style=\"color: #da8b91; font-size: 24px;\">Caroline Ryu</strong><br />and<br /><strong style=\"font-size: 24px;\">Tony Chen</strong></p>\n<p>invite you to join the celebration<br />of their love and new life together</p>\n<p><strong>saturday, august 27, 2011</strong><br />at six-thirty in the evening</p>\n<p><strong>thurman\'s mansion</strong> at the <strong>salt lick bbq</strong><br /><strong>driftwood, texas</strong></p>\n<p>dinner and dancing to follow<br /><strong style=\"color: #da8b91\">please rsvp on this site by june 27</strong></p>\n'),(3,'Coming Soon','<p>please check back soon for more updates</p>\n'),(5,'Howdy!','<p>Welcome to our wedding website! You can find all the details about our upcoming wedding here so please come back often for new information. We are so excited for you to be a part of our big day and can\'t wait to see y\'all there!</p><p><strong>Love,<br><span class=bride>Caroline</span> &amp; Tony</strong></p>'),(7,'Coming Soon','<p>please check back soon for more updates</p>\n'),(9,NULL,'<h1>How did it all start?</h1>  \n<h3>Established January 18, 2008</h3> \n<img src=\"http://farm6.static.flickr.com/5264/5732027366_e80bfae1d3_m.jpg\" alt=\"Central Park\" title=\"Central Park\" /> \n<p>PB&amp;J. It started over a discussion of the show, <a href=\"http://en.wikipedia.org/wiki/The_Office_(U.S._TV_series)\">The Office</a>. I loved Pam and Caroline loved Jim. As we shared with one another what we liked about each character, I started to realize all the little things about Caroline that I have never noticed before.</p> \n<p>To this day, our phone numbers and email nicknames are still listed as Jim Halpert and Pam Beasley. But as our relationship has evolved, we\'re actually a lot more like <a href=\"http://en.wikipedia.org/wiki/Modern_Family\">Claire and Phil</a>. Maybe over time, we\'ll end up like <a href=\"http://en.wikipedia.org/wiki/Married..._with_Children\">Peggy and Al</a>.</p> \n<p>-Tony</p> \n'),(10,NULL,'\n<h1>Wedding Party</h1>\n  \n        <img src=\"http://farm6.static.flickr.com/5307/5734647231_4ac0f49351_m.jpg\" alt=\"Rachel Wei\" title=\"Rachel Wei\" /> \n                    <h4><span style=\"color: #da8b91\">Rachel Wei</span> &mdash; Maid of Honor</h4> \n                    <p>Loving mom, awesome wife, expert organizer, and yet still manages to look fabulous? To most people, there aren&rsquo;t enough hours in the day to do what you do. But on top of all this, you&rsquo;ve been the sweetest, most thoughtful person from the moment we met and am so blessed to have you by my side as my maid of honor. Our days of wishful thinking about Tony and I getting married, moving down to the south bay, and having kids so you can babysit feels like it was just yesterday! Someday Tony & Jerry will understand why Whole Foods and ShopBop are a necessity, not an option, but until they do we have each other :) We are soul sisters and twinsies no matter how far abroad Tony and I go! Love you!!</p> \n\n                    <img src=\"http://farm3.static.flickr.com/2054/5735089800_6aa033104e_m.jpg\" alt=\"Kathryn Chin\" title=\"Kathryn Chin\" /> \n                    <h4><span style=\"color: #da8b91\">Kathryn Chin</span> &mdash; Bridesmaid</h4> \n                    <p>As a fellow girlfriend and founding member of RGFD (Real Girlfriends of Divis), Kathryn and I quickly became friends over our love for trashy TV and Hello Kitty. There is never a dull moment when you&rsquo;re with Kat: texting with 80% emoji, taking shots from a smuggled &ldquo;water bottle&rdquo;, and exchanging Nordstrom Anniversary Sale finds. Even all the way from the UAE, you make it easy to stay in touch via chat, email, text, Facebook, and Skype-you&rsquo;re a well connected lady :) Your positive energy is contagious and I know there will not be a shortage of goofy faces in my future wedding album!</p> \n\n \n                    <img src=\"http://farm6.static.flickr.com/5023/5735196618_267a738154_m.jpg\" alt=\"Stephanie Le\" title=\"Stephanie Le\" /> \n                    <h4><span style=\"color: #da8b91\">Stephanie Le</span> &mdash; Bridesmaid</h4> \n                    <p>Is butter a carb? What day is it? Is your muffin buttered? Steph is the only person I can trust asking such important questions to. I met my princess sister through our friend Matt who thought we&rsquo;d get along. Obviously he didn&rsquo;t realize he was in the presence of royalty. Since then we&rsquo;ve cooked many dinners for Shanko, blacked out at Maroon 5 concerts, cried over SATC, played countless games of deluxe Scrabble and laughed hysterically at our favorite luxury blog. You were my first girlfriend out here and there&rsquo;s no one else I&rsquo;d rather have watch over me on CalTrain ;)</p> \n\n\n<img src=\"http://farm7.static.flickr.com/6207/6025796595_2dd1a03c2f_m.jpg\" alt=\"Meeka Wu\" title=\"Meeka Wu\" /> \n                    <h4><span style=\"color: #da8b91\">Meeka Wu</span> &mdash; Bridesmaid</h4> \n                    <p>MEEKS!! I met Meeka on a night out at Icon Lounge in SF and since then, whenever you&rsquo;re hanging out with Meeks, it&rsquo;s nothing but fun and laughter. Your smile is contagious and your enthusiasm for anything and everything is something to be admired. You were the first one to tie down a Divis boy and for that you are legendary ;) You&rsquo;ve been there for me and Tony every step of the way in our relationship and whenever I&rsquo;m feeling a little pale, you are right there with some body bronzer! I can&rsquo;t wait for the our half-Chinese, half-Korean babies to grow up together!!</p> \n \n                    <hr /> \n \n\n                    <img src=\"http://farm4.static.flickr.com/3268/5734565419_eebc422e14_m.jpg\" alt=\"Lijen Tan\" title=\"Lijen Tan\" /> \n                    <h4><span style=\"color: #da8b91\">Lijen Tan</span> &mdash; Best Man</h4> \n                    <p>Some people refer to us as twins. As only children, we always had a good understanding of each other as we tend to share a lot of similar traits. Since moving up to SF, we have accomplished a lot of activities together including running a marathon, boxing in an exhibition matchup, building (non-) ridable road bikes, biking down from SF to LA, running a startup, and additional extra-curricular activities. We&rsquo;re usually the last ones to sleep in our house as we ponder about life&rsquo;s many questions.</p> \n \n                    <img src=\"http://farm6.static.flickr.com/5147/5735114936_f005e522a0_m.jpg\" alt=\"Chris Nelson\" title=\"Chris Nelson\" /> \n                    <h4><span style=\"color: #da8b91\">Chris Nelson</span> &mdash; Groomsman</h4> \n                    <p>As one of my first friends since moving to Cupertino, Nelly has always been a constant in my life. We&rsquo;ve grown up together, sang in choir together, and spent many days after school playing video games and watching TV. I&rsquo;ve probably taken more naps in his bed (no homo) than probably all of his previous girlfriends combined. He also introduced me to one of my favorite video games of all time &mdash;<br />Final Fantasy 6.</p> \n \n                    <img src=\"http://farm3.static.flickr.com/2401/5735114564_102dc48a43_m.jpg\" alt=\"James Lee\" title=\"James Lee\" /> \n                    <h4><span style=\"color: #da8b91\">James Lee</span> &mdash; Groomsman</h4> \n                    <p>Its been 36+ months since Yumguy, the artist formerly known as James Lee, has cut his hair. I use to think he was a little slow. It&rsquo;s not that he&rsquo;s unintelligent, but he takes his sweet time when contemplating over something (warning: do not wait in line behind him if you are ordering food). But surprisingly, over the 3 years we lived as roommates, I realized that he is one of the most insightful people I know. We&rsquo;ve had a lot of deep conversations over the years and we seem to have a long running inside joke that will never end.</p> \n \n                    <img src=\"http://farm3.static.flickr.com/2751/5734564899_367116debc_m.jpg\" alt=\"Norman Hsieh\" title=\"Norman Hsieh\" /> \n                    <h4><span style=\"color: #da8b91\">Norman Hsieh</span> &mdash; Groomsman</h4> \n                    <p>Faster than a speeding bullet, more powerful than a locomotive, and able to leap tall buildings in a single bound, Norman is one of my best friends since high school. I think he&rsquo;s been there for every drunk night that I have fallen on my face, and then proceeded to take care of me as I return back to consciousness. In the past he has snuck into my house and folded my laundry, force fed me Oreos against my will, and spent many drunken nights wrestling me.</p> \n \n                    <hr /> \n \n                    <h4>VIP</h4> \n \n                    <img src=\"http://farm4.static.flickr.com/3274/5735199842_429c661efe_m.jpg\" alt=\"Tina Tsou-Nelson\" title=\"Tina Tsou-Nelson\" /> \n                    <h4><span style=\"color: #da8b91\">Tina Tsou-Nelson</span> &mdash; Wedding Day Coordinator</h4> \n                    <p>Tina is someone who&rsquo;s always down for having a good time-in costume or not! This August, she&rsquo;ll be celebrating her 2-year wedding anniversary with her husband Chris. After planning such an amazing event of her own, we knew there was only one person we&rsquo;d trust with our special day.</p> \n \n                    <img src=\"http://farm6.static.flickr.com/5221/5744337994_c05665eba7_m.jpg\" alt=\"Brian Ngo\" title=\"Brian Ngo\" /> \n                    <h4><span style=\"color: #da8b91\">Brian Ngo</span> &mdash; Officiant</h4> \n                    <p>When I think of Brian, I think of our first spiritual conversation about Jesus when we were really drunk in Vegas shortly after turning 21. Since then it has been nothing but WWJD and philosophical sports debates. Our discussions have started to evolve over the years, and we&rsquo;re excited to have such a spiritual man wed us.</p> \n \n                    <img src=\"http://farm6.static.flickr.com/5069/5735115196_8fa4e7e4e6_m.jpg\" alt=\"Steven Huang\" title=\"Steven Huang\" /> \n                    <h4><span style=\"color: #da8b91\">Steven Huang</span> &mdash; Emcee</h4> \n                    <p>I think what Steven taught me best is the art of slacking and still getting the job done. Probably one of the most intelligent people that I know, Steven has an aura of confidence about him and we think he&rsquo;s the perfect guy to get the party started.</p> \n \n                    <hr /> \n \n                    <h4>Ring Bearers</h4> \n \n                    <p>Our 2 favorite little toddlers from the Weiside Underground Corporation.</p> \n \n                    <figure> \n                        <img src=\"http://farm4.static.flickr.com/3151/5734675093_4e0f95c122_m.jpg\" alt=\"Jeremy Wei\" title=\"Jeremy Wei\" /> \n                        <figcaption style=\"color: #da8b91\"><strong>Jeremy Wei</strong></figcaption> \n                    </figure> \n \n                    <figure> \n                        <img src=\"http://farm4.static.flickr.com/3014/5734675161_1a11353181_m.jpg\" alt=\"Tyler Wei\" title=\"Tyler Wei\" /> \n                        <figcaption style=\"color: #da8b91\"><strong>Tyler Wei</strong></figcaption> \n                    </figure> \n'),(11,NULL,'<h1>Food</h1>\n<ul style=\"list-style:none;margin-left:-33px;\">\n<li><a href=\"http://www.rudys.com/\" target=_blank>Rudy’s BBQ</a></li>\n<li><a href=\"http://www.chuys.com/\" target=_blank>Chuy’s (Tex-Mex)</a></li>\n<li><a href=\"http://www.hulahut.com/\" target=_blank>Hula Hut</a></li>\n<li><a href=\"http://www.cactushill.com/TCP/home.htm\" target=_blank>Texas Chili Parlor</a></li>\n<li><a href=\"http://www.trudys.com/\" target=_blank>Trudy’s</a></li>\n<li><a href=\"http://www.juaninamillion.com/\" target=_blank>Juan in a Million</a></li>\n<li><a href=\"http://www.amysicecreams.com/\" target=_blank>Amy’s Ice Cream</a></li>\n<li><a href=\"http://www.yelp.com/biz/momoko-austin\" target=_blank>Momoko’s</a></li>\n</ul>\n\n<h1>To Do/See</h1>\n<ul style=\"list-style:none;margin-left:-33px;\">\n<li><a href=\"http://www.thestoryoftexas.com/\" target=_blank>Bob Bullock Texas State History Museum</a></li>\n<li><a href=\"http://www.yelp.com/biz/bats-under-the-congress-avenue-bridge-austin\" target=_blank>Congress Avenue Bridge / Austin Bats</a></li>\n<li><a href=\"http://www.yelp.com/biz/texas-state-capitol-austin#query:State%20Capitol%20Building\" target=_blank>State Capitol Building</a></li>\n<li><a href=\"http://www.blantonmuseum.org/\" target=_blank>Blanton Museum of Art</a></li>\n<li><a href=\"http://www.laketravis.com/\" target=_blank>Lake Travis</a></li>\n<li><a href=\"http://guadaluperiver.com/site/\" target=_blank>Guadalupe River</a></li>\n<li><a href=\"http://www.texastubes.com/\" target=_blank>Comal River</a></li>\n<li><a href=\"http://www.austinexplorer.com/Locations/ShowLocation.aspx?LocationID=1791\" target=_blank>Mount Bonnell</a></li>\n</ul>\n\n<h1>Shopping</h1>\n<ul style=\"list-style:none;margin-left:-33px;\">\n<li><a href=\"http://www.thedomainaustin.com/\" target=_blank>The Domain Mall</a></li>\n<li><a href=\"http://www.premiumoutlets.com/outlets/outlet.asp?id=73\" target=_blank>Round Rock Premium Outlets</a></li>\n<li><a href=\"http://www.downtownaustin.com/directory/Retail/\" target=_blank>Downtown Austin Shops & Boutiques</a></li>\n</ul>\n\n'),(12,'Registry','<p>As many of y\'all may know, we will be spending the first year of our marriage traveling and living abroad!  While we appreciate the gesture of a wedding present, we kindly request cash gifts to help fund our future adventures (and minimize our storage rental!)</p>\n');
/*!40000 ALTER TABLE `widget_texts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-05  0:00:01
