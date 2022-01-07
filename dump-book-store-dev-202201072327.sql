-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: book-store-dev
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tbl_book`
--

DROP TABLE IF EXISTS `tbl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `tbl_book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_book`
--

LOCK TABLES `tbl_book` WRITE;
/*!40000 ALTER TABLE `tbl_book` DISABLE KEYS */;
INSERT INTO `tbl_book` VALUES (3,'house-101','Budapest','Deep learning has transformed the fields of computer vision, image processing, and natural language applications.','99900000','assets/images/webdevelopment/house1.jpg','',1,'2021-04-25 12:47:03',NULL,1),(4,'house-102','Budapest','Learn how to make better decisions and write cleaner Ruby code. This book shows you how to avoid messy code that is hard to test and which cripples productivity.','99900000','assets/images/webdevelopment/house2.jpg','',1,'2021-04-25 12:47:03',NULL,1),(5,'house-103','Budapest','Professional developers know the many benefits of writing application code that’s clean, well-organized, and easy to maintain.','99900000','assets/images/webdevelopment/house3.jpg','',1,'2021-04-25 12:47:03',NULL,1),(6,'house-104','Budapest','In 2017, consumers downloaded 178 billion apps, and analysts predict growth to 258 billion by 2022. Mobile customers are demanding more-and better-apps','99900000','assets/images/webdevelopment/house4.jpg','',1,'2021-04-25 12:47:03',NULL,1),(7,'house-105','Budapest','RabbitMQ in Depth is a practical guide to building and maintaining message-based applications. This book provides detailed','99900000','assets/images/webdevelopment/house5.jpg','',1,'2021-04-25 12:47:03',NULL,1),(8,'house-106','Budapest','Learn the fundamentals of version control through step-by-step tutorials that will teach you the ins-and-outs of Git. This book is your complete guide to','99900000','assets/images/webdevelopment/house6.jpg','',1,'2021-04-25 12:47:03',NULL,1),(9,'house-107','Budapest','Learn the fundamentals of version control through step-by-step tutorials that will teach you the ins-and-outs of Git. This book is your complete guide to','99900000','assets/images/webdevelopment/house7.jpg','',1,'2021-04-25 12:47:03',NULL,1),(10,'house-108','Budapest','Learn the fundamentals of version control through step-by-step tutorials that will teach you the ins-and-outs of Git. This book is your complete guide to','99900000','assets/images/webdevelopment/house8.jpg','',1,'2021-04-25 12:47:03',NULL,1),(11,'house-109','Budapest','Learn the fundamentals of version control through step-by-step tutorials that will teach you the ins-and-outs of Git. This book is your complete guide to','99900000','assets/images/webdevelopment/house9.jpg','',1,'2021-04-25 12:47:03',NULL,1),(12,'house-110','Budapest','Learn the fundamentals of version control through step-by-step tutorials that will teach you the ins-and-outs of Git. This book is your complete guide to','99900000','assets/images/webdevelopment/house10.jpg','',1,'2021-04-25 12:47:03',NULL,1),(13,'programming-101','Budapest','Discover the Jakarta EE Contexts and Dependency Injection (CDI 2.0) framework which helps you write better code through the use of well-defined enterprise','99900000','assets/images/programming/flat1.jpg','',1,'2021-04-25 12:47:03',NULL,2),(14,'programming-102','Budapest','This book is designed to introduce students to programming and computational thinking through the lens of exploring data. You can think of Python as your tool','99900000','assets/images/programming/flat2.jpg','',1,'2021-04-25 12:47:03',NULL,2),(15,'programming-103','Budapest','Harness the power of MATLAB for deep-learning challenges. This book provides an introduction to deep learning and using MATLAB’s deep-learning toolboxes.','99900000','assets/images/programming/flat3.jpg','',1,'2021-04-25 12:47:03',NULL,2),(16,'programming-104','Budapest','Learn how to program robotic vehicles with ardupilot libraries and pixhawk autopilot, both of which are open source technologies with a global scope','99900000','assets/images/programming/flat4.jpg','',1,'2021-04-25 12:47:03',NULL,2),(17,'programming-105','Budapest','Explore advanced .NET APIs and create a basic .NET core library with dynamic code generation and metadata inspection to be used by other libraries or client applications','99900000','assets/images/programming/flat5.jpg','',1,'2021-04-25 12:47:03',NULL,2),(18,'programming-106','Budapest','Study elementary and complex algorithms with clear examples and implementations in C. This book introduces data types (simple and structured) and algorithms','99900000','assets/images/programming/flat6.jpg','',1,'2021-04-25 12:47:03',NULL,2),(22,'databases-100','Pro T-SQL 2019','Design and write simple and efficient T-SQL code in SQL Server 2019 and beyond. Writing T-SQL that pulls back correct results can be challenging.','400','assets/images/databases/databases-100.jpg','',1,'2021-04-25 12:47:03',NULL,3),(23,'databases-101','Practical Oracle Cloud Infrastructure','Use this fast-paced and comprehensive guide to build cloud-based solutions on Oracle Cloud Infrastructure. You will understand cloud infrastructure','500','assets/images/databases/databases-101.jpg','',1,'2021-04-25 12:47:03',NULL,3),(24,'databases-102','Mastering Large Datasets with Python','Modern data science solutions need to be clean, easy to read, and scalable. In Mastering Large Datasets with Python, author J.T. Wolohan','600','assets/images/databases/databases-102.jpg','',100,'2021-04-25 12:47:03',NULL,3),(25,'databases-103','SQL Server Big Data Clusters','Get a head-start on learning one of SQL Server 2019’s latest and most impactful features―Big Data Clusters―that combines large volumes of non-relational data','700','assets/images/databases/databases-103.jpg','',100,'2021-04-25 12:47:03',NULL,3),(26,'databases-104','Refactoring Legacy T-SQL for Improved Performance','Breathe new life into older applications by refactoring T-SQL queries and code using modern techniques. This book shows you how to significantly improve','800','assets/images/databases/databases-104.jpg','',100,'2021-04-25 12:47:03',NULL,3),(27,'databases-105','Data Science Programming All-In-One For Dummies','Data science is exploding―in a good way―with a forecast of 1.7 megabytes of new information created every second for each human being on','900','assets/images/databases/databases-105.jpg','',100,'2021-04-25 12:47:03',NULL,3),(28,'databases-106','MongoDB: The Definitive Guide','Manage your data with a system designed to support modern application development. Updated for MongoDB 4.2, the third edition of this authoritative','1000','assets/images/databases/databases-106.jpg','',100,'2021-04-25 12:47:03',NULL,3),(29,'databases-107','The Definitive Guide to AWS Application Integration','Build reliable, asynchronous, and distributed applications using message queuing and task orchestration capabilities of Amazon Web Services (AWS) Application Integration.','400','assets/images/databases/databases-107.jpg','',100,'2021-04-25 12:47:03',NULL,3),(30,'databases-108','Jumpstart Snowflake','Explore the modern market of data analytics platforms and the benefits of using Snowflake computing, the data warehouse built for the cloud.','500','assets/images/databases/databases-108.jpg','',100,'2021-04-25 12:47:03',NULL,3),(31,'databases-109','MongoDB Recipes','Get the most out of MongoDB using a problem-solution approach. This book starts with recipes on the MongoDB query language, including how to query','600','assets/images/databases/databases-109.jpg','',100,'2021-04-25 12:47:03',NULL,3),(32,'administration-100','cPanel User Guide and Tutorial','A clear, complete guide to getting the most from cPanel. Anybody who has a web hosting account that provides cPanel, and who wants to get the most from this very powerful tool.','400','assets/images/administration/administration-100.jpg','',100,'2021-04-25 12:47:03',NULL,4),(33,'administration-101','Professional Outlook 2007 Programming','Written by one of the most popular and knowledgeable Microsoft Outlook MVPs, this book fills a void in the market for a professional-level Outlook programming book','500','assets/images/administration/administration-101.jpg','',100,'2021-04-25 12:47:03',NULL,4),(34,'administration-102','Pro Java Clustering and Scalability','Build clustered and scalable Java-based, real-time applications using Spring Framework, Boot, WebSocket, Cassandra, Redis and RabbitMQ. In this book','600','assets/images/administration/administration-102.jpg','',100,'2021-04-25 12:47:03',NULL,4),(35,'administration-103','Modular Design Frameworks','Learn the basic principles of modular design, and then put them into action to create sites that are easy to use, look great.','700','assets/images/administration/administration-103.jpg','',100,'2021-04-25 12:47:03',NULL,4),(36,'administration-104','Applied OpenStack Design Patterns','Learn practical and applied OpenStack cloud design solutions to gain maximum control over your infrastructure. You will achieve a complete controlled and customizable platform.','800','assets/images/administration/administration-104.jpg','',100,'2021-04-25 12:47:03',NULL,4),(37,'administration-105','VMware vSphere Performance','Covering the latest VMware vSphere software, an essential book aimed at solving vSphere performance problems before they happen','900','assets/images/administration/administration-105.jpg','',100,'2021-04-25 12:47:03',NULL,4),(38,'administration-106','VMware vSphere For Dummies','With virtualization, a single server can host dozens or hundreds of virtual machines running a variety of operating systems, and even hook them together in a virtual network','1000','assets/images/administration/administration-106.jpg','',100,'2021-04-25 12:47:03',NULL,4),(39,'administration-107','Beginning Elastic Stack','This book teaches you how to install, configure and implement the Elastic Stack (Elasticsearch, Logstash and Kibana) – the invaluable tool for anyone','300','assets/images/administration/administration-107.jpg','',100,'2021-04-25 12:47:03',NULL,4),(40,'administration-108','Nginx: From Beginner to Pro','Teaches you to start up Nginx and quickly take your expertise to a level where you can comfortably work with various aspects of the web server and make informe','400','assets/images/administration/administration-108.jpg','',100,'2021-04-25 12:47:03',NULL,4),(41,'administration-109','Web Audio API','Go beyond HTML5’s Audio tag and boost the audio capabilities of your web application with the Web Audio API. Packed with lots of code examples','500','assets/images/administration/administration-109.jpg','',100,'2021-04-25 12:47:03',NULL,4);
/*!40000 ALTER TABLE `tbl_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'Saját Sablonok'),(2,'Lakás'),(3,'Ház'),(4,'Telek'),(5,'Garázs'),(6,'Nyaraló'),(7,'Iroda'),(8,'Üzlethelyiség'),(9,'Vendéglátás'),(10,'Raktár'),(11,'Ipari'),(12,'Mezőgazdasági'),(13,'Fejlesztési Terület'),(14,'Tavak'),(15,'Szabadidő, Sport'),(16,'Intézmények');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'book-store-dev'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 23:27:58
