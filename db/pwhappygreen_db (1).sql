-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: pwhappygreen_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 24, 2025 alle 11:48
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwhappygreen_db`
--
CREATE DATABASE IF NOT EXISTS `pwhappygreen_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pwhappygreen_db`;


--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add badge',6,'add_badge'),(22,'Can change badge',6,'change_badge'),(23,'Can delete badge',6,'delete_badge'),(24,'Can view badge',6,'view_badge'),(25,'Can add eco product',7,'add_ecoproduct'),(26,'Can change eco product',7,'change_ecoproduct'),(27,'Can delete eco product',7,'delete_ecoproduct'),(28,'Can view eco product',7,'view_ecoproduct'),(29,'Can add quiz',8,'add_quiz'),(30,'Can change quiz',8,'change_quiz'),(31,'Can delete quiz',8,'delete_quiz'),(32,'Can view quiz',8,'view_quiz'),(33,'Can add waste classification',9,'add_wasteclassification'),(34,'Can change waste classification',9,'change_wasteclassification'),(35,'Can delete waste classification',9,'delete_wasteclassification'),(36,'Can view waste classification',9,'view_wasteclassification'),(37,'Can add user',10,'add_user'),(38,'Can change user',10,'change_user'),(39,'Can delete user',10,'delete_user'),(40,'Can view user',10,'view_user'),(41,'Can add group',11,'add_group'),(42,'Can change group',11,'change_group'),(43,'Can delete group',11,'delete_group'),(44,'Can view group',11,'view_group'),(45,'Can add post',12,'add_post'),(46,'Can change post',12,'change_post'),(47,'Can delete post',12,'delete_post'),(48,'Can view post',12,'view_post'),(49,'Can add comment',13,'add_comment'),(50,'Can change comment',13,'change_comment'),(51,'Can delete comment',13,'delete_comment'),(52,'Can view comment',13,'view_comment'),(53,'Can add quiz result',14,'add_quizresult'),(54,'Can change quiz result',14,'change_quizresult'),(55,'Can delete quiz result',14,'delete_quizresult'),(56,'Can view quiz result',14,'view_quizresult'),(57,'Can add scanned object',15,'add_scannedobject'),(58,'Can change scanned object',15,'change_scannedobject'),(59,'Can delete scanned object',15,'delete_scannedobject'),(60,'Can view scanned object',15,'view_scannedobject'),(61,'Can add user badge',16,'add_userbadge'),(62,'Can change user badge',16,'change_userbadge'),(63,'Can delete user badge',16,'delete_userbadge'),(64,'Can view user badge',16,'view_userbadge'),(65,'Can add membership',17,'add_membership'),(66,'Can change membership',17,'change_membership'),(67,'Can delete membership',17,'delete_membership'),(68,'Can view membership',17,'view_membership');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_happygreen_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_happygreen_user_id` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'happygreen','badge'),(13,'happygreen','comment'),(7,'happygreen','ecoproduct'),(11,'happygreen','group'),(17,'happygreen','membership'),(12,'happygreen','post'),(8,'happygreen','quiz'),(14,'happygreen','quizresult'),(15,'happygreen','scannedobject'),(10,'happygreen','user'),(16,'happygreen','userbadge'),(9,'happygreen','wasteclassification'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-21 15:39:19.335078'),(2,'contenttypes','0002_remove_content_type_name','2025-05-21 15:39:19.420247'),(3,'auth','0001_initial','2025-05-21 15:39:19.670202'),(4,'auth','0002_alter_permission_name_max_length','2025-05-21 15:39:19.727660'),(5,'auth','0003_alter_user_email_max_length','2025-05-21 15:39:19.733632'),(6,'auth','0004_alter_user_username_opts','2025-05-21 15:39:19.739545'),(7,'auth','0005_alter_user_last_login_null','2025-05-21 15:39:19.743982'),(8,'auth','0006_require_contenttypes_0002','2025-05-21 15:39:19.746514'),(9,'auth','0007_alter_validators_add_error_messages','2025-05-21 15:39:19.751478'),(10,'auth','0008_alter_user_username_max_length','2025-05-21 15:39:19.756760'),(11,'auth','0009_alter_user_last_name_max_length','2025-05-21 15:39:19.760962'),(12,'auth','0010_alter_group_name_max_length','2025-05-21 15:39:19.773781'),(13,'auth','0011_update_proxy_permissions','2025-05-21 15:39:19.779408'),(14,'auth','0012_alter_user_first_name_max_length','2025-05-21 15:39:19.786219'),(15,'happygreen','0001_initial','2025-05-21 15:39:20.981863'),(16,'admin','0001_initial','2025-05-21 15:39:21.116671'),(17,'admin','0002_logentry_remove_auto_add','2025-05-21 15:39:21.126909'),(18,'admin','0003_logentry_add_action_flag_choices','2025-05-21 15:39:21.138440'),(19,'sessions','0001_initial','2025-05-21 15:39:21.168301');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_badge`
--

DROP TABLE IF EXISTS `happygreen_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_badge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_badge`
--

LOCK TABLES `happygreen_badge` WRITE;
/*!40000 ALTER TABLE `happygreen_badge` DISABLE KEYS */;
INSERT INTO `happygreen_badge` VALUES (1,'Germoglio Verde','Un passo alla volta!','badges/sprout.png'),(2,'Amico della Natura','Hai risposto ad un quarto delle domande.','badges/leaf.png'),(3,'Eco-Ambasciatore','Hai risposto al 75% delle domande! Assurdo','badges/green-tea.png'),(4,'Eroe Verde','Hai risposto al 100% delle domande! Strabiliante','badges/earth.png'),(5,'Amico della Natura','Hai risposto ad un quarto delle domande.','badges/leaf_Gc9TbG4.png'),(6,'Germoglio Verde','Un passo alla volta!','badges/sprout_JGxxiVt.png');
/*!40000 ALTER TABLE `happygreen_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_comment`
--

DROP TABLE IF EXISTS `happygreen_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `author_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `happygreen_comment_author_id_11f1a506_fk_happygreen_user_id` (`author_id`),
  KEY `happygreen_comment_post_id_f8bbcad7_fk_happygreen_post_id` (`post_id`),
  CONSTRAINT `happygreen_comment_author_id_11f1a506_fk_happygreen_user_id` FOREIGN KEY (`author_id`) REFERENCES `happygreen_user` (`id`),
  CONSTRAINT `happygreen_comment_post_id_f8bbcad7_fk_happygreen_post_id` FOREIGN KEY (`post_id`) REFERENCES `happygreen_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_comment`
--

LOCK TABLES `happygreen_comment` WRITE;
/*!40000 ALTER TABLE `happygreen_comment` DISABLE KEYS */;
INSERT INTO `happygreen_comment` VALUES (1,'Yo This Sucks','2025-05-22 07:15:01.557462',2,1),(2,'no you Suck','2025-05-22 08:07:14.541207',1,1),(3,'no you Suck','2025-05-22 08:07:17.022555',1,1),(4,'Che bello il mondo','2025-05-22 16:19:49.180288',2,1),(5,'accipogna','2025-05-22 16:23:12.480541',2,1),(6,'你是Gay','2025-05-23 06:28:02.143581',1,1),(7,'che brutti','2025-05-23 07:38:08.167622',1,3),(8,'Il testo é stato deciso da Dotti e scritto da Cao. Io, il vero Edoardo, non centro niente.','2025-05-23 08:30:03.043637',1,5),(9,'Che carino','2025-05-23 18:47:00.517177',3,1);
/*!40000 ALTER TABLE `happygreen_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_ecoproduct`
--

DROP TABLE IF EXISTS `happygreen_ecoproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_ecoproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eco_score` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sustainable_alt` json NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `barcode` (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_ecoproduct`
--

LOCK TABLES `happygreen_ecoproduct` WRITE;
/*!40000 ALTER TABLE `happygreen_ecoproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_ecoproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_group`
--

DROP TABLE IF EXISTS `happygreen_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `happygreen_group_created_by_id_4aa56f08_fk_happygreen_user_id` (`created_by_id`),
  CONSTRAINT `happygreen_group_created_by_id_4aa56f08_fk_happygreen_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_group`
--

LOCK TABLES `happygreen_group` WRITE;
/*!40000 ALTER TABLE `happygreen_group` DISABLE KEYS */;
INSERT INTO `happygreen_group` VALUES (1,'edo','2025-05-21 15:48:37.441117',1),(2,'grano','2025-05-21 15:58:12.508039',2),(3,'cinesi','2025-05-21 16:00:11.991261',2),(4,'nome','2025-05-21 16:02:28.299954',2),(5,'minacce','2025-05-21 16:05:38.162621',2),(6,'cani','2025-05-21 17:32:48.753347',2),(7,'cani','2025-05-21 18:39:09.035286',2),(8,'ashiodasiodhaiodhaosd','2025-05-21 18:39:18.618832',2),(9,'Shadow Garden','2025-05-21 19:37:47.138424',1),(10,'5aii','2025-05-22 16:26:21.524322',2);
/*!40000 ALTER TABLE `happygreen_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_membership`
--

DROP TABLE IF EXISTS `happygreen_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_membership` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined_at` datetime(6) NOT NULL,
  `group_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `happygreen_membership_user_id_group_id_5bde436d_uniq` (`user_id`,`group_id`),
  KEY `happygreen_membership_group_id_677e2881_fk_happygreen_group_id` (`group_id`),
  CONSTRAINT `happygreen_membership_group_id_677e2881_fk_happygreen_group_id` FOREIGN KEY (`group_id`) REFERENCES `happygreen_group` (`id`),
  CONSTRAINT `happygreen_membership_user_id_d20f161f_fk_happygreen_user_id` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_membership`
--

LOCK TABLES `happygreen_membership` WRITE;
/*!40000 ALTER TABLE `happygreen_membership` DISABLE KEYS */;
INSERT INTO `happygreen_membership` VALUES (1,'admin','2025-05-21 16:04:48.523891',1,1),(2,'admin','2025-05-21 16:05:46.649102',5,2),(3,'admin','2025-05-21 17:32:48.906348',6,2),(4,'member','2025-05-21 17:45:27.192674',1,2),(5,'admin','2025-05-21 18:39:18.799347',8,2),(6,'member','2025-05-21 18:39:32.832313',2,2),(7,'member','2025-05-21 19:25:29.597970',3,1),(8,'admin','2025-05-21 19:37:47.436361',9,1),(9,'admin','2025-05-22 16:26:21.765982',10,2),(10,'member','2025-05-23 18:46:50.941034',1,3);
/*!40000 ALTER TABLE `happygreen_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_post`
--

DROP TABLE IF EXISTS `happygreen_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_lat` double DEFAULT NULL,
  `location_lng` double DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `author_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `happygreen_post_author_id_83ad7213_fk_happygreen_user_id` (`author_id`),
  KEY `happygreen_post_group_id_7ee07acc_fk_happygreen_group_id` (`group_id`),
  CONSTRAINT `happygreen_post_author_id_83ad7213_fk_happygreen_user_id` FOREIGN KEY (`author_id`) REFERENCES `happygreen_user` (`id`),
  CONSTRAINT `happygreen_post_group_id_7ee07acc_fk_happygreen_group_id` FOREIGN KEY (`group_id`) REFERENCES `happygreen_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_post`
--

LOCK TABLES `happygreen_post` WRITE;
/*!40000 ALTER TABLE `happygreen_post` DISABLE KEYS */;
INSERT INTO `happygreen_post` VALUES (1,'cinisi','posts/upload311570151426871369.jpg',38.17882759942798,13.219011649489403,'2025-05-21 20:01:35.639885',2,1),(2,'siamo a scuola','posts/upload3341401834667141377.jpg',45.5525851,11.5550033,'2025-05-23 07:10:14.750166',1,1),(3,'ste vongole','posts/upload283352662520156965.jpg',54.22477833895698,-10.018080845475197,'2025-05-23 07:37:45.881562',1,1),(4,'che bello','posts/upload9044581324833016497.jpg',45.5520711,11.5555525,'2025-05-23 07:49:08.638826',1,1),(5,'viva il duce','posts/upload4014766481814408450.jpg',45.5521084,11.5555097,'2025-05-23 07:56:21.281051',1,1),(6,'John Smith','posts/upload2281165822549536595.jpg',45.5518122,11.5557396,'2025-05-23 09:01:39.811694',1,9),(7,'Casa','posts/upload877514384960314662.jpg',37.4220936,-122.083922,'2025-05-23 19:05:03.401095',1,1);
/*!40000 ALTER TABLE `happygreen_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_quiz`
--

DROP TABLE IF EXISTS `happygreen_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wrong_answers` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_quiz`
--

LOCK TABLES `happygreen_quiz` WRITE;
/*!40000 ALTER TABLE `happygreen_quiz` DISABLE KEYS */;
INSERT INTO `happygreen_quiz` VALUES (1,'Qual è il gas serra più abbondante nell\'atmosfera terrestre?','Vapore acqueo (H?O)','[\"Anidride carbonica (CO₂)\", \"Metano (CH₄)\", \"Ozono (O₃)\"]'),(2,'Quale paese produce la maggiore quantità di energia eolica al mondo?','Cina','[\"Germania\", \"Stati Uniti\", \"Danimarca\"]'),(3,'Qual è la principale causa della deforestazione nell\'Amazzonia?','Agricoltura intensiva','[\"Urbanizzazione\", \"Disastri naturali\", \"Taglio illegale per legname\"]'),(4,'Quale di questi materiali impiega più tempo a decomporsi?','Bottiglia di plastica','[\"Giornale\", \"Scatola di cartone\", \"Bucce di banana\"]'),(5,'Qual è la principale fonte di inquinamento dell\'oceano?','Plastica','[\"Olio esausto\", \"Detersivi\", \"Acque reflue trattate\"]'),(6,'Cos\'è il protocollo di Kyoto?','Un accordo per ridurre le emissioni di gas serra','[\"Una conferenza sulle foreste\", \"Un trattato sulla pesca\", \"Un codice per la protezione delle acque\"]'),(7,'Quale tra questi è un effetto diretto della deforestazione?','Perdita di biodiversità','[\"Innalzamento del livello del mare\", \"Formazione di ozono\", \"Incremento della fauna\"]'),(8,'Quale dei seguenti animali è considerato un bioindicatore?','Rana','[\"Cane\", \"Cavallo\", \"Mucca\"]'),(9,'Quale delle seguenti è una fonte di energia rinnovabile?','Energia solare','[\"Petrolio\", \"Carbone\", \"Gas naturale\"]'),(10,'Quale di questi comportamenti aiuta a ridurre l?impronta ecologica?','Usare i mezzi pubblici','[\"Usare spesso l’auto\", \"Comprare bottiglie di plastica\", \"Accendere molte luci\"]'),(11,'Cosa rappresenta il termine \'sostenibilità\'?','Equilibrio tra ambiente, economia e società','[\"Sopravvivenza delle specie forti\", \"Riduzione del benessere per l’ambiente\", \"Crescita infinita\"]'),(12,'Quale tra i seguenti è un inquinante dell?aria?','Ossidi di azoto','[\"Vapore acqueo\", \"Elio\", \"Ossigeno\"]'),(13,'Qual è una fonte importante di microplastiche negli oceani?','Abbigliamento sintetico','[\"Piante marine\", \"Reti da pesca biologiche\", \"Fumo dei vulcani\"]'),(14,'Quale regione sta sperimentando un rapido scioglimento dei ghiacci?','Artico','[\"Sahara\", \"Himalaya\", \"Alpi italiane\"]'),(15,'Qual è il principale scopo del riciclo?','Ridurre rifiuti e risparmiare risorse','[\"Aumentare il volume delle discariche\", \"Riutilizzare cibo\", \"Eliminare l’acqua in eccesso\"]'),(16,'Quale tra questi è un gas serra?','Metano','[\"Azoto\", \"Elio\", \"Neon\"]'),(17,'Che cos\'è l\'effetto serra?','Riscaldamento dovuto ai gas nell\'atmosfera','[\"Raffreddamento dell’atmosfera\", \"Erosione del suolo\", \"Rottura dello strato di ozono\"]'),(18,'Qual è la principale causa del cambiamento climatico?','Attività umane','[\"Attività solare\", \"Movimenti dei continenti\", \"Cicli naturali lenti\"]'),(19,'Cosa si intende per impronta ecologica?','Misura dell?impatto umano sull?ambiente','[\"Quantità di animali protetti\", \"Estensione delle foreste\", \"Numero di case ecologiche\"]'),(20,'Quale attività umana contribuisce maggiormente all?effetto serra?','Combustione di combustibili fossili','[\"Pesca\", \"Coltivazione biologica\", \"Produzione di energia idroelettrica\"]'),(21,'Quale tra i seguenti combustibili è fossile?','Carbone','[\"Etanolo\", \"Biodiesel\", \"Energia solare\"]'),(22,'Qual è l?elemento principale che causa l?acidificazione degli oceani?','CO?','[\"Zolfo\", \"Mercurio\", \"Azoto\"]'),(23,'Qual è lo scopo principale dei parchi nazionali?','Proteggere le specie e gli habitat','[\"Favorire il turismo\", \"Fornire risorse alle imprese\", \"Costruire nuove città sostenibili\"]'),(24,'Cosa rappresenta il simbolo con tre frecce che formano un triangolo?','Riciclabile','[\"Materiale pericoloso\", \"Prodotto chimico\", \"Plastica\"]'),(25,'Qual è uno dei principali vantaggi dell?energia solare?','Non produce gas serra durante l?uso','[\"È disponibile solo di notte\", \"Produce molto rumore\", \"Richiede combustibili fossili\"]'),(26,'Cos?è la biodiversità?','Varietà di specie viventi in un ambiente','[\"Quantità di risorse minerarie\", \"Numero di laghi in un’area\", \"Specie di alberi sempreverdi\"]'),(27,'Quale animale è a rischio a causa dello scioglimento dei ghiacci?','Orso polare','[\"Pinguino delle Galapagos\", \"Cammello\", \"Leone africano\"]'),(28,'Qual è il principale effetto dell?inquinamento luminoso?','Disturbo del ciclo naturale di animali e piante','[\"Maggiore produzione di energia\", \"Inquinamento del suolo\", \"Raffreddamento globale\"]'),(29,'Cos?è l?energia geotermica?','Energia ricavata dal calore della Terra','[\"Energia solare riflessa\", \"Energia derivata dai vulcani\", \"Energia prodotta dalle maree\"]'),(30,'Qual è l\'impatto ambientale del disboscamento?','Aumenta l?effetto serra','[\"Riduce le piogge\", \"Produce ossigeno in eccesso\", \"Abbassa la temperatura globale\"]'),(31,'Quale delle seguenti pratiche è sostenibile?','Agricoltura biologica','[\"Monocoltura intensiva\", \"Deforestazione per allevamenti\", \"Pesca industriale massiva\"]'),(32,'Qual è un rischio dell?uso eccessivo di pesticidi?','Contaminazione delle acque','[\"Aumento dell’ossigeno atmosferico\", \"Formazione di nuovi insetti\", \"Crescita dei raccolti\"]'),(33,'Qual è una conseguenza dell?innalzamento del livello del mare?','Inondazione di aree costiere','[\"Espansione dei deserti\", \"Formazione di nuove montagne\", \"Riduzione della salinità marina\"]'),(34,'Quale delle seguenti attività riduce lo spreco alimentare?','Conservare correttamente il cibo','[\"Acquistare più del necessario\", \"Gettare alimenti vicino alla scadenza\", \"Cucinare in abbondanza ogni giorno\"]'),(35,'Cosa significa \'carbon neutral\'?','Non emettere CO? netta','[\"Utilizzare solo gas naturali\", \"Assorbire completamente l’ossigeno\", \"Produrre energia dal carbone\"]'),(36,'Qual è la funzione dello strato di ozono?','Protegge dai raggi UV','[\"Genera ossigeno\", \"Riscalda l’atmosfera\", \"Produce vento\"]'),(37,'Quale di queste azioni riduce l?impatto ambientale domestico?','Spegnere le luci inutilizzate','[\"Usare l’asciugatrice ogni giorno\", \"Tenere aperto il frigorifero\", \"Lasciare l’acqua scorrere mentre si lava\"]'),(38,'Quale metallo si può riciclare quasi all?infinito senza perdere qualità?','Alluminio','[\"Piombo\", \"Ferro\", \"Mercurio\"]'),(39,'Che cos?è una specie in via di estinzione?','Una specie a rischio di scomparsa','[\"Una nuova specie scoperta\", \"Una specie in aumento\", \"Una specie migratoria\"]'),(40,'Quale gas è responsabile della maggior parte dello smog urbano?','Biossido di azoto','[\"Ossigeno\", \"Argon\", \"Idrogeno\"]');
/*!40000 ALTER TABLE `happygreen_quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_quizresult`
--

DROP TABLE IF EXISTS `happygreen_quizresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_quizresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `score` int NOT NULL,
  `completed_at` datetime(6) NOT NULL,
  `quiz_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `happygreen_quizresult_quiz_id_6460007c_fk_happygreen_quiz_id` (`quiz_id`),
  KEY `happygreen_quizresult_user_id_99a7054c_fk_happygreen_user_id` (`user_id`),
  CONSTRAINT `happygreen_quizresult_quiz_id_6460007c_fk_happygreen_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `happygreen_quiz` (`id`),
  CONSTRAINT `happygreen_quizresult_user_id_99a7054c_fk_happygreen_user_id` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_quizresult`
--

LOCK TABLES `happygreen_quizresult` WRITE;
/*!40000 ALTER TABLE `happygreen_quizresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_quizresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_scannedobject`
--

DROP TABLE IF EXISTS `happygreen_scannedobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_scannedobject` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recognized_at` datetime(6) NOT NULL,
  `location_lat` double DEFAULT NULL,
  `location_lng` double DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `happygreen_scannedobject_user_id_53430245_fk_happygreen_user_id` (`user_id`),
  CONSTRAINT `happygreen_scannedobject_user_id_53430245_fk_happygreen_user_id` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_scannedobject`
--

LOCK TABLES `happygreen_scannedobject` WRITE;
/*!40000 ALTER TABLE `happygreen_scannedobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_scannedobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_user`
--

DROP TABLE IF EXISTS `happygreen_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `profile_pic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int NOT NULL,
  `level` int NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_user`
--

LOCK TABLES `happygreen_user` WRITE;
/*!40000 ALTER TABLE `happygreen_user` DISABLE KEYS */;
INSERT INTO `happygreen_user` VALUES (1,'ardo',NULL,0,'edo','','',0,1,'profiles/upload3795029519586940178.jpg',0,1,'2025-05-21 15:47:43.029422'),(2,'gao',NULL,0,'gao','','',0,1,'profiles/upload2556322455158693737.jpg',0,1,'2025-05-21 15:50:35.530306'),(3,'pbkdf2_sha256$1000000$oTlrFsJuQC6eNyEZKyYaGv$OPddtp2iA0NnU8nIjCXXBBj69685M/EApiHR5u+B3Og=',NULL,0,'ciao','','',0,1,'',0,1,'2025-05-23 18:46:08.726382');
/*!40000 ALTER TABLE `happygreen_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_user_groups`
--

DROP TABLE IF EXISTS `happygreen_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `happygreen_user_groups_user_id_group_id_89dbafa7_uniq` (`user_id`,`group_id`),
  KEY `happygreen_user_groups_group_id_e2242089_fk_auth_group_id` (`group_id`),
  CONSTRAINT `happygreen_user_groups_group_id_e2242089_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `happygreen_user_groups_user_id_aef3752d_fk_happygreen_user_id` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_user_groups`
--

LOCK TABLES `happygreen_user_groups` WRITE;
/*!40000 ALTER TABLE `happygreen_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_user_user_permissions`
--

DROP TABLE IF EXISTS `happygreen_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `happygreen_user_user_per_user_id_permission_id_879acadd_uniq` (`user_id`,`permission_id`),
  KEY `happygreen_user_user_permission_id_b4fe8dd4_fk_auth_perm` (`permission_id`),
  CONSTRAINT `happygreen_user_user_permission_id_b4fe8dd4_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `happygreen_user_user_user_id_69235935_fk_happygree` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_user_user_permissions`
--

LOCK TABLES `happygreen_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `happygreen_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_userbadge`
--

DROP TABLE IF EXISTS `happygreen_userbadge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_userbadge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `earned_at` datetime(6) NOT NULL,
  `badge_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `happygreen_userbadge_badge_id_485bb172_fk_happygreen_badge_id` (`badge_id`),
  KEY `happygreen_userbadge_user_id_c5ca3a1a_fk_happygreen_user_id` (`user_id`),
  CONSTRAINT `happygreen_userbadge_badge_id_485bb172_fk_happygreen_badge_id` FOREIGN KEY (`badge_id`) REFERENCES `happygreen_badge` (`id`),
  CONSTRAINT `happygreen_userbadge_user_id_c5ca3a1a_fk_happygreen_user_id` FOREIGN KEY (`user_id`) REFERENCES `happygreen_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_userbadge`
--

LOCK TABLES `happygreen_userbadge` WRITE;
/*!40000 ALTER TABLE `happygreen_userbadge` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_userbadge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `happygreen_wasteclassification`
--

DROP TABLE IF EXISTS `happygreen_wasteclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `happygreen_wasteclassification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `material` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bin_color` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `happygreen_wasteclassification`
--

LOCK TABLES `happygreen_wasteclassification` WRITE;
/*!40000 ALTER TABLE `happygreen_wasteclassification` DISABLE KEYS */;
/*!40000 ALTER TABLE `happygreen_wasteclassification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23 21:39:46
