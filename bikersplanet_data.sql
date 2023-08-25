-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bikersplanet
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bike_catogories`
--

DROP TABLE IF EXISTS `bike_catogories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike_catogories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bike_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`),
  UNIQUE KEY `Type_UNIQUE` (`bike_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7082 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike_catogories`
--

LOCK TABLES `bike_catogories` WRITE;
/*!40000 ALTER TABLE `bike_catogories` DISABLE KEYS */;
INSERT INTO `bike_catogories` VALUES (7073,'Adventure'),(7078,'Cruiser'),(7076,'Dirt'),(7075,'Electric'),(7071,'Naked'),(7074,'Scooter'),(7072,'Sport');
/*!40000 ALTER TABLE `bike_catogories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bike_colors`
--

DROP TABLE IF EXISTS `bike_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike_colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bike_id` int NOT NULL,
  `color_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bi_id_idx` (`bike_id`),
  KEY `cr_id_idx` (`color_id`),
  CONSTRAINT `bi_id` FOREIGN KEY (`bike_id`) REFERENCES `bikes` (`id`),
  CONSTRAINT `cr_id` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8808 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike_colors`
--

LOCK TABLES `bike_colors` WRITE;
/*!40000 ALTER TABLE `bike_colors` DISABLE KEYS */;
INSERT INTO `bike_colors` VALUES (8801,501,5001),(8802,503,5003),(8803,505,5006),(8804,507,5004),(8805,513,5002),(8806,520,5001),(8807,524,5005);
/*!40000 ALTER TABLE `bike_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bikes`
--

DROP TABLE IF EXISTS `bikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bikes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bike_company_id` int DEFAULT NULL,
  `bike_cat_id` int DEFAULT NULL,
  `mileage` varchar(255) DEFAULT NULL,
  `transmission` varchar(255) DEFAULT NULL,
  `kerbweight` varchar(255) DEFAULT NULL,
  `fueltank` varchar(255) DEFAULT NULL,
  `seatheight` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bikecat_id_idx` (`bike_cat_id`),
  KEY `bikecom_id_idx` (`bike_company_id`),
  CONSTRAINT `bk_cat_id` FOREIGN KEY (`bike_cat_id`) REFERENCES `bike_catogories` (`id`),
  CONSTRAINT `bk_com_id` FOREIGN KEY (`bike_company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bikes`
--

LOCK TABLES `bikes` WRITE;
/*!40000 ALTER TABLE `bikes` DISABLE KEYS */;
INSERT INTO `bikes` VALUES (501,'BMW G 310 R',6065,7071,'32.46 kmpl','6 Speed','158.5 kg','11 L','785 mm','3.14 lakh'),(502,'BMW S 1000 RR',6065,7072,'15.62 Kmpl','6 Speed','197 kg','17 L','1205 mm','24.95 lakh'),(503,'BMW R 1250 GS Adventure',6065,7073,'14 Kmpl','6 Speed','268 Kg','30 L','1460 mm','22.50 lakh'),(504,'KTM 390 Duke',6061,7071,'29 kmpl',' 6-speed','171 Kg','13 L','822 mm','2.97 lakh'),(505,'KTM RC 390',6061,7072,'25.89 kmpl','6 Speed','172 kg','14 L','824 mm','3.18 lakh'),(506,'KTM 390 Adventure',6061,7073,'29.6 kmpl','6 Speed','177 kg','15 L','855 mm','3.60 lakh'),(507,'KTM 250 Duke',6061,7071,'41 Kmpl','6 Speed','170 Kg','13 L','822 mm','2.40 lakh'),(508,'KTM 250 Adventure',6061,7073,'38.12 Kmpl','6 Speed','177 Kg','15 L','855 mm','2.46 lakh'),(509,'Kawasaki Z900',6062,7071,'17 kmpl','6 Speed','212 kg','17 L','820 mm','9.11 lakh'),(510,'Kawasaki Ninja 650',6062,7072,'21 kmpl','6 Speed','196 kg','15 L','790 mm','7.12 lakh'),(511,'Kawasaki Versys 650',6062,7073,'20 kmpl','6 Speed','219 kg','21 L','854 mm','7.69 lakh'),(512,'Kawasaki KX 250',6062,7076,'25 kmpl','5 Speed','108 kg','6 L','950 mm','7.99 lakh'),(513,'Kawasaki W175',6062,7071,'45 kmpl','5 Speed','135 kg','12 L','790 mm','1.49 lakh'),(514,'Honda Activa 6G',6064,7074,'50 kmpl','Automatic','105 kg','5.3 L','692 mm','82,234'),(515,'Honda Hornet 2.0',6064,7071,'57.35 kmpl','5 Speed','142 kg','12 L','795 mm','1.37 lakh'),(516,'Honda CB500X',6064,7073,'28 kmpl','6 Speed','199 kg','17.7 L','830 mm','5.80 lakh'),(517,'Honda CBR650R',6064,7072,'23 kmpl','6 Speed','211 kg','15.4 L','635 mm','8.89 lakh'),(518,'Ola S1 Air',6066,7075,'101 kmpcharge','Automatic','99 kg','3.97 kWh','792 mm','1.20 lakh'),(520,'Ather 450X',6067,7074,'146 kmpcharge','Automatic','111.6 kg','3.7 kWh','780 mm','1.45 Lakh'),(521,'Royal Enfield Classic 350',6063,7078,'41.55 kmpl','5 Speed','195 kg','13 L','805 mm','2.25 Lakh'),(522,'Royal Enfield Continental GT 650',6063,7071,'27 kmpl','6 Speed','202 kg','13.7 L','793mm','3.45 Lakh'),(523,'Royal Enfield Himalayan',6063,7073,'32.04 kmpl','5 Speed','199 kg','15.14 L','800 mm','2.28 Lakh'),(524,'Royal Enfield Meteor 350',6063,7078,'41.88 kmpl','5 Speed','191 kg','15 L','765 mm','2.26 Lakh'),(525,'Suzuki Gixxer SF 250',6068,7072,'38.5 kmpl','6 Speed','161 kg','12 L','800 mm','1.85 lakh'),(526,'Suzuki Hayabusa',6068,7071,'11 kmpl','6 Speed','266 kg','20 L','805 mm','13.75 lakh'),(527,'Suzuki V-Strom 650XT',6068,7073,'20 kmpl','6 Speed','216 kg','20 L','835 mm','8.45 lakh'),(528,'Ducati Panigale V4',6069,7071,'13 kmpl','6 Speed','195 kg','16 L','830 mm','26.50 lakh'),(529,'Ducati Multistrada 950',6069,7073,'15 kmpl','6 Speed','207 kg','20 L','840 mm','15.40 lakh'),(530,'Triumph Street Triple RS',6070,7071,'18 kmpl','6 Speed','166 kg','17.4 L','810 mm','11.35 lakh'),(531,'Triumph Tiger 800 XCx',6070,7073,'20 kmpl','6 Speed','204 kg','21 L','840 mm','12.50 lakh'),(532,'Yamaha MT-07',6071,7071,'21 kmpl','6 Speed','182 kg','14 L','805 mm','7.20 lakh'),(533,'Yamaha YZF R3',6071,7072,'30 kmpl','6 Speed','173 kg','14 L','780 mm','4.50 lakh'),(534,'Harley-Davidson Iron 883',6072,7071,'19 kmpl','5 Speed','256 kg','12.5 L','760 mm','9.25 lakh'),(535,'Harley-Davidson Street Glide',6072,7072,'15 kmpl','6 Speed','372 kg','22.7 L','695 mm','32.10 lakh'),(536,'Aprilia RS 660',6073,7071,'18.5 kmpl','6 Speed','169 kg','15 L','820 mm','11.50 lakh'),(537,'Aprilia Tuono V4',6073,7072,'15 kmpl','6 Speed','209 kg','18.5 L','825 mm','15.75 lakh'),(538,'Aprilia Shiver 900',6073,7071,'20 kmpl','6 Speed','214 kg','15 L','810 mm','9.85 lakh'),(539,'Aprilia Caponord 1200',6073,7073,'18 kmpl','6 Speed','215 kg','24 L','825 mm','14.25 lakh'),(540,'Aprilia RSV4',6073,7072,'14 kmpl','6 Speed','180 kg','18.5 L','835 mm','17.90 lakh'),(541,'Aprilia Mana 850',6073,7071,'17 kmpl','7 Speed','243 kg','16 L','800 mm','8.65 lakh'),(542,'Aprilia Dorsoduro 900',6073,7072,'19 kmpl','6 Speed','200 kg','14.5 L','870 mm','11.50 lakh'),(543,'Harley-Davidson Fat Boy',6072,7071,'14 kmpl','6 Speed','330 kg','18.9 L','650 mm','18.75 lakh'),(544,'Harley-Davidson Street Rod',6072,7071,'17 kmpl','6 Speed','238 kg','13.1 L','765 mm','7.50 lakh'),(545,'Suzuki GSX-S750',6068,7071,'20 kmpl','6 Speed','213 kg','16 L','820 mm','7.25 lakh'),(546,'Suzuki SV650',6068,7071,'24 kmpl','6 Speed','197 kg','13.8 L','785 mm','6.10 lakh'),(547,'Triumph Bonneville T120',6070,7071,'18 kmpl','6 Speed','224 kg','14.5 L','785 mm','10.80 lakh'),(548,'Triumph Scrambler 1200',6070,7072,'15 kmpl','6 Speed','205 kg','16 L','840 mm','12.40 lakh'),(549,'Ducati Monster 821',6069,7071,'18 kmpl','6 Speed','206 kg','16.5 L','810 mm','10.75 lakh'),(550,'Ducati Diavel',6069,7071,'14 kmpl','6 Speed','240 kg','17 L','770 mm','18.90 lakh'),(551,'Ducati Panigale V4 S',6069,7071,'12 kmpl','6 Speed','193 kg','16 L','830 mm','30.75 lakh'),(552,'Ducati Panigale V4 R',6069,7071,'10 kmpl','6 Speed','172 kg','17 L','825 mm','45.50 lakh'),(553,'Ducati Panigale V4 SP',6069,7071,'11 kmpl','6 Speed','188 kg','16.5 L','835 mm','35.80 lakh'),(554,'Ducati Panigale V4 Speciale',6069,7071,'9 kmpl','6 Speed','179 kg','18 L','820 mm','48.90 lakh'),(555,'Java JX1',6074,7071,'40 kmpl','5 Speed','145 kg','11 L','800 mm','1.75 lakh'),(556,'Java JX2',6074,7071,'38 kmpl','5 Speed','152 kg','12 L','805 mm','1.90 lakh'),(557,'Java JX3',6074,7071,'35 kmpl','5 Speed','160 kg','13 L','810 mm','2.10 lakh'),(558,'Java JX4',6074,7071,'32 kmpl','5 Speed','165 kg','13.5 L','815 mm','2.25 lakh'),(559,'Java JX5',6074,7071,'28 kmpl','5 Speed','172 kg','14 L','820 mm','2.40 lakh'),(560,'Java JX6',6074,7071,'30 kmpl','5 Speed','178 kg','14.5 L','825 mm','2.60 lakh'),(561,'Java JX7',6074,7071,'27 kmpl','5 Speed','185 kg','15 L','830 mm','2.75 lakh'),(562,'Java JX8',6074,7071,'25 kmpl','5 Speed','192 kg','15.5 L','835 mm','2.90 lakh'),(563,'Java JX9',6074,7071,'23 kmpl','5 Speed','200 kg','16 L','840 mm','3.05 lakh'),(564,'Java JX10',6074,7071,'20 kmpl','5 Speed','210 kg','16.5 L','845 mm','3.20 lakh'),(565,'Hero Splendor Plus',6075,7071,'65 kmpl','4 Speed','110 kg','9.8 L','785 mm','64,470'),(566,'Hero Passion Pro',6075,7071,'60 kmpl','4 Speed','116 kg','10 L','785 mm','68,900'),(567,'Hero HF Deluxe',6075,7071,'70 kmpl','4 Speed','112 kg','9.5 L','805 mm','51,800'),(568,'Hero Glamour',6075,7071,'55 kmpl','5 Speed','125 kg','11 L','795 mm','71,200'),(569,'Hero Xtreme 160R',6075,7071,'45 kmpl','5 Speed','138 kg','12 L','800 mm','95,500'),(585,'TVS Phoenix 125',6091,7071,'60 kmpl','4 Speed','115 kg','12 L','780 mm','75,000'),(586,'TVS Apache RTR 160',6091,7071,'50 kmpl','5 Speed','130 kg','12 L','790 mm','85,000'),(587,'TVS Jupiter',6091,7072,'55 kmpl','Automatic','110 kg','5.5 L','750 mm','68,000'),(588,'TVS Ntorq 125',6091,7072,'50 kmpl','Automatic','120 kg','6 L','760 mm','80,000'),(589,'TVS Apache RTR 200 4V',6091,7071,'45 kmpl','5 Speed','150 kg','12 L','800 mm','1.10 lakh'),(590,'TVS Scooty Pep+',6091,7072,'55 kmpl','Automatic','95 kg','4.5 L','720 mm','50,000'),(591,'TVS Radeon',6091,7071,'65 kmpl','4 Speed','112 kg','10 L','780 mm','55,000'),(592,'TVS Apache RR 310',6091,7071,'35 kmpl','6 Speed','160 kg','11 L','810 mm','2 lakh'),(593,'TVS Star City+',6091,7071,'65 kmpl','4 Speed','110 kg','10 L','770 mm','60,000'),(594,'TVS XL100',6091,7072,'70 kmpl','4 Speed','90 kg','4 L','720 mm','40,000');
/*!40000 ALTER TABLE `bikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8094 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (8081,'Mumbai'),(8082,'Pune'),(8083,'Delhi'),(8084,'Hydrabad'),(8085,'Banglore'),(8093,'Gadchiroli');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (5001,'black'),(5002,'white'),(5003,'grey'),(5004,'red'),(5005,'green'),(5006,'orange');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Company Name_UNIQUE` (`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6092 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (6073,'Aprilla'),(6067,'Ather'),(6065,'BMW'),(6069,'Ducati'),(6072,'Harley-Davidson'),(6075,'Hero'),(6064,'Honda'),(6074,'java'),(6062,'Kawasaki'),(6061,'KTM'),(6066,'OLA'),(6063,'Royal Enfield'),(6068,'Suzuki'),(6070,'Triumph'),(6091,'TVS'),(6071,'Yamaha');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_types`
--

DROP TABLE IF EXISTS `customer_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_types` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_types`
--

LOCK TABLES `customer_types` WRITE;
/*!40000 ALTER TABLE `customer_types` DISABLE KEYS */;
INSERT INTO `customer_types` VALUES (302,'Customer'),(301,'Dealer');
/*!40000 ALTER TABLE `customer_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `logger_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`),
  KEY `City_ID_idx` (`city_id`),
  KEY `LoggerID_idx` (`logger_id`),
  CONSTRAINT `ci_id` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `lo_id` FOREIGN KEY (`logger_id`) REFERENCES `logins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (3001,'Mahesh','Patil',8085,1),(3002,'Shubham','Tawade',8083,2),(3003,'Sandip','Shimpale',8082,3),(3004,'Rucha','Sharma',8084,4),(3005,'Shankarrao','Shinde',8081,5);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(255) DEFAULT NULL,
  `company` int DEFAULT NULL,
  `d_city` int DEFAULT NULL,
  `address_dealer` varchar(255) DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cd_id_idx` (`company`),
  KEY `cit_id_idx` (`d_city`),
  KEY `log_id_idx` (`log_id`),
  CONSTRAINT `cit_id` FOREIGN KEY (`d_city`) REFERENCES `cities` (`id`),
  CONSTRAINT `com_id` FOREIGN KEY (`company`) REFERENCES `companies` (`id`),
  CONSTRAINT `log_id` FOREIGN KEY (`log_id`) REFERENCES `logins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2056 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES (2051,'Farande Honda',6064,8084,'Venkat Nagar,Near Reddy Mall',6,'9876543210'),(2052,'KTM Officials',6061,8081,'Anand Nagar,Borivali',7,'9883256568'),(2053,'Royal Enfield Motors',6063,8083,'Karol Bagh',8,'9587688221'),(2054,'KTM Bikes',6061,8085,'Cidco,Near IT Park',9,'7688926542'),(2055,'Super Bike Officials',6065,8082,'FC Road,Pune',10,'9284226122');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logins`
--

DROP TABLE IF EXISTS `logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `status_id` tinyint(1) DEFAULT NULL,
  `q_id` int DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ro_id_idx` (`role_id`),
  KEY `que_id_idx` (`q_id`),
  CONSTRAINT `que_id` FOREIGN KEY (`q_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `ro_id` FOREIGN KEY (`role_id`) REFERENCES `customer_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logins`
--

LOCK TABLES `logins` WRITE;
/*!40000 ALTER TABLE `logins` DISABLE KEYS */;
INSERT INTO `logins` VALUES (1,'sandips@gmail.com','Sandip12',301,1,5052,'Raju'),(2,'maheshpatil14@gmail.com','Mahesh@11',301,1,5051,'Chess'),(3,'ruchasharma@gmail.com','Rucha#95',301,1,5054,'MPHS'),(4,'shankarrao@gmail.com','Shanku@123',301,1,5053,'Rancho'),(5,'shubham18@gmail.com','Shubh@9798',301,1,5051,'Golf'),(6,'farandehonda22@gmail.com','Farande123',302,1,5054,'Cambridge'),(7,'ktmindia@gmail.com','KTM@768',302,1,5051,'Hockey'),(8,'sroyalen82@gmail.com','Enfield@96',302,1,5053,'Bruno'),(9,'ktmofficials@gmail.cpm','KTMOffice@987',302,1,5052,'Priya'),(10,'superbikes96@gmail.com','Super15',302,1,5051,'Cricket'),(11,'evbikes10@gmail.com','EvBikes@123',302,1,5054,'GMS School');
/*!40000 ALTER TABLE `logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dealer_id` int DEFAULT NULL,
  `sub_plan_id` int DEFAULT NULL,
  `card_no` varchar(16) DEFAULT NULL,
  `cvv_no` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dp_id_idx` (`dealer_id`),
  KEY `sp_id_idx` (`sub_plan_id`),
  CONSTRAINT `dp_id` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`),
  CONSTRAINT `sp_id` FOREIGN KEY (`sub_plan_id`) REFERENCES `subscription_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1111,2055,4041,'987456213025','992'),(1112,2052,4042,'963285741236','666'),(1113,2053,4042,'951478563214','225'),(1114,2051,4042,'852096327412','778'),(1115,2054,4041,'947832105600','654');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Question_UNIQUE` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=5055 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (5052,'What is is name of your first childhod friend?'),(5053,'what is name of your pet?'),(5051,'What is your favourite sport?'),(5054,'what is your school name?');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_bikes`
--

DROP TABLE IF EXISTS `rating_bikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_bikes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `b_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `br_id_idx` (`b_id`),
  KEY `cusra_id_idx` (`customer_id`),
  CONSTRAINT `br_id` FOREIGN KEY (`b_id`) REFERENCES `bikes` (`id`),
  CONSTRAINT `cusra_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=908 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_bikes`
--

LOCK TABLES `rating_bikes` WRITE;
/*!40000 ALTER TABLE `rating_bikes` DISABLE KEYS */;
INSERT INTO `rating_bikes` VALUES (901,506,3001,4),(902,505,3003,3.5),(903,507,3004,3.3),(904,516,3005,4.2),(905,511,3002,5),(906,506,3004,4.3),(907,506,3004,4.4);
/*!40000 ALTER TABLE `rating_bikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_dealers`
--

DROP TABLE IF EXISTS `rating_dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_dealers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `d_id` int DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  `rating` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_id_idx` (`d_id`),
  KEY `custo_id_idx` (`c_id`),
  CONSTRAINT `custo_id` FOREIGN KEY (`c_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `deal_id` FOREIGN KEY (`d_id`) REFERENCES `dealers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4406 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_dealers`
--

LOCK TABLES `rating_dealers` WRITE;
/*!40000 ALTER TABLE `rating_dealers` DISABLE KEYS */;
INSERT INTO `rating_dealers` VALUES (4401,2055,3001,3.0),(4402,2051,3002,4.2),(4403,2053,3003,5.0),(4404,2052,3004,4.5),(4405,2054,3005,4.4);
/*!40000 ALTER TABLE `rating_dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_status`
--

DROP TABLE IF EXISTS `ride_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ride_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `r_id_idx` (`ride_id`),
  CONSTRAINT `r_id` FOREIGN KEY (`ride_id`) REFERENCES `testrides` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_status`
--

LOCK TABLES `ride_status` WRITE;
/*!40000 ALTER TABLE `ride_status` DISABLE KEYS */;
INSERT INTO `ride_status` VALUES (51,701,0),(52,705,0),(53,703,0),(54,704,0),(55,702,0);
/*!40000 ALTER TABLE `ride_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_plans`
--

DROP TABLE IF EXISTS `subscription_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `details` varchar(255) DEFAULT NULL,
  `price` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4043 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plans`
--

LOCK TABLES `subscription_plans` WRITE;
/*!40000 ALTER TABLE `subscription_plans` DISABLE KEYS */;
INSERT INTO `subscription_plans` VALUES (4041,'7 DAYS',99),(4042,'28 DAYS',259);
/*!40000 ALTER TABLE `subscription_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subsription_validities`
--

DROP TABLE IF EXISTS `subsription_validities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subsription_validities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan_id` int DEFAULT NULL,
  ` from_date` date DEFAULT NULL,
  `up_tO` date DEFAULT NULL,
  `loggin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pl_id_idx` (`plan_id`),
  KEY `deal_log_id_idx` (`loggin_id`),
  CONSTRAINT `deal_log_id` FOREIGN KEY (`loggin_id`) REFERENCES `logins` (`id`),
  CONSTRAINT `pl_id` FOREIGN KEY (`plan_id`) REFERENCES `subscription_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subsription_validities`
--

LOCK TABLES `subsription_validities` WRITE;
/*!40000 ALTER TABLE `subsription_validities` DISABLE KEYS */;
INSERT INTO `subsription_validities` VALUES (71,4042,'2023-01-12','2023-02-09',9),(72,4042,'2023-11-01','2023-11-28',10),(73,4042,'2023-08-20','2023-09-17',6),(74,4041,'2023-05-11','2023-05-18',8),(75,4041,'2023-12-22','2023-12-29',7);
/*!40000 ALTER TABLE `subsription_validities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testrides`
--

DROP TABLE IF EXISTS `testrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testrides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cust_id` int DEFAULT NULL,
  `dealer_id` int DEFAULT NULL,
  `bike_id` int DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cu_id_idx` (`cust_id`),
  KEY `d_id_idx` (`dealer_id`),
  KEY `b_id_idx` (`bike_id`),
  CONSTRAINT `b_id` FOREIGN KEY (`bike_id`) REFERENCES `bikes` (`id`),
  CONSTRAINT `cu_id` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `d_id` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testrides`
--

LOCK TABLES `testrides` WRITE;
/*!40000 ALTER TABLE `testrides` DISABLE KEYS */;
INSERT INTO `testrides` VALUES (701,3003,2055,501,'2023-05-17'),(702,3004,2053,507,'2023-09-01'),(703,3001,2051,524,'2023-01-30'),(704,3005,2054,520,'2023-11-11'),(705,3002,2052,516,'2023-07-10');
/*!40000 ALTER TABLE `testrides` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-26  1:18:21
