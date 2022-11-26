/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.4.24-MariaDB : Database - homemod
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`homemod` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `homemod`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `main_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_cat_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_to_use` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_available` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_deal_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `items` */

insert  into `items`(`id`,`title`,`short_description`,`long_description`,`normal_price`,`sale_price`,`category`,`sub_category`,`sku_code`,`color`,`how_to_use`,`size`,`reviews`,`stock_available`,`item_deal_box`,`images`,`image1`,`image2`,`image3`,`image4`,`image5`,`image6`,`image7`,`image8`,`image9`,`created_at`,`updated_at`) values (1,'heelo','fsdfdsf','dfsdf','23','0','mens','shoes','sdfsd222','black','sdfsdfsdfsdfsdf','XL','sdfsdfdsfsdfsdf','45','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-11-02 21:39:34','2022-11-02 21:39:34');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2022_10_29_002249_add_columns_in_users_table',2),(11,'2022_11_02_123428_create_items__table',3),(12,'2022_11_02_220650_create_categories_table',4),(13,'2022_11_24_232430_add_column_in__items',5);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('14c4d76c20437a7e8f3b2536ff5dce35d296216d90fc66ece89ea07a9b05ae519f5d3f793d054bb3',4,1,'passport_token','[]',0,'2022-11-24 23:00:03','2022-11-24 23:00:03','2023-11-24 23:00:03'),('28070c86f4724db49862922c21fc222739df4a8d8e8f7a67f440e22b082b237f68bb2f83b6d28d95',4,1,'passport_token','[]',0,'2022-11-24 23:01:46','2022-11-24 23:01:46','2023-11-24 23:01:46'),('2def1e13aa3992cfe8e67e0251f405c1ca865a542ca209fa349b3c0391aaec2eca4300005bf5d874',4,1,'passport_token','[]',0,'2022-11-24 23:05:02','2022-11-24 23:05:02','2023-11-24 23:05:02'),('50681b5043978b4c5c126d50eb05747ebc91b6f449d9b50dc75d253b7bda21d5092a83b73d5744bf',4,1,'passport_token','[]',0,'2022-11-24 22:58:50','2022-11-24 22:58:50','2023-11-24 22:58:50'),('6342fccc2efdc576dbeb55e11b892ff774ea9ac2e8c14ec7fc5e02dd399c03bd4abcea79dfaf459d',4,1,'passport_token','[]',0,'2022-11-24 23:07:04','2022-11-24 23:07:04','2023-11-24 23:07:04'),('6b5ca5946edca68778df3a7498613ed8c98951d4e3ad96af3953473680a330edbae093a58722f2f1',4,1,'passport_token','[]',0,'2022-11-24 21:52:32','2022-11-24 21:52:32','2023-11-24 21:52:32'),('80c8677506ce8b228a3b3df77716cdbb111b902334fc82014366b8e44abe11b9fa82f182246fde89',4,1,'passport_token','[]',0,'2022-11-24 23:18:10','2022-11-24 23:18:10','2023-11-24 23:18:10'),('83c355cbfae98cf928a37be224542bca37c6a8734a9a3a04aa44aa9107a70656033b4cdfc2f38ea2',4,1,'passport_token','[]',0,'2022-11-02 22:50:50','2022-11-02 22:50:50','2023-11-02 22:50:50'),('8ebaaee48c599b08991da1e1128430b7d5ca937c1b52cf20016da56505e39f05001c6d5d0b457b57',4,1,'passport_token','[]',0,'2022-11-24 23:10:01','2022-11-24 23:10:01','2023-11-24 23:10:01'),('a236c316afd55a80f5db730fe2c1feb8d64fbf639a342547f5f3d5a89fb92a719c8575f846243dae',4,1,'passport_token','[]',0,'2022-11-24 23:06:54','2022-11-24 23:06:54','2023-11-24 23:06:54'),('a8cd5eeb51fa3177d872bb70be82e15d0269e24c2f90c693910700387da9ff58c723fa90e960e24d',4,1,'passport_token','[]',0,'2022-11-24 23:03:07','2022-11-24 23:03:07','2023-11-24 23:03:07'),('ac9cd1ef752f59affbdbaf764f9fc2430964eec3d023fd0707c6172f341f49ab53ee5e6b6dd3e1e3',1,1,'passport_token','[]',0,'2022-10-29 00:41:20','2022-10-29 00:41:20','2023-10-29 00:41:20'),('b03eaf56a179cf7e67835c9bba04f1003bee0bd17d402f48af822ccd0b4aac77b42fed2fa0ad91d5',4,1,'passport_token','[]',0,'2022-10-29 00:56:13','2022-10-29 00:56:13','2023-10-29 00:56:13'),('c9e82a2840b26403701509a11bc600bb8908c027bb9d0e1868e17f67204a1f525025fcb8b4111c9d',4,1,'passport_token','[]',0,'2022-11-24 23:01:37','2022-11-24 23:01:37','2023-11-24 23:01:37'),('cd693303e0f7bee96462a8a4617af4a4ed602142c145639c775b085dcb999477833aa4c59211f465',4,1,'passport_token','[]',0,'2022-11-24 23:09:21','2022-11-24 23:09:21','2023-11-24 23:09:21'),('debe601fe0ab9de9461f9dd7cba8be20ae02ae93a8584849aee83c96c914b8f0a30b1a9411288cbe',4,1,'passport_token','[]',0,'2022-11-24 23:09:00','2022-11-24 23:09:00','2023-11-24 23:09:00'),('f8e0a0ae01c32b346fddd7af148c9eab3e5fd54295f50b92f86c721c25ee514ae87d126bee50ba50',4,1,'passport_token','[]',0,'2022-10-29 00:58:00','2022-10-29 00:58:00','2023-10-29 00:58:00');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Laravel Personal Access Client','YWYRpdhGEkamHpVjjg4hNwGwPkbW81L7ZuJRHHd6',NULL,'http://localhost',1,0,0,'2022-10-28 18:38:52','2022-10-28 18:38:52'),(2,NULL,'Laravel Password Grant Client','MBF7oBTK147TWpgGUwt1DydDnU38QVa5XJycj0mn','users','http://localhost',0,1,0,'2022-10-28 18:38:52','2022-10-28 18:38:52');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2022-10-28 18:38:52','2022-10-28 18:38:52');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`lastname`,`email`,`confirm_password`,`password`,`remember_token`,`email_verified_at`,`created_at`,`updated_at`) values (4,'Sufiyan','khanzada','sufiyankhanzada1254@gmail.com','$2y$10$awsjINfQ9QhC/08zI978Ve1EAWAAyHAaqn0NHD5xKdZZuBjFgaSY2','$2y$10$oOy3U89fBB1yAkdxNXnjWOZiraRY06s/.gqiCQHqIoBONv1nFKGdu',NULL,NULL,'2022-10-29 00:55:30','2022-10-29 00:55:30'),(5,'sufiyan','ahmed','sufiyankhanzada12544@gmail.com','$2y$10$h/R50yp0pFAHPPuSPbe2JOLDtAaNSb/Hpu0S8G56CyT5V2XBCuQ2y','$2y$10$Z5N87s4c5UuVD7B2DFnWUOCCvphwgL9WL76W9.qSZB3FTnrT/Z6IG',NULL,NULL,'2022-11-02 22:50:38','2022-11-02 22:50:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
