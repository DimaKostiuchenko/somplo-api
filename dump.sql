-- MySQL dump 10.13  Distrib 8.0.45, for Linux (aarch64)
--
-- Host: localhost    Database: somplo
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('laravel-cache-rozetka.promotions.images.8','a:8:{i:0;s:81:\"https://content.rozetka.com.ua/promotions/catalog_image_ua/original/642361101.jpg\";i:1;s:82:\"https://content2.rozetka.com.ua/promotions/catalog_image_ua/original/652102528.jpg\";i:2;s:82:\"https://content1.rozetka.com.ua/promotions/catalog_image_ua/original/652100734.jpg\";i:3;s:82:\"https://content2.rozetka.com.ua/promotions/catalog_image_ua/original/652092777.jpg\";i:4;s:82:\"https://content1.rozetka.com.ua/promotions/catalog_image_ua/original/652068064.jpg\";i:5;s:81:\"https://content.rozetka.com.ua/promotions/catalog_image_ua/original/652055694.jpg\";i:6;s:82:\"https://content2.rozetka.com.ua/promotions/catalog_image_ua/original/652054060.jpg\";i:7;s:82:\"https://content1.rozetka.com.ua/promotions/catalog_image_ua/original/652041991.jpg\";}',1770894983);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_02_11_191959_create_personal_access_tokens_table',1),(5,'2026_02_11_195011_create_sellers_table',1),(6,'2026_02_11_195012_create_products_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint unsigned NOT NULL,
  `display_size` decimal(4,2) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `cost` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_seller_id_foreign` (`seller_id`),
  KEY `products_phone_name_index` (`phone_name`),
  CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Excepturi Ultra',1,6.06,9,1092.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(2,'Id Pro',1,5.52,26,490.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(3,'Ut Ultra',1,6.55,40,692.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(4,'Facilis Max',1,5.44,37,741.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(5,'Dolor Ultra',1,6.30,49,1194.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(6,'Neque Max',1,6.82,18,543.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(7,'Id Lite',1,5.46,15,1006.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(8,'Id Ultra',1,6.56,38,546.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(9,'Voluptatem Lite',1,6.16,38,254.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(10,'Iure Ultra',1,6.24,1,633.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(11,'Sint Ultra',2,5.76,15,1138.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(12,'Modi Ultra',2,6.30,28,337.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(13,'Veritatis Lite',2,6.51,43,604.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(14,'Soluta Lite',2,6.24,14,1173.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(15,'Eum Ultra',2,6.64,40,821.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(16,'Explicabo Lite',2,6.32,48,1077.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(17,'Rem Lite',2,6.43,37,648.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(18,'Molestias Pro',2,6.59,5,1208.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(19,'Asperiores Pro',2,6.02,26,1299.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(20,'Dolores Ultra',2,6.04,37,594.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(21,'Ut Max',3,6.50,25,1280.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(22,'Consequatur Pro',3,5.43,27,544.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(23,'Et Pro',3,6.70,8,383.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(24,'Quo Lite',3,6.37,31,223.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(25,'Fuga Max',3,5.61,24,241.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(26,'Quo Lite',3,5.73,31,616.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(27,'Et Lite',3,5.41,7,822.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(28,'Ad Ultra',3,5.47,45,1278.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(29,'Qui Pro',3,6.27,28,535.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(30,'Corrupti Ultra',3,6.60,7,257.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(31,'Laboriosam Pro',4,6.68,26,819.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(32,'Vel Ultra',4,6.66,11,1046.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(33,'Molestias Lite',4,6.52,16,506.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(34,'Quaerat Ultra',4,6.90,42,1263.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(35,'Voluptatem Ultra',4,6.34,21,484.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(36,'Officiis Pro',4,5.75,12,1189.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(37,'Et Lite',4,6.37,17,850.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(38,'Dolores Lite',4,6.76,11,1131.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(39,'Accusantium Lite',4,6.08,34,293.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(40,'Sunt Lite',4,6.83,25,948.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(41,'Possimus Max',5,5.76,30,620.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(42,'Fuga Ultra',5,6.33,41,368.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(43,'Ipsam Lite',5,5.66,8,995.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(44,'Aut Pro',5,5.84,28,633.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(45,'Amet Max',5,6.48,26,1187.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(46,'Iure Pro',5,6.27,10,1115.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(47,'Non Max',5,6.19,47,1095.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(48,'Maxime Pro',5,6.80,24,599.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(49,'Ut Lite',5,6.44,46,777.99,'2026-02-12 11:01:55','2026-02-12 11:01:55'),(50,'Autem Ultra',5,6.59,33,507.99,'2026-02-12 11:01:55','2026-02-12 11:01:55');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sellers_seller_name_index` (`seller_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'Mayer, Sanford and Koss','2026-02-12 11:01:55','2026-02-12 11:01:55'),(2,'Harber-Rutherford','2026-02-12 11:01:55','2026-02-12 11:01:55'),(3,'Hickle LLC','2026-02-12 11:01:55','2026-02-12 11:01:55'),(4,'D\'Amore-Greenholt','2026-02-12 11:01:55','2026-02-12 11:01:55'),(5,'Gerlach PLC','2026-02-12 11:01:55','2026-02-12 11:01:55');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-12 12:58:08
