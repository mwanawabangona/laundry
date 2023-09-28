-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (x86_64)
--
-- Host: localhost    Database: laundry
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `additional_orders`
--

DROP TABLE IF EXISTS `additional_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_orders` (
  `order_id` bigint unsigned NOT NULL,
  `additional_id` bigint unsigned NOT NULL,
  KEY `additional_orders_order_id_foreign` (`order_id`),
  KEY `additional_orders_additional_id_foreign` (`additional_id`),
  CONSTRAINT `additional_orders_additional_id_foreign` FOREIGN KEY (`additional_id`) REFERENCES `additionals` (`id`),
  CONSTRAINT `additional_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_orders`
--

LOCK TABLES `additional_orders` WRITE;
/*!40000 ALTER TABLE `additional_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_services`
--

DROP TABLE IF EXISTS `additional_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_services` (
  `service_id` bigint unsigned NOT NULL,
  `additional_id` bigint unsigned NOT NULL,
  KEY `additional_services_service_id_foreign` (`service_id`),
  KEY `additional_services_additional_id_foreign` (`additional_id`),
  CONSTRAINT `additional_services_additional_id_foreign` FOREIGN KEY (`additional_id`) REFERENCES `additionals` (`id`),
  CONSTRAINT `additional_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_services`
--

LOCK TABLES `additional_services` WRITE;
/*!40000 ALTER TABLE `additional_services` DISABLE KEYS */;
INSERT INTO `additional_services` VALUES (1,9),(1,15),(1,11),(1,12),(1,20),(2,3),(2,19),(2,7),(2,1),(2,18),(3,14),(3,19),(3,4),(3,7),(3,1);
/*!40000 ALTER TABLE `additional_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additionals`
--

DROP TABLE IF EXISTS `additionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additionals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additionals`
--

LOCK TABLES `additionals` WRITE;
/*!40000 ALTER TABLE `additionals` DISABLE KEYS */;
INSERT INTO `additionals` VALUES (1,'est',NULL,18.46,1,'Veritatis autem repudiandae corrupti ad quis rerum ut.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(2,'et',NULL,81.81,0,'Excepturi aut repellat consequatur adipisci sit quis.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(3,'quos',NULL,37.28,0,'Ipsam culpa excepturi cum cum.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(4,'id',NULL,43.96,0,'Ipsum quod doloremque illo nisi.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(5,'qui',NULL,38.52,1,'Eligendi expedita deleniti voluptates velit at.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(6,'voluptatem',NULL,86.49,1,'Impedit sed debitis cumque nobis.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(7,'officia',NULL,88.60,1,'Eveniet dolores officia molestias non labore officia.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(8,'et',NULL,68.64,1,'Nihil vitae voluptatem expedita et.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(9,'qui',NULL,17.82,0,'Perspiciatis necessitatibus ut eaque est.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(10,'in',NULL,74.63,0,'Facere tempora qui ut neque.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(11,'repellendus',NULL,89.14,1,'Et provident delectus odit distinctio facere quis distinctio animi.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(12,'quia',NULL,19.96,1,'Minus expedita in laudantium ducimus distinctio.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(13,'animi',NULL,56.54,0,'Quae dolorem cumque ut sed suscipit amet sunt debitis.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(14,'quam',NULL,34.64,1,'Reiciendis quaerat ducimus nihil cum non.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(15,'voluptas',NULL,35.78,1,'Alias commodi tempora quo quis quod optio.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(16,'sequi',NULL,22.61,1,'Aut officia eos eum soluta qui quis autem.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(17,'qui',NULL,74.64,0,'Neque architecto qui porro quo quasi expedita ea.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(18,'quia',NULL,84.81,1,'Consequatur qui repellat doloremque laboriosam.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(19,'error',NULL,98.01,1,'Iste autem qui excepturi quae.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(20,'provident',NULL,11.16,1,'Sunt eum maxime rerum reprehenderit.',NULL,'2023-07-12 14:06:11','2023-07-12 14:06:11');
/*!40000 ALTER TABLE `additionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `address_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_district_id` bigint unsigned DEFAULT NULL,
  `district_id` bigint unsigned DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_note` text COLLATE utf8mb4_unicode_ci,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_customer_id_foreign` (`customer_id`),
  CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'other','Autumn River','8754369','6',NULL,'qui',NULL,NULL,'Basundhara','92222 Murray Gateway','244 Genoveva Center','Sit minima quis neque aut. Laudantium nihil molestiae itaque totam illo aut aut. Ea nulla blanditiis enim necessitatibus ut doloremque temporibus quia.','11147','73.676833','12.85512','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(2,2,'other','Angus Groves','1767097','3',NULL,'molestiae',NULL,NULL,'Basundhara','696 Serena Mission','44616 Parisian Road Suite 085','Perferendis in excepturi accusamus consequatur assumenda. Et velit perferendis similique enim. Non in consequatur voluptatem molestiae. Qui tempora dolorem officiis mollitia.','66032','39.492081','164.109772','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(3,3,'office','Lexus Plains','34','6',NULL,'voluptatem',NULL,NULL,'Basundhara','586 Icie Stravenue','497 Alaina Greens','Pariatur excepturi non deserunt atque molestiae repudiandae. Aut commodi doloribus labore sunt minima. Dolorem voluptas animi cum ipsa nostrum. At ratione sequi eum quas non.','93176-9262','-44.958962','31.941972','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(4,3,'other','Willms Summit','710679351','2',NULL,'doloremque',NULL,NULL,'Basundhara','259 Destany Mill Suite 550','90553 Darian Land','Itaque facilis atque laboriosam vero deserunt dolorem. Qui vel voluptatum quisquam et. Eos ut quibusdam aut architecto labore. Laboriosam consequatur nihil aut id quia magni voluptas.','17980-3040','47.641315','142.233636','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(5,4,'office','Alfonso Motorway','290','6',NULL,'vitae',NULL,NULL,'Basundhara','59437 Schroeder Mountain','102 Darrion River Suite 933','Pariatur eaque molestias et dolor. Minima labore facere labore quis. Eius rem harum ut qui qui. Qui voluptatem ipsa ducimus ipsum ea sed vero.','73989-9028','6.330981','59.373219','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(6,4,'Home','Powlowski Overpass','4013','2',NULL,'aut',NULL,NULL,'Basundhara','2468 Trantow Turnpike','751 Fannie Center Suite 687','Assumenda dolores est mollitia aut. Eos adipisci autem minus impedit cupiditate quasi assumenda aut. Doloribus et nihil ut saepe quia aut.','04963-1757','-0.555408','-105.189924','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(7,4,'office','Nader Islands','4314','1',NULL,'id',NULL,NULL,'Basundhara','36353 Florine Ranch Apt. 526','22986 Arlo Springs Apt. 461','Pariatur assumenda ut quia optio consequatur sequi. Quibusdam qui ipsa est at. Enim voluptatem sed ipsam iste. Optio nisi et ipsum sed.','76597-3614','55.204232','51.985491','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(8,5,'other','Prosacco Lights','22','3',NULL,'aut',NULL,NULL,'Basundhara','98135 Kovacek Lodge Suite 000','530 Kayleigh Key','Beatae repellat dicta quam nulla. Perferendis minus voluptates explicabo dolorem. Iste quam omnis atque aut sunt qui sed ut.','51352-5345','-3.590431','-132.844337','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(9,5,'other','Tatum Cove','91381','2',NULL,'accusamus',NULL,NULL,'Basundhara','8226 Edgar Well','733 Chloe Spur Apt. 232','Eius animi nulla nam iste. Fuga fuga voluptas dicta fugiat voluptas aspernatur. Minima perspiciatis non vitae assumenda quos.','67849','-2.958275','44.939512','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(10,6,'Home','Hazel Plaza','988684','3',NULL,'sequi',NULL,NULL,'Basundhara','576 Ryan Island','85606 McGlynn Trail Suite 077','Laboriosam nemo voluptas aut aut est consequuntur. Omnis consectetur id est animi natus eos. Quae dolor veniam laboriosam aut aspernatur sequi.','20601','-82.790016','2.518964','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(11,6,'other','Shanie Overpass','5744408','4',NULL,'temporibus',NULL,NULL,'Basundhara','81910 Meagan Extensions','2593 Laney Cove','Modi voluptatem quidem quaerat placeat sint dicta consectetur. Ut officiis est voluptatem et ullam. Assumenda pariatur praesentium ut iure aliquam qui quidem. In adipisci sit tempora voluptatem.','89587-3306','-75.73803','0.981577','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(12,6,'other','Mozell Mountain','37761','4',NULL,'mollitia',NULL,NULL,'Basundhara','11305 Schuster Manors','1321 Herman Light','Non laudantium nihil repellendus officia possimus. Blanditiis laborum dignissimos aliquid aut. Temporibus aperiam velit non et qui quas.','95336-1359','9.405576','-128.030088','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(13,7,'Home','Stoltenberg Spurs','566','3',NULL,'sunt',NULL,NULL,'Basundhara','1330 Lizzie Neck','282 Thiel Garden Apt. 977','Quo earum ipsam dolor et et provident impedit. Dignissimos commodi aliquam aut inventore est. Enim voluptatem voluptas magnam labore non quibusdam consequuntur qui.','38501','-22.045381','74.04449','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(14,7,'office','Willis Course','74','4',NULL,'magnam',NULL,NULL,'Basundhara','3151 Cremin Stream','7109 Rutherford Mission Suite 812','Fugit aut iusto vel quia eos rerum. Asperiores ad ullam culpa cupiditate. Dignissimos et voluptate rerum omnis earum. Quod omnis aut quia molestiae eum soluta.','49613-4529','-74.639401','153.940363','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(15,8,'office','Hill Villages','431','2',NULL,'aliquid',NULL,NULL,'Basundhara','367 Wehner Place Apt. 723','5812 Grimes Plaza','Deleniti dolor ex aut dolores at repudiandae impedit vero. Perferendis assumenda eum neque nihil. Ut id quod officiis minima.','22046-7277','78.090017','-118.005587','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(16,8,'Home','Taryn Land','5','8',NULL,'dignissimos',NULL,NULL,'Basundhara','9402 Ruthie Oval','67071 Douglas Common','Magnam beatae voluptatibus nihil dolor non. Atque nulla perspiciatis maxime illo enim ab. Dolor quidem quo iste deserunt natus. Aut doloremque consequatur nihil.','49758-1653','-61.516088','-59.903394','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(17,8,'other','Alejandrin Highway','67309','9',NULL,'officia',NULL,NULL,'Basundhara','405 Gregorio Stream Suite 297','3266 Michele Spurs','Aspernatur hic fugiat natus eos. Voluptatem commodi alias veniam ab perspiciatis. Autem consectetur aliquam facilis velit ex sit hic repudiandae.','28408','61.881705','136.716165','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(18,9,'other','Glover Centers','57193279','3',NULL,'occaecati',NULL,NULL,'Basundhara','4159 Harber Green','43280 Dach Hollow','Occaecati voluptatem et explicabo unde. Iste eius consectetur eius.','91320-3224','-13.534196','11.041419','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(19,9,'other','Murray Ways','82117','4',NULL,'inventore',NULL,NULL,'Basundhara','903 Krajcik Tunnel','1055 Glover Keys Apt. 480','Explicabo sunt dolorem aut nesciunt et quia. Ipsam possimus accusantium dolores.','86703','46.110797','-74.992429','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(20,9,'office','Herminia Crossing','988','8',NULL,'illo',NULL,NULL,'Basundhara','35461 Elena View','2518 Keara Ferry','Consequuntur eos voluptas sint quod totam molestias asperiores officiis. Quae sunt neque veniam. Est velit id magnam.','67583-4489','73.691126','34.805506','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(21,10,'other','Toney Hollow','9596','3',NULL,'et',NULL,NULL,'Basundhara','698 Kuvalis Mountains','76146 Kirlin Extensions Suite 110','Corrupti iusto ad pariatur nisi. Ipsam aut dolor ut quia rerum molestias. Aliquam sed et sunt.','65326','60.535214','-13.850224','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(22,10,'office','Dimitri Canyon','3960','4',NULL,'eaque',NULL,NULL,'Basundhara','19757 Alanis Unions','923 Aimee Motorway','Voluptates culpa magnam dolor voluptatibus. Earum sunt ut in quam. Hic ipsum rerum ullam sint reprehenderit.','21869-4829','87.943266','-37.149031','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(23,1,'other','Tyree Dale','290933253','8',NULL,'quia',NULL,NULL,'Basundhara','1801 Gordon Stravenue','7775 Autumn Forges Suite 199','Velit perspiciatis veniam quo possimus expedita occaecati ea non. Corporis quae odio pariatur adipisci. Quas nobis commodi possimus aut ipsam provident.','22460-9417','-33.728212','61.974665','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(24,1,'office','Donnelly Circle','3871','3',NULL,'dignissimos',NULL,NULL,'Basundhara','64503 Pearl Glens Apt. 173','2174 Alvena Parks Suite 406','Quo laboriosam cum et ex aut totam. Illo sit et tempore ea nesciunt a. Accusamus molestias facilis nam enim tempore adipisci. Adipisci qui aperiam non ut incidunt.','09910','71.008572','-147.325526','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(25,1,'other','Mann Forge','70776','4',NULL,'dolor',NULL,NULL,'Basundhara','164 Catalina Mountains Apt. 632','844 Tom Plain Apt. 196','Ipsa voluptatem similique maiores repellendus. Harum incidunt totam odit doloribus asperiores. Quidem ut et accusamus aut. Quod et ut sunt placeat fugiat impedit.','50279','-30.838437','55.510986','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(26,1,'Home','Gloria Hollow','599','4',NULL,'soluta',NULL,NULL,'Basundhara','532 Lindgren Viaduct','75866 O\'Kon Circles','Commodi aut vero quae rerum suscipit. Et nisi porro in ex. Temporibus unde eum qui hic. Placeat voluptatem non temporibus et veniam quibusdam. Veritatis ex nostrum quaerat aperiam.','06723','-56.142393','66.778191','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(27,1,'office','Hirthe Ranch','7','3',NULL,'omnis',NULL,NULL,'Basundhara','245 Zemlak Wall Apt. 206','110 Gudrun Prairie Apt. 811','Corrupti excepturi ullam est sed accusantium. Ut voluptas minima repellendus nobis et et rerum.','82742','-51.987645','-149.198383','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(28,1,'Home','Hyatt Green','586','5',NULL,'atque',NULL,NULL,'Basundhara','744 Brandt Locks','830 Leffler Curve Suite 911','Fuga molestiae molestias molestiae eligendi beatae molestias quae. Minus dignissimos corporis minus quas eum voluptas aut.','08129-6132','-16.810344','-122.312538','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(29,1,'other','Volkman Mount','8304','4',NULL,'ullam',NULL,NULL,'Basundhara','87171 Blick Pass','4947 Rosalind Key','Autem eos unde corporis minus voluptatem ut perferendis. Voluptatibus fugiat et quod illo. Architecto architecto assumenda eum est in.','03500','-61.691103','-166.039538','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(30,1,'other','Beahan Centers','486','8',NULL,'quidem',NULL,NULL,'Basundhara','62958 Blick Passage Apt. 436','5513 Bergstrom Fall Suite 893','Est fuga sapiente eos recusandae et esse. Eligendi at illum repellat ut occaecati. Quis deserunt voluptas ea. Ut iste et iusto possimus sunt fuga eligendi.','95060','68.928572','69.48581','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(31,1,'Home','Marlin Junction','18','7',NULL,'molestiae',NULL,NULL,'Basundhara','122 Walker Summit','8080 Lyla Stream Apt. 435','Earum est sed aspernatur quasi quisquam ut corrupti in. Dolor voluptatem commodi ipsa et nulla est laboriosam. Aut et dolorem sint sed animi quis. Pariatur est deleniti minima accusantium.','81143','-17.327837','-47.900586','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(32,1,'other','Gudrun Pine','6','5',NULL,'adipisci',NULL,NULL,'Basundhara','2912 Melody Parkways Suite 290','10990 Koch Way Suite 348','Labore non placeat ipsum voluptas qui iusto dolores ipsum. Nihil quia ullam sit modi reiciendis explicabo tempore. Omnis consequuntur nihil quasi autem perferendis. In quaerat nihil delectus minima.','69473-0747','15.815397','-161.490316','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(33,1,'Home','Rosamond Springs','4582146','4',NULL,'eos',NULL,NULL,'Basundhara','138 Pagac Branch','529 Alice Harbors','Quasi laboriosam delectus repudiandae et voluptatem. Officiis sed quasi non qui vel.','19318','-69.428005','123.53933','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(34,1,'other','Lula Tunnel','40457152','5',NULL,'dolorem',NULL,NULL,'Basundhara','54714 Stacey Tunnel Apt. 975','7609 Margaret Field','Odio fuga at omnis voluptas dolorem. Ut modi iste placeat. Soluta dolor beatae officiis beatae illo.','35283-2262','-71.9612','16.711635','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(35,1,'office','Hannah Rue','6','4',NULL,'molestiae',NULL,NULL,'Basundhara','367 Greenfelder Stravenue','4957 Deon Avenue Suite 030','Illo ut consequatur impedit. Doloribus non consequatur totam voluptatem. Explicabo mollitia temporibus nemo suscipit rerum.','73635-9895','55.655511','122.639229','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(36,1,'office','Mitchell Lane','94','1',NULL,'et',NULL,NULL,'Basundhara','5249 Schiller Plain','4322 Hintz Fields','Repellat delectus fugiat nihil cumque. Eum et minima dicta ex omnis. Molestias ea quaerat qui temporibus omnis. Fugit velit laudantium rerum sit.','67175-9624','75.44653','-133.607563','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(37,1,'office','Rogahn Lane','72','9',NULL,'ab',NULL,NULL,'Basundhara','161 Bechtelar Isle','1157 Reilly Forest Apt. 093','Ut eum accusamus ea. Earum et sit voluptatum voluptates non recusandae fugit magni. Quos et voluptates tempore totam vel ut. Id similique sapiente iste ad laboriosam autem voluptatem.','67360-2206','84.481258','-74.906369','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(38,1,'other','Mante Crossing','46212083','6',NULL,'a',NULL,NULL,'Basundhara','4850 Stracke Walk Apt. 537','781 Kailyn Flats Suite 023','Reiciendis non dicta delectus consectetur aut consequatur. Soluta tenetur vero consequuntur natus. Sint eum laudantium veritatis modi. Sunt autem explicabo rerum beatae.','32306','-49.019547','4.64903','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(39,1,'office','Juwan Turnpike','85124242','5',NULL,'minima',NULL,NULL,'Basundhara','65649 Bethel Points Suite 704','877 Henriette Parkway Suite 980','Est corrupti sunt qui. Dolor sit ut neque tenetur. Deleniti unde veritatis nam facere. Et ea dignissimos amet et beatae. Officia est debitis ex dolorum rerum eius a.','20065-7449','-37.280158','-94.290356','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(40,1,'Home','Tyler Parkways','606','8',NULL,'earum',NULL,NULL,'Basundhara','80751 Tremaine Pike Suite 695','645 Lang Landing Suite 158','In corrupti consequatur eius quam repudiandae non voluptatem. Nisi reprehenderit et fugiat nihil dolorum ut aut. Tempore ea ut sequi officia non voluptatem. Ut veritatis ut non aperiam vero eaque.','01730','-47.738337','146.305068','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(41,1,'other','Wade Fort','5130','7',NULL,'incidunt',NULL,NULL,'Basundhara','524 Dickens Spring Suite 982','926 Audra Mill Suite 601','Debitis porro in provident cum. At soluta non officia quaerat voluptatibus. Consequatur asperiores unde similique autem.','62243','-87.001803','94.103844','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(42,1,'other','Spencer Way','20201','9',NULL,'est',NULL,NULL,'Basundhara','72132 Pfannerstill Pines','66189 Lavinia Plains','Numquam recusandae laboriosam hic velit facilis. Blanditiis vel atque beatae voluptatibus similique. Et id qui dolore natus harum provident sint dolores.','87360-0029','-86.600485','-30.475136','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(43,1,'office','Tara Light','9198','9',NULL,'aspernatur',NULL,NULL,'Basundhara','485 Senger Mountains Suite 601','98213 Clyde Way Suite 010','Sed quis perspiciatis harum aut beatae rerum. Iste commodi explicabo vero itaque impedit. Dignissimos sit adipisci et atque eaque.','68571','-38.912205','70.491003','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(44,1,'Home','Bins Drives','303112','8',NULL,'aut',NULL,NULL,'Basundhara','614 Ebert Stravenue','8881 McDermott Trace Suite 718','Rerum ullam ex ad et quaerat nemo commodi. Voluptatem omnis consequatur perferendis. Molestias quo repellendus aperiam ea quo.','24206-7280','87.684738','166.680562','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(45,1,'other','Silas Union','69637','4',NULL,'et',NULL,NULL,'Basundhara','5541 Lavonne Parkways','91978 Pfeffer Ridges','Quod qui omnis id eligendi quidem. Itaque est quam culpa itaque sed cupiditate.','77927-2531','57.053199','-171.22242','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(46,1,'office','Dietrich Track','634549253','2',NULL,'dolorem',NULL,NULL,'Basundhara','205 Al Heights','8964 Roob Crest','Voluptatum non aut dolores numquam nulla velit. Maiores aspernatur unde aut architecto quos consectetur. Iusto ad earum dolor earum.','75750-0321','-74.671106','83.51449','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(47,1,'office','Beer Stream','5712473','8',NULL,'sequi',NULL,NULL,'Basundhara','4658 Witting Key','62758 Ivah Loop Suite 117','Consequuntur quas libero est nihil. A voluptatem aut commodi. Ut voluptatem molestiae nemo iure. Est voluptatem dolorum et enim sed.','53528-7618','-9.237673','47.718721','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(48,1,'office','Laurianne Fields','36030','5',NULL,'aut',NULL,NULL,'Basundhara','72373 Jerrell Point','630 Halvorson Place Apt. 927','Dolorem amet assumenda veritatis eaque omnis quidem. Id eius adipisci veritatis architecto. Libero qui ipsam placeat eum velit velit. Sint eligendi qui nam provident.','18765-2757','23.370461','-9.737924','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(49,1,'Home','Yost Ranch','2334','8',NULL,'id',NULL,NULL,'Basundhara','776 Shawna Park','33603 Lester Cliffs','Dolore enim corrupti et excepturi repellat rerum et. Harum nesciunt asperiores necessitatibus consequatur magnam voluptatem dicta. Eum voluptatum nam ab nemo earum hic.','64300-0742','74.657799','-27.793417','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(50,1,'office','Alvina Center','4','8',NULL,'reprehenderit',NULL,NULL,'Basundhara','6832 Shields Motorway','3798 Bradtke Loop','Perferendis molestias sapiente non tenetur magnam. Eum quas minima laborum alias. Sit est qui qui in a quia. Qui pariatur a odio. Architecto provident non corrupti ut quibusdam a omnis eius.','80879','77.882096','174.628815','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(51,1,'other','Jewell Drive','166119','1',NULL,'rerum',NULL,NULL,'Basundhara','31539 Aufderhar Junction Apt. 929','5414 Jasmin Springs','Eos aut et dolor mollitia. Qui maiores et fuga dolorem. Est ipsam quia impedit dolores dolor qui architecto. Quasi quasi ipsa dolor necessitatibus aut. Eligendi est enim temporibus in ipsum quo.','80596-3613','30.234488','-58.488533','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(52,1,'Home','Percy Orchard','6','8',NULL,'nam',NULL,NULL,'Basundhara','1977 Kaylie Rue Suite 182','717 Lakin Island Suite 690','Molestiae autem occaecati ipsam omnis error vero. Incidunt amet dolore animi nemo.','34226-6246','70.48563','-145.040769','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(53,1,'office','Trantow Mission','8','1',NULL,'iste',NULL,NULL,'Basundhara','37579 Josianne Oval Suite 122','54895 Botsford Loop','Fugit non esse qui qui et. Id ut ex quia eum inventore. Aperiam culpa illo aspernatur ut quas ratione earum porro.','51495-4987','88.815553','107.21969','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(54,1,'Home','Raven Island','56217496','1',NULL,'sit',NULL,NULL,'Basundhara','47285 Schuster Brook Apt. 856','9492 Wunsch Throughway','Quibusdam qui accusamus a. A voluptas velit voluptatibus vitae dolorem ullam. Quo et veniam aperiam. Non ad et sint corporis reprehenderit necessitatibus nisi. Voluptas suscipit ad qui sed ea.','43992-8972','-6.671233','-138.530068','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(55,1,'Home','Edd Estate','32708','2',NULL,'in',NULL,NULL,'Basundhara','52377 Casper Garden Suite 689','56106 Hagenes Pine','Doloremque cum error enim et. Eos saepe magni enim quis minus eveniet. Quo provident veniam sit.','72004-6883','-26.931588','-27.301087','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(56,1,'office','Walter Springs','3653514','4',NULL,'quo',NULL,NULL,'Basundhara','59616 Klocko Neck Apt. 250','105 Koepp Knolls Apt. 836','Molestias quia maxime omnis sint laudantium. Unde quasi velit temporibus totam quaerat maiores. Ipsa ut saepe corporis quasi.','19811','74.632114','95.872123','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(57,1,'office','Tommie Islands','6382336','3',NULL,'dolores',NULL,NULL,'Basundhara','27602 Parker Springs Apt. 575','8743 Kendall Skyway','Doloremque in qui architecto repudiandae deserunt nostrum vel ut. Molestiae autem aut soluta molestias. Qui omnis ut sit in perferendis consequatur. Molestiae fugit sed laudantium rem dicta ut.','49994','-18.554652','97.352147','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(58,1,'office','Pascale Rue','94','6',NULL,'aliquam',NULL,NULL,'Basundhara','227 Sid Fields Apt. 868','3918 Misty Views Apt. 084','Aut aut non et facere cum vel. Aut omnis voluptatibus eos sunt. Aut quia eum aspernatur quod dicta doloribus.','15597-5382','6.391497','127.335098','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(59,1,'other','Powlowski Well','69487885','2',NULL,'reprehenderit',NULL,NULL,'Basundhara','79063 Gavin Divide','68666 Bergstrom Views Suite 982','Sunt natus molestiae et cupiditate nisi voluptatem consequatur sit. Et aperiam quaerat corrupti quo et dolorem dolores.','90835-8089','15.597718','6.502681','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(60,1,'Home','Welch Glen','29719050','3',NULL,'occaecati',NULL,NULL,'Basundhara','6215 Lupe Villages Suite 133','36251 Jerrold Fields Apt. 850','Sed fuga et ut voluptatem. Ducimus sit atque minus perferendis. Veniam perferendis saepe et. Ab illum aliquid quo facilis sunt veritatis.','04455','67.952467','172.904873','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(61,1,'office','Pearline Hollow','8722301','4',NULL,'tempora',NULL,NULL,'Basundhara','78415 Ziemann Circles','7777 Zieme Ranch Apt. 939','Eum numquam dolor quas soluta. Quaerat cupiditate nostrum expedita minus minus iste qui. Qui qui itaque quo. Vel laboriosam cupiditate accusamus atque aut qui error.','01446-8737','-36.492407','5.841171','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(62,1,'other','Leilani Roads','996526','8',NULL,'hic',NULL,NULL,'Basundhara','77915 Hassie Cape','368 Brown Vista Suite 851','Accusamus quis aliquam et. Quibusdam aut sint et occaecati enim. Hic ut totam dolorum eum unde ducimus. Architecto alias consectetur ducimus velit nulla esse ut. Deserunt debitis velit et quod.','47100-6696','-65.546929','-45.734555','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(63,1,'other','Denesik Stream','391','3',NULL,'inventore',NULL,NULL,'Basundhara','38931 Smith Glens','83637 Dannie Island','Accusantium et saepe recusandae numquam. Velit fugiat occaecati et id eveniet voluptas qui. Tempora quia recusandae amet maxime occaecati eligendi voluptas.','11033-2824','-72.543836','-98.591182','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(64,1,'office','Jast Knolls','12225','8',NULL,'aspernatur',NULL,NULL,'Basundhara','134 Kunde Well','754 Cora Spring','Et sit corporis molestiae consequatur. Corporis vel odio quaerat esse. Sequi est et sequi quidem aperiam aperiam similique. Omnis ut aut et quia magni. Non autem velit distinctio est voluptatem vel.','39061-8030','-31.091719','-130.212162','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(65,1,'Home','Lemke Key','47839682','3',NULL,'molestiae',NULL,NULL,'Basundhara','332 Wilford Springs','8575 Jazmin Circles Apt. 923','Odit dolor tempore voluptas laboriosam autem. Consequatur rerum vel eum quos consectetur aut voluptatem. Iste vero omnis vitae qui.','22161-8131','33.510422','-127.397776','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_device_keys`
--

DROP TABLE IF EXISTS `admin_device_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_device_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_device_keys_user_id_foreign` (`user_id`),
  CONSTRAINT `admin_device_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_device_keys`
--

LOCK TABLES `admin_device_keys` WRITE;
/*!40000 ALTER TABLE `admin_device_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_device_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` bigint unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_banner` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_thumbnail_id_foreign` (`thumbnail_id`),
  CONSTRAINT `banners_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'totam','Illum est suscipit et consectetur eum neque sint.',173,0,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(2,'totam','Aut tempora rem animi optio quia eaque.',174,1,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(3,'natus','Qui voluptatem reiciendis voluptatem sed.',175,0,0,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(4,'in','Dolorum aut sunt autem aut id corporis alias.',176,1,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(5,'possimus','Sint error enim facere iure et.',177,0,0,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(6,'quod','Explicabo ut qui ex aliquid maiores nam voluptas.',178,1,0,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(7,'quia','Et molestias placeat autem modi quo voluptatem ad.',179,0,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(8,'et','Vero nisi magnam inventore qui ea quos quae.',180,0,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(9,'ullam','Quas ut vel et impedit optio tenetur vitae.',181,1,0,'2023-07-12 14:06:10','2023-07-12 14:06:10');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_infos`
--

DROP TABLE IF EXISTS `card_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_no` int DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_month` int NOT NULL,
  `exp_year` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_infos_customer_id_foreign` (`customer_id`),
  CONSTRAINT `card_infos_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_infos`
--

LOCK TABLES `card_infos` WRITE;
/*!40000 ALTER TABLE `card_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_users`
--

DROP TABLE IF EXISTS `coupon_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_users_coupon_id_foreign` (`coupon_id`),
  KEY `coupon_users_user_id_foreign` (`user_id`),
  CONSTRAINT `coupon_users_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  CONSTRAINT `coupon_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_users`
--

LOCK TABLES `coupon_users` WRITE;
/*!40000 ALTER TABLE `coupon_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` enum('percent','amount') COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `min_amount` double(8,2) NOT NULL,
  `started_at` timestamp NOT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'36745083','percent',7.95,28.13,'1977-01-13 22:53:26','1992-10-02 14:52:12','2023-07-12 14:06:10','2023-07-12 14:06:10'),(2,'16146867','percent',14.29,84.02,'1997-09-25 10:02:00','1991-06-07 10:39:35','2023-07-12 14:06:10','2023-07-12 14:06:10'),(3,'38697659','amount',18.90,24.16,'1994-08-06 16:38:16','1970-08-16 14:50:46','2023-07-12 14:06:10','2023-07-12 14:06:10'),(4,'68748848','amount',13.15,98.93,'2007-02-15 07:47:26','2001-12-12 21:46:14','2023-07-12 14:06:10','2023-07-12 14:06:10'),(5,'88769544','percent',9.23,99.20,'1974-12-11 03:56:38','1989-09-29 10:47:59','2023-07-12 14:06:10','2023-07-12 14:06:10'),(6,'82639961','amount',17.19,43.68,'1978-02-01 03:31:07','1996-11-22 00:36:29','2023-07-12 14:06:10','2023-07-12 14:06:10'),(7,'76461988','percent',14.20,94.97,'2011-06-20 04:41:28','2017-05-16 18:35:18','2023-07-12 14:06:10','2023-07-12 14:06:10'),(8,'33551171','amount',17.25,45.11,'2023-04-06 23:10:49','2004-09-28 12:36:44','2023-07-12 14:06:10','2023-07-12 14:06:10'),(9,'62853934','amount',7.43,90.78,'1971-01-28 07:01:27','1980-07-08 13:16:32','2023-07-12 14:06:10','2023-07-12 14:06:10'),(10,'10061401','percent',5.88,16.01,'1988-04-09 07:04:08','1975-05-09 17:10:12','2023-07-12 14:06:10','2023-07-12 14:06:10'),(11,'67611066','amount',15.93,49.81,'1984-11-06 05:16:21','2007-02-08 22:10:39','2023-07-12 14:06:10','2023-07-12 14:06:10'),(12,'23766403','percent',13.41,90.19,'1990-09-10 17:47:55','1990-04-07 09:03:38','2023-07-12 14:06:10','2023-07-12 14:06:10'),(13,'37051249','percent',17.58,91.54,'2018-06-01 02:05:26','1987-09-19 16:26:14','2023-07-12 14:06:10','2023-07-12 14:06:10'),(14,'69536579','percent',17.56,12.16,'2010-10-20 10:31:00','2000-12-02 16:15:01','2023-07-12 14:06:10','2023-07-12 14:06:10'),(15,'81301710','percent',12.31,46.65,'2005-12-02 03:25:21','1972-06-29 09:59:24','2023-07-12 14:06:10','2023-07-12 14:06:10'),(16,'30057187','percent',9.79,17.61,'1973-07-30 17:25:49','1988-07-15 12:00:04','2023-07-12 14:06:10','2023-07-12 14:06:10'),(17,'45090988','amount',17.55,63.08,'1981-09-04 06:43:55','2017-02-19 12:21:22','2023-07-12 14:06:10','2023-07-12 14:06:10'),(18,'10179448','amount',9.41,41.57,'2012-08-29 20:48:24','1995-06-06 09:08:13','2023-07-12 14:06:10','2023-07-12 14:06:10'),(19,'18176885','percent',19.72,11.86,'1987-08-17 08:31:49','1983-09-06 05:16:39','2023-07-12 14:06:10','2023-07-12 14:06:10'),(20,'28251701','percent',5.74,16.39,'2022-09-27 14:54:44','2007-11-23 19:56:19','2023-07-12 14:06:10','2023-07-12 14:06:10'),(21,'20643718','percent',12.24,58.14,'1980-06-17 04:24:15','1976-01-29 01:34:46','2023-07-12 14:06:10','2023-07-12 14:06:10'),(22,'38921225','percent',7.93,14.47,'2004-11-26 08:47:07','1999-11-22 16:32:36','2023-07-12 14:06:10','2023-07-12 14:06:10'),(23,'16450143','percent',16.61,70.08,'1991-11-02 07:17:27','2007-08-22 21:09:19','2023-07-12 14:06:10','2023-07-12 14:06:10'),(24,'81552321','percent',6.18,59.25,'2022-08-29 06:16:18','1998-04-06 18:25:52','2023-07-12 14:06:10','2023-07-12 14:06:10'),(25,'78734986','amount',12.70,92.68,'2004-12-14 15:51:39','2023-03-19 19:55:28','2023-07-12 14:06:10','2023-07-12 14:06:10'),(26,'57603044','amount',18.02,57.00,'1994-09-04 20:20:39','2016-12-11 23:05:07','2023-07-12 14:06:10','2023-07-12 14:06:10'),(27,'38370154','percent',13.47,28.61,'2004-07-31 09:02:31','2011-05-19 13:05:03','2023-07-12 14:06:10','2023-07-12 14:06:10'),(28,'14034051','percent',18.70,88.35,'2005-09-24 07:15:23','1985-01-12 19:56:17','2023-07-12 14:06:10','2023-07-12 14:06:10'),(29,'88434781','percent',7.74,38.17,'2022-12-31 12:55:44','1994-01-14 06:26:28','2023-07-12 14:06:10','2023-07-12 14:06:10'),(30,'44776107','percent',8.41,69.38,'1977-09-21 13:29:42','1993-06-29 07:13:35','2023-07-12 14:06:10','2023-07-12 14:06:10'),(31,'69309546','amount',17.80,60.00,'2009-09-06 04:18:24','2005-12-18 09:12:23','2023-07-12 14:06:10','2023-07-12 14:06:10'),(32,'30130783','percent',18.60,75.31,'2001-01-11 06:31:36','1998-02-12 05:30:27','2023-07-12 14:06:10','2023-07-12 14:06:10'),(33,'70844760','amount',16.38,90.08,'1979-08-10 05:32:34','2020-07-17 22:38:23','2023-07-12 14:06:10','2023-07-12 14:06:10'),(34,'28878860','amount',14.09,43.92,'1973-11-12 16:52:56','2009-08-06 04:55:39','2023-07-12 14:06:10','2023-07-12 14:06:10'),(35,'17526495','percent',14.43,10.50,'2004-05-12 09:23:41','2008-01-09 21:36:10','2023-07-12 14:06:10','2023-07-12 14:06:10'),(36,'32342154','percent',10.42,22.49,'1981-11-12 04:03:13','2001-11-30 15:41:16','2023-07-12 14:06:10','2023-07-12 14:06:10'),(37,'27534981','percent',6.95,86.97,'1976-05-28 07:19:05','1980-12-11 01:52:59','2023-07-12 14:06:10','2023-07-12 14:06:10'),(38,'14838089','amount',19.20,95.00,'1970-06-04 16:13:00','1990-04-08 21:43:08','2023-07-12 14:06:10','2023-07-12 14:06:10'),(39,'53443921','percent',14.42,36.74,'1997-03-25 17:17:09','2014-01-05 08:13:27','2023-07-12 14:06:10','2023-07-12 14:06:10'),(40,'35062601','percent',6.57,81.41,'1972-05-13 10:48:02','1997-11-12 13:08:29','2023-07-12 14:06:10','2023-07-12 14:06:10'),(41,'91015270','percent',13.15,93.62,'1990-01-27 19:32:36','2018-06-15 19:11:07','2023-07-12 14:06:10','2023-07-12 14:06:10'),(42,'60452347','amount',8.43,45.56,'1987-04-11 13:54:28','2010-04-25 20:03:35','2023-07-12 14:06:10','2023-07-12 14:06:10'),(43,'66461735','percent',14.81,46.37,'2005-10-31 01:16:16','1997-06-18 10:59:45','2023-07-12 14:06:10','2023-07-12 14:06:10'),(44,'45264804','amount',10.56,88.31,'2015-01-26 10:02:28','1985-10-25 05:06:19','2023-07-12 14:06:10','2023-07-12 14:06:10'),(45,'38692129','amount',10.33,84.48,'1990-01-02 12:20:05','1990-08-04 01:32:39','2023-07-12 14:06:10','2023-07-12 14:06:10'),(46,'44468691','amount',7.83,10.26,'1992-12-01 20:29:42','2023-05-12 05:58:27','2023-07-12 14:06:10','2023-07-12 14:06:10'),(47,'99447621','amount',13.30,21.95,'1994-03-20 13:18:54','1971-05-02 08:07:12','2023-07-12 14:06:10','2023-07-12 14:06:10'),(48,'83730662','percent',14.94,59.31,'2018-02-16 14:31:10','1975-02-27 15:27:37','2023-07-12 14:06:10','2023-07-12 14:06:10'),(49,'56966913','amount',16.80,17.85,'2005-12-15 23:09:03','1994-10-03 20:08:40','2023-07-12 14:06:10','2023-07-12 14:06:10'),(50,'81788322','amount',16.07,54.54,'1995-01-01 16:56:37','2001-12-03 00:53:00','2023-07-12 14:06:10','2023-07-12 14:06:10'),(51,'46204445','percent',9.65,24.75,'1982-03-08 14:10:34','2005-10-15 17:15:15','2023-07-12 14:06:10','2023-07-12 14:06:10'),(52,'86890703','percent',17.22,81.70,'1991-07-13 06:20:38','2004-05-22 20:12:28','2023-07-12 14:06:10','2023-07-12 14:06:10'),(53,'57771699','amount',14.01,23.15,'1985-05-09 07:23:09','2001-11-05 20:46:20','2023-07-12 14:06:10','2023-07-12 14:06:10'),(54,'98415931','percent',8.56,71.53,'1992-12-30 14:07:42','1994-02-15 00:08:31','2023-07-12 14:06:10','2023-07-12 14:06:10'),(55,'50046625','amount',15.94,56.91,'1980-08-05 16:06:13','2001-11-27 11:13:11','2023-07-12 14:06:10','2023-07-12 14:06:10'),(56,'79441546','percent',7.26,80.95,'1978-10-06 08:11:14','2022-09-26 06:05:48','2023-07-12 14:06:10','2023-07-12 14:06:10');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_user_id_foreign` (`user_id`),
  CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,4,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(2,5,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(3,6,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(4,7,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(5,8,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(6,9,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(7,10,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(8,11,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(9,12,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL),(10,13,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_costs`
--

DROP TABLE IF EXISTS `delivery_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_costs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cost` double(8,2) NOT NULL,
  `fee_cost` double(8,2) NOT NULL,
  `minimum_cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_costs`
--

LOCK TABLES `delivery_costs` WRITE;
/*!40000 ALTER TABLE `delivery_costs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_keys`
--

DROP TABLE IF EXISTS `device_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_keys_customer_id_foreign` (`customer_id`),
  CONSTRAINT `device_keys_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_keys`
--

LOCK TABLES `device_keys` WRITE;
/*!40000 ALTER TABLE `device_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_device_keys`
--

DROP TABLE IF EXISTS `driver_device_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_device_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_device_keys_driver_id_foreign` (`driver_id`),
  CONSTRAINT `driver_device_keys_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_device_keys`
--

LOCK TABLES `driver_device_keys` WRITE;
/*!40000 ALTER TABLE `driver_device_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_device_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_histories`
--

DROP TABLE IF EXISTS `driver_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_histories_driver_id_foreign` (`driver_id`),
  KEY `driver_histories_order_id_foreign` (`order_id`),
  CONSTRAINT `driver_histories_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  CONSTRAINT `driver_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_histories`
--

LOCK TABLES `driver_histories` WRITE;
/*!40000 ALTER TABLE `driver_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_notifications`
--

DROP TABLE IF EXISTS `driver_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `driver_notifications_driver_id_foreign` (`driver_id`),
  CONSTRAINT `driver_notifications_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_notifications`
--

LOCK TABLES `driver_notifications` WRITE;
/*!40000 ALTER TABLE `driver_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_orders`
--

DROP TABLE IF EXISTS `driver_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `driver_id` bigint unsigned NOT NULL,
  `is_accept` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pick-up',
  PRIMARY KEY (`id`),
  KEY `driver_orders_order_id_foreign` (`order_id`),
  KEY `driver_orders_driver_id_foreign` (`driver_id`),
  CONSTRAINT `driver_orders_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  CONSTRAINT `driver_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_orders`
--

LOCK TABLES `driver_orders` WRITE;
/*!40000 ALTER TABLE `driver_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_approve` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `drivers_user_id_foreign` (`user_id`),
  CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
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
-- Table structure for table `invoice_manages`
--

DROP TABLE IF EXISTS `invoice_manages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_manages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_manages`
--

LOCK TABLES `invoice_manages` WRITE;
/*!40000 ALTER TABLE `invoice_manages` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_manages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('image','audio','video','docs','excel','pdf','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extention` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'image','nihil','images/dummy/dummy-placeholder.png','png','Iste voluptates perspiciatis rem ut at aut perferendis aut.','images/dummy/','2023-07-12 14:06:08','2023-07-12 14:06:08'),(2,'image','aut','images/dummy/dummy-placeholder.png','png','Omnis omnis id sunt sed maiores illo assumenda.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(3,'image','sequi','images/dummy/dummy-placeholder.png','png','Perspiciatis cum facere quia sint sunt vero.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(4,'image','sit','images/dummy/dummy-placeholder.png','png','Qui laboriosam excepturi recusandae non qui.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(5,'image','harum','images/dummy/dummy-placeholder.png','png','Sint magnam repellendus sed.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(6,'image','fuga','images/dummy/dummy-placeholder.png','png','Non aut et et rerum aperiam est.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(7,'image','debitis','images/dummy/dummy-placeholder.png','png','Explicabo sint aliquam temporibus nemo molestias rem natus enim.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(8,'image','eos','images/dummy/dummy-placeholder.png','png','Voluptas quia omnis vitae totam.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(9,'image','dolor','images/dummy/dummy-placeholder.png','png','Ipsam quia inventore omnis et velit omnis.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(10,'image','hic','images/dummy/dummy-placeholder.png','png','Eum nihil rerum deserunt dignissimos laudantium quidem similique.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(11,'image','ad','images/dummy/dummy-placeholder.png','png','Odit nulla tempora vitae mollitia consequatur eligendi deleniti.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(12,'image','sint','images/dummy/dummy-placeholder.png','png','Error voluptate aut necessitatibus ad.','images/dummy/','2023-07-12 14:06:09','2023-07-12 14:06:09'),(13,'image','facere','images/dummy/dummy-placeholder.png','png','Quia facilis eum et hic sit optio minima natus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(14,'image','at','images/dummy/dummy-placeholder.png','png','Sequi distinctio aut unde voluptatem ut beatae magni.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(15,'image','laudantium','images/dummy/dummy-placeholder.png','png','Aut et est at ut tenetur.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(16,'image','sed','images/dummy/dummy-placeholder.png','png','Quam necessitatibus qui dignissimos sapiente inventore totam sequi.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(17,'image','perspiciatis','images/dummy/dummy-placeholder.png','png','Consectetur aperiam est consequuntur corporis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(18,'image','distinctio','images/dummy/dummy-placeholder.png','png','Delectus consectetur quasi aut tenetur deserunt possimus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(19,'image','sit','images/dummy/dummy-placeholder.png','png','Vel aut dolorem minima blanditiis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(20,'image','ea','images/dummy/dummy-placeholder.png','png','Asperiores voluptas veritatis necessitatibus quia atque.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(21,'image','quasi','images/dummy/dummy-placeholder.png','png','Culpa non molestiae tempore sint.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(22,'image','inventore','images/dummy/dummy-placeholder.png','png','Sapiente fugit molestiae id in praesentium sit.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(23,'image','ut','images/dummy/dummy-placeholder.png','png','Esse enim dolores possimus et cum totam quis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(24,'image','omnis','images/dummy/dummy-placeholder.png','png','Voluptatem facere quasi quasi voluptatem quasi.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(25,'image','sed','images/dummy/dummy-placeholder.png','png','Ut ut et rem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(26,'image','nostrum','images/dummy/dummy-placeholder.png','png','Quisquam at ex at.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(27,'image','voluptatem','images/dummy/dummy-placeholder.png','png','Provident expedita non iusto vel.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(28,'image','culpa','images/dummy/dummy-placeholder.png','png','Fuga iste commodi earum eos at id.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(29,'image','voluptatem','images/dummy/dummy-placeholder.png','png','Illo est qui sit tempore eos.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(30,'image','sed','images/dummy/dummy-placeholder.png','png','Quos iusto ipsa rerum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(31,'image','error','images/dummy/dummy-placeholder.png','png','Reprehenderit voluptas voluptas excepturi voluptas quia explicabo dolorem nisi.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(32,'image','laborum','images/dummy/dummy-placeholder.png','png','Placeat tenetur consequatur eum aperiam quia nobis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(33,'image','distinctio','images/dummy/dummy-placeholder.png','png','Voluptate excepturi aspernatur iste doloribus qui voluptate.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(34,'image','unde','images/dummy/dummy-placeholder.png','png','Et velit perspiciatis similique voluptates repellendus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(35,'image','id','images/dummy/dummy-placeholder.png','png','Excepturi optio accusamus error provident magni vel.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(36,'image','aspernatur','images/dummy/dummy-placeholder.png','png','Fugit rerum saepe illum earum ducimus quis dicta in.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(37,'image','sit','images/dummy/dummy-placeholder.png','png','Consequatur consequatur omnis autem suscipit aliquid temporibus enim.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(38,'image','quaerat','images/dummy/dummy-placeholder.png','png','Dolores cumque consectetur ipsum voluptatem et sed aut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(39,'image','tempore','images/dummy/dummy-placeholder.png','png','Sed nostrum sunt ut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(40,'image','vitae','images/dummy/dummy-placeholder.png','png','Dolorum quia dolor adipisci est cum eos.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(41,'image','est','images/dummy/dummy-placeholder.png','png','Ad corporis dignissimos distinctio illo pariatur corrupti.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(42,'image','inventore','images/dummy/dummy-placeholder.png','png','Distinctio suscipit fuga optio molestiae temporibus velit.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(43,'image','quo','images/dummy/dummy-placeholder.png','png','Voluptatum rerum numquam officia nihil dicta eos ullam.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(44,'image','et','images/dummy/dummy-placeholder.png','png','Vel saepe enim ea architecto consequuntur libero explicabo.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(45,'image','quam','images/dummy/dummy-placeholder.png','png','Aliquid voluptatem esse repellendus aut nostrum optio.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(46,'image','similique','images/dummy/dummy-placeholder.png','png','Sit dolore et aperiam ut dolor nobis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(47,'image','blanditiis','images/dummy/dummy-placeholder.png','png','Atque et molestiae quae eos est suscipit est voluptatem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(48,'image','repellat','images/dummy/dummy-placeholder.png','png','Unde maiores iusto nisi aliquid voluptatem soluta vel.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(49,'image','suscipit','images/dummy/dummy-placeholder.png','png','Numquam vero quia facilis illum architecto nemo voluptas.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(50,'image','officiis','images/dummy/dummy-placeholder.png','png','Et optio quos ut cum qui qui fuga.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(51,'image','animi','images/dummy/dummy-placeholder.png','png','Quo sed ducimus officia numquam atque autem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(52,'image','repellendus','images/dummy/dummy-placeholder.png','png','Eos voluptas nam rerum optio esse.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(53,'image','odit','images/dummy/dummy-placeholder.png','png','Officia sit totam sequi totam laboriosam magni magni.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(54,'image','unde','images/dummy/dummy-placeholder.png','png','Rerum consequatur amet quidem molestias sint laborum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(55,'image','eos','images/dummy/dummy-placeholder.png','png','Molestiae et reprehenderit aut aut laboriosam accusantium.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(56,'image','dolore','images/dummy/dummy-placeholder.png','png','Explicabo consequuntur non illum nihil soluta esse.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(57,'image','inventore','images/dummy/dummy-placeholder.png','png','Dignissimos ipsum nobis aut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(58,'image','dolores','images/dummy/dummy-placeholder.png','png','Voluptatum sit qui dolores doloremque dolores est eaque.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(59,'image','quaerat','images/dummy/dummy-placeholder.png','png','Ut quasi officiis omnis quaerat corrupti.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(60,'image','est','images/dummy/dummy-placeholder.png','png','Omnis est laboriosam corrupti dignissimos a quis fugit.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(61,'image','repudiandae','images/dummy/dummy-placeholder.png','png','Quod et non natus voluptatem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(62,'image','et','images/dummy/dummy-placeholder.png','png','Atque placeat ducimus qui facilis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(63,'image','iusto','images/dummy/dummy-placeholder.png','png','Numquam tempora repellendus soluta soluta et est odio ratione.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(64,'image','optio','images/dummy/dummy-placeholder.png','png','Molestiae voluptates vel qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(65,'image','accusamus','images/dummy/dummy-placeholder.png','png','Et et deleniti ratione.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(66,'image','cumque','images/dummy/dummy-placeholder.png','png','Quia labore rerum sunt aliquid provident nihil.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(67,'image','consequatur','images/dummy/dummy-placeholder.png','png','Velit labore voluptatem ut aspernatur expedita tempore inventore nihil.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(68,'image','dolorum','images/dummy/dummy-placeholder.png','png','Ipsam consectetur ratione quae commodi quia sed.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(69,'image','temporibus','images/dummy/dummy-placeholder.png','png','Id non facere distinctio minima magni dolores.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(70,'image','provident','images/dummy/dummy-placeholder.png','png','Odit totam magnam aut voluptatem aperiam nobis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(71,'image','ut','images/dummy/dummy-placeholder.png','png','Est distinctio et ut dignissimos cumque laboriosam consequatur quos.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(72,'image','ut','images/dummy/dummy-placeholder.png','png','Ipsa in vel quae repellat vitae voluptas.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(73,'image','quia','images/dummy/dummy-placeholder.png','png','Sequi necessitatibus perferendis et laboriosam.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(74,'image','nesciunt','images/dummy/dummy-placeholder.png','png','Repellendus sit reiciendis sit nostrum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(75,'image','sed','images/dummy/dummy-placeholder.png','png','Quidem praesentium quasi quam aut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(76,'image','incidunt','images/dummy/dummy-placeholder.png','png','Temporibus error eligendi dolore aut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(77,'image','cumque','images/dummy/dummy-placeholder.png','png','Beatae alias in necessitatibus qui cupiditate.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(78,'image','id','images/dummy/dummy-placeholder.png','png','Impedit impedit dolor fugiat quia.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(79,'image','aspernatur','images/dummy/dummy-placeholder.png','png','At esse est provident reprehenderit non temporibus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(80,'image','quo','images/dummy/dummy-placeholder.png','png','Pariatur consequatur iure eius est et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(81,'image','quidem','images/dummy/dummy-placeholder.png','png','Molestiae qui reprehenderit eaque sunt saepe laborum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(82,'image','dolores','images/dummy/dummy-placeholder.png','png','Aut doloribus ut possimus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(83,'image','numquam','images/dummy/dummy-placeholder.png','png','Ad quis tempora nulla aspernatur repellat est.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(84,'image','assumenda','images/dummy/dummy-placeholder.png','png','Tempora quia est tempore omnis minima.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(85,'image','molestiae','images/dummy/dummy-placeholder.png','png','Velit magnam impedit reprehenderit natus et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(86,'image','nisi','images/dummy/dummy-placeholder.png','png','Odit quas voluptas est temporibus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(87,'image','consectetur','images/dummy/dummy-placeholder.png','png','Quis quia ratione recusandae cum qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(88,'image','error','images/dummy/dummy-placeholder.png','png','Nesciunt tempora sint dolorum in.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(89,'image','ea','images/dummy/dummy-placeholder.png','png','Molestiae accusantium animi sunt repudiandae et quia et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(90,'image','quisquam','images/dummy/dummy-placeholder.png','png','Impedit aperiam aspernatur nihil nesciunt fugit.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(91,'image','eaque','images/dummy/dummy-placeholder.png','png','Alias et accusamus aut in.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(92,'image','illum','images/dummy/dummy-placeholder.png','png','Soluta blanditiis voluptas qui maiores.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(93,'image','qui','images/dummy/dummy-placeholder.png','png','Adipisci nam maiores expedita.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(94,'image','illo','images/dummy/dummy-placeholder.png','png','Mollitia ipsum ratione voluptatum possimus labore.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(95,'image','laboriosam','images/dummy/dummy-placeholder.png','png','Perspiciatis molestiae debitis praesentium sequi velit quidem aut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(96,'image','explicabo','images/dummy/dummy-placeholder.png','png','Fugiat molestiae dolor impedit iure blanditiis magnam earum repellendus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(97,'image','voluptatem','images/dummy/dummy-placeholder.png','png','Explicabo vel enim velit et corporis nihil.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(98,'image','ut','images/dummy/dummy-placeholder.png','png','Consequatur repudiandae aut hic.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(99,'image','omnis','images/dummy/dummy-placeholder.png','png','Dolorum quidem molestiae quaerat aspernatur dolorem molestiae molestias.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(100,'image','quibusdam','images/dummy/dummy-placeholder.png','png','Ut sed deserunt et et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(101,'image','consequuntur','images/dummy/dummy-placeholder.png','png','Autem est non exercitationem alias laudantium nihil.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(102,'image','sit','images/dummy/dummy-placeholder.png','png','Consectetur ut in aperiam.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(103,'image','eum','images/dummy/dummy-placeholder.png','png','Autem nostrum id eius eum eligendi officia enim at.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(104,'image','quae','images/dummy/dummy-placeholder.png','png','Dignissimos quo et maxime vitae facilis eos expedita.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(105,'image','quo','images/dummy/dummy-placeholder.png','png','Consequuntur sunt molestiae cumque nulla consequatur rem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(106,'image','repellat','images/dummy/dummy-placeholder.png','png','Cum possimus quo qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(107,'image','qui','images/dummy/dummy-placeholder.png','png','Quisquam non assumenda aliquam autem veniam.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(108,'image','aut','images/dummy/dummy-placeholder.png','png','Sed voluptatum deleniti aliquam odio perferendis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(109,'image','nihil','images/dummy/dummy-placeholder.png','png','Quas adipisci molestiae rem molestiae non minus qui repudiandae.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(110,'image','magnam','images/dummy/dummy-placeholder.png','png','Officiis praesentium dolorem quibusdam quasi ut labore consequuntur.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(111,'image','in','images/dummy/dummy-placeholder.png','png','Nam placeat est quam omnis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(112,'image','soluta','images/dummy/dummy-placeholder.png','png','Enim voluptatem sed totam adipisci dignissimos.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(113,'image','sit','images/dummy/dummy-placeholder.png','png','Quod consectetur quam quibusdam dicta autem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(114,'image','accusamus','images/dummy/dummy-placeholder.png','png','Quia dolorem quam ex iusto natus voluptates non iste.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(115,'image','laudantium','images/dummy/dummy-placeholder.png','png','Dolores qui earum ea quia.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(116,'image','id','images/dummy/dummy-placeholder.png','png','Quod aut ex veritatis omnis alias.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(117,'image','voluptatem','images/dummy/dummy-placeholder.png','png','Architecto magni perspiciatis libero non.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(118,'image','quis','images/dummy/dummy-placeholder.png','png','Et inventore atque consequatur quam aut laudantium.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(119,'image','impedit','images/dummy/dummy-placeholder.png','png','Illo fuga eaque sunt.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(120,'image','alias','images/dummy/dummy-placeholder.png','png','Iste a omnis et consequatur.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(121,'image','eligendi','images/dummy/dummy-placeholder.png','png','Id ea rerum sit modi.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(122,'image','accusantium','images/dummy/dummy-placeholder.png','png','Omnis eaque et aut recusandae.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(123,'image','ut','images/dummy/dummy-placeholder.png','png','Quia quas aliquam quibusdam et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(124,'image','doloremque','images/dummy/dummy-placeholder.png','png','Incidunt iste velit cumque et itaque.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(125,'image','esse','images/dummy/dummy-placeholder.png','png','Ex similique sit voluptas enim est.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(126,'image','voluptates','images/dummy/dummy-placeholder.png','png','Fugit debitis voluptatem excepturi ut et laboriosam et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(127,'image','accusantium','images/dummy/dummy-placeholder.png','png','Non optio itaque ut tenetur.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(128,'image','ipsa','images/dummy/dummy-placeholder.png','png','Consequatur illo dolores ipsam maxime aut quia similique fuga.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(129,'image','vel','images/dummy/dummy-placeholder.png','png','Amet ea suscipit voluptatem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(130,'image','maxime','images/dummy/dummy-placeholder.png','png','Repellendus consequatur voluptatibus aspernatur sed.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(131,'image','sunt','images/dummy/dummy-placeholder.png','png','Quos vitae tempore iure laborum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(132,'image','nulla','images/dummy/dummy-placeholder.png','png','Laboriosam placeat odit quis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(133,'image','distinctio','images/dummy/dummy-placeholder.png','png','A fugit necessitatibus consectetur qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(134,'image','itaque','images/dummy/dummy-placeholder.png','png','Eaque et omnis enim ab doloremque nihil voluptatibus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(135,'image','quis','images/dummy/dummy-placeholder.png','png','Ipsum sequi ea earum a.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(136,'image','dicta','images/dummy/dummy-placeholder.png','png','Delectus maiores itaque enim earum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(137,'image','quisquam','images/dummy/dummy-placeholder.png','png','Est aut eaque laboriosam tempore.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(138,'image','quod','images/dummy/dummy-placeholder.png','png','Quia nam qui nemo repellendus aliquid repellat earum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(139,'image','voluptate','images/dummy/dummy-placeholder.png','png','Vel consequuntur excepturi sint ex accusamus earum ducimus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(140,'image','cumque','images/dummy/dummy-placeholder.png','png','Est a magnam blanditiis nisi non velit corrupti.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(141,'image','et','images/dummy/dummy-placeholder.png','png','Illum alias vitae distinctio quo assumenda ipsum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(142,'image','earum','images/dummy/dummy-placeholder.png','png','Omnis culpa consequatur quia ipsam voluptates sit.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(143,'image','voluptas','images/dummy/dummy-placeholder.png','png','Nihil fugiat est error fugit voluptatem in soluta.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(144,'image','harum','images/dummy/dummy-placeholder.png','png','Iure aut rerum ea consectetur.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(145,'image','itaque','images/dummy/dummy-placeholder.png','png','Dolor autem aut unde cum eum a.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(146,'image','voluptatum','images/dummy/dummy-placeholder.png','png','Molestiae fugiat ex eum eum enim eos odio.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(147,'image','distinctio','images/dummy/dummy-placeholder.png','png','Qui doloremque rem eaque et voluptas dolor.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(148,'image','rem','images/dummy/dummy-placeholder.png','png','Aliquid sed odit et cupiditate id iure qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(149,'image','velit','images/dummy/dummy-placeholder.png','png','Natus quasi aperiam sit hic rerum quas quod.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(150,'image','consectetur','images/dummy/dummy-placeholder.png','png','Non consequatur voluptatem accusantium qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(151,'image','sequi','images/dummy/dummy-placeholder.png','png','Consequatur non provident et et nemo exercitationem.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(152,'image','consequatur','images/dummy/dummy-placeholder.png','png','Tenetur excepturi porro suscipit illo laborum est qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(153,'image','quia','images/dummy/dummy-placeholder.png','png','Commodi natus voluptatem voluptatem quis nihil ex recusandae.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(154,'image','necessitatibus','images/dummy/dummy-placeholder.png','png','Delectus itaque sit possimus corporis atque.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(155,'image','rerum','images/dummy/dummy-placeholder.png','png','Aut aut quo vitae minus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(156,'image','rem','images/dummy/dummy-placeholder.png','png','Quae et repudiandae inventore non.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(157,'image','qui','images/dummy/dummy-placeholder.png','png','Ad voluptas molestiae explicabo et et nobis voluptatum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(158,'image','illum','images/dummy/dummy-placeholder.png','png','Culpa dolores quo rerum pariatur autem odio eligendi.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(159,'image','est','images/dummy/dummy-placeholder.png','png','Sequi nihil sed inventore necessitatibus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(160,'image','a','images/dummy/dummy-placeholder.png','png','Quisquam et aut ipsum dignissimos consequatur nostrum.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(161,'image','officiis','images/dummy/dummy-placeholder.png','png','Expedita numquam sit soluta corporis iusto.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(162,'image','at','images/dummy/dummy-placeholder.png','png','Delectus ut id odio tenetur laboriosam unde consequatur.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(163,'image','est','images/dummy/dummy-placeholder.png','png','Dolores iusto hic accusantium autem magnam illo et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(164,'image','aut','images/dummy/dummy-placeholder.png','png','Quo culpa enim quae.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(165,'image','rerum','images/dummy/dummy-placeholder.png','png','Ut itaque id et quo reiciendis facilis beatae.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(166,'image','deleniti','images/dummy/dummy-placeholder.png','png','Molestias sed sint earum sapiente laboriosam.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(167,'image','voluptas','images/dummy/dummy-placeholder.png','png','Dolorem et reprehenderit accusantium vero soluta tenetur libero.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(168,'image','temporibus','images/dummy/dummy-placeholder.png','png','Non eum est voluptatum hic omnis ut ducimus.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(169,'image','natus','images/dummy/dummy-placeholder.png','png','Quasi fugiat sit vel corrupti delectus itaque.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(170,'image','veritatis','images/dummy/dummy-placeholder.png','png','Quo ipsa error voluptas voluptatem odio ad fugit.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(171,'image','pariatur','images/dummy/dummy-placeholder.png','png','Cum rerum qui dolorem adipisci qui est.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(172,'image','sit','images/dummy/dummy-placeholder.png','png','Ipsam debitis aut suscipit ut voluptas.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(173,'image','voluptatibus','images/dummy/dummy-placeholder.png','png','Libero velit illo voluptas.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(174,'image','repudiandae','images/dummy/dummy-placeholder.png','png','Ducimus est alias impedit perspiciatis quis rerum qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(175,'image','doloribus','images/dummy/dummy-placeholder.png','png','Vel officiis quis porro aut.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(176,'image','sed','images/dummy/dummy-placeholder.png','png','Dignissimos iure libero eligendi tenetur non.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(177,'image','neque','images/dummy/dummy-placeholder.png','png','Quia et et omnis harum sit perferendis est.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(178,'image','similique','images/dummy/dummy-placeholder.png','png','Fuga labore odio ea ut perferendis autem et.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(179,'image','dolor','images/dummy/dummy-placeholder.png','png','Voluptatum saepe sed at error fuga excepturi blanditiis.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(180,'image','et','images/dummy/dummy-placeholder.png','png','Libero quod eos commodi molestiae quia ipsa.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10'),(181,'image','hic','images/dummy/dummy-placeholder.png','png','Consequatur omnis neque consectetur odio nemo porro qui.','images/dummy/','2023-07-12 14:06:10','2023-07-12 14:06:10');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_06_01_000001_create_oauth_auth_codes_table',1),(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(4,'2016_06_01_000004_create_oauth_clients_table',1),(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(6,'2021_09_01_000000_create_media_table',1),(7,'2021_09_01_100000_create_users_table',1),(8,'2021_09_01_200000_create_password_resets_table',1),(9,'2021_09_02_131940_create_failed_jobs_table',1),(10,'2021_09_02_131953_create_permission_tables',1),(11,'2021_09_08_162725_create_services_table',1),(12,'2021_09_11_085103_create_customers_table',1),(13,'2021_09_13_171450_create_variants_table',1),(14,'2021_09_15_064533_create_products_table',1),(15,'2021_09_20_052130_create_addresses_table',1),(16,'2021_09_21_045821_create_banners_table',1),(17,'2021_09_21_045849_create_coupons_table',1),(18,'2021_09_21_045910_create_orders_table',1),(19,'2021_09_22_051934_create_order_products_table',1),(20,'2021_10_20_105127_create_verification_codes_table',1),(21,'2021_10_24_090519_create_service_variants_table',1),(22,'2021_10_26_163146_create_settings_table',1),(23,'2021_11_02_115237_create_ratings_table',1),(24,'2021_11_20_072845_create_coupon_users_table',1),(25,'2021_12_20_085405_add_column_instraction_to_order_table',1),(26,'2022_01_13_070755_add_position_columns_in_variants_table',1),(27,'2022_02_05_141204_add_bangla_columns_to_variants_table',1),(28,'2022_02_05_194335_add_bangla_columns_to_services_table',1),(29,'2022_02_05_201107_add_bangla_columns_to_products_table',1),(30,'2022_02_12_000220_add_remove_status_colmun_orders_table',1),(31,'2022_02_12_000230_add_change_status_to_orders_table',1),(32,'2022_02_27_213854_add_order_colmun_to_products_table',1),(33,'2022_03_05_120307_create_additionals_table',1),(34,'2022_03_05_120500_create_additional_services_table',1),(35,'2022_03_06_103410_create_additional_orders_table',1),(36,'2022_04_13_123324_create_contacts_table',1),(37,'2022_06_06_211817_create_delivery_costs_table',1),(38,'2022_06_30_152555_create_mobile_app_urls_table',1),(39,'2022_07_05_123925_create_payments_table',1),(40,'2022_07_19_101634_add_description_to_products_table',1),(41,'2022_08_03_114942_create_device_keys_table',1),(42,'2022_08_10_160245_add_delete_at_addresses_table',1),(43,'2022_08_11_120358_create_notifications_table',1),(44,'2022_08_11_163235_create_admin_device_key_table',1),(45,'2022_08_21_180225_create_card_infos_table',1),(46,'2022_09_10_115554_add_stripe_customer_column_to_customers_table',1),(47,'2022_09_21_182517_create_drivers_table',1),(48,'2022_09_22_125851_create_driver_orders_table',1),(49,'2022_09_26_162755_create_driver_device_key_table',1),(50,'2022_09_28_170609_create_driver_notifications_table',1),(51,'2022_10_10_111423_add_driver_lience_and_brithday_column_to_user_table',1),(52,'2022_10_30_152931_create_social_link_table',1),(53,'2023_01_08_130313_add_device_type_column_to_device_key_table',1),(54,'2023_01_12_104744_create_stripe_keys_table',1),(55,'2023_01_12_114626_create_web_settings_table',1),(56,'2023_02_01_105110_add_title_column_to_notifications_table',1),(57,'2023_02_01_164032_create_order_schedules_table',1),(58,'2023_02_11_111232_add_address_column_to_web_setting_table',1),(59,'2023_02_11_122549_create_invoice_manages_table',1),(60,'2023_02_12_173746_add_signature_column_to_web_setting_table',1),(61,'2023_03_31_115106_create_areas_table',1),(62,'2023_04_01_111037_create_driver_histories_table',1),(63,'2023_04_01_111855_add_status_column_to_driver_orders_table',1),(64,'2023_04_01_114107_add_is_approve_to_drivers_table',1),(65,'2023_05_13_104329_create_sub_products_table',1),(66,'2023_05_13_152256_create_order_sub_products_table',1),(67,'2023_05_29_160539_add_is_show_column_to_order_table',1),(68,'2023_05_30_104843_add_soft_delete_to_product_table',1),(69,'2023_06_15_133341_change_mobile_number_colum_to_users_table',1),(70,'2023_06_15_170019_add_currency_column_to_web_setting_table',1),(71,'2023_07_10_160846_add_delivery_charge_to_order_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_app_urls`
--

DROP TABLE IF EXISTS `mobile_app_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobile_app_urls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `android_url` text COLLATE utf8mb4_unicode_ci,
  `ios_url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_app_urls`
--

LOCK TABLES `mobile_app_urls` WRITE;
/*!40000 ALTER TABLE `mobile_app_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobile_app_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
INSERT INTO `model_has_permissions` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',1),(3,'App\\Models\\User',1),(4,'App\\Models\\User',1),(5,'App\\Models\\User',1),(6,'App\\Models\\User',1),(7,'App\\Models\\User',1),(8,'App\\Models\\User',1),(9,'App\\Models\\User',1),(10,'App\\Models\\User',1),(11,'App\\Models\\User',1),(12,'App\\Models\\User',1),(13,'App\\Models\\User',1),(14,'App\\Models\\User',1),(15,'App\\Models\\User',1),(16,'App\\Models\\User',1),(17,'App\\Models\\User',1),(18,'App\\Models\\User',1),(19,'App\\Models\\User',1),(20,'App\\Models\\User',1),(21,'App\\Models\\User',1),(22,'App\\Models\\User',1),(23,'App\\Models\\User',1),(24,'App\\Models\\User',1),(25,'App\\Models\\User',1),(26,'App\\Models\\User',1),(27,'App\\Models\\User',1),(28,'App\\Models\\User',1),(29,'App\\Models\\User',1),(30,'App\\Models\\User',1),(31,'App\\Models\\User',1),(32,'App\\Models\\User',1),(33,'App\\Models\\User',1),(34,'App\\Models\\User',1),(35,'App\\Models\\User',1),(36,'App\\Models\\User',1),(37,'App\\Models\\User',1),(38,'App\\Models\\User',1),(39,'App\\Models\\User',1),(40,'App\\Models\\User',1),(41,'App\\Models\\User',1),(42,'App\\Models\\User',1),(43,'App\\Models\\User',1),(44,'App\\Models\\User',1),(45,'App\\Models\\User',1),(46,'App\\Models\\User',1),(47,'App\\Models\\User',1),(48,'App\\Models\\User',1),(49,'App\\Models\\User',1),(50,'App\\Models\\User',1),(51,'App\\Models\\User',1),(52,'App\\Models\\User',1),(53,'App\\Models\\User',1),(54,'App\\Models\\User',1),(55,'App\\Models\\User',1),(56,'App\\Models\\User',1),(57,'App\\Models\\User',1),(58,'App\\Models\\User',1),(59,'App\\Models\\User',1),(60,'App\\Models\\User',1),(61,'App\\Models\\User',1),(62,'App\\Models\\User',1),(63,'App\\Models\\User',1),(64,'App\\Models\\User',1),(65,'App\\Models\\User',1),(66,'App\\Models\\User',1),(67,'App\\Models\\User',1),(68,'App\\Models\\User',1),(69,'App\\Models\\User',1),(70,'App\\Models\\User',1),(71,'App\\Models\\User',1),(72,'App\\Models\\User',1),(73,'App\\Models\\User',1),(74,'App\\Models\\User',1),(75,'App\\Models\\User',1),(1,'App\\Models\\User',2);
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2),(4,'App\\Models\\User',3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_customer_id_foreign` (`customer_id`),
  CONSTRAINT `notifications_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laundry Personal Access Client','u6FH15sWtI7GT1LqEo1b6isbOvLAGk7ItTk6r71L',NULL,'http://localhost',1,0,0,'2023-07-12 14:06:11','2023-07-12 14:06:11'),(2,NULL,'Laundry Password Grant Client','fuGy2Feluci1NPkkendbJnggCVFpqxSoG1gD5DSb','users','http://localhost',0,1,0,'2023-07-12 14:06:11','2023-07-12 14:06:11');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2023-07-12 14:06:11','2023-07-12 14:06:11');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_products_order_id_foreign` (`order_id`),
  KEY `order_products_product_id_foreign` (`product_id`),
  CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,1,2,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(2,1,137,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(3,1,13,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(4,1,68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(5,1,124,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(6,1,125,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(7,1,59,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(8,1,65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(9,1,144,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(10,2,99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(11,2,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(12,3,117,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(13,3,88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(14,3,114,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(15,3,86,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(16,3,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(17,3,26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(18,4,153,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(19,4,144,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(20,4,37,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(21,4,103,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(22,4,115,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(23,4,98,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(24,4,30,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(25,5,41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(26,5,7,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(27,5,13,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(28,6,37,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(29,6,71,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(30,6,135,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(31,6,13,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(32,6,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(33,6,60,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(34,6,26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(35,7,138,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(36,7,145,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(37,8,128,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(38,8,132,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(39,9,68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(40,9,154,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(41,9,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(42,9,26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(43,9,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(44,9,74,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(45,9,46,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(46,9,87,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(47,9,41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(48,9,65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(49,10,95,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(50,10,3,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(51,10,55,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(52,10,125,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(53,10,89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(54,11,114,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(55,11,15,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(56,12,7,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(57,12,57,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(58,12,59,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(59,12,81,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(60,12,135,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(61,12,108,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(62,12,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(63,12,140,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(64,13,145,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(65,13,99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(66,13,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(67,13,36,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(68,13,50,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(69,13,115,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(70,13,88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(71,14,87,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(72,14,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(73,14,32,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(74,14,65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(75,14,117,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(76,14,2,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(77,14,35,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(78,14,29,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(79,15,125,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(80,15,25,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(81,15,94,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(82,15,46,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(83,15,15,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(84,15,65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(85,15,86,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(86,15,134,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(87,15,108,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(88,16,24,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(89,16,41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(90,16,49,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(91,16,153,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(92,16,117,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(93,16,30,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(94,17,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(95,17,2,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(96,17,37,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(97,17,36,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(98,17,128,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(99,17,132,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(100,18,24,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(101,18,135,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(102,18,55,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(103,18,140,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(104,18,50,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(105,18,34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(106,18,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(107,19,130,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(108,19,94,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(109,19,32,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(110,19,49,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(111,19,136,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(112,20,81,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(113,20,153,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(114,20,69,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(115,20,60,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(116,20,136,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(117,20,46,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(118,20,14,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(119,20,134,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(120,20,145,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(121,20,115,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(122,21,34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(123,21,136,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(124,22,136,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(125,22,137,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(126,22,145,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(127,22,89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(128,22,140,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(129,22,103,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(130,22,68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(131,22,29,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(132,22,125,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(133,23,145,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(134,23,76,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(135,24,36,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(136,24,55,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(137,24,132,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(138,24,144,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(139,24,3,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(140,24,81,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(141,24,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(142,24,79,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(143,24,69,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(144,24,46,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(145,25,103,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(146,25,34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(147,25,94,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(148,25,137,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(149,25,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(150,25,88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(151,25,121,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(152,26,95,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(153,26,99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(154,26,132,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(155,26,36,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(156,26,59,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(157,26,134,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(158,26,2,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(159,26,74,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(160,26,30,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(161,27,78,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(162,27,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(163,28,86,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(164,28,88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(165,28,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(166,29,89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(167,29,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(168,29,121,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(169,29,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(170,30,103,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(171,30,79,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(172,30,121,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(173,30,59,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(174,30,89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(175,30,41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(176,30,15,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(177,31,11,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(178,31,99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(179,32,3,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(180,32,29,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(181,32,88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(182,32,89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(183,33,41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(184,33,29,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(185,33,138,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(186,33,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(187,34,103,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(188,34,137,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(189,34,115,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(190,34,55,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(191,34,7,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(192,34,49,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(193,35,98,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(194,35,57,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(195,35,137,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(196,35,35,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(197,35,79,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(198,35,117,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(199,35,3,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(200,36,69,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(201,36,68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(202,36,30,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(203,36,129,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(204,36,125,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(205,36,78,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(206,36,89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(207,36,149,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(208,37,25,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(209,37,65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(210,38,12,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(211,38,68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(212,38,7,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(213,38,130,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(214,38,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(215,38,108,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(216,38,71,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(217,38,86,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(218,38,138,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(219,39,113,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(220,39,12,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(221,39,88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(222,40,137,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(223,40,12,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(224,40,90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(225,40,50,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(226,40,25,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(227,40,36,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(228,40,55,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(229,41,124,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(230,41,26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(231,42,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(232,42,57,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(233,42,8,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(234,42,35,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(235,42,78,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(236,42,24,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(237,43,106,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(238,43,103,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(239,43,49,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(240,43,69,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(241,43,99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(242,43,3,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(243,43,134,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(244,43,68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(245,43,150,1,'2023-07-12 14:06:10','2023-07-12 14:06:10'),(246,43,74,1,'2023-07-12 14:06:10','2023-07-12 14:06:10');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_schedules`
--

DROP TABLE IF EXISTS `order_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` int NOT NULL,
  `end_time` int NOT NULL,
  `per_hour` int NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `type` enum('pickup','delivery') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_schedules`
--

LOCK TABLES `order_schedules` WRITE;
/*!40000 ALTER TABLE `order_schedules` DISABLE KEYS */;
INSERT INTO `order_schedules` VALUES (1,'Sunday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(2,'Monday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(3,'Tuesday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(4,'Wednesday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(5,'Thursday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(6,'Friday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(7,'Saturday',8,16,1,1,'pickup','2023-07-12 14:06:07','2023-07-12 14:06:07'),(8,'Sunday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07'),(9,'Monday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07'),(10,'Tuesday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07'),(11,'Wednesday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07'),(12,'Thursday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07'),(13,'Friday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07'),(14,'Saturday',8,16,1,1,'delivery','2023-07-12 14:06:07','2023-07-12 14:06:07');
/*!40000 ALTER TABLE `order_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_sub_products`
--

DROP TABLE IF EXISTS `order_sub_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_sub_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `sub_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_sub_products_order_id_foreign` (`order_id`),
  KEY `order_sub_products_sub_product_id_foreign` (`sub_product_id`),
  KEY `order_sub_products_product_id_foreign` (`product_id`),
  CONSTRAINT `order_sub_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_sub_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `order_sub_products_sub_product_id_foreign` FOREIGN KEY (`sub_product_id`) REFERENCES `sub_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_sub_products`
--

LOCK TABLES `order_sub_products` WRITE;
/*!40000 ALTER TABLE `order_sub_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_sub_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `coupon_id` bigint unsigned DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `pick_date` date NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `pick_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `payment_status` enum('Pending','Paid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` enum('Cash on Delivery','Online Payment') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` bigint unsigned NOT NULL,
  `instruction` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_status` enum('Pending','Order confirmed','Picked your order','Processing','Cancelled','Delivered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_charge` double(8,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_coupon_id_foreign` (`coupon_id`),
  KEY `orders_address_id_foreign` (`address_id`),
  CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'5072','IM',1,8,17.25,'2023-05-31','2023-01-05','7:45:00','18:00:00',400.47,167.21,'Paid','Online Payment',23,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(2,'4567','IM',1,2,7.43,'2021-10-19','2023-05-12','15:30:00','8:30:00',450.89,242.99,'Paid','Online Payment',24,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(3,'8196','IM',2,10,14.29,'2022-01-27','2023-01-12','16:30:00','15:00:00',456.50,242.72,'Pending','Online Payment',25,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Picked your order',0,0.00),(4,'5358','IM',2,7,5.88,'2021-07-24','2023-05-28','22:00:00','12:15:00',437.89,369.77,'Paid','Cash on Delivery',26,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(5,'6994','IM',2,3,17.19,'2023-01-09','2023-05-18','6:45:00','23:15:00',123.67,333.36,'Paid','Online Payment',27,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(6,'3720','IM',2,5,9.23,'2023-01-02','2022-07-26','1:00:00','18:30:00',228.38,155.40,'Paid','Online Payment',28,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(7,'7295','IM',2,13,18.90,'2022-11-15','2023-01-24','17:30:00','8:00:00',141.42,402.26,'Pending','Cash on Delivery',29,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(8,'5791','IM',3,4,13.15,'2021-12-16','2023-05-11','19:30:00','6:45:00',138.10,235.17,'Pending','Online Payment',30,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Picked your order',0,0.00),(9,'542','IM',3,2,7.43,'2021-10-04','2022-12-25','22:45:00','23:45:00',215.30,321.02,'Paid','Cash on Delivery',31,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(10,'3082','IM',3,3,15.93,'2023-05-28','2023-05-23','20:30:00','12:30:00',342.54,391.76,'Pending','Cash on Delivery',32,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(11,'9895','IM',3,12,7.95,'2023-04-06','2023-05-05','2:15:00','19:45:00',420.02,115.79,'Pending','Online Payment',33,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(12,'5985','IM',3,10,17.25,'2021-09-22','2022-08-11','23:00:00','2:30:00',308.12,397.49,'Pending','Online Payment',34,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(13,'2810','IM',4,12,18.90,'2022-09-14','2023-02-25','19:45:00','12:45:00',380.65,167.32,'Pending','Online Payment',35,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(14,'6880','IM',4,5,5.88,'2023-05-21','2022-10-22','3:30:00','15:15:00',177.95,165.94,'Pending','Cash on Delivery',36,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Picked your order',0,0.00),(15,'9959','IM',4,8,15.93,'2022-02-09','2023-03-02','15:00:00','21:00:00',295.75,421.59,'Paid','Cash on Delivery',37,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(16,'1029','IM',4,2,5.88,'2021-07-27','2023-03-31','6:15:00','15:00:00',288.79,263.28,'Paid','Online Payment',38,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(17,'8235','IM',4,1,14.29,'2021-11-24','2023-02-23','8:15:00','14:00:00',82.38,51.87,'Paid','Online Payment',39,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(18,'7265','IM',5,12,5.88,'2021-09-03','2022-08-30','7:45:00','3:30:00',303.66,457.57,'Paid','Cash on Delivery',40,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Picked your order',0,0.00),(19,'4825','IM',5,3,7.43,'2021-10-16','2023-02-27','11:30:00','15:00:00',430.90,491.39,'Pending','Online Payment',41,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(20,'717','IM',5,9,14.20,'2023-02-23','2022-08-20','13:15:00','14:45:00',403.98,454.20,'Pending','Cash on Delivery',42,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(21,'3101','IM',5,5,17.25,'2023-05-07','2023-05-25','5:30:00','18:30:00',401.57,135.81,'Paid','Cash on Delivery',43,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(22,'5802','IM',5,12,17.19,'2023-06-13','2023-05-27','9:15:00','2:15:00',403.23,469.78,'Pending','Cash on Delivery',44,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(23,'1256','IM',5,9,13.15,'2022-06-16','2023-04-09','15:30:00','5:15:00',456.43,429.87,'Pending','Cash on Delivery',45,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(24,'3813','IM',5,12,15.93,'2023-03-17','2023-06-18','10:30:00','9:00:00',350.73,136.78,'Paid','Cash on Delivery',46,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Picked your order',0,0.00),(25,'6111','IM',6,3,7.43,'2022-03-08','2023-06-06','9:15:00','10:45:00',303.71,351.51,'Pending','Online Payment',47,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Processing',0,0.00),(26,'161','IM',7,13,18.90,'2022-04-24','2023-03-29','19:00:00','18:00:00',61.74,87.49,'Paid','Online Payment',48,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(27,'3093','IM',7,4,15.93,'2021-12-18','2023-06-25','8:30:00','20:15:00',113.31,112.82,'Pending','Online Payment',49,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(28,'1003','IM',7,7,13.15,'2023-01-21','2022-10-20','0:30:00','13:00:00',58.62,112.13,'Paid','Online Payment',50,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(29,'8774','IM',7,3,15.93,'2022-07-02','2022-09-16','15:45:00','8:45:00',382.68,294.16,'Paid','Online Payment',51,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(30,'1701','IM',7,2,14.29,'2022-12-03','2023-02-19','17:45:00','9:45:00',260.20,74.17,'Paid','Online Payment',52,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(31,'9816','IM',8,10,17.58,'2022-05-11','2022-12-07','6:30:00','12:45:00',467.10,480.38,'Pending','Online Payment',53,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Processing',0,0.00),(32,'2404','IM',8,11,13.15,'2021-08-11','2022-11-10','1:15:00','15:45:00',294.57,460.94,'Pending','Online Payment',54,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(33,'238','IM',8,9,13.15,'2022-10-03','2023-01-24','13:45:00','1:15:00',494.83,315.01,'Pending','Cash on Delivery',55,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(34,'9619','IM',8,1,14.20,'2022-06-29','2022-12-30','14:45:00','20:45:00',235.04,397.12,'Paid','Cash on Delivery',56,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(35,'9971','IM',8,2,5.88,'2021-11-24','2023-06-29','4:00:00','13:00:00',423.78,107.39,'Pending','Online Payment',57,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(36,'5343','IM',9,13,14.20,'2021-07-24','2022-12-30','11:00:00','13:00:00',464.08,145.92,'Paid','Online Payment',58,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Delivered',0,0.00),(37,'1493','IM',9,9,14.29,'2023-02-27','2022-11-07','20:15:00','5:45:00',291.52,494.07,'Paid','Cash on Delivery',59,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(38,'5707','IM',9,1,9.23,'2022-08-11','2022-08-15','4:15:00','22:45:00',273.13,341.52,'Pending','Cash on Delivery',60,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Processing',0,0.00),(39,'6200','IM',9,5,14.29,'2021-11-08','2022-09-07','17:45:00','17:00:00',486.79,212.04,'Paid','Online Payment',61,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Cancelled',0,0.00),(40,'3918','IM',10,13,13.15,'2022-11-21','2023-07-03','0:15:00','18:30:00',156.96,154.85,'Pending','Cash on Delivery',62,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00),(41,'6519','IM',10,12,13.41,'2022-12-07','2023-02-28','13:15:00','18:00:00',206.34,413.15,'Paid','Online Payment',63,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Processing',0,0.00),(42,'770','IM',10,9,7.95,'2022-03-04','2022-10-06','14:00:00','0:15:00',349.87,478.17,'Paid','Online Payment',64,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Pending',0,0.00),(43,'1186','IM',10,9,7.43,'2022-10-05','2023-05-28','9:15:00','19:30:00',65.47,410.97,'Pending','Cash on Delivery',65,NULL,'2023-07-12 14:06:10','2023-07-12 14:06:10','Order confirmed',0,0.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `object` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp` date NOT NULL,
  `last_no` int NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_order_id_foreign` (`order_id`),
  CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'root','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(2,'service.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(3,'service.create','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(4,'service.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(5,'service.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(6,'service.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(7,'service.status.toggle','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(8,'additional.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(9,'additional.create','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(10,'additional.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(11,'additional.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(12,'additional.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(13,'additional.status.toggle','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(14,'variant.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(15,'variant.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(16,'variant.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(17,'variant.products','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(18,'notification.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(19,'notification.send','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(20,'customer.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(21,'customer.show','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(22,'customer.create','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(23,'customer.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(24,'customer.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(25,'customer.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(26,'product.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(27,'product.create','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(28,'product.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(29,'product.show','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(30,'product.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(31,'product.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(32,'product.status.toggle','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(33,'banner.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(34,'banner.promotional','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(35,'banner.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(36,'banner.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(37,'banner.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(38,'banner.destroy','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(39,'banner.status.toggle','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(40,'order.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(41,'order.show','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(42,'order.status.change','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(43,'order.print.labels','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(44,'order.print.invioce','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(45,'orderIncomplete.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(46,'orderIncomplete.paid','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(47,'revenue.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(48,'revenue.generate.pdf','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(49,'report.generate.pdf','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(50,'coupon.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(51,'coupon.create','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(52,'coupon.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(53,'coupon.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(54,'coupon.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(55,'contact','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(56,'driver.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(57,'driver.create','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(58,'driver.store','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(59,'driverAssign','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(60,'driver.details','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(61,'profile.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(62,'profile.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(63,'profile.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(64,'profile.change-password','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(65,'schedule.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(66,'toggole.status.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(67,'schedule.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(68,'dashboard.calculation','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(69,'dashboard.revenue','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(70,'dashboard.overview','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(71,'setting.show','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(72,'setting.edit','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(73,'setting.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(74,'sms-gateway.index','web','2023-07-12 14:06:07','2023-07-12 14:06:07'),(75,'sms-gateway.update','web','2023-07-12 14:06:07','2023-07-12 14:06:07');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned NOT NULL,
  `variant_id` bigint unsigned NOT NULL,
  `thumbnail_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double(8,2) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` bigint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_service_id_foreign` (`service_id`),
  KEY `products_variant_id_foreign` (`variant_id`),
  KEY `products_thumbnail_id_foreign` (`thumbnail_id`),
  CONSTRAINT `products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `products_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`),
  CONSTRAINT `products_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,17,'aliquam','animi-eligendi-nam-non-et-consectetur-et',99.15,40.93,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(2,1,1,18,'aut','numquam-molestiae-qui-perferendis-recusandae-amet',19.21,35.42,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(3,1,1,19,'earum','aut-totam-error-illo-fugiat-sint-corrupti',11.61,27.40,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(4,1,1,20,'enim','esse-quos-odit-modi-consequatur-sed',94.92,56.11,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(5,1,1,21,'accusantium','voluptatum-perferendis-ab-sed-et',26.35,89.61,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(6,1,1,22,'quaerat','illum-mollitia-quo-qui-explicabo-quisquam-placeat',87.67,97.64,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(7,1,1,23,'eos','reiciendis-aperiam-consequatur-id-ut-libero',81.07,96.49,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(8,1,1,24,'ea','minima-et-deleniti-placeat-quis',26.62,84.26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(9,1,1,25,'quaerat','amet-nihil-ut-non-ipsa',20.20,14.58,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(10,1,1,26,'assumenda','qui-consequatur-autem-aliquid-veritatis-sed-praesentium',91.21,85.86,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(11,1,1,27,'velit','aut-iste-sit-quod-enim-atque-quos',10.60,15.50,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(12,1,1,28,'aut','officiis-numquam-vitae-qui-voluptas',56.56,21.57,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(13,1,1,29,'eos','quasi-delectus-maxime-reiciendis-quia-sint',12.13,66.62,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(14,1,2,30,'tenetur','dolore-odio-sit-nihil-dolorem-suscipit-in',15.96,28.25,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(15,1,2,31,'aut','vel-repellendus-nostrum-et-nam-neque',63.58,12.68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(16,1,2,32,'eos','qui-hic-vel-dicta-accusamus',91.23,24.95,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(17,1,2,33,'rerum','ipsa-quod-consequatur-adipisci-tempore-voluptatem-nobis-libero',93.05,46.69,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(18,1,2,34,'dolorem','enim-illo-quo-eligendi',44.95,30.42,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(19,1,2,35,'quis','earum-quo-amet-laudantium-dolores-neque-dicta-commodi-soluta',54.08,39.12,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(20,1,2,36,'consequatur','ut-nihil-nesciunt-voluptate-possimus-incidunt',76.21,15.29,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(21,1,2,37,'aut','id-qui-sint-reprehenderit-ut-sed-debitis',80.82,82.29,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(22,1,2,38,'labore','cupiditate-animi-est-laudantium-modi-rerum-ullam-enim-aut',20.64,19.47,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(23,1,3,39,'maxime','aspernatur-nam-doloribus-voluptatem-sed',40.02,68.94,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(24,1,3,40,'atque','eligendi-rem-commodi-omnis-aliquid',56.42,51.87,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(25,1,3,41,'expedita','commodi-saepe-facilis-nostrum',18.65,44.07,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(26,1,3,42,'sunt','reiciendis-quod-ut-aut-temporibus-aliquid-autem-inventore-aliquid',96.52,60.99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(27,1,3,43,'odit','eveniet-at-consectetur-ut-nihil-blanditiis-alias',64.82,17.01,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(28,1,3,44,'et','distinctio-voluptas-eum-reprehenderit-aspernatur-nisi',39.46,99.17,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(29,1,3,45,'praesentium','omnis-perferendis-id-qui-quia-nihil-vel',68.21,41.49,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(30,1,3,46,'rerum','rerum-sit-molestias-esse-et-consequatur-corporis-ut',21.03,25.33,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(31,1,3,47,'praesentium','quis-asperiores-id-est',72.16,62.75,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(32,1,3,48,'non','rerum-delectus-sed-voluptatibus-et-minima-reiciendis-veniam',37.44,82.41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(33,1,3,49,'eos','molestiae-in-molestias-suscipit-vel',50.63,68.15,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(34,1,3,50,'repellat','praesentium-maxime-sint-ex-commodi-ratione',78.68,93.72,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(35,1,3,51,'rem','voluptas-dignissimos-aperiam-qui-veritatis-hic-rerum-necessitatibus-voluptatem',17.17,74.68,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(36,1,3,52,'illum','quis-adipisci-iure-quo-in-dicta-enim-officia',30.54,28.65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(37,1,3,53,'id','deleniti-repudiandae-omnis-et-cupiditate',32.42,23.99,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(38,1,4,54,'ut','molestiae-eum-earum-ex-impedit-omnis-et',45.67,44.03,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(39,1,4,55,'et','earum-itaque-et-sequi-quia-aut-tempora-illum-occaecati',40.12,75.78,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(40,1,4,56,'architecto','placeat-velit-id-consequatur-ab-soluta-cumque-vel',80.65,42.97,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(41,1,4,57,'incidunt','qui-sint-qui-repudiandae-iusto',95.64,32.06,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(42,1,4,58,'sequi','odit-quas-quibusdam-aliquid-veniam-velit',55.41,23.30,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(43,1,4,59,'hic','eaque-praesentium-repellendus-id',50.39,65.38,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(44,1,4,60,'magni','ut-qui-est-adipisci-veniam-officiis-omnis-non-aliquam',31.35,39.09,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(45,1,4,61,'molestiae','ut-id-sunt-consequatur-natus-est',62.55,88.12,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(46,1,5,62,'tempore','aspernatur-harum-facere-accusantium-excepturi-deleniti-numquam-nihil',85.70,62.34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(47,1,5,63,'inventore','ea-reprehenderit-odit-nesciunt-earum-minus-qui',86.12,46.90,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(48,1,5,64,'repudiandae','ut-expedita-iusto-illo-voluptates-est-omnis-id',37.67,69.82,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(49,1,5,65,'perspiciatis','sit-fuga-voluptas-corporis-et-quia-ipsum',56.84,50.65,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(50,1,5,66,'asperiores','saepe-est-ad-molestias-voluptatum',20.68,35.27,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(51,2,1,67,'sunt','ab-quis-tenetur-iure-sequi-sit',98.35,29.36,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(52,2,1,68,'ipsam','porro-quos-quisquam-animi-molestiae-ut-quos-et-doloribus',20.84,68.47,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(53,2,1,69,'qui','accusamus-pariatur-adipisci-laborum-ipsa-quia-nemo-aut',87.55,53.83,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(54,2,1,70,'iste','et-quae-cupiditate-provident-accusamus',86.83,55.92,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(55,2,1,71,'nemo','facilis-eius-non-a-et-consectetur-provident-sunt-id',41.06,35.08,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(56,2,1,72,'occaecati','molestias-eum-natus-qui-unde-vero-et-nobis',34.76,65.09,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(57,2,1,73,'voluptatem','sit-quos-eius-accusamus-architecto',27.18,84.79,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(58,2,1,74,'possimus','sit-officia-quis-cupiditate-voluptatibus-aspernatur',93.28,39.74,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(59,2,1,75,'molestias','quia-nobis-eius-in-autem-et-fugiat-repellat',43.11,31.84,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(60,2,1,76,'magni','molestias-repellat-sint-atque-voluptatibus-vel-corporis-tempora-quidem',69.12,59.90,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(61,2,1,77,'amet','praesentium-alias-ut-distinctio-non-modi-dolorum-excepturi',20.50,96.76,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(62,2,1,78,'consectetur','deserunt-debitis-nostrum-beatae-eaque-porro-vel-enim',95.02,99.27,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(63,2,1,79,'qui','et-quia-necessitatibus-eligendi-facere-distinctio-voluptatem',67.24,40.77,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(64,2,2,80,'ratione','tempore-dolores-repellat-corrupti-vero-culpa-sint',45.36,47.38,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(65,2,2,81,'eos','non-et-eum-et-distinctio',36.67,16.61,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(66,2,2,82,'neque','dolorum-tempore-quia-provident-quia-et-repudiandae',63.33,54.71,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(67,2,2,83,'aliquid','illo-exercitationem-laudantium-omnis-magni-rerum-autem-rerum',29.37,44.76,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(68,2,2,84,'ut','eum-aut-voluptatem-rem-repudiandae',10.86,20.02,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(69,2,2,85,'et','quae-quia-deserunt-alias-quis-neque-maxime',36.53,35.27,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(70,2,2,86,'voluptatibus','quaerat-dolorem-sunt-consequatur-atque',54.19,36.05,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(71,2,2,87,'voluptatem','dolores-at-voluptas-ea-at-est-culpa',98.04,89.61,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(72,2,2,88,'enim','totam-et-rerum-porro-dicta-qui-dolore',52.63,67.94,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(73,2,2,89,'porro','placeat-qui-sed-fugit-eius-quisquam-sit',33.55,56.06,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(74,2,2,90,'totam','fuga-et-laboriosam-id-nesciunt-molestiae-laboriosam',87.93,54.41,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(75,2,2,91,'voluptas','voluptates-et-iusto-aperiam-dolor-reprehenderit-ea-optio',58.45,86.42,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(76,2,3,92,'alias','porro-aspernatur-culpa-esse-doloribus-doloremque-exercitationem',63.90,54.72,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(77,2,3,93,'commodi','enim-fuga-eum-qui',62.72,41.23,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(78,2,3,94,'explicabo','iste-incidunt-alias-voluptatibus-nemo-non-occaecati-repellendus',13.82,12.39,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(79,2,3,95,'vitae','est-aliquid-nam-voluptatum',86.33,46.42,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(80,2,3,96,'occaecati','perferendis-repellendus-occaecati-voluptas-cumque-est-amet',53.81,13.54,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(81,2,3,97,'quos','est-omnis-occaecati-sed-ipsam-voluptatem-est',97.28,55.33,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(82,2,4,98,'doloremque','qui-quia-tenetur-et-qui-aliquam-rerum',26.00,19.30,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(83,2,4,99,'esse','laborum-dolorum-unde-quod-vel-dolorum-atque',97.62,58.31,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(84,2,4,100,'quia','cum-omnis-vitae-dicta-laudantium-amet',12.62,28.68,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(85,2,4,101,'vel','ea-in-rerum-repellendus-beatae',32.32,69.31,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(86,2,4,102,'voluptas','aliquam-nihil-nostrum-ad',76.85,75.53,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(87,2,4,103,'recusandae','sequi-incidunt-facilis-sint-doloremque',42.00,44.85,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(88,2,4,104,'et','vel-et-ipsa-debitis-adipisci-quo-impedit',32.25,25.24,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(89,2,4,105,'consequatur','quaerat-accusamus-aspernatur-non-quidem-quas-nostrum',35.00,48.26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(90,2,4,106,'est','quia-ratione-voluptatibus-molestiae-recusandae-repellendus-sed-et',71.79,28.86,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(91,2,4,107,'architecto','nobis-eos-accusantium-enim-ut-accusamus-aut',71.11,60.60,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(92,2,4,108,'et','sapiente-dolorum-et-autem-asperiores-omnis-consequatur',64.74,56.48,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(93,2,4,109,'ratione','aperiam-corrupti-similique-tempore-ea-nobis-aliquam-labore',89.75,90.63,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(94,2,4,110,'quia','reprehenderit-molestiae-asperiores-dolores-quisquam-sed-voluptas',40.88,73.83,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(95,2,5,111,'optio','deserunt-in-in-nisi-possimus-eum',46.82,32.57,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(96,2,5,112,'eos','asperiores-deserunt-nihil-non-veniam-vitae-iure',72.98,84.33,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(97,2,5,113,'enim','aliquid-iste-rerum-possimus-est-qui-nam',98.86,61.07,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(98,2,5,114,'laboriosam','ullam-laborum-amet-quasi-veritatis-nulla',12.99,37.54,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(99,2,5,115,'vel','dolorem-ut-neque-voluptate-non',70.67,40.62,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(100,2,5,116,'libero','in-ullam-impedit-ipsum-unde-consequatur-dignissimos',98.10,64.93,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(101,2,5,117,'iusto','et-fuga-voluptatum-deleniti-pariatur-soluta-id-vero',86.59,45.24,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(102,2,5,118,'dolores','voluptatem-voluptatem-numquam-est-aperiam-occaecati',55.75,30.48,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(103,2,5,119,'perferendis','itaque-natus-doloribus-rerum-quia',85.95,37.97,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(104,2,5,120,'consequatur','repellendus-quas-voluptatum-sit-officia-quidem-nemo-eligendi',28.67,75.12,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(105,2,5,121,'officia','voluptates-doloremque-vel-commodi-blanditiis-facilis',88.16,54.78,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(106,2,5,122,'laboriosam','ad-aut-quia-et-quisquam-nemo-eveniet',85.87,97.33,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(107,2,5,123,'id','ullam-ratione-facere-tempore-est-facilis-assumenda-natus-numquam',79.69,46.89,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(108,2,5,124,'harum','quisquam-odio-asperiores-eaque-qui',88.30,47.78,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(109,2,5,125,'placeat','adipisci-et-rem-sint-necessitatibus-maiores-sapiente-nisi',12.33,88.94,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(110,3,1,126,'quia','voluptatum-illum-praesentium-provident-veritatis',90.33,91.91,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(111,3,1,127,'veniam','aut-et-aut-aut-nam-et-itaque-nobis-voluptas',99.99,30.34,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(112,3,1,128,'blanditiis','molestiae-rerum-animi-illo-magni-odio-cumque',41.01,46.58,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(113,3,1,129,'dolore','voluptas-repudiandae-at-officiis-quisquam-culpa',30.89,51.08,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(114,3,1,130,'dolores','qui-facere-numquam-qui',26.02,65.29,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(115,3,1,131,'cumque','ea-magnam-non-quae-ipsum-fuga',26.87,18.77,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(116,3,1,132,'cupiditate','quia-tempore-quos-vero',81.89,37.36,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(117,3,1,133,'eligendi','sit-asperiores-debitis-aliquam-laborum',31.36,39.88,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(118,3,1,134,'aut','eveniet-iure-dolores-praesentium-atque-quod-quo-animi',77.39,24.24,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(119,3,1,135,'quam','laudantium-neque-aliquid-consequatur-illum-sint',18.27,90.14,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(120,3,1,136,'totam','aspernatur-modi-ut-rerum',25.48,71.38,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(121,3,1,137,'laborum','minima-odio-natus-dolor-placeat-officiis-nostrum',82.34,56.34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(122,3,2,138,'nobis','ut-est-exercitationem-nisi-minus-aut',91.12,46.90,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(123,3,2,139,'ab','omnis-nisi-ex-nostrum-quidem-quo-ex',79.88,67.38,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(124,3,2,140,'ratione','laudantium-ab-exercitationem-at-deserunt-architecto-totam-eos',59.13,44.04,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(125,3,2,141,'eaque','aliquid-placeat-nam-consequatur-nesciunt-hic-molestiae-omnis',27.30,43.05,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(126,3,2,142,'rem','labore-dolorum-maxime-libero-ducimus-error-incidunt-quia',87.17,93.16,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(127,3,2,143,'reprehenderit','quaerat-culpa-dolorem-ut-quibusdam-magnam-molestiae-molestiae',55.50,78.25,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(128,3,2,144,'ab','sequi-esse-sunt-tenetur-ullam-ut-sed',96.95,77.56,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(129,3,3,145,'nisi','suscipit-dolores-ad-omnis',13.58,23.89,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(130,3,3,146,'doloribus','voluptatem-qui-rerum-iusto-necessitatibus-illum-et-non',95.52,14.92,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(131,3,3,147,'quisquam','laudantium-quidem-temporibus-deleniti-tempore-autem-repellat-dicta',34.69,66.14,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(132,3,3,148,'nisi','ut-in-aut-sed-dolores-veritatis-ipsam-reprehenderit-porro',62.72,94.26,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(133,3,3,149,'ut','consectetur-veniam-consequatur-officiis-unde',25.31,59.99,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(134,3,3,150,'porro','repellat-rerum-ut-illum-qui-inventore',43.69,20.59,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(135,3,3,151,'est','rem-voluptas-aut-suscipit-placeat-voluptate',30.40,69.50,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(136,3,3,152,'consequatur','aperiam-architecto-cupiditate-eum-error-quod-in',44.70,61.38,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(137,3,3,153,'omnis','accusantium-nobis-maxime-et-qui-et',17.87,72.21,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(138,3,3,154,'rem','est-sit-assumenda-minus-eum',14.50,69.14,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(139,3,3,155,'magnam','ut-maiores-alias-deserunt-dolorem-facilis-nulla-quibusdam',76.91,78.69,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(140,3,4,156,'repellendus','iste-quaerat-commodi-corrupti-in-distinctio-accusantium',79.55,12.40,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(141,3,4,157,'culpa','iure-voluptas-quos-rerum-corporis-animi-nihil-alias',27.49,88.44,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(142,3,4,158,'magnam','voluptatem-qui-qui-a-est-occaecati-officia-est-doloremque',35.08,15.15,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(143,3,4,159,'autem','alias-blanditiis-aliquam-voluptas-eum',20.48,23.25,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(144,3,4,160,'sint','omnis-fugiat-est-quibusdam-error-id-reiciendis-laboriosam',78.52,66.87,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(145,3,4,161,'rerum','quidem-enim-non-repudiandae-voluptates',80.87,55.42,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(146,3,4,162,'rerum','et-commodi-quasi-iure-tempora-voluptatum',12.56,79.08,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(147,3,5,163,'voluptas','fugiat-mollitia-maiores-ut-in-excepturi',92.95,28.18,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(148,3,5,164,'voluptatem','eligendi-nobis-error-accusantium-iste-ut',91.76,62.33,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(149,3,5,165,'in','rerum-sint-consequatur-ut-veniam-deleniti-quas-ratione',85.19,19.82,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(150,3,5,166,'natus','nisi-modi-excepturi-expedita-illum',50.52,56.42,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(151,3,5,167,'excepturi','provident-soluta-nemo-voluptas-nesciunt',94.41,83.34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(152,3,5,168,'ut','inventore-blanditiis-atque-in-corporis-eos-ratione-qui-explicabo',72.90,29.18,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(153,3,5,169,'reprehenderit','doloremque-labore-aut-modi',74.35,14.92,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(154,3,5,170,'iusto','voluptates-omnis-dolorem-sit-dolorem',38.53,46.34,1,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(155,3,5,171,'ducimus','dolorem-error-reiciendis-omnis-reprehenderit-hic',98.28,91.37,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL),(156,3,5,172,'aut','ipsa-magnam-maiores-aspernatur-distinctio-doloremque-a-aut',78.04,15.93,0,'2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `rating` int NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ratings_order_id_foreign` (`order_id`),
  KEY `ratings_customer_id_foreign` (`customer_id`),
  CONSTRAINT `ratings_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,1,4,'Iure enim distinctio ab molestias. Enim odit impedit sint dignissimos ullam est deleniti. Est incidunt optio ea omnis ab eos.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(2,2,1,3,'Qui quisquam id dicta eaque voluptatem. Quis consectetur ab voluptas veniam harum alias. Hic non unde soluta et. Dolor cumque qui sint.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(3,3,2,5,'Facere et iste commodi laboriosam provident. Nemo commodi necessitatibus quis at est enim neque eos. Nihil et blanditiis amet autem sit dolorum quasi consequatur. Velit eveniet dolor ut consequatur pariatur non.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(4,4,2,4,'Ea magni molestias voluptatibus ut sapiente non rerum. Mollitia minima laboriosam et dolores quia tempora. Laborum voluptatem odit distinctio. Voluptas aspernatur et quia repellat voluptatem molestias.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(5,5,2,3,'Est omnis quis aut totam nemo voluptatem in. Molestias dolor doloremque cupiditate modi rerum et voluptatem. Autem amet officia qui accusantium excepturi nihil. Dolorem rem soluta est officia et quaerat.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(6,6,2,4,'Quo dolorum minima veritatis accusantium non. Earum illo porro exercitationem reiciendis perferendis tempore. Hic nihil delectus deserunt expedita praesentium impedit.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(7,7,2,5,'In asperiores quia ut perspiciatis voluptatum dolores. Nobis dolore error id at expedita. In architecto autem tenetur accusantium enim tempora. Ut nesciunt et et quasi.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(8,8,3,3,'Numquam ut soluta et consequatur. Enim ipsa temporibus nemo. Sed quia saepe aliquam odit.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(9,9,3,4,'Porro numquam occaecati ut in quibusdam incidunt officia. Doloribus temporibus et perspiciatis quo eligendi sint. Quia dolor ut officia odit error. Et aut quidem voluptates debitis.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(10,10,3,5,'Sit eaque temporibus sapiente quia cum in. Qui provident rem et dolore ex voluptatem voluptatum.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(11,11,3,2,'Numquam cum deleniti unde ad iure earum. Qui repudiandae temporibus iusto nihil corrupti minus. Earum mollitia aperiam in dolorem et quis. Maxime officiis rerum exercitationem molestiae itaque.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(12,12,3,2,'Nihil et rerum et. Officia voluptas voluptas est. Accusamus eius dicta nesciunt rem et hic molestiae. Repellat nemo facilis quasi aspernatur recusandae qui delectus.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(13,13,4,2,'Laudantium dolorem et illum blanditiis sint sunt. Nihil voluptas dignissimos labore quia. Officia reprehenderit labore perferendis unde omnis adipisci. Non et veniam esse qui dolorem.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(14,14,4,4,'Maiores officiis assumenda et ut debitis officiis error. Perferendis cum modi ea est. Aut aut laudantium sint quis dolore quia eos quis.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(15,15,4,4,'Ea modi non doloribus omnis magni. Expedita voluptas nulla optio et consequatur. Doloremque nobis dolores dolore voluptates natus quod. Iste illum quibusdam eius rerum rerum totam.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(16,16,4,1,'Aut ut tempore sint doloremque culpa illum ullam. Architecto omnis quod vitae. Porro in nobis assumenda ut reprehenderit labore nesciunt. Sit quia omnis in sunt. Sit voluptatum distinctio iure quia et saepe explicabo deleniti.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(17,17,4,5,'Id vero distinctio corrupti voluptas natus. Et esse ut non. Fugiat repellat tenetur voluptas aut.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(18,18,5,2,'Deleniti nam esse non repellendus qui alias possimus. Distinctio nesciunt tenetur neque occaecati neque. Recusandae quia fuga nam maxime. Sapiente ut ea quis laborum inventore inventore eum. Dolor quisquam aperiam possimus accusamus natus nihil.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(19,19,5,5,'Dolores alias non cumque odit accusantium expedita. Aut in exercitationem et officiis facilis nihil sit. Alias ducimus repellendus assumenda dolor explicabo dolor.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(20,20,5,3,'Eveniet ut asperiores ad sint id eveniet. Tempore eos id veniam explicabo. Nulla consequatur architecto inventore a temporibus tempora. Rerum sapiente sunt molestiae natus nam id.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(21,21,5,2,'Soluta quos adipisci nam eligendi et quo. Veritatis eos velit quasi quo. Quo ea odio iusto qui. Molestias enim iusto nobis aut sit adipisci.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(22,22,5,4,'Saepe sit quo iusto. Quasi et adipisci dolore sit voluptas.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(23,23,5,5,'Ipsa explicabo delectus pariatur et velit. Distinctio quod ipsa accusamus dolores ipsam eos excepturi ullam. Quaerat non voluptas dolorem quaerat qui neque. Qui pariatur velit distinctio omnis et reprehenderit.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(24,24,5,2,'Harum impedit id dolor repellat id atque. Ea nesciunt beatae aut dolorum debitis libero quaerat. Recusandae minus blanditiis rerum autem voluptatem aliquam assumenda. Voluptatem et dignissimos voluptatem.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(25,25,6,2,'Dignissimos et voluptatem voluptatem temporibus modi. Et repellendus voluptatem commodi quae et aliquam. Quod voluptatum delectus debitis animi sint natus. Laboriosam consequuntur sunt possimus iusto.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(26,26,7,3,'Tempora aut ut reiciendis fugit unde qui. In molestiae deleniti maiores voluptatibus odio aut nulla. Voluptate quia adipisci eum.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(27,27,7,5,'Ullam aut dolorum facere eligendi est quia nam non. Repudiandae voluptatem nam eum labore. Aut placeat natus id cumque voluptatum rem. Ipsam laborum nam et ratione vero.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(28,28,7,4,'Aut esse ullam qui odio sint aut. Dolorem illum molestias et officiis. Qui ullam illum debitis nulla natus rem et. Et magnam ut ut eaque soluta.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(29,29,7,5,'Modi repellendus enim nihil id. Libero voluptatem voluptatem et veniam et quibusdam. Facilis autem consequatur rerum dolores et qui. Necessitatibus facere praesentium deserunt voluptas possimus recusandae.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(30,30,7,4,'Perspiciatis nihil distinctio nostrum eaque. Rerum sit sint tenetur consequatur sequi ab ut. Consequuntur explicabo optio dolores. Rerum deleniti exercitationem consectetur molestias.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(31,31,8,2,'Delectus in quis molestias eaque quia et nobis. Minima labore cumque ea perspiciatis minus. Possimus omnis laboriosam temporibus voluptas nobis tempora. Quae ullam est est quos.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(32,32,8,3,'Eum praesentium ut similique ea. Commodi officia asperiores voluptatem dolores veniam. Asperiores illum commodi rerum excepturi deleniti. Exercitationem consequatur qui quia illo quidem eos.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(33,33,8,1,'Id soluta quae et aut adipisci minus et. Sunt sapiente animi magnam ut sint. Ad facere numquam et ratione sunt repellat corrupti. Voluptate aut cumque est minus odio et non est.','2023-07-12 14:06:10','2023-07-12 14:06:10'),(34,34,8,1,'Quo est sequi alias qui iste ipsa. Dolor error aut minima velit. Occaecati qui assumenda sint beatae reprehenderit dolore. Perferendis accusamus animi quasi inventore rerum laborum architecto.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(35,35,8,2,'Inventore excepturi eaque assumenda vel reiciendis nemo. Aperiam sapiente hic officiis sit. Incidunt iste corrupti ex nemo fugiat repudiandae vel dicta. Qui unde dicta vel laborum totam.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(36,36,9,5,'Nemo ipsam assumenda harum aspernatur doloremque. Atque laboriosam neque corporis quo maxime. Est corrupti necessitatibus vel explicabo officia laudantium nesciunt.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(37,37,9,4,'Necessitatibus ad voluptas ratione autem. Qui eum et omnis suscipit totam. Est aliquam adipisci dolorem omnis sunt tenetur fugit voluptatibus. Aut enim ipsam vel consequatur suscipit necessitatibus sapiente.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(38,38,9,1,'Dolorum non laudantium veniam aliquid. Explicabo laudantium sed commodi omnis commodi aut. Omnis molestias reiciendis consequatur aspernatur nulla iusto quo. Id aut et cumque voluptas.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(39,39,9,3,'Non alias cum voluptas exercitationem aliquam fugit iusto aliquam. Et et aspernatur consequatur neque. Numquam repudiandae dicta exercitationem aperiam enim voluptate consequatur ut. Molestiae vitae similique consequatur impedit ratione distinctio.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(40,40,10,5,'Sint expedita voluptates explicabo commodi. Nesciunt expedita mollitia distinctio officiis consectetur nihil. Ab molestiae unde temporibus est. Laborum iste culpa vel delectus voluptas.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(41,41,10,3,'Deleniti quaerat quis nihil placeat totam officia quaerat. Laboriosam quo ab similique aut. Aut a molestias quas qui eligendi placeat voluptatem eligendi. Facere et in corporis quas incidunt nam.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(42,42,10,3,'Voluptate omnis omnis quidem numquam odit officia reiciendis. Qui sint incidunt distinctio pariatur enim. Beatae repellat delectus cumque quaerat autem praesentium ea.','2023-07-12 14:06:11','2023-07-12 14:06:11'),(43,43,10,5,'Non inventore rem ipsa modi quia. Sit iusto dolorum non et eum eum accusantium. Et qui esse adipisci dolor consectetur perspiciatis. Quia possimus culpa iure qui voluptatem.','2023-07-12 14:06:11','2023-07-12 14:06:11');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(1,2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'root','web',NULL,NULL),(2,'admin','web',NULL,NULL),(3,'customer','web',NULL,NULL),(4,'visitor','web',NULL,NULL),(5,'driver','web',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_variants`
--

DROP TABLE IF EXISTS `service_variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `service_id` bigint unsigned NOT NULL,
  `variant_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_variants_service_id_foreign` (`service_id`),
  KEY `service_variants_variant_id_foreign` (`variant_id`),
  CONSTRAINT `service_variants_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `service_variants_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_variants`
--

LOCK TABLES `service_variants` WRITE;
/*!40000 ALTER TABLE `service_variants` DISABLE KEYS */;
INSERT INTO `service_variants` VALUES (1,1,1,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(2,1,2,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(3,1,3,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(4,1,4,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(5,1,5,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(6,2,1,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(7,2,2,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(8,2,3,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(9,2,4,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(10,2,5,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(11,3,1,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(12,3,2,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(13,3,3,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(14,3,4,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(15,3,5,'2023-07-12 14:06:09','2023-07-12 14:06:09');
/*!40000 ALTER TABLE `service_variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `description_bn` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_thumbnail_id_foreign` (`thumbnail_id`),
  CONSTRAINT `services_thumbnail_id_foreign` FOREIGN KEY (`thumbnail_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Quod animi et dicta.',NULL,'Cumque repudiandae perspiciatis inventore. Sapiente id enim id hic et cumque eos ut.',NULL,4,1,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(2,'Cumque rerum tenetur suscipit placeat quae autem fuga.',NULL,'Fugit corporis qui enim doloremque quia. Ipsum et illo quidem voluptatibus eligendi recusandae iusto. Unde rerum provident et ex est.',NULL,5,1,'2023-07-12 14:06:09','2023-07-12 14:06:09'),(3,'Voluptatibus voluptatibus odio qui aliquid dolor.',NULL,'At labore aliquid et hic molestiae et sit. Officiis placeat consectetur animi unde quis.',NULL,6,1,'2023-07-12 14:06:09','2023-07-12 14:06:09');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Privacy Policy','privacy-policy','Quo non suscipit temporibus placeat. Voluptatem id natus aspernatur sed. Voluptate tempore veniam beatae enim expedita enim placeat. Aliquam est eum sed.\n\nOmnis rem fuga omnis eius nihil sint. Delectus officiis rerum quaerat voluptatem dignissimos quibusdam ad. Quis qui cum qui vel repellendus corrupti laborum non.\n\nConsequatur quia minus id nesciunt quaerat veniam porro. Nihil possimus facilis cum temporibus perspiciatis quis nostrum. Quos unde sint non quasi dolor expedita.\n\nVoluptates quasi omnis aperiam et repellat iste occaecati. Animi et neque minima enim velit quia. Est impedit id hic et necessitatibus quibusdam sit accusamus. Aliquam iure eligendi maxime id nemo ea dolores.\n\nVoluptas qui quibusdam sit pariatur cum iusto eos. Voluptatem illo corrupti dolorem nesciunt ut aperiam omnis. Consectetur qui impedit eveniet. Aut magni laudantium ut fugiat cupiditate autem aut.','2023-07-12 14:06:07','2023-07-12 14:06:07'),(2,'Terms of Service','trams-of-service','Voluptas aut aspernatur saepe sequi. Occaecati quae inventore ullam commodi dolorem enim placeat. Ut eos magnam esse et voluptas ullam.\n\nModi aut voluptatem molestiae voluptatem quam tempore. Et quod exercitationem enim quod consequatur nostrum. In et doloribus et qui culpa.\n\nDucimus ut dolorem dolor laborum. Culpa saepe et eligendi possimus officiis.\n\nPerspiciatis molestias esse eos est sapiente. Quia adipisci blanditiis tempore. Enim culpa voluptate necessitatibus. Ratione a est qui quia et exercitationem.\n\nHarum consequatur illum quidem et eaque voluptatem. Et qui magni et non et aut accusamus. Quasi ut eum a quia ex nulla repellat.','2023-07-12 14:06:07','2023-07-12 14:06:07'),(3,'Contact us','contact-us','Alias aliquam velit dolorum perferendis odio itaque reiciendis. Placeat sit voluptatem sit consequatur harum labore et. Odit provident rem adipisci molestiae id ut fugit aut. Tempore ipsum tempora aut voluptatem autem magnam.\n\nCommodi impedit rerum ratione quia et dolorem corrupti expedita. Maiores occaecati qui assumenda esse tempora est. Dolorem quaerat nostrum id necessitatibus.\n\nExplicabo qui harum laudantium in maxime delectus. Sit sapiente qui recusandae voluptatem culpa qui et quia. Dolor atque dolore accusamus quod cum quia nihil. Animi adipisci architecto nesciunt voluptatem.\n\nFacilis quis eum distinctio repellat aliquid. Molestiae mollitia delectus reprehenderit rem in illum. Consequuntur maxime at quia. Ut est mollitia qui iusto praesentium beatae dolor.\n\nEt harum qui ut. Aliquid dolores aut fuga aliquid quis. Rerum a at qui nostrum hic deleniti suscipit. Sunt ex voluptatum vitae sunt culpa consequatur. Dolores itaque quisquam porro vel omnis quisquam similique.','2023-07-12 14:06:07','2023-07-12 14:06:07'),(4,'About Us','about-us','Accusantium fugit dignissimos consequatur pariatur placeat aperiam ut doloremque. Voluptate blanditiis repudiandae in non. Et distinctio aspernatur aliquid. Eaque corrupti et velit non temporibus.\n\nSequi error exercitationem rerum est repudiandae. Est et et reprehenderit et. Et incidunt veritatis eligendi aliquam. Quam ut sint omnis rerum voluptas quia. Quia velit qui quos placeat quos at qui.\n\nAnimi commodi voluptatibus quibusdam eum voluptates est. Dolorem minima sapiente debitis et perspiciatis nihil non. Impedit voluptates laudantium omnis quis exercitationem quae laboriosam autem.\n\nCorrupti minima temporibus quis eos. Fuga temporibus nobis placeat minima voluptatem sunt architecto deserunt. Sed sunt voluptatibus expedita blanditiis sequi optio laborum.\n\nConsequatur sed aut inventore sequi ex. Et vero iusto doloribus hic dolorem. Asperiores delectus vel ipsam aperiam sit quaerat.','2023-07-12 14:06:07','2023-07-12 14:06:07');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_links_media_id_foreign` (`media_id`),
  CONSTRAINT `social_links_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_keys`
--

DROP TABLE IF EXISTS `stripe_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_keys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_keys`
--

LOCK TABLES `stripe_keys` WRITE;
/*!40000 ALTER TABLE `stripe_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_products`
--

DROP TABLE IF EXISTS `sub_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_products_product_id_foreign` (`product_id`),
  CONSTRAINT `sub_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_products`
--

LOCK TABLES `sub_products` WRITE;
/*!40000 ALTER TABLE `sub_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo_id` bigint unsigned DEFAULT NULL,
  `gender` enum('Male','Female','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driving_lience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_profile_photo_id_foreign` (`profile_photo_id`),
  CONSTRAINT `users_profile_photo_id_foreign` FOREIGN KEY (`profile_photo_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Root','Lind','01234567890','root@example.com','2023-07-12 14:06:07','2023-07-12 14:06:07',1,'$2y$10$VcHWOjyE2FpuTeUkscGUb.kDJVSZ4oP19zdS2qOoenCTj3SV2JAy6',1,NULL,NULL,'1Rt8Rw0dIu','2023-07-12 14:06:08','2023-07-12 14:06:08',NULL,NULL),(2,'Admin','Prohaska','01234567891','admin@example.com','2023-07-12 14:06:09','2023-07-12 14:06:09',1,'$2y$10$9pO/v.0/vFXA4CtPmlKmpuVzrOm3otAIJZ.cPIgUldG8W5aYTWCI.',2,NULL,NULL,'ogJj9vPzL5','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(3,'Visitor','Crooks','01000000000','visitor@example.com','2023-07-12 14:06:09','2023-07-12 14:06:09',0,'$2y$10$QgvR6k6ryQDTfjvYv1YAz.D3uMm0RX//k95Ozutq1NHwX1zUzIyYO',3,NULL,NULL,'0dqH3aw3df','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(4,'Lucas','Hammes','+13079903461','krystina.bernier@example.net','2023-07-12 14:06:09','2023-07-12 14:06:09',0,'$2y$10$taWP6NvhIU6kcpoh9qZL8uLH5hJNjGBTLo0Sqr77goZa50msRxNQu',7,NULL,NULL,'Ar93tDh9Ml','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(5,'Myrtice','Kihn','+12343906960','qromaguera@example.org','2023-07-12 14:06:09','2023-07-12 14:06:09',1,'$2y$10$/Gyy9Q7Y8lb.3Aye2APxve5IMnQplw3pR3V.qaOvhSHV9qSVMrnee',8,NULL,NULL,'GpwXTLrcpu','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(6,'Norberto','Macejkovic','+12817282584','cleuschke@example.net','2023-07-12 14:06:09','2023-07-12 14:06:09',1,'$2y$10$og5qcaPJ5STqJb8qCDXX/.EO0v.67Kj9bBC6vRLP1pv45i4wgNHcW',9,NULL,NULL,'7TKLoLmM4T','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(7,'Marjorie','Feest','+19085414241','kailee.huels@example.org','2023-07-12 14:06:09','2023-07-12 14:06:09',0,'$2y$10$0oj9vJiXyAqVriMH6NvD7esbSvqQucSrVEV5m0UL8dWZJTG3m7tIi',10,NULL,NULL,'ZEsSOlWlDn','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(8,'Arvid','Weber','+19037978681','xander96@example.net','2023-07-12 14:06:09','2023-07-12 14:06:09',0,'$2y$10$fp3TZukXoStMfSuN/pt2YerIPfrH5dngwIE/1M4UC8hIucBnc5kqm',11,NULL,NULL,'DF6ucChXLl','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(9,'Eloise','Zemlak','+16897703507','will.ross@example.com','2023-07-12 14:06:09','2023-07-12 14:06:09',1,'$2y$10$jHc2BqzBWCfbhP3MPoGFceG1HPRw86DoQU4lrjgIES.HssYBIX8sK',12,NULL,NULL,'L3VuVjPzB2','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(10,'Bennie','Bernhard','+14054704597','auer.shaun@example.com','2023-07-12 14:06:09','2023-07-12 14:06:09',0,'$2y$10$5Q6JVTWV7GrFh.zlM0UFau6vd37ReqRTsacj6KiZ76Ehb8bTQgwG2',13,NULL,NULL,'WnsH2Hluh6','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,NULL),(11,'Savannah','Walter','+16154947977','lindgren.bennie@example.org','2023-07-12 14:06:10','2023-07-12 14:06:10',0,'$2y$10$bBMwO4crtLVUE5VnY2eLRutXzrWHjMaePdg9NXZtPs4mss0X8sAY2',14,NULL,NULL,'308SOPwfpn','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,NULL),(12,'Terrell','Kling','+14583054016','erling.predovic@example.org','2023-07-12 14:06:10','2023-07-12 14:06:10',1,'$2y$10$MKtMRaV5WDvfjhqbLR4zR.nmkV2/GiBwEmAypct3szYVH4waq5hzK',15,NULL,NULL,'IR1pg3lK8e','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,NULL),(13,'Ismael','Haley','+15594384778','rblanda@example.org','2023-07-12 14:06:10','2023-07-12 14:06:10',0,'$2y$10$m6AG31H0i48m60qwvXxG6e42tzLELHzTapOQZb92c.hs7ArsJ5axS',16,NULL,NULL,'K2PU02Q1tU','2023-07-12 14:06:10','2023-07-12 14:06:10',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int DEFAULT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variants`
--

LOCK TABLES `variants` WRITE;
/*!40000 ALTER TABLE `variants` DISABLE KEYS */;
INSERT INTO `variants` VALUES (1,'Men','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(2,'Women','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(3,'Kids','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(4,'House Hold','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL),(5,'Others','2023-07-12 14:06:09','2023-07-12 14:06:09',NULL,NULL);
/*!40000 ALTER TABLE `variants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_codes`
--

DROP TABLE IF EXISTS `verification_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `verification_codes_otp_unique` (`otp`),
  UNIQUE KEY `verification_codes_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_codes`
--

LOCK TABLES `verification_codes` WRITE;
/*!40000 ALTER TABLE `verification_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_settings`
--

DROP TABLE IF EXISTS `web_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `web_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_id` bigint unsigned DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_settings`
--

LOCK TABLES `web_settings` WRITE;
/*!40000 ALTER TABLE `web_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-12 20:06:40
