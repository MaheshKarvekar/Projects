-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: vehicledb
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) DEFAULT NULL,
  `brand_logo` varchar(150) DEFAULT NULL,
  `vehicle_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_name_UNIQUE` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
INSERT INTO `Brand` VALUES (1,'Hyundai','/Images/imgUploader_1561981204059_1657dba81e5ae00.png',2),(2,'Honda','/Images/imgUploader_1561982283704_Honda.png',2),(3,'BMW','/Images/imgUploader_1562307028794_bmw.png',2),(4,'Maruti','/Images/imgUploader_1561984450419_1820268_thumb.png',2),(5,'Mahindra','/Images/imgUploader_1561984718116_mahindralogo1.png',2),(6,'Ford','/Images/imgUploader_1562220849115_Ford-logo-09E6BA5000-seeklogo.com.png',2),(7,'Hero','/Images/imgUploader_1561974820031_hero-749.jpg',1),(8,'Royal Enfield','/Images/imgUploader_1561975096209_61h26nIA+zL._SX466_.png',1),(9,'aprilia','/Images/imgUploader_1561975295159_aprilia-1-logo-png-transparent.png',1),(10,'TVS','/Images/imgUploader_1561975368268_TVS-logo-838B7929EB-seeklogo.com.png',1),(11,'Bajaj','/Images/imgUploader_1561975522935_bajaj-logo-581A18EFC1-seeklogo.com.png',1),(12,'Yamaha','/Images/imgUploader_1561975583073_yamaha-logo-C030F5061F-seeklogo.com.png',1),(13,'Suzuki','/Images/imgUploader_1561975789537_1820268_thumb.png',1),(14,'Piaggio','/Images/imgUploader_1561975911752_piaggio-2-logo-png-transparent.png',1),(15,'Jaguar','/Images/imgUploader_1562220924663_galleries-clipart-logo-jaguar-4.png',2),(16,'Audi','/Images/imgUploader_1562221349112_Audi-Logo-wallpaper-1920x1200.png',2),(17,'Mercedes','/Images/imgUploader_1562221473217_Mercedes-Benz-Logo321.png',2),(18,'Volkswagen','/Images/imgUploader_1562221551116_Volkswagen-logo-213294A3AC-seeklogo.com.png',2),(19,'Jeep','/Images/imgUploader_1562221629194_Jeep-Logo-HD-Png.png',2),(20,'Renault','/Images/imgUploader_1562221691635_renault-auto-vector-logo-200x200.png',2);
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fuel`
--

DROP TABLE IF EXISTS `Fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Fuel` (
  `fuel_id` int(11) NOT NULL AUTO_INCREMENT,
  `Fuel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`fuel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fuel`
--

LOCK TABLES `Fuel` WRITE;
/*!40000 ALTER TABLE `Fuel` DISABLE KEYS */;
INSERT INTO `Fuel` VALUES (1,'Petrol'),(2,'Diesel');
/*!40000 ALTER TABLE `Fuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trans_type`
--

DROP TABLE IF EXISTS `Trans_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Trans_type` (
  `trans_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`trans_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trans_type`
--

LOCK TABLES `Trans_type` WRITE;
/*!40000 ALTER TABLE `Trans_type` DISABLE KEYS */;
INSERT INTO `Trans_type` VALUES (1,'Manual'),(2,'Automatic');
/*!40000 ALTER TABLE `Trans_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicle_details`
--

DROP TABLE IF EXISTS `Vehicle_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Vehicle_details` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `dealer_id` int(11) DEFAULT NULL,
  `superAdmin_id` int(11) DEFAULT '1',
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `owner_name` varchar(150) DEFAULT NULL,
  `reg_date` varchar(10) DEFAULT NULL,
  `reg_upto` varchar(10) DEFAULT NULL,
  `reg_no` varchar(300) DEFAULT NULL,
  `vehicle_type_id` int(11) DEFAULT NULL,
  `fuel_id` int(11) DEFAULT NULL,
  `Description` longtext,
  `engine_cc` varchar(15) DEFAULT NULL,
  `power_bhp` varchar(25) DEFAULT NULL,
  `max_torque` varchar(25) DEFAULT NULL,
  `seat_capacity` int(11) DEFAULT NULL,
  `Model` int(11) DEFAULT NULL,
  `Engine_description` text,
  `Transmission_type` int(11) DEFAULT NULL,
  `Cargo_Volume` varchar(4) DEFAULT NULL,
  `multi_function_steering_wheel` varchar(4) DEFAULT NULL,
  `Touch_screen` varchar(4) DEFAULT NULL,
  `auto_climate_control` varchar(4) DEFAULT NULL,
  `engine_start_stop_btn` varchar(4) DEFAULT NULL,
  `anti_lock_break` varchar(4) DEFAULT NULL,
  `alloy_wheels` varchar(4) DEFAULT NULL,
  `fog_lights_front` varchar(4) DEFAULT NULL,
  `fog_lights_rear` varchar(4) DEFAULT NULL,
  `Power_window_rear` varchar(4) DEFAULT NULL,
  `Power_window_front` varchar(4) DEFAULT NULL,
  `Driver_airbag` varchar(4) DEFAULT NULL,
  `power_steering` varchar(4) DEFAULT NULL,
  `air_condition` varchar(4) DEFAULT NULL,
  `no_of_cylinder` int(11) DEFAULT NULL,
  `valves_per_cylinder` int(11) DEFAULT NULL,
  `fuel_supply_system` varchar(25) DEFAULT NULL,
  `bore_x_stroke` varchar(4) DEFAULT NULL,
  `Compression_ratio` varchar(4) DEFAULT NULL,
  `gear_shift` varchar(15) DEFAULT NULL,
  `clutch_type` varchar(4) DEFAULT NULL,
  `fuel_tank_capacity` int(11) DEFAULT NULL,
  `front_suspension` varchar(25) DEFAULT NULL,
  `rear_suspension` varchar(25) DEFAULT NULL,
  `shock_absorbers` varchar(50) DEFAULT NULL,
  `steering_type` varchar(15) DEFAULT NULL,
  `turning_radius_wheel_base` varchar(15) DEFAULT NULL,
  `Front_brake_type` varchar(25) DEFAULT NULL,
  `rear_brake_type` varchar(25) DEFAULT NULL,
  `vehicle_width` varchar(15) DEFAULT NULL,
  `vehicle_length` varchar(15) DEFAULT NULL,
  `vehicle_height` varchar(15) DEFAULT NULL,
  `tyre_size` varchar(15) DEFAULT NULL,
  `wheel_base` varchar(15) DEFAULT NULL,
  `tyre_type` varchar(25) DEFAULT NULL,
  `no_of_doors` int(11) DEFAULT NULL,
  `ex_showroom_dealer_price` float(15,2) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `abs` varchar(100) DEFAULT NULL,
  `top_speed` varchar(50) DEFAULT NULL,
  `head_lamps` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `start_type` varchar(50) DEFAULT NULL,
  `mileage` varchar(50) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `car_type_id` int(11) DEFAULT NULL,
  `owner_mobile` varchar(45) DEFAULT NULL,
  `owner_email` varchar(45) DEFAULT NULL,
  `kilometers_driven` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `insurance_value` varchar(45) DEFAULT NULL,
  `insurance_type` varchar(45) DEFAULT NULL,
  `insurance_upto` varchar(45) DEFAULT NULL,
  `inspection_date` varchar(45) DEFAULT NULL,
  `inspection_doneby` varchar(255) DEFAULT NULL,
  `inspection_report` longtext,
  `inspection_value` varchar(45) DEFAULT NULL,
  `ownercount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicle_details`
--

LOCK TABLES `Vehicle_details` WRITE;
/*!40000 ALTER TABLE `Vehicle_details` DISABLE KEYS */;
INSERT INTO `Vehicle_details` VALUES (21,9,1,7,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','150','15','',2,30,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','5','',20,'','','','','','Disk','Disk','','','','','','tubeless',0,120000.00,NULL,NULL,'yes','','','75','','40','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,9,1,8,2,'trilok','15/03/2012','15/07/2030','KA51 ES1234',1,1,'','350','850','',2,56,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','6','',20,'','','','','','Disk','Disk','','','','','','tubeless',0,200000.00,NULL,NULL,'yes','','','120','','35','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,9,1,8,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','650','47.65','',2,54,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','5','',25,'','','','','','Disk','Disk','','','','','','tubeless',0,350000.00,NULL,NULL,'yes','','','180','','25','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,9,1,7,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','90','120','',2,26,'',2,'','','','','','','No','','','','','','','',5,1,'','','','5','',8,'','','','','','Disk','Disk','','','','','','tubeless',0,70000.00,NULL,NULL,'no','','','180','','40','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,9,1,8,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','500','850','',2,51,'',1,'','','','','','','No','','','','','','','',5,1,'','','','5','',20,'','','','','','Disk','Disk','','','','','','tubeless',0,175000.00,NULL,NULL,'yes','','','180','','40','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,11,1,8,2,'trilok','15/03/2012','15/07/2030','KA06 ES1239',1,1,'','350','850','',2,56,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','6','',20,'','','','','','Disk','Disk','','','','','','tubeless',0,200000.00,NULL,NULL,'yes','','','120','','40','0',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,11,1,8,2,'shivakumar','15/03/2012','15/07/2030','KA18 A4321',1,1,'','350','450','',2,46,'',1,'','','','','','','NO','','','','','','','',5,1,'','','','6','',15,'','','','','','Disk','Drum','','','','','','tubeless',0,160000.00,NULL,NULL,'no','','','100','','45','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,11,1,7,2,'deepika','15/03/2012','15/07/2030','KA06 ES1239',1,1,'','100','150','',2,34,'',2,'','','','','','','YES','','','','','','','',2,1,'','','','','',8,'','','','','','Disk','Drum','','','','','','tubeless',0,650000.00,NULL,NULL,'no','','','75','','40','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,11,1,8,2,'varun','15/03/2012','15/07/2030','KA06 ES1239',1,1,'','500','850','',2,51,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','6','',20,'','','','','','Disk','Disk','','','','','','tubeless',0,200000.00,NULL,NULL,'yes','','','180','','40','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,9,1,8,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','500','850','',2,51,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','5','',18,'','','','','','Disk','Drum','','','','','','tubeless',0,200000.00,NULL,NULL,'yes','','','120','','40','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,9,1,8,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','650','850','',2,52,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','5','',25,'','','','','','Disk','Drum','','','','','','tube',0,250000.00,NULL,NULL,'yes','','','180','','35','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,11,1,10,2,'fvgbhnj','15/03/2012','15/07/2030','KA567NJASNC',1,1,'','160','18.3','',2,74,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','5','',15,'','','','','','Disk','Disk','','','','','','Tubeless',0,82000.00,NULL,NULL,'Yes','','','120','','23','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,11,1,10,2,'Selwa','15/03/2012','15/07/2030','KA23QP7689',1,1,'','160','17.5','',2,75,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','5','',15,'','','','','','Disk','Disk','','','','','','Tubeless',0,90299.00,NULL,NULL,'Yes','','','130','','30','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,11,1,11,2,'sarfaraz','15/03/2012','15/07/2030','KA35UIOP',1,1,'','180','17.8','',2,87,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','5','',16,'','','','','','Disk','Disk','','','','','','Tubeless',0,95000.00,NULL,NULL,'Yes','','','130','','17','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,11,1,11,2,'anmol','15/03/2012','15/07/2030','KA23TYPQ',1,1,'','200','25.3','',2,85,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','6','',18,'','','','','','Disk','Disk','','','','','','Tubeless',0,105000.00,NULL,NULL,'Yes','','','165','','20','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,10,1,12,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','150','15.6','',2,90,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','5','',16,'','','','','','Disk','Drum','','','','','','Tubeless',0,98999.00,NULL,NULL,'Yes','','','120','','35','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,10,1,12,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','150','17.6','',2,89,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','6','',14,'','','','','','Disk','Disk','','','','','','Tubeless',0,160000.00,NULL,NULL,'Yes','','','140','','15','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,9,1,13,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','250','150','',2,94,'',1,'','','','','','','YES','','','','','','','',2,1,'','','','6','',20,'','','','','','Disk','Disk','','','','','','tubeless',0,195000.00,NULL,NULL,'yes','','','150','','30','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,10,1,14,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','150','12.3','',2,99,'',1,'','','','','','','YES','','','','','','','',1,1,'','','','5','',12,'','','','','','Disk','Drum','','','','','','Tubeless',0,150000.00,NULL,NULL,'No','','','120','','35','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,10,1,13,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','1340','197','',2,96,'',1,'','','','','','','YES','','','','','','','',4,1,'','','','6','',21,'','','','','','Disk','Disk','','','','','','Tubeless',0,130000.00,NULL,NULL,'Yes','','','268','','17','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,11,1,13,2,'sudhamsh','15/03/2012','15/07/2030','KA87ICNSAJ',1,1,'','1300','130','',2,96,'',1,'','','','','','','YES','','','','','','','',4,1,'','','','6','',21,'','','','','','Disk','Disk','','','','','','Tubeless',0,1300000.00,NULL,NULL,'Dual Channel','','','268','','17','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,9,1,13,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','1300','130','',2,96,'',1,'','','','','','','YES','','','','','','','',4,1,'','','','6','',21,'','','','','','Disk','Disk','','','','','','Tubeless',0,1300000.00,NULL,NULL,'Dual Channel','','','268','','17','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,9,1,13,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','155','15','',2,97,'',1,'','','','','','','YES','','','','','','','',2,1,'','','','6','',21,'','','','','','Disk','Disk','','','','','','Tubeless',0,98000.00,NULL,NULL,'Yes','','','148','','21','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,9,1,8,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',1,1,'','411','24.5','',2,53,'',1,'','','','','','','No','','','','','','','',1,1,'','','','6','',23,'','','','','','Disk','Disk','','','','','','Tubeless',0,180000.00,NULL,NULL,'Yes','','','182','','21','1',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,11,1,8,2,'deepak','15/03/2012','15/07/2030','ka06y1235',1,1,'','350','150','',2,55,'',1,'','','','','','','YES','','','','','','','',5,1,'','','','6','',18,'YES','YES','','','','Disk','Disk','40','185','140','200','Flat','tubeless',0,100000.00,NULL,NULL,'yes','','','150','','30','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,11,1,8,2,'mahesh','15/03/2012','15/07/2030','KA09E3535',1,1,'','500','150','',2,58,'',1,'','','','','','','YES','','','','','','','',2,1,'','','','5','',18,'','','','','','Disk','Disk','','','','','','tubeless',0,150007.00,NULL,NULL,'yes','','','150','self','30','1',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','vinaykumar','','95000',NULL),(51,12,1,1,2,'Rajeev','15/03/2012','15/07/2030','KA-35210ABRT34',2,1,'','1800','115','8500',5,2,'Twin Spark',2,'245','','YES','NO','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,4,'Petrol','','','6','',28,'YES','YES','Fork','','YES','Disk','Disk','2300','4322','1500','324','321','Tubeless',4,1190000.00,NULL,NULL,'','','','215','','35','1',2,'','','12000','','','','','',NULL,NULL,NULL,NULL,NULL),(52,12,1,2,2,'Debaraj','15/03/2012','15/07/2030','KA-4356TU65',2,1,'','1500','98','8500',5,65,'Twin Spark',1,'145','','YES','NO','YES','YES','YES','YES','YES','YES','YES','YES','NO','YES',2,4,'Normal','','','5','',29,'YES','YES','Yes','','YES','Disk','Drum','11234','1120','1540','345','321','Tubeless',4,220000.00,NULL,NULL,'','','','120','','19','1',2,'','','1100','','','','','',NULL,NULL,NULL,NULL,NULL),(53,12,1,2,2,'Sudhamsh','15/03/2012','15/07/2030','KA-567TRWQL',2,1,'','1800','120','8500',5,61,'Twin Spark',1,'232','','YES','YES','NO','YES','YES','YES','YES','YES','NO','YES','YES','YES',2,4,'Normal','','','5','',32,'YES','YES','Fork','','NO','Disk','Disk','3200','12300','2433','345','432','Tubeless',4,850000.00,NULL,NULL,'','','','300','','21','1',2,'','','3000','','','','','',NULL,NULL,NULL,NULL,NULL),(54,13,1,15,2,'Rajeev','15/03/2012','15/07/2030','KA-35698RTEW',2,1,'','2000','235','8500',5,100,'V8 Engine',2,'123','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,4,'','62.8','','5','Wet',38,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',4,2300000.00,NULL,NULL,'YES','122','Halogen','350','self','19','1',2,'','','10000','','','','','','','mahesh','','0000000',NULL),(55,13,1,16,2,'Ramesh','15/03/2012','15/07/2030','KA-35698RTEW',2,1,'','2000','197','8500',5,101,'Twin Spark',2,'232','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,4,'Petrol','','','6','',38,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',4,3800000.00,NULL,NULL,'','','','350','','21','1',2,'','','15000','','','','','',NULL,NULL,NULL,NULL,NULL),(56,13,1,17,2,'Mahesh','15/03/2012','15/07/2030','KA-35698RTEW',2,1,'','2000','235','8500',5,102,'Twin Spark',2,'123','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',4,4,'Petrol','','','6','',31,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',2,4500000.00,NULL,NULL,'','','','195','','19','1',2,'','','17000','','','','','',NULL,NULL,NULL,NULL,NULL),(57,13,1,17,2,'Harish','15/03/2012','15/07/2030','KA-35698RTEW',2,2,'','1500','197','8500',5,103,'V8 Engine',1,'234','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',4,3,'Normal','','','6','',31,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',4,2300000.00,NULL,NULL,'','','','195','','19','1',2,'','','9000','','','','','',NULL,NULL,NULL,NULL,NULL),(58,13,1,3,2,'Harsh','15/03/2012','15/07/2030','KA-35698RTEW',2,1,'','2500','197','8500',5,104,'V8 Twin Engine',2,'234','','YES','YES','YES','YES','YES','YES','NO','NO','YES','YES','NO','YES',4,3,'Normal','','','6','',34,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',4,7970000.00,NULL,NULL,'','','','268','','19','1',2,'','','5000','','','','','',NULL,NULL,NULL,NULL,NULL),(59,13,1,3,2,'Rajesh','15/03/2012','15/07/2030','KA-35698RTEW',2,1,'','1800','130','8500',5,105,'V8 Engine',1,'1243','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',4,4,'Normal','','','6','',32,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',4,4900000.00,NULL,NULL,'','','','182','','17','1',2,'','','1000','','','','','',NULL,NULL,NULL,NULL,NULL),(60,13,1,17,2,'Haresh','15/03/2012','15/07/2030','KA-35698RTEW',2,1,'','2000','197','8500',5,106,'V8 Engine',1,'321','','YES','NO','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,3,'Normal','','','5','',21,'YES','YES','Fork','','YES','Disk','Disk','1200','1300','1100','325','543','Tubeless',4,4500000.00,NULL,NULL,'','','','120','','17','1',2,'','','11000','','','','','',NULL,NULL,NULL,NULL,NULL),(61,13,1,4,2,'Hasraf','15/03/2012','15/07/2030','KA-35698RTEW',2,2,'','1500','112','8500',5,11,'Twin Spark',1,'123','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',4,3,'Normal','','','5','',32,'YES','YES','Fork','','YES','Disk','Drum','1200','1300','1100','325','543','Tubeless',4,579000.00,NULL,NULL,'','','','123','','19','1',2,'','','2400','','','','','',NULL,NULL,NULL,NULL,NULL),(62,13,1,4,2,'Harish','15/03/2012','15/07/2030','KA12S2341',2,1,'','1200','150','450',5,108,'Twinspark',1,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','5','',40,'YES','YES','','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,450000.00,NULL,NULL,'','','','1500','self','20','1',2,'9994801234','harish@gmail.com','9000','1','select','300000','Comprehensive','2019-06-14','2019-06-13','mahesh','every thing is upto date','485000',NULL),(63,13,1,18,2,'mahesh','15/03/2012','2021-12-28','KA12S1234',2,1,'','1500','150','450',5,109,'GT TSI',2,'200','','YES','YES','YES','NO','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'mnuu','','','5','',40,'YES','YES','5','','YES','Disk','Disk','75','210','150','200','Flat','tubeless',5,410000.00,NULL,NULL,'','','','750','','22','1',2,'8855624102','maheshpolo@gmail.com','18000','1','select','500000','Comprehensive','2019-11-29',NULL,NULL,NULL,NULL,'Second'),(64,17,2,2,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','1597','118','2000',5,66,'',1,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',37,'YES','YES','','','YES','Disk','Disk','75','185','140','200','Flat','tubeless',5,2200000.00,NULL,NULL,'yes','','','1500','','20','1',2,'','','','','','','','',NULL,NULL,NULL,NULL,''),(65,17,2,2,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','2000','143.016','4000',5,61,'',1,'','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',45,'YES','YES','','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,4300000.00,NULL,NULL,'yes','','','1500','self','22','1',2,'','','','','','','','','undefined','undefined','undefined','undefined',''),(66,17,2,2,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','1500','100','200',5,67,'',1,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',45,'YES','YES','','','YES','Disk','Disk','75','185','140','200','Flat','tubeless',5,900000.00,NULL,NULL,'yes','','','1250','','27','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(67,18,2,20,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','1461','150','450',5,110,'',1,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',45,'YES','YES','','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,1300000.00,NULL,NULL,'yes','','','1400','','19','0',3,'','','','','','','','',NULL,NULL,NULL,NULL,''),(68,18,2,20,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','2000','150','450',7,112,'',1,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','','',42,'YES','YES','6','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,1500000.00,NULL,NULL,'yes','','','150','','17.5','0',3,'','','','','','','','',NULL,NULL,NULL,NULL,''),(69,16,2,17,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','3250','250','550',5,103,'',2,'','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',45,'YES','YES','6','','YES','Disk','Disk','75','185','140','200','Flat','tubeless',5,4500000.00,NULL,NULL,'yes','','','1950','','15','1',2,'','','','','','','','',NULL,NULL,NULL,NULL,''),(70,16,2,17,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','3100','450','580',5,106,'',2,'','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',40,'YES','YES','','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,8400000.00,NULL,NULL,'yes','','','150','','14','0',5,'','','','','','','','',NULL,NULL,NULL,NULL,''),(71,16,2,17,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','2450','150','450',5,106,'',2,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',45,'YES','YES','6','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,1500000.00,NULL,NULL,'yes','','','150','','15','0',5,'','','','','','','','',NULL,NULL,NULL,NULL,''),(72,16,2,17,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','4520','450','450',5,106,'',2,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',40,'YES','YES','6','','YES','Disk','Disk','40','210','150','200','Flat','tubeless',5,4500000.00,NULL,NULL,'yes','','','1500','','18','1',5,'','','','','','','','',NULL,NULL,NULL,NULL,''),(73,18,2,20,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','1440','150','450',5,113,'',1,'200','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',2,5,'','','','6','',45,'YES','YES','6','','YES','Disk','Disk','40','185','140','200','Flat','tubeless',5,850000.00,NULL,NULL,'yes','','','150','','30','0',3,'','','','','','','','',NULL,NULL,NULL,NULL,''),(74,13,1,18,2,'Abhijeet','12-07-2010','12-07-2010','KA76512098',2,1,'','1798','90','8500',5,114,'Twin Spark',2,'2.5','','YES','NO','YES','YES','YES','NO','NO','YES','YES','YES','YES','YES',2,4,'petrol','','','6','',32,'YES','YES','Nitrox','','YES','Disk','Drum','1900','1700','3400','320','543','Tubeless',4,1750000.00,NULL,NULL,'','','','2590','','17.6','1',2,'9876780987','abhijeet@gmail.com','25000','17','select','15000','Comprehensive','12-07-2019',NULL,NULL,NULL,NULL,'Third'),(75,18,2,20,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','900','93','8200',5,110,'',1,'2.3','','YES','YES','YES','YES','YES','YES','NO','YES','NO','YES','YES','YES',1,4,'Petrol','','','5','',34,'YES','YES','Fork','','YES','Disk','Disk','3500','7890','5670','345','312','Tubeless',4,530000.00,NULL,NULL,'Yes','','','2590','','15','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(76,18,2,20,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','799','53','4386',5,111,'',1,'2.3','','YES','NO','YES','YES','YES','NO','NO','NO','YES','YES','YES','YES',1,3,'Petrol','','','5','',28,'YES','YES','Fork','','YES','Disk','Drum','1579','3679','1478','155/80 R13','231','Tubeless',5,297000.00,NULL,NULL,'Yes','','','697','','25.2','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(78,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1500','61.8','8500',5,4,'1.2L Turbo Engine',1,'2.1','','YES','NO','YES','YES','YES','NO','NO','NO','YES','YES','YES','YES',1,3,'Petrol','','','5','',32,'YES','YES','Nitrox','','YES','Disk','Disk','1200','2100','1100','325','543','Tubeless',4,560000.00,NULL,NULL,'Yes','','','1800','','28.71','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(79,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1200','67','4000',5,1,'1.5L Twin Engine',1,'1.9','','YES','NO','YES','YES','YES','YES','NO','YES','YES','YES','YES','YES',1,3,'Petrol','','','5','',24,'YES','YES','Nitrox','','YES','Disk','Drum','2345','2100','1100','325','543','Tubeless',4,689790.00,NULL,NULL,'Yes','','','1500','','19.21','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(80,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1500','87','4000',4,8,'1.7L ',1,'1.9','','YES','NO','YES','YES','YES','YES','YES','NO','YES','YES','YES','YES',2,4,'Petrol','','','5','',21,'YES','YES','Nitrox','','YES','Disk','Drum','2345','2100','1100','325','543','Tubeless',4,797000.00,NULL,NULL,'Yes','','','1500','','19.62','1',2,'','','','','','','','',NULL,NULL,NULL,NULL,''),(81,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1450','83.2','600',5,3,'1.2L Twin Spark Engine',1,'2.1','','YES','NO','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',1,3,'Petrol','','','5','',31,'YES','YES','Fork','','YES','Disk','Disk','2345','2100','1100','325','543','Tubeless',4,975000.00,NULL,NULL,'Yes','','','1600','','21.8','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(82,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1900','153.3','8000',5,7,'2.3L Turbo Charge Engine',2,'2.1','','YES','NO','YES','YES','YES','YES','YES','NO','YES','YES','YES','YES',2,4,'Petrol','','','6','',31,'YES','YES','Nitrox','','YES','Disk','Disk','2345','2100','1100','325','543','Tubeless',4,1221000.00,NULL,NULL,'Yes','','','1700','','25.9','1',2,'','','','','','','','',NULL,NULL,NULL,NULL,''),(83,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,2,'','1400','95.2','8000',5,6,'Turbo Engine',1,'2.1L','','YES','NO','YES','YES','YES','YES','NO','NO','YES','YES','YES','YES',2,3,'Normal','','','5','',35,'YES','YES','Nitrox','','YES','Disk','Disk','2345','2100','1100','325','543','Tubeless',4,980000.00,NULL,NULL,'Yes','','','1500','','17','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(84,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','800','63.4','400',5,5,'2.1L Engine',1,'1.2L','','NO','NO','NO','NO','YES','NO','NO','NO','YES','YES','YES','YES',1,3,'Normal','','','5','',20,'YES','YES','Fork','','YES','Drum','Drum','1200','1300','1100','325','32','Tubeless',4,3450000.00,NULL,NULL,'Yes','','','1200','','15.6','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,''),(85,20,2,1,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1900','135','800',5,2,'2.1L Turbo Charge',1,'2.5L','','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES','YES',4,4,'Normal','','','5','',38,'YES','YES','Nitrox','','YES','Disk','Disk','2345','2100','1100','85','150','Tubeless',4,2100000.00,NULL,NULL,'Dual Channel','','','2000','','21.5','1',2,'','','','','','','','',NULL,NULL,NULL,NULL,''),(86,17,2,2,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'','1497','117 bhp @ 6600 rpm','145 Nm @ 4600 rpm',5,65,'',1,'','','NO','','NO','YES','YES','NO','','YES','YES','YES','YES','YES',5,5,'','','','','',40,'YES','YES','','','','','','','','','','','',5,981000.00,NULL,NULL,'yes','','','','','	17.4 kmpl','1',2,'','','','','','','','',NULL,NULL,NULL,NULL,''),(87,17,2,2,1,'aaaaa','0000-00-00','0000-00-00','KA06 AA0000',2,1,'vsdavdsvsdavds','543','123','33',5,64,'vdsvsdvsdvsa',1,'343','','NO','YES','NO','NO','YES','YES','NO','YES','YES','YES','YES','YES',1,5,'Injection','','','5','',35,'YES','YES','Fork','','YES','Disk','','','','','','','',5,570000.00,NULL,NULL,'Yes','','','','','21','1',1,'','','','','','','','',NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `Vehicle_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehicle_type`
--

DROP TABLE IF EXISTS `Vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Vehicle_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehicle_type`
--

LOCK TABLES `Vehicle_type` WRITE;
/*!40000 ALTER TABLE `Vehicle_type` DISABLE KEYS */;
INSERT INTO `Vehicle_type` VALUES (1,'Bike'),(2,'Car');
/*!40000 ALTER TABLE `Vehicle_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_id` int(11) DEFAULT NULL,
  `area_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,1,'HAL'),(2,1,'koramangala'),(3,1,'marathahalli'),(4,2,'Jayanagar'),(5,2,'sspuram'),(6,2,'siragate'),(7,3,'Mgroad'),(8,3,'jayanagar'),(9,3,'jpnagar'),(10,4,'Liccolony'),(11,4,'saraswathiExtention'),(12,4,'shriramgara'),(13,1,'Cantonment area'),(14,1,'Domlur area'),(15,1,'Jeevanbheemanagar'),(16,1,'Indiranagar'),(17,1,'Malleswaram'),(18,1,'Pete area'),(19,1,'Rajajinagar'),(20,1,'Sadashivanagar'),(21,1,'Seshadripuram'),(22,1,'Shivajinagar'),(23,1,'Ulsoor'),(24,1,'Vasanth Nagar'),(25,1,'Bellandur');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_type`
--

DROP TABLE IF EXISTS `car_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `car_type` (
  `car_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`car_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_type`
--

LOCK TABLES `car_type` WRITE;
/*!40000 ALTER TABLE `car_type` DISABLE KEYS */;
INSERT INTO `car_type` VALUES (1,'HATCHBACK'),(2,'SEDAN'),(3,'SUV'),(4,'MUV'),(5,'LUXURY');
/*!40000 ALTER TABLE `car_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carloan`
--

DROP TABLE IF EXISTS `carloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carloan` (
  `carloan_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `employeetype` int(11) DEFAULT NULL,
  `income` varchar(150) DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `applicant_id` varchar(70) DEFAULT NULL,
  `digitalLoanKey` varchar(45) DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`carloan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carloan`
--

LOCK TABLES `carloan` WRITE;
/*!40000 ALTER TABLE `carloan` DISABLE KEYS */;
INSERT INTO `carloan` VALUES (1,738,NULL,NULL,NULL,NULL,1,6,'5ce67cf9fd445b5e00c83a72',NULL,0),(2,759,NULL,NULL,NULL,NULL,8,2,'5efgfds12',NULL,44),(3,776,NULL,NULL,NULL,NULL,3,15,'5cecc1ca48c0e5216be2fcf9',NULL,0),(4,776,NULL,NULL,NULL,NULL,1,2,'5cecc1ca48c0e5216be2fcf9',NULL,0),(5,776,NULL,NULL,NULL,NULL,1,3,'5cecc1ca48c0e5216be2fcf9',NULL,0),(6,776,NULL,NULL,NULL,NULL,1,12,'5cecc1ca48c0e5216be2fcf9',NULL,0),(7,776,NULL,NULL,NULL,NULL,1,6,'5cecc1ca48c0e5216be2fcf9',NULL,0),(8,774,NULL,NULL,NULL,NULL,3,15,'5cefd9b60cf6723ec8254062',NULL,0),(9,779,NULL,NULL,NULL,NULL,1,2,'5cf0fbb5e98ac54fee4c7c98',NULL,0),(10,776,NULL,NULL,NULL,NULL,1,14,'5cecc1ca48c0e5216be2fcf9',NULL,0),(11,775,NULL,NULL,NULL,NULL,1,4,'5cf5fdda263a911d8a3d0ddc',NULL,0),(12,775,NULL,NULL,NULL,NULL,9,23,'5cf5fdda263a911d8a3d0ddc',NULL,0),(13,826,NULL,NULL,NULL,NULL,9,25,'5d088a63dc495872dd34230f',NULL,0),(14,822,NULL,NULL,NULL,NULL,NULL,NULL,'5d08c46dcb3a437f27ae3d30',NULL,NULL),(15,829,NULL,NULL,NULL,NULL,NULL,NULL,'5d08c506cb3a437f27ae3d33',NULL,NULL),(16,826,NULL,NULL,NULL,NULL,10,36,'5d088a63dc495872dd34230f',NULL,0),(17,826,NULL,NULL,NULL,NULL,9,47,'5d088a63dc495872dd34230f',NULL,0),(18,826,NULL,NULL,NULL,NULL,9,40,'5d088a63dc495872dd34230f',NULL,0),(19,822,NULL,NULL,NULL,NULL,10,37,'5d08c46dcb3a437f27ae3d30',NULL,0),(20,822,NULL,NULL,NULL,NULL,9,21,'5d08c46dcb3a437f27ae3d30',NULL,0),(21,825,NULL,NULL,NULL,NULL,NULL,NULL,'5d11b4560167da64f2dc6c78',NULL,NULL),(22,846,NULL,NULL,NULL,NULL,NULL,NULL,'5d19c2769d2dcb3090209dd8',NULL,NULL),(23,853,NULL,NULL,NULL,NULL,NULL,NULL,'5d25b970f50c407a0e759279',NULL,NULL),(24,851,NULL,NULL,NULL,NULL,NULL,NULL,'5d26c1f5f71cb807885ee8f9',NULL,NULL),(25,856,NULL,NULL,NULL,NULL,20,80,'5d3983d6a839946f13f6f97f',NULL,0),(26,860,NULL,NULL,NULL,NULL,NULL,NULL,'5d3faa3ca1fcb63b33679382',NULL,NULL),(27,860,NULL,NULL,NULL,NULL,20,82,'5d3faa3ca1fcb63b33679382',NULL,0);
/*!40000 ALTER TABLE `carloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'New'),(2,'Used');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT NULL,
  `city_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3214 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (101,1,'Alipur'),(102,1,'Andaman Island'),(103,1,'Anderson Island'),(104,1,'Arainj-Laka-Punga'),(105,1,'Austinabad'),(106,1,'Bamboo Flat'),(107,1,'Barren Island'),(108,1,'Beadonabad'),(109,1,'Betapur'),(110,1,'Bindraban'),(111,1,'Bonington'),(112,1,'Brookesabad'),(113,1,'Cadell Point'),(114,1,'Calicut'),(115,1,'Chetamale'),(116,1,'Cinque Islands'),(117,1,'Defence Island'),(118,1,'Digilpur'),(119,1,'Dolyganj'),(120,1,'Flat Island'),(121,1,'Geinyale'),(122,1,'Great Coco Island'),(123,1,'Haddo'),(124,1,'Havelock Island'),(125,1,'Henry Lawrence Island'),(126,1,'Herbertabad'),(127,1,'Hobdaypur'),(128,1,'Ilichar'),(129,1,'Ingoie'),(130,1,'Inteview Island'),(131,1,'Jangli Ghat'),(132,1,'Jhon Lawrence Island'),(133,1,'Karen'),(134,1,'Kartara'),(135,1,'KYD Islannd'),(136,1,'Landfall Island'),(137,1,'Little Andmand'),(138,1,'Little Coco Island'),(139,1,'Long Island'),(140,1,'Maimyo'),(141,1,'Malappuram'),(142,1,'Manglutan'),(143,1,'Manpur'),(144,1,'Mitha Khari'),(145,1,'Neill Island'),(146,1,'Nicobar Island'),(147,1,'North Brother Island'),(148,1,'North Passage Island'),(149,1,'North Sentinel Island'),(150,1,'Nothen Reef Island'),(151,1,'Outram Island'),(152,1,'Pahlagaon'),(153,1,'Palalankwe'),(154,1,'Passage Island'),(155,1,'Phaiapong'),(156,1,'Phoenix Island'),(157,1,'Port Blair'),(158,1,'Preparis Island'),(159,1,'Protheroepur'),(160,1,'Rangachang'),(161,1,'Rongat'),(162,1,'Rutland Island'),(163,1,'Sabari'),(164,1,'Saddle Peak'),(165,1,'Shadipur'),(166,1,'Smith Island'),(167,1,'Sound Island'),(168,1,'South Sentinel Island'),(169,1,'Spike Island'),(170,1,'Tarmugli Island'),(171,1,'Taylerabad'),(172,1,'Titaije'),(173,1,'Toibalawe'),(174,1,'Tusonabad'),(175,1,'West Island'),(176,1,'Wimberleyganj'),(177,1,'Yadita'),(201,2,'Adilabad'),(202,2,'Anantapur'),(203,2,'Chittoor'),(204,2,'Cuddapah'),(205,2,'East Godavari'),(206,2,'Guntur'),(207,2,'Hyderabad'),(208,2,'Karimnagar'),(209,2,'Khammam'),(210,2,'Krishna'),(211,2,'Kurnool'),(212,2,'Mahabubnagar'),(213,2,'Medak'),(214,2,'Nalgonda'),(215,2,'Nellore'),(216,2,'Nizamabad'),(217,2,'Prakasam'),(218,2,'Rangareddy'),(219,2,'Srikakulam'),(220,2,'Visakhapatnam'),(221,2,'Vizianagaram'),(222,2,'Warangal'),(223,2,'West Godavari'),(301,3,'Anjaw'),(302,3,'Changlang'),(303,3,'Dibang Valley'),(304,3,'East Kameng'),(305,3,'East Siang'),(306,3,'Itanagar'),(307,3,'Kurung Kumey'),(308,3,'Lohit'),(309,3,'Lower Dibang Valley'),(310,3,'Lower Subansiri'),(311,3,'Papum Pare'),(312,3,'Tawang'),(313,3,'Tirap'),(314,3,'Upper Siang'),(315,3,'Upper Subansiri'),(316,3,'West Kameng'),(317,3,'West Siang'),(401,4,'Barpeta'),(402,4,'Bongaigaon'),(403,4,'Cachar'),(404,4,'Darrang'),(405,4,'Dhemaji'),(406,4,'Dhubri'),(407,4,'Dibrugarh'),(408,4,'Goalpara'),(409,4,'Golaghat'),(410,4,'Guwahati'),(411,4,'Hailakandi'),(412,4,'Jorhat'),(413,4,'Kamrup'),(414,4,'Karbi Anglong'),(415,4,'Karimganj'),(416,4,'Kokrajhar'),(417,4,'Lakhimpur'),(418,4,'Marigaon'),(419,4,'Nagaon'),(420,4,'Nalbari'),(421,4,'North Cachar Hills'),(422,4,'Silchar'),(423,4,'Sivasagar'),(424,4,'Sonitpur'),(425,4,'Tinsukia'),(426,4,'Udalguri'),(501,5,'Araria'),(502,5,'Aurangabad'),(503,5,'Banka'),(504,5,'Begusarai'),(505,5,'Bhagalpur'),(506,5,'Bhojpur'),(507,5,'Buxar'),(508,5,'Darbhanga'),(509,5,'East Champaran'),(510,5,'Gaya'),(511,5,'Gopalganj'),(512,5,'Jamshedpur'),(513,5,'Jamui'),(514,5,'Jehanabad'),(515,5,'Kaimur (Bhabua)'),(516,5,'Katihar'),(517,5,'Khagaria'),(518,5,'Kishanganj'),(519,5,'Lakhisarai'),(520,5,'Madhepura'),(521,5,'Madhubani'),(522,5,'Munger'),(523,5,'Muzaffarpur'),(524,5,'Nalanda'),(525,5,'Nawada'),(526,5,'Patna'),(527,5,'Purnia'),(528,5,'Rohtas'),(529,5,'Saharsa'),(530,5,'Samastipur'),(531,5,'Saran'),(532,5,'Sheikhpura'),(533,5,'Sheohar'),(534,5,'Sitamarhi'),(535,5,'Siwan'),(536,5,'Supaul'),(537,5,'Vaishali'),(538,5,'West Champaran'),(601,6,'Chandigarh'),(602,6,'Mani Marja'),(701,7,'Bastar'),(702,7,'Bhilai'),(703,7,'Bijapur'),(704,7,'Bilaspur'),(705,7,'Dhamtari'),(706,7,'Durg'),(707,7,'Janjgir-Champa'),(708,7,'Jashpur'),(709,7,'Kabirdham-Kawardha'),(710,7,'Korba'),(711,7,'Korea'),(712,7,'Mahasamund'),(713,7,'Narayanpur'),(714,7,'Norh Bastar-Kanker'),(715,7,'Raigarh'),(716,7,'Raipur'),(717,7,'Rajnandgaon'),(718,7,'South Bastar-Dantewada'),(719,7,'Surguja'),(801,8,'Amal'),(802,8,'Amli'),(803,8,'Bedpa'),(804,8,'Chikhli'),(805,8,'Dadra & Nagar Haveli'),(806,8,'Dahikhed'),(807,8,'Dolara'),(808,8,'Galonda'),(809,8,'Kanadi'),(810,8,'Karchond'),(811,8,'Khadoli'),(812,8,'Kharadpada'),(813,8,'Kherabari'),(814,8,'Kherdi'),(815,8,'Kothar'),(816,8,'Luari'),(817,8,'Mashat'),(818,8,'Rakholi'),(819,8,'Rudana'),(820,8,'Saili'),(821,8,'Sili'),(822,8,'Silvassa'),(823,8,'Sindavni'),(824,8,'Udva'),(825,8,'Umbarkoi'),(826,8,'Vansda'),(827,8,'Vasona'),(828,8,'Velugam'),(901,9,'Brancavare'),(902,9,'Dagasi'),(903,9,'Daman'),(904,9,'Diu'),(905,9,'Magarvara'),(906,9,'Nagwa'),(907,9,'Pariali'),(908,9,'Passo Covo'),(1001,10,'Central Delhi'),(1002,10,'East Delhi'),(1003,10,'New Delhi'),(1004,10,'North Delhi'),(1005,10,'North East Delhi'),(1006,10,'North West Delhi'),(1007,10,'Old Delhi'),(1008,10,'South Delhi'),(1009,10,'South West Delhi'),(1010,10,'West Delhi'),(1101,11,'Canacona'),(1102,11,'Candolim'),(1103,11,'Chinchinim'),(1104,11,'Cortalim'),(1105,11,'Goa'),(1106,11,'Jua'),(1107,11,'Madgaon'),(1108,11,'Mahem'),(1109,11,'Mapuca'),(1110,11,'Marmagao'),(1111,11,'Panji'),(1112,11,'Ponda'),(1113,11,'Sanvordem'),(1114,11,'Terekhol'),(1201,12,'Ahmedabad'),(1202,12,'Amreli'),(1203,12,'Anand'),(1204,12,'Banaskantha'),(1205,12,'Baroda'),(1206,12,'Bharuch'),(1207,12,'Bhavnagar'),(1208,12,'Dahod'),(1209,12,'Dang'),(1210,12,'Dwarka'),(1211,12,'Gandhinagar'),(1212,12,'Jamnagar'),(1213,12,'Junagadh'),(1214,12,'Kheda'),(1215,12,'Kutch'),(1216,12,'Mehsana'),(1217,12,'Nadiad'),(1218,12,'Narmada'),(1219,12,'Navsari'),(1220,12,'Panchmahals'),(1221,12,'Patan'),(1222,12,'Porbandar'),(1223,12,'Rajkot'),(1224,12,'Sabarkantha'),(1225,12,'Surat'),(1226,12,'Surendranagar'),(1227,12,'Vadodara'),(1228,12,'Valsad'),(1229,12,'Vapi'),(1301,13,'Ambala'),(1302,13,'Bhiwani'),(1303,13,'Faridabad'),(1304,13,'Fatehabad'),(1305,13,'Gurgaon'),(1306,13,'Hisar'),(1307,13,'Jhajjar'),(1308,13,'Jind'),(1309,13,'Kaithal'),(1310,13,'Karnal'),(1311,13,'Kurukshetra'),(1312,13,'Mahendragarh'),(1313,13,'Mewat'),(1314,13,'Panchkula'),(1315,13,'Panipat'),(1316,13,'Rewari'),(1317,13,'Rohtak'),(1318,13,'Sirsa'),(1319,13,'Sonipat'),(1320,13,'Yamunanagar'),(1401,14,'Bilaspur'),(1402,14,'Chamba'),(1403,14,'Dalhousie'),(1404,14,'Hamirpur'),(1405,14,'Kangra'),(1406,14,'Kinnaur'),(1407,14,'Kullu'),(1408,14,'Lahaul & Spiti'),(1409,14,'Mandi'),(1410,14,'Shimla'),(1411,14,'Sirmaur'),(1412,14,'Solan'),(1413,14,'Una'),(1501,15,'Anantnag'),(1502,15,'Baramulla'),(1503,15,'Budgam'),(1504,15,'Doda'),(1505,15,'Jammu'),(1506,15,'Kargil'),(1507,15,'Kathua'),(1508,15,'Kupwara'),(1509,15,'Leh'),(1510,15,'Poonch'),(1511,15,'Pulwama'),(1512,15,'Rajauri'),(1513,15,'Srinagar'),(1514,15,'Udhampur'),(1601,16,'Bokaro'),(1602,16,'Chatra'),(1603,16,'Deoghar'),(1604,16,'Dhanbad'),(1605,16,'Dumka'),(1606,16,'East Singhbhum'),(1607,16,'Garhwa'),(1608,16,'Giridih'),(1609,16,'Godda'),(1610,16,'Gumla'),(1611,16,'Hazaribag'),(1612,16,'Jamtara'),(1613,16,'Koderma'),(1614,16,'Latehar'),(1615,16,'Lohardaga'),(1616,16,'Pakur'),(1617,16,'Palamu'),(1618,16,'Ranchi'),(1619,16,'Sahibganj'),(1620,16,'Seraikela'),(1621,16,'Simdega'),(1622,16,'West Singhbhum'),(1701,17,'Bagalkot'),(1702,17,'Bangalore'),(1703,17,'Bangalore Rural'),(1704,17,'Belgaum'),(1705,17,'Bellary'),(1706,17,'Bhatkal'),(1707,17,'Bidar'),(1708,17,'Bijapur'),(1709,17,'Chamrajnagar'),(1710,17,'Chickmagalur'),(1711,17,'Chikballapur'),(1712,17,'Chitradurga'),(1713,17,'Dakshina Kannada'),(1714,17,'Davanagere'),(1715,17,'Dharwad'),(1716,17,'Gadag'),(1717,17,'Gulbarga'),(1718,17,'Hampi'),(1719,17,'Hassan'),(1720,17,'Haveri'),(1721,17,'Hospet'),(1722,17,'Karwar'),(1723,17,'Kodagu'),(1724,17,'Kolar'),(1725,17,'Koppal'),(1726,17,'Madikeri'),(1727,17,'Mandya'),(1728,17,'Mangalore'),(1729,17,'Manipal'),(1730,17,'Mysore'),(1731,17,'Raichur'),(1732,17,'Shimoga'),(1733,17,'Sirsi'),(1734,17,'Sringeri'),(1735,17,'Srirangapatna'),(1736,17,'Tumkur'),(1737,17,'Udupi'),(1738,17,'Uttara Kannada'),(1801,18,'Alappuzha'),(1802,18,'Alleppey'),(1803,18,'Alwaye'),(1804,18,'Ernakulam'),(1805,18,'Idukki'),(1806,18,'Kannur'),(1807,18,'Kasargod'),(1808,18,'Kochi'),(1809,18,'Kollam'),(1810,18,'Kottayam'),(1811,18,'Kovalam'),(1812,18,'Kozhikode'),(1813,18,'Malappuram'),(1814,18,'Palakkad'),(1815,18,'Pathanamthitta'),(1816,18,'Perumbavoor'),(1817,18,'Thiruvananthapuram'),(1818,18,'Thrissur'),(1819,18,'Trichur'),(1820,18,'Trivandrum'),(1821,18,'Wayanad'),(1901,19,'Agatti Island'),(1902,19,'Bingaram Island'),(1903,19,'Bitra Island'),(1904,19,'Chetlat Island'),(1905,19,'Kadmat Island'),(1906,19,'Kalpeni Island'),(1907,19,'Kavaratti Island'),(1908,19,'Kiltan Island'),(1909,19,'Lakshadweep Sea'),(1910,19,'Minicoy Island'),(1911,19,'North Island'),(1912,19,'South Island'),(2001,20,'Anuppur'),(2002,20,'Ashoknagar'),(2003,20,'Balaghat'),(2004,20,'Barwani'),(2005,20,'Betul'),(2006,20,'Bhind'),(2007,20,'Bhopal'),(2008,20,'Burhanpur'),(2009,20,'Chhatarpur'),(2010,20,'Chhindwara'),(2011,20,'Damoh'),(2012,20,'Datia'),(2013,20,'Dewas'),(2014,20,'Dhar'),(2015,20,'Dindori'),(2016,20,'Guna'),(2017,20,'Gwalior'),(2018,20,'Harda'),(2019,20,'Hoshangabad'),(2020,20,'Indore'),(2021,20,'Jabalpur'),(2022,20,'Jagdalpur'),(2023,20,'Jhabua'),(2024,20,'Katni'),(2025,20,'Khandwa'),(2026,20,'Khargone'),(2027,20,'Mandla'),(2028,20,'Mandsaur'),(2029,20,'Morena'),(2030,20,'Narsinghpur'),(2031,20,'Neemuch'),(2032,20,'Panna'),(2033,20,'Raisen'),(2034,20,'Rajgarh'),(2035,20,'Ratlam'),(2036,20,'Rewa'),(2037,20,'Sagar'),(2038,20,'Satna'),(2039,20,'Sehore'),(2040,20,'Seoni'),(2041,20,'Shahdol'),(2042,20,'Shajapur'),(2043,20,'Sheopur'),(2044,20,'Shivpuri'),(2045,20,'Sidhi'),(2046,20,'Tikamgarh'),(2047,20,'Ujjain'),(2048,20,'Umaria'),(2049,20,'Vidisha'),(2101,21,'Ahmednagar'),(2102,21,'Akola'),(2103,21,'Amravati'),(2104,21,'Aurangabad'),(2105,21,'Beed'),(2106,21,'Bhandara'),(2107,21,'Buldhana'),(2108,21,'Chandrapur'),(2109,21,'Dhule'),(2110,21,'Gadchiroli'),(2111,21,'Gondia'),(2112,21,'Hingoli'),(2113,21,'Jalgaon'),(2114,21,'Jalna'),(2115,21,'Kolhapur'),(2116,21,'Latur'),(2117,21,'Mahabaleshwar'),(2118,21,'Mumbai'),(2119,21,'Mumbai City'),(2120,21,'Mumbai Suburban'),(2121,21,'Nagpur'),(2122,21,'Nanded'),(2123,21,'Nandurbar'),(2124,21,'Nashik'),(2125,21,'Osmanabad'),(2126,21,'Parbhani'),(2127,21,'Pune'),(2128,21,'Raigad'),(2129,21,'Ratnagiri'),(2130,21,'Sangli'),(2131,21,'Satara'),(2132,21,'Sholapur'),(2133,21,'Sindhudurg'),(2134,21,'Thane'),(2135,21,'Wardha'),(2136,21,'Washim'),(2137,21,'Yavatmal'),(2201,22,'Bishnupur'),(2202,22,'Chandel'),(2203,22,'Churachandpur'),(2204,22,'Imphal East'),(2205,22,'Imphal West'),(2206,22,'Senapati'),(2207,22,'Tamenglong'),(2208,22,'Thoubal'),(2209,22,'Ukhrul'),(2301,23,'East Garo Hills'),(2302,23,'East Khasi Hills'),(2303,23,'Jaintia Hills'),(2304,23,'Ri Bhoi'),(2305,23,'Shillong'),(2306,23,'South Garo Hills'),(2307,23,'West Garo Hills'),(2308,23,'West Khasi Hills'),(2401,24,'Aizawl'),(2402,24,'Champhai'),(2403,24,'Kolasib'),(2404,24,'Lawngtlai'),(2405,24,'Lunglei'),(2406,24,'Mamit'),(2407,24,'Saiha'),(2408,24,'Serchhip'),(2501,25,'Dimapur'),(2502,25,'Kohima'),(2503,25,'Mokokchung'),(2504,25,'Mon'),(2505,25,'Phek'),(2506,25,'Tuensang'),(2507,25,'Wokha'),(2508,25,'Zunheboto'),(2601,26,'Angul'),(2602,26,'Balangir'),(2603,26,'Balasore'),(2604,26,'Baleswar'),(2605,26,'Bargarh'),(2606,26,'Berhampur'),(2607,26,'Bhadrak'),(2608,26,'Bhubaneswar'),(2609,26,'Boudh'),(2610,26,'Cuttack'),(2611,26,'Deogarh'),(2612,26,'Dhenkanal'),(2613,26,'Gajapati'),(2614,26,'Ganjam'),(2615,26,'Jagatsinghapur'),(2616,26,'Jajpur'),(2617,26,'Jharsuguda'),(2618,26,'Kalahandi'),(2619,26,'Kandhamal'),(2620,26,'Kendrapara'),(2621,26,'Kendujhar'),(2622,26,'Khordha'),(2623,26,'Koraput'),(2624,26,'Malkangiri'),(2625,26,'Mayurbhanj'),(2626,26,'Nabarangapur'),(2627,26,'Nayagarh'),(2628,26,'Nuapada'),(2629,26,'Puri'),(2630,26,'Rayagada'),(2631,26,'Rourkela'),(2632,26,'Sambalpur'),(2633,26,'Subarnapur'),(2634,26,'Sundergarh'),(2701,27,'Bahur'),(2702,27,'Karaikal'),(2703,27,'Mahe'),(2704,27,'Pondicherry'),(2705,27,'Purnankuppam'),(2706,27,'Valudavur'),(2707,27,'Villianur'),(2708,27,'Yanam'),(2801,28,'Amritsar'),(2802,28,'Barnala'),(2803,28,'Bathinda'),(2804,28,'Faridkot'),(2805,28,'Fatehgarh Sahib'),(2806,28,'Ferozepur'),(2807,28,'Gurdaspur'),(2808,28,'Hoshiarpur'),(2809,28,'Jalandhar'),(2810,28,'Kapurthala'),(2811,28,'Ludhiana'),(2812,28,'Mansa'),(2813,28,'Moga'),(2814,28,'Muktsar'),(2815,28,'Nawanshahr'),(2816,28,'Pathankot'),(2817,28,'Patiala'),(2818,28,'Rupnagar'),(2819,28,'Sangrur'),(2820,28,'SAS Nagar'),(2821,28,'Tarn Taran'),(2901,29,'Ajmer'),(2902,29,'Alwar'),(2903,29,'Banswara'),(2904,29,'Baran'),(2905,29,'Barmer'),(2906,29,'Bharatpur'),(2907,29,'Bhilwara'),(2908,29,'Bikaner'),(2909,29,'Bundi'),(2910,29,'Chittorgarh'),(2911,29,'Churu'),(2912,29,'Dausa'),(2913,29,'Dholpur'),(2914,29,'Dungarpur'),(2915,29,'Hanumangarh'),(2916,29,'Jaipur'),(2917,29,'Jaisalmer'),(2918,29,'Jalore'),(2919,29,'Jhalawar'),(2920,29,'Jhunjhunu'),(2921,29,'Jodhpur'),(2922,29,'Karauli'),(2923,29,'Kota'),(2924,29,'Nagaur'),(2925,29,'Pali'),(2926,29,'Pilani'),(2927,29,'Rajsamand'),(2928,29,'Sawai Madhopur'),(2929,29,'Sikar'),(2930,29,'Sirohi'),(2931,29,'Sri Ganganagar'),(2932,29,'Tonk'),(2933,29,'Udaipur'),(3001,30,'Barmiak'),(3002,30,'Be'),(3003,30,'Bhurtuk'),(3004,30,'Chhubakha'),(3005,30,'Chidam'),(3006,30,'Chubha'),(3007,30,'Chumikteng'),(3008,30,'Dentam'),(3009,30,'Dikchu'),(3010,30,'Dzongri'),(3011,30,'Gangtok'),(3012,30,'Gauzing'),(3013,30,'Gyalshing'),(3014,30,'Hema'),(3015,30,'Kerung'),(3016,30,'Lachen'),(3017,30,'Lachung'),(3018,30,'Lema'),(3019,30,'Lingtam'),(3020,30,'Lungthu'),(3021,30,'Mangan'),(3022,30,'Namchi'),(3023,30,'Namthang'),(3024,30,'Nanga'),(3025,30,'Nantang'),(3026,30,'Naya Bazar'),(3027,30,'Padamachen'),(3028,30,'Pakhyong'),(3029,30,'Pemayangtse'),(3030,30,'Phensang'),(3031,30,'Rangli'),(3032,30,'Rinchingpong'),(3033,30,'Sakyong'),(3034,30,'Samdong'),(3035,30,'Singtam'),(3036,30,'Sombari'),(3037,30,'Soreng'),(3038,30,'Sosing'),(3039,30,'Tekhug'),(3040,30,'Temi'),(3041,30,'Tsetang'),(3042,30,'Tsomgo'),(3043,30,'Tumlong'),(3044,30,'Yangang'),(3045,30,'Yumtang'),(3046,30,'Siniolchu'),(3101,31,'Chennai'),(3102,31,'Chidambaram'),(3103,31,'Chingleput'),(3104,31,'Coimbatore'),(3105,31,'Courtallam'),(3106,31,'Cuddalore'),(3107,31,'Dharmapuri'),(3108,31,'Dindigul'),(3109,31,'Erode'),(3110,31,'Hosur'),(3111,31,'Kanchipuram'),(3112,31,'Kanyakumari'),(3113,31,'Karaikudi'),(3114,31,'Karur'),(3115,31,'Kodaikanal'),(3116,31,'Kovilpatti'),(3117,31,'Krishnagiri'),(3118,31,'Kumbakonam'),(3119,31,'Madurai'),(3120,31,'Mayiladuthurai'),(3121,31,'Nagapattinam'),(3122,31,'Nagarcoil'),(3123,31,'Namakkal'),(3124,31,'Neyveli'),(3125,31,'Nilgiris'),(3126,31,'Ooty'),(3127,31,'Palani'),(3128,31,'Perambalur'),(3129,31,'Pollachi'),(3130,31,'Pudukkottai'),(3131,31,'Rajapalayam'),(3132,31,'Ramanathapuram'),(3133,31,'Salem'),(3134,31,'Sivaganga'),(3135,31,'Sivakasi'),(3136,31,'Thanjavur'),(3137,31,'Theni'),(3138,31,'Thoothukudi'),(3139,31,'Tiruchirappalli'),(3140,31,'Tirunelveli'),(3141,31,'Tirupur'),(3142,31,'Tiruvallur'),(3143,31,'Tiruvannamalai'),(3144,31,'Tiruvarur'),(3145,31,'Trichy'),(3146,31,'Tuticorin'),(3147,31,'Vellore'),(3148,31,'Villupuram'),(3149,31,'Virudhunagar'),(3150,31,'Yercaud'),(3201,32,'Agartala'),(3202,32,'Ambasa'),(3203,32,'Bampurbari'),(3204,32,'Belonia'),(3205,32,'Dhalai'),(3206,32,'Dharam Nagar'),(3207,32,'Kailashahar'),(3208,32,'Kamal Krishnabari'),(3209,32,'Khopaiyapara'),(3210,32,'Khowai'),(3211,32,'Phuldungsei'),(3212,32,'Radha Kishore Pur'),(3213,32,'Tripura');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_type`
--

DROP TABLE IF EXISTS `dealer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dealer_type` (
  `dealer_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `dealer_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dealer_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_type`
--

LOCK TABLES `dealer_type` WRITE;
/*!40000 ALTER TABLE `dealer_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `dealer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer_user`
--

DROP TABLE IF EXISTS `dealer_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dealer_user` (
  `dealer_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `dealer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`dealer_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer_user`
--

LOCK TABLES `dealer_user` WRITE;
/*!40000 ALTER TABLE `dealer_user` DISABLE KEYS */;
INSERT INTO `dealer_user` VALUES (1,8,43),(2,8,47),(3,8,49),(4,8,50),(5,1,1),(6,9,369),(7,10,372),(8,11,385),(9,12,386),(10,13,387),(11,14,388),(12,15,390),(13,16,391),(14,17,394),(15,18,402),(16,19,403),(17,20,407),(18,21,421),(19,22,435),(20,23,438),(21,24,440),(22,25,442),(23,26,443),(24,27,445),(25,28,446),(26,29,448),(27,30,449),(28,31,450),(29,32,451),(30,33,452),(31,34,453),(32,35,454),(33,36,455),(34,37,578),(35,38,579),(36,39,591),(37,40,592),(38,41,624),(39,42,626),(40,43,628),(41,44,632),(42,45,658),(43,46,659),(44,47,670),(45,48,672),(46,49,674),(47,50,675),(48,51,677),(49,52,678),(50,53,683),(51,54,687),(52,55,689),(53,56,690),(54,57,703),(55,58,704),(56,1,705),(57,2,706),(58,3,707),(59,8,733),(60,8,735),(61,8,736),(62,4,737),(63,8,742),(64,8,744),(65,8,746),(66,8,747),(67,8,749),(68,8,751),(69,8,752),(70,8,759),(71,8,762),(72,5,770),(73,6,771),(74,8,773),(75,8,774),(76,8,775),(77,8,776),(78,8,777),(79,8,778),(80,8,779),(81,8,780),(82,1,776),(83,1,775),(84,9,786),(85,10,794),(86,11,801),(87,9,775),(88,9,826),(89,10,826),(90,9,826),(91,9,826),(92,10,822),(93,9,822),(94,12,833),(95,13,834),(96,14,835),(97,15,840),(98,16,841),(99,17,842),(100,18,844),(101,19,857),(102,20,858),(103,20,856),(104,20,860);
/*!40000 ALTER TABLE `dealer_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dealers` (
  `dealer_id` int(11) NOT NULL AUTO_INCREMENT,
  `dealer_name` varchar(150) DEFAULT NULL,
  `dealer_primary_contact` varchar(15) DEFAULT NULL,
  `dealer_secondary_contact` varchar(15) DEFAULT NULL,
  `dealer_email` varchar(100) DEFAULT NULL,
  `dealer_address` varchar(250) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `Country` int(11) DEFAULT NULL,
  `Area` varchar(100) DEFAULT NULL,
  `Landmark` varchar(100) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_type` int(11) DEFAULT NULL,
  `brand_type` varchar(100) DEFAULT NULL,
  `dealer_type` int(11) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `profile_Image` varchar(255) DEFAULT NULL,
  `superAdmin_id` int(11) DEFAULT '1',
  PRIMARY KEY (`dealer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES (1,'Yescars','9988776655',NULL,'sudhukc1@gmail.com',NULL,1,1,1,'Indira Nagar',NULL,NULL,NULL,NULL,705,2,'0',2,'0',NULL,1),(2,'Maxo','7898789870',NULL,'contactus@maxo.com',NULL,1,1,1,'Marathahalli',NULL,NULL,NULL,NULL,706,2,'6',1,'0',NULL,1),(3,'Kaveri Honda','9988001122',NULL,'kaverihonda@mailnator.com',NULL,1,1,1,'Indira Nagar',NULL,NULL,NULL,NULL,707,2,'2',1,'0',NULL,1),(6,'deepak','123456789',NULL,'deepak@whatsloan.com',NULL,1,1,1,'Indiranagar',NULL,NULL,NULL,NULL,771,2,'0',2,'0',NULL,1),(8,'Srikanth','8310144831','NULL','timmana.g@whatsloan.com',NULL,1,1,1,'Indirianagar',NULL,NULL,NULL,NULL,779,2,'0',2,'0',NULL,1),(9,'Taj Bikes','8722229999',NULL,'tajbikes@abc.com',NULL,1,1,1,'1',NULL,NULL,NULL,NULL,786,1,'7',1,'1','/Images/imgUploader_1561907021995_taj.jpg',1),(10,'JMB Yamaha','8999999999',NULL,'jmbyamaha@gmail.com',NULL,1,1,1,'2',NULL,NULL,NULL,NULL,794,1,'8',1,'1','/Images/imgUploader_1561909688698_2015-12-14.jpg',1),(11,'Om Shakti Motors','9060825256',NULL,'omshakti@abc.com',NULL,1,1,1,'HSR',NULL,NULL,NULL,NULL,801,1,'2',2,'1','/Images/imgUploader_1561909387083_onShakti.jpg',1),(12,'Yes Cars','9900814312',NULL,'yescar@gmail.com',NULL,1,1,1,'16',NULL,NULL,NULL,NULL,833,2,'',2,'1','/Images/imgUploader_1562043587274_Yes-Cars-Logo.png',1),(13,'Autofreaks','9900009946',NULL,'autofreaks@gmail.com',NULL,1,1,1,'4',NULL,NULL,NULL,NULL,834,2,'',2,'1','/Images/imgUploader_1561714898624_autofreeks.png',1),(14,'sudhamsh','9060825256',NULL,'sudhukcwhatsloan@gmail.com',NULL,1,1,1,'HSR',NULL,NULL,NULL,NULL,835,1,'1',1,'1',NULL,1),(15,'Bench Mark','9965246524',NULL,'benchmark12@gmail.com',NULL,1702,17,1,'jayanagar',NULL,NULL,NULL,NULL,840,2,'17',1,'0',NULL,2),(16,'Benchmark Cars','9984584562',NULL,'benchmarkcars@gmail.com',NULL,1201,12,1,'S.G Highway ',NULL,NULL,NULL,NULL,841,2,'17',1,'1','/Images/imgUploader_1562043607012_benchmark.png',2),(17,'LandMarks Honda','9912399123',NULL,'landmarkshonda@gmail.com',NULL,1201,12,1,'Thaltej',NULL,NULL,NULL,NULL,842,2,'2',1,'1','/Images/imgUploader_1561980740358_landmarkhonda.in.jpeg',2),(18,'Bench Mark Renault','9945699456',NULL,'benchmarkrenault@gmail.com',NULL,2118,21,1,'Kandivali',NULL,NULL,NULL,NULL,844,2,'20',1,'1','/Images/imgUploader_1561963398240_renault-in.jpg',2),(20,'KunHyundai','8888888888',NULL,'kunhyundai@gmail.com',NULL,3101,31,1,'Annanagar',NULL,NULL,NULL,NULL,858,2,'1',1,'1',NULL,2);
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry_type`
--

DROP TABLE IF EXISTS `enquiry_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enquiry_type` (
  `enq_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `enq_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enq_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_type`
--

LOCK TABLES `enquiry_type` WRITE;
/*!40000 ALTER TABLE `enquiry_type` DISABLE KEYS */;
INSERT INTO `enquiry_type` VALUES (1,'Enquiry'),(2,'Test Drive'),(3,'Booking'),(4,'Loan Enquiry');
/*!40000 ALTER TABLE `enquiry_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `favourite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `is_fav` enum('1','0') DEFAULT '0',
  PRIMARY KEY (`fav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
INSERT INTO `favourite` VALUES (1,738,6,'0'),(2,738,9,'0'),(3,738,15,'0'),(4,738,2,'0'),(5,738,14,'0'),(6,738,19,'0'),(7,738,8,'0'),(8,738,4,'0'),(9,738,7,'0'),(10,738,13,'0'),(11,735,17,'0'),(12,738,3,'0'),(13,735,2,'0'),(14,735,6,'0'),(15,774,4,'1'),(16,776,15,'0'),(17,775,25,'0'),(18,775,21,'0'),(19,775,7,'0'),(20,775,23,'0'),(21,775,24,'0'),(22,775,27,'0'),(23,774,7,'0'),(24,774,21,'0'),(25,774,23,'0'),(26,774,24,'0'),(27,774,22,'0'),(28,774,27,'0'),(29,826,21,'1'),(30,822,32,'0'),(31,822,46,'0'),(32,822,37,'0'),(33,826,24,'0'),(34,822,21,'0'),(35,826,22,'0'),(36,826,23,'0'),(37,826,25,'0'),(38,822,23,'0'),(39,822,27,'0'),(40,822,22,'0'),(41,826,28,'0'),(42,829,21,'0'),(43,825,19,'1'),(44,825,51,'0'),(45,822,63,'0'),(46,822,54,'0'),(47,822,53,'0'),(48,822,51,'1'),(49,822,56,'0'),(50,825,52,'0'),(51,822,52,'0'),(52,846,22,'1'),(53,846,21,'0'),(54,845,64,'1'),(55,845,65,'0'),(56,738,57,'0'),(57,738,58,'0'),(58,738,59,'0'),(59,738,54,'0'),(60,738,55,'1'),(61,738,56,'0'),(62,738,60,'0'),(63,738,62,'0'),(64,738,61,'0'),(65,738,63,'0'),(66,851,56,'0'),(67,851,54,'0'),(68,851,55,'1'),(69,846,78,'0'),(70,859,80,'1'),(71,859,79,'1'),(72,856,64,'1'),(73,856,65,'0'),(74,856,66,'0'),(75,860,64,'1'),(76,860,65,'1');
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox`
--

DROP TABLE IF EXISTS `inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox`
--

LOCK TABLES `inbox` WRITE;
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` VALUES (1,711,'NewCar','A grand new Tata hexa has Launched.'),(2,711,'NewCar','A grand new Tata hexa has Launched.'),(3,711,'NewCar','A grand new Tata hexa has Launched.'),(4,1,'NewCar','A grand new Tata hexa has Launched.'),(5,738,'NewCar','A grand new Tata hexa has Launched.'),(6,12,'new launch','new BMW R4 has launched'),(7,12,'new launch','new BMW R4 has launched'),(8,12,'new launch','new BMW R4 has launched'),(9,12,'new launch','new BMW R4 has launched'),(10,12,'new launch','new cr came out'),(11,12,'new launch','new car launched'),(12,12,'new car launch','new car is coming soon book test drive'),(13,775,'Loan Approved','Hii Deepak your loan has been approved.'),(14,775,'You Got A Surprise!!','A grand new Tata hexa has Launched. Visit Our Nearest Showrooms and get all details about Tata hexa for further details call us on 1800-080-0081');
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_access`
--

DROP TABLE IF EXISTS `role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_access` (
  `access_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_access` text,
  PRIMARY KEY (`access_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_access`
--

LOCK TABLES `role_access` WRITE;
/*!40000 ALTER TABLE `role_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_table`
--

DROP TABLE IF EXISTS `role_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_table` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_table`
--

LOCK TABLES `role_table` WRITE;
/*!40000 ALTER TABLE `role_table` DISABLE KEYS */;
INSERT INTO `role_table` VALUES (1,'Super Admin'),(2,'Dealer'),(3,'Sales User'),(4,'Customer');
/*!40000 ALTER TABLE `role_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `state_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,NULL,'ANDAMAN AND NICOBAR ISLANDS'),(2,NULL,'ANDHRA PRADESH'),(3,NULL,'ARUNACHAL PRADESH'),(4,NULL,'ASSAM'),(5,NULL,'BIHAR'),(6,NULL,'CHANDIGARH'),(7,NULL,'CHATTISGARH'),(8,NULL,'DADRA AND NAGAR HAVELI'),(9,NULL,'DAMAN AND DIU'),(10,NULL,'DELHI'),(11,NULL,'GOA'),(12,NULL,'GUJARAT'),(13,NULL,'HARYANA'),(14,NULL,'HIMACHAL PRADESH'),(15,NULL,'JAMMU AND KASHMIR'),(16,NULL,'JHARKHAND'),(17,NULL,'KARNATAKA'),(18,NULL,'KERALA'),(19,NULL,'LAKSHADWEEP'),(20,NULL,'MADHYA PRADESH'),(21,NULL,'MAHARASHTRA'),(22,NULL,'MANIPUR'),(23,NULL,'MEGHALAYA'),(24,NULL,'MIZORAM'),(25,NULL,'NAGALAND'),(26,NULL,'ORISSA'),(27,NULL,'PONDICHERRY'),(28,NULL,'PUNJAB'),(29,NULL,'RAJASTHAN'),(30,NULL,'SIKKIM'),(31,NULL,'TAMIL NADU'),(32,NULL,'TRIPURA'),(33,NULL,'UTTARAKHAND'),(34,NULL,'UTTAR PRADESH'),(35,NULL,'WEST BENGAL'),(36,NULL,'TELANGANA');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `city_id` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `profile_pic` varchar(200) DEFAULT NULL,
  `superAdmin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=862 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'Srikanth G','8310144831',NULL,NULL,'srikanth.g@whatsloan.com','test@123',1,NULL,NULL,NULL,1),(705,'yescars','9988776655',NULL,NULL,'sudhukc1@gmail.com','test@123',2,NULL,NULL,'public/Images/imgUploader_1557385370268_photo-1449130015084-2d48a345ae62.jpg',1),(706,'maxo','7898789870',NULL,NULL,'contactus@maxo.com','test@123',2,NULL,NULL,'/Images/imgUploader_1561536013861_blank-profile-picture-973460_640.png',1),(707,'kaveriHonda','9988001122',NULL,NULL,'kaverihonda@mailnator.com','test@12',2,NULL,NULL,NULL,1),(729,'Srikanth G','8310144831',NULL,NULL,'srikanthgec7@gmail.com','test@123',4,NULL,NULL,NULL,1),(731,'Srikanth G','8310144831',NULL,NULL,'srikanthg@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(732,'sudhu','8495886634',NULL,NULL,'pranavraj0522@gmail.com','test@123',4,NULL,NULL,NULL,1),(738,'Dipak Singh','7980356604',NULL,NULL,'dipak.singh@whatsloan.com','qwerty',4,NULL,NULL,'/Images/imgUploader_1562256458145_1562256427166',1),(740,'mahesh','9898989898',NULL,NULL,'mahesh@test.com','test@123',4,NULL,NULL,NULL,1),(743,'mahesh','9898989898',NULL,NULL,'mahesh@testt.com','test@123',4,NULL,NULL,NULL,1),(755,'sri1','9060825256',NULL,NULL,'srikanth.g@whatslaaoaaan.com18','test@12',4,NULL,NULL,NULL,1),(757,'sri1','9060825256',NULL,NULL,'srikanth.g@whatsla1aoaaan.com18','test@12',4,NULL,NULL,NULL,1),(759,'sri1','9060825256',NULL,NULL,'srikanth.g@whqatsla1aoaaan.com18','test@12',4,NULL,NULL,NULL,1),(760,'sri1','9060825256',NULL,NULL,'sriakanth.g@whqatsla1aoaaan.com18','test@12',4,NULL,NULL,NULL,1),(762,'sri1','9060825256',NULL,NULL,'sriakanth.g@whqatsla1aoaasan.com18','test@12',4,NULL,NULL,NULL,1),(763,'sudhu','1234567890',NULL,NULL,'sudhu@gmail.com','test@123',2,NULL,NULL,NULL,1),(764,'sudhu','1234567890',NULL,NULL,'sudhu123@gmail.com','test@123',2,NULL,NULL,NULL,1),(765,'sudhu','1234567890',NULL,NULL,'sudhu1234@gmail.com','test@123',2,NULL,NULL,'/Images/imgUploader_1561100898867_Screenshot from 2019-01-23 18-07-59.png',1),(766,'sudhu','1234567890',NULL,NULL,'sudhu1234@gmail.com123','test@123',2,NULL,NULL,NULL,1),(768,'jhonyjhony289@gmail.com','7411441144',NULL,NULL,'sudhamsh.kc@whatsloan.com','test@123',2,NULL,NULL,NULL,1),(771,'deepak','123456789',NULL,NULL,'deepak@whatsloan.com','test@123',2,NULL,NULL,NULL,1),(772,'mahesh','9988123124',NULL,NULL,'mahesh@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(775,'Dipak','9876543210',NULL,'599562bf87d4e200f282eb96','dipak.singh@gmail.com','qwerty',4,NULL,NULL,'/Images/imgUploader_1559886094178_1559886093935',1),(776,'Vinod','7676767676',NULL,'599562bf87d4e200f282eb96','vinod@gmail.com','test123',4,NULL,NULL,'/Images/imgUploader_1559110960092_1559110959946',1),(777,'Tonmoy Ghosal','9876876780',NULL,'599562bf87d4e200f282eb96','tonmoyg@gmail.com','test123',4,NULL,NULL,NULL,1),(778,'Arvind','7984563258',NULL,'599562bf87d4e200f282eb96','arvind@kj.com','test@123',4,NULL,NULL,NULL,1),(779,'Timmana Gouda','9900390180',NULL,'599562bf87d4e200f282eb96','timmana.g@whatsloan.com','test@123',2,NULL,NULL,NULL,1),(780,'Ajay Kumar K V ','9742278938',NULL,'0','ajaykopparam@gmail.com','Kopparam26',4,NULL,NULL,NULL,1),(781,'shanthinath','8722229999',NULL,NULL,'shanthinath@abc.com','test@123',2,NULL,NULL,NULL,1),(782,'shanthinath','8722229999',NULL,NULL,'shanthinath@mailnator.com','test@123',2,NULL,NULL,NULL,1),(786,'Taj Bikes','8722229999',NULL,NULL,'tajbikes@abc.com','test@123',2,NULL,NULL,NULL,1),(787,'virat','9060825256',NULL,'5uhjlkl231','sriakanth.g@whtsla1ajoaasan.com9438','test@12',4,NULL,NULL,NULL,1),(789,'virat','9060825256',NULL,'5uhjlkl231','sriakanth.g@whtsla1ajoaasan.com9437','test@12',4,NULL,NULL,NULL,1),(791,'mahesh','8999999999',NULL,NULL,'maheshbikes@mailnator.com','test@123',2,NULL,NULL,NULL,1),(792,'mahesh','8999999999',NULL,NULL,'maheshbikes@mailnator1.com','test@123',2,NULL,NULL,NULL,1),(794,'JMB Yamaha','8999999999',NULL,NULL,'jmbyamaha@gmail.com','test@123',2,NULL,NULL,NULL,1),(795,'balaji','9900990099',NULL,NULL,'balaji12@mailnator.com','test@123',2,NULL,NULL,NULL,1),(798,'balaji','9900990099',NULL,NULL,'balaji12@mailnator1.com','test@123',2,NULL,NULL,NULL,1),(800,'balaji','9060825256',NULL,NULL,'balaji12@abc.com','test@123',2,NULL,NULL,NULL,1),(801,'Om Shakti Motors','9060825256',NULL,NULL,'omshakti@abc.com','test@123',2,NULL,NULL,NULL,1),(802,'tonmoy','7204240813',NULL,NULL,'tonmoy.ghoshal@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(807,'virat','9060825256',NULL,'5uhjlkl231','sriakanth.g@whtsla1ajoaasan.com94370','test@12',4,NULL,NULL,NULL,1),(808,'virat','9060825256',NULL,'5uhjlkl231','sriakanth.g@whtsla1ajoaasan.com94371','test@12',4,NULL,NULL,NULL,1),(816,'sri1','9060825256',NULL,'','srikanthg@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(819,'Abana','9988123124',NULL,'599562bf87d4e200f282eb96','mahesh@whatsloan.com1','test123',5,NULL,NULL,NULL,1),(820,'Jasjskks','9988123124',NULL,'599562bf87d4e200f282eb96','mahesh@whatsloan.com1','test@123',5,NULL,NULL,NULL,1),(821,'Jakkaak','9988123124',NULL,'599562bf87d4e200f282eb96','mahesh@whatsloan.com1','test',5,NULL,NULL,NULL,1),(822,'Dipak Singh','7980356604','3722','599562bf87d4e200f282eb96','dipak.singh@whatsloan.com','test',5,NULL,NULL,'/Images/imgUploader_1561886754764_1561886754085',1),(823,'sri1','9988123124',NULL,'','mahesh@whatsloan55.com12','test@12',5,NULL,NULL,NULL,1),(825,'Sahana BR','9900837955',NULL,'599562bf87d4e200f282eb96','sahana.br@whatsloan.com','test@123',4,NULL,NULL,'/Images/imgUploader_1561467036351_1561467036694.jpg',1),(826,'Sahana BR','9900837955',NULL,'599562bf87d4e200f282eb96','sahana.br@whatsloan.com','test@123',5,NULL,NULL,'/Images/imgUploader_1561106284851_1561106285312.jpg',1),(827,'Sahana BR','9900837955',NULL,'599562bf87d4e200f282eb96','sahanabr@gmail.com','test@123',4,NULL,NULL,NULL,1),(828,'Sudhamsh','7411767640',NULL,'599562bf87d4e200f282eb96','sudhukc1@gmail.com','test@123',4,NULL,NULL,NULL,1),(829,'sahana','9900837955',NULL,'599562bf87d4e200f282eb96','sahanabr@gmail.com','test@123',5,NULL,NULL,NULL,1),(830,'yescars','9900814312',NULL,NULL,'yescar@gmail.com','test@123',2,NULL,NULL,NULL,1),(831,'yescars','9900814312',NULL,NULL,'yescar@gmail.com','test@123',2,NULL,NULL,NULL,1),(832,'yescars','9900814312',NULL,NULL,'yescar@gmail.com','test@123',2,NULL,NULL,NULL,1),(833,'yescars','9900814312',NULL,NULL,'yescar@gmail.com','test@123',2,NULL,NULL,NULL,1),(834,'autofreaks','9900009946',NULL,NULL,'autofreaks@gmail.com','test@123',2,NULL,NULL,NULL,1),(835,'sri1','9060825256',NULL,NULL,'sudhukcwhatsloan@gmail.com','test@123',2,NULL,NULL,NULL,1),(836,'tonmoy','7204240813',NULL,NULL,'tonmoy.ghoshal@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(837,'tonmoy','7204240813',NULL,NULL,'tonmoy.ghoshal@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(838,'tonmoy','7204240813',NULL,NULL,'tonmoy.ghoshal@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(839,'Landmark','9965265203',NULL,NULL,'landmarkgroup@gmail.com','test@123',1,NULL,NULL,NULL,2),(840,'Bench mark','9965246524',NULL,NULL,'benchmark12@gmail.com','test@123',2,NULL,NULL,NULL,2),(841,' Benchmark Ahmedabad ','9984584562',NULL,NULL,'benchmarkcars@gmail.com','test@123',2,NULL,NULL,NULL,2),(842,'Hondalandmarks','9912399123',NULL,NULL,'landmarkshonda@gmail.com','test@123',2,NULL,NULL,NULL,2),(843,'sri1','9988123124',NULL,'','mahesh@whatsloan55.com12','test@12',4,NULL,NULL,NULL,1),(844,'benchmarkrenault','9945699456',NULL,NULL,'benchmarkrenault@gmail.com','test@123',2,NULL,NULL,NULL,2),(845,'bharathbs','9035702942',NULL,'599562bf87d4e200f282eb96','bharath.bs@whatsloan.com','test@123',4,NULL,NULL,NULL,1),(846,'bharathbs','9035702942','420','599562bf87d4e200f282eb96','bharath.bs@whatsloan.com','test@123',5,NULL,NULL,'/Images/imgUploader_1563943481724_1563943480816.jpg',1),(847,'Sudhamsk K C','7411767640',NULL,'599562bf87d4e200f282eb96','sudhamsh.kc@whatsloan.con','test@123',5,NULL,NULL,NULL,2),(848,'Sudhu','9988123124',NULL,'5t5jbcjnsj','sudhu@whatsloan.com','test',4,NULL,NULL,NULL,2),(849,'Dipak Singh','7980356604',NULL,'599562bf87d4e200f282eb96','dipak.singh@whatsloan.com','ytrewq',4,NULL,NULL,'/Images/imgUploader_1562216742192_1562216741855',2),(850,'bharath','9035702942',NULL,'599562bf87d4e200f282eb96','bharath.bs@whatsloan.com','test',4,NULL,NULL,'/Images/imgUploader_1562220399110_1562220397162.jpg',2),(851,'Bharat','8660416853','9809','599562bf87d4e200f282eb96','bharat@gmail.com','',5,NULL,NULL,'/Images/imgUploader_1562751547724_1562751547252',1),(852,'Bharat','8660416853','9809','5t5jbcjnsj','bharat@whatsloan.com','',5,NULL,NULL,NULL,1),(853,'Timmana Gouda D','9900390180','6919','599562bf87d4e200f282eb96','goudaindiana@gmail.com','',5,NULL,NULL,'/Images/imgUploader_1562753378235_1562753376872',1),(854,'bharath','8660416853','9809','599562bf87d4e200f282eb96','bharath.bs@whatsloan.com','',5,NULL,NULL,NULL,1),(855,'bharath','9035702942','420','599562bf87d4e200f282eb96','bharath@whatsloan.com','',5,NULL,NULL,NULL,1),(856,'bharath','9035702942','4308','599562bf87d4e200f282eb96','bharath@whatsloan.com','',5,NULL,NULL,'/Images/imgUploader_1564123399924_1564123399603.jpg',2),(858,'kun Hyundai','8888888888',NULL,NULL,'kunhyundai@gmail.com','test@123',2,NULL,NULL,NULL,2),(859,'Dipak Singh','7980356604','1079','599562bf87d4e200f282eb96','dipak@gmail.com','',5,NULL,NULL,NULL,2),(860,'Vinod Kumar Sampathi','9036918178','4903','599562bf87d4e200f282eb96','vinod.sampathi18@gmail.com','',5,NULL,NULL,NULL,2),(861,'samarth','9113613419','5755','599562bf87d4e200f282eb96','samarthkapse1997@gmail.com','',5,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_bookings`
--

DROP TABLE IF EXISTS `vehicle_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_status` varchar(15) DEFAULT NULL,
  `booking_advance_payment` float(15,2) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_bookings`
--

LOCK TABLES `vehicle_bookings` WRITE;
/*!40000 ALTER TABLE `vehicle_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_enquiry`
--

DROP TABLE IF EXISTS `vehicle_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_enquiry` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_no` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  `enquiry_type` int(11) DEFAULT NULL,
  `vehicle_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_enquiry`
--

LOCK TABLES `vehicle_enquiry` WRITE;
/*!40000 ALTER TABLE `vehicle_enquiry` DISABLE KEYS */;
INSERT INTO `vehicle_enquiry` VALUES (1,NULL,NULL,7,40,1,'2',1,1,729),(2,NULL,NULL,7,27,1,'2',1,1,731),(3,NULL,NULL,8,46,1,'2',1,1,732),(4,NULL,NULL,1,1,1,'2',2,2,772),(5,NULL,NULL,8,55,5,'',2,1,775),(6,NULL,NULL,8,53,4,'1',2,1,774),(7,NULL,NULL,3,15,8,'1',2,2,780),(8,NULL,NULL,8,51,4,'1',2,1,826),(9,NULL,NULL,15,100,13,'1',2,2,825),(10,NULL,NULL,16,101,13,'1',2,2,825),(11,NULL,NULL,2,61,12,'',2,2,822),(12,NULL,NULL,17,103,13,'',2,2,822),(13,NULL,NULL,17,102,13,'1',2,2,825),(14,NULL,NULL,1,2,12,'1',2,2,825),(15,NULL,NULL,17,102,13,'599562bf87d4e200f282eb96',2,2,825),(16,NULL,NULL,17,102,13,'599562bf87d4e200f282eb96',2,2,825),(17,NULL,NULL,15,100,13,'599562bf87d4e200f282eb96',2,2,825),(18,NULL,NULL,1,2,12,'599562bf87d4e200f282eb96',2,2,825),(19,NULL,NULL,17,103,16,'599562bf87d4e200f282eb96',2,2,860);
/*!40000 ALTER TABLE `vehicle_enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_images`
--

DROP TABLE IF EXISTS `vehicle_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `image_path` varchar(150) DEFAULT NULL,
  `is_video` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_images`
--

LOCK TABLES `vehicle_images` WRITE;
/*!40000 ALTER TABLE `vehicle_images` DISABLE KEYS */;
INSERT INTO `vehicle_images` VALUES (1,1,'vehicle_image/1200px-2017_Suzuki_Celerio_SZ4_Automatic_1.0_Front.jpg','0'),(2,1,'vehicle_image/celerio.png','0'),(3,1,'vehicle_image/Maruti-Suzuki-Celerio-Interior-111171.jpg','0'),(4,2,'vehicle_image/honda-city-front-left-rim.jpg','0'),(5,2,'vehicle_image/honda-city-default-image.png-version201805101631.png','0'),(6,2,'vehicle_image/images.jpg','0'),(7,3,'vehicle_image/maxresdefault.jpg','0'),(10,4,'vehicle_image/G30_KV1_Website-Homepage-Banner-New.jpg','0'),(11,4,'vehicle_image/photo-1523983302122-73e869e1f850.jpg','0'),(12,5,'vehicle_image/maxresdefault (1).jpg','0'),(13,5,'vehicle_image/Royal-Enfield-Thunderbird-350X-Mileage.jpg','0'),(14,6,'vehicle_image/download.jpg','0'),(15,7,'vehicle_image/maxresdefault (1).jpg','0'),(16,9,'vehicle_image/_49d88462-6b01-11e8-af35-5e950c6035ab.jpg','0'),(17,9,'vehicle_image/13698660_04caea.jpg','0'),(18,9,'vehicle_image/hyundai-tucson-active-long-term-2017-(1).jpg','0'),(19,8,'vehicle_image/download (4).jpg','0'),(20,10,'vehicle_image/G30_KV1_Website-Homepage-Banner-New.jpg','0'),(21,12,'vehicle_image/G30_KV1_Website-Homepage-Banner-New.jpg','0'),(22,13,'vehicle_image/G30_KV1_Website-Homepage-Banner-New.jpg','0'),(23,13,'vehicle_image/photo-1523983302122-73e869e1f850.jpg','0'),(24,14,'vehicle_image/maxresdefault.jpg','0'),(25,15,'vehicle_image/2018-honda-accord-sport-15t-manual-review-car-and-driver-photo-698625-s-original.jpg','0'),(26,15,'vehicle_image/accord.jpg','0'),(27,15,'vehicle_image/image-1.jpg','0'),(28,15,'vehicle_image/SampleVideo_720x480_1mb.mp4','1'),(29,15,'vehicle_image/SampleVideo_1280x720_1mb.mp4','1'),(34,19,'vehicle_image/20170824071413_Hyundai-Verna-dynamic.jpg','0'),(35,19,'vehicle_image/625x300_41391083279.jpg','0'),(36,20,'vehicle_image/maxresdefault.jpg','0'),(38,20,'vehicle_image/403191-2016-audi-q3-2-0t-quattro.jpg','0'),(39,21,'vehicle_image/Hero-Karizma-ZMR-3.jpg','0'),(40,21,'vehicle_image/2014-Hero-Karizma-ZMR-Review.jpg','0'),(41,22,'vehicle_image/Royal-Enfield-Thunderbird-350X-White-with-accessories-front-left-quarter-India-launch.jpg','0'),(42,23,'vehicle_image/royal-enfield-interceptor-650-1510298984.jpeg','0'),(43,24,'vehicle_image/hero-duet-candy-blazing-red.jpg','0'),(44,25,'vehicle_image/38203_classic_500_Stealth_Black_5.jpg','0'),(46,27,'vehicle_image/38203_classic_500_Stealth_Black_5.jpg','0'),(47,28,'vehicle_image/hero-duet-candy-blazing-red.jpg','0'),(48,29,'vehicle_image/38203_classic_500_Stealth_Black_5.jpg','0'),(49,29,'vehicle_image/Royal-Enfield-Thunderbird-350X-White-with-accessories-front-left-quarter-India-launch.jpg','0'),(50,28,'vehicle_image/hero-duet-candy-blazing-red.jpg','0'),(51,23,'vehicle_image/royal-enfield-interceptor-650-1510298984.jpeg','0'),(52,30,'vehicle_image/38203_classic_500_Stealth_Black_5.jpg','0'),(53,31,'vehicle_image/Royal-Enfield-Thunderbird-350X-White-with-accessories-front-left-quarter-India-launch.jpg','0'),(54,28,'vehicle_image/hero-duet-candy-blazing-red.jpg','0'),(55,32,'vehicle_image/eTfadeb1f33e9d4bae0f1dd9ee212569e1QFAnK7rt1.jpg','0'),(56,32,'vehicle_image/TVS-Apache-RTR-160-Review-Front-left-1024x768.jpg','0'),(57,33,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20180320054838_ApacheStatic2.jpg','0'),(58,33,'vehicle_image/63425527.jpg','0'),(59,33,'vehicle_image/tvs-apache-rtr-160-4v-first-ride_827x510_41521272346.jpg','0'),(60,33,'vehicle_image/v_apache-rtr-160-4v-fi-dual-disc1536316986.jpg','0'),(61,33,'vehicle_image/_ae9dc548-2dca-11e8-a965-f54d0b6b9edf.jpg','0'),(62,33,'vehicle_image/0_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20181004114155_2018 TVS Apache RTR160 4V.jpg','0'),(63,34,'vehicle_image/v_pulsar-180-dtsi1528185017.jpg','0'),(64,34,'vehicle_image/41813_2018_Bajaj_Pulsar_150twindisc_001_468x263.jpg','0'),(65,34,'vehicle_image/bajaj_pulsar_180_dtsi_rear_view_640x480.jpg','0'),(66,34,'vehicle_image/Bajaj-Pulsar-3.jpg','0'),(67,35,'vehicle_image/m_pulsar-rs-200_11540289495.jpg','0'),(68,35,'vehicle_image/m_pulsar-rs-200_11540289494.jpg','0'),(69,35,'vehicle_image/29285_Bajaj_Pulsar_RS200_016.JPG','0'),(70,35,'vehicle_image/29281_Bajaj_Pulsar_RS200_014.JPG','0'),(71,35,'vehicle_image/cko1O3.jpg','0'),(72,35,'vehicle_image/rc200.jpg','0'),(73,36,'vehicle_image/img_7539_720x540.jpg','0'),(74,36,'vehicle_image/32867d7d905cde54c02b1fbd4efc1d0e.jpg','0'),(75,36,'vehicle_image/yamahamt-1571552986188.jpg','0'),(76,37,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20180314041600_Yamaha-R15-lean.jpg','0'),(77,37,'vehicle_image/43180__ANI8076.JPG','0'),(78,37,'vehicle_image/43177__ANI8066.JPG','0'),(79,37,'vehicle_image/Yamaha-YZF-R15-V3-Rear-threequarter-130093.jpg','0'),(80,38,'vehicle_image/TP115_GP1__96782.1452010379.jpg','0'),(81,38,'vehicle_image/maxresdefault-2.jpg','0'),(82,38,'vehicle_image/maxresdefault.jpg','0'),(83,38,'vehicle_image/$_86.JPG','0'),(84,39,'vehicle_image/Suzuki-Gixxer-SF-250-First-Ride-Review.jpg','0'),(85,39,'vehicle_image/v_gixxer-250-abs1558609181.jpg','0'),(86,39,'vehicle_image/v_gixxer-250-abs1558609181.jpg','0'),(87,40,'vehicle_image/2019-Suzuki-Gixxer-SF-250-Gixxer-SF-150-24.jpg','0'),(88,40,'vehicle_image/2019-Suzuki-Gixxer-SF-250-Gixxer-SF-150-27.jpg','0'),(89,40,'vehicle_image/2019-Suzuki-Gixxer-SF-250-Gixxer-SF-150-24.jpg','0'),(90,39,'vehicle_image/2019-Suzuki-Gixxer-SF-250-Gixxer-SF-150-71.jpg','0'),(91,39,'vehicle_image/2019-Suzuki-Gixxer-SF-250-Gixxer-SF-150-27.jpg','0'),(92,42,'vehicle_image/maxresdefault-2.jpg','0'),(93,42,'vehicle_image/_DSC0072.jpg','0'),(94,42,'vehicle_image/2019 Vespa Primavera 150 (5).JPG','0'),(95,42,'vehicle_image/6000000001.jpg','0'),(96,43,'vehicle_image/2016-Suzuki-Hayabusa-motoringjunction.jpg','0'),(97,43,'vehicle_image/hayabusa-big-3-min.jpg','0'),(98,43,'vehicle_image/Suzuki-Hayabusa-770x433.jpg','0'),(99,44,'vehicle_image/6000000011.jpg','0'),(100,44,'vehicle_image/MRU_705848_SUZUKI_HAYABUSA_WHT-06.jpg','0'),(101,44,'vehicle_image/c98fa1ca276cddfe9dfa81d861f009d4_extra_large.jpg','0'),(102,45,'vehicle_image/suzuki-hayabusa.jpg','0'),(103,45,'vehicle_image/suzuki-gsx1300r-hayabusa-2008-1920x1200-002-rose-lynn.jpg','0'),(104,45,'vehicle_image/2008-orange-suzuki-hayabusa-gsx1300r-4300-miles-like-new-chrome-extras-1.JPG','0'),(105,46,'vehicle_image/Suzuki-Intruder-150-Official-6.jpg','0'),(106,46,'vehicle_image/39427_Suzuki_Intruder_150-010.JPG','0'),(107,46,'vehicle_image/39430_Suzuki_Intruder_150-032.JPG','0'),(108,47,'vehicle_image/17bgmbike1__1_.jpeg','0'),(109,47,'vehicle_image/1490250375_Himalayan.jpg.jpg','0'),(110,47,'vehicle_image/static-Himalayan.jpg','0'),(111,48,'vehicle_image/8kfsv0ig_hyundai-santro_625x300_28_October_18.jpg','0'),(112,48,'vehicle_image/2018-hyundai-santro-02.jpg','0'),(113,48,'vehicle_image/rsb10081540618071.jpg','0'),(114,49,'vehicle_image/main-qimg-0d60fcb29153b5945030d8ad61b330e9.jpeg','0'),(115,49,'vehicle_image/new-royal-enfield-thunderbird-350x.jpg','0'),(116,49,'vehicle_image/Royal-Enfield-Thunderbird-X-front-quarter-3.jpg','0'),(117,49,'vehicle_image/v_royal-enfield-thunderbird-350x-std1527501200.jpg','0'),(118,50,'vehicle_image/main-qimg-0d60fcb29153b5945030d8ad61b330e9.jpeg','0'),(119,50,'vehicle_image/new-royal-enfield-thunderbird-350x.jpg','0'),(120,50,'vehicle_image/v_royal-enfield-thunderbird-350x-std1527501200.jpg','0'),(121,51,'vehicle_image/2.jpg','0'),(122,51,'vehicle_image/5.jpg','0'),(123,51,'vehicle_image/5NPD74LF2KH450145-1c.jpg','0'),(124,52,'vehicle_image/honda-city-zx-city-zx-exi-ID7GrFm4-1-2.jpg','0'),(125,52,'vehicle_image/honda-city-zx-city-zx-exi-ID7GrFm4-4.jpg','0'),(126,52,'vehicle_image/honda-city-zx-city-zx-exi-ID7GrFm4-2.jpg','0'),(127,52,'vehicle_image/honda-city-zx-city-zx-exi-ID7GrFm4-6.jpg','0'),(128,52,'vehicle_image/honda-city-zx-city-zx-exi-ID7GrFm4-3.jpg','0'),(129,52,'vehicle_image/honda-city-zx-city-zx-exi-ID7GrFm4-5.jpg','0'),(130,53,'vehicle_image/Honda-Accord-Gl1.jpg','0'),(131,53,'vehicle_image/Honda-Accord-Gl2.jpg','0'),(132,53,'vehicle_image/Honda-Accord-Gl4.jpg','0'),(133,53,'vehicle_image/Honda-Accord-Gl3.jpg','0'),(134,53,'vehicle_image/Honda-Accord-Gl6.jpg','0'),(135,53,'vehicle_image/Honda-Accord-Gl5.jpg','0'),(136,54,'vehicle_image/WhatsApp Image 2019-06-25 at 11.22.57 AM.jpeg','0'),(137,54,'vehicle_image/WhatsApp Image 2019-06-25 at 11.22.56 AM-2.jpeg','0'),(138,54,'vehicle_image/WhatsApp Image 2019-06-25 at 11.22.56 AM.jpeg','0'),(139,54,'vehicle_image/WhatsApp Image 2019-06-25 at 11.22.57 AM-2.jpeg','0'),(140,54,'vehicle_image/WhatsApp Image 2019-06-25 at 11.22.58 AM.jpeg','0'),(141,54,'vehicle_image/WhatsApp Image 2019-06-25 at 11.22.59 AM.jpeg','0'),(142,55,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.39 AM-2.jpeg','0'),(143,55,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.40 AM-2.jpeg','0'),(144,55,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.41 AM.jpeg','0'),(145,55,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.39 AM-3.jpeg','0'),(146,55,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.39 AM.jpeg','0'),(147,55,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.41 AM-2.jpeg','0'),(148,56,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.49 AM.jpeg','0'),(149,56,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.49 AM-2.jpeg','0'),(150,56,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.50 AM-2.jpeg','0'),(151,56,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.51 AM.jpeg','0'),(152,56,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.52 AM.jpeg','0'),(153,56,'vehicle_image/WhatsApp Image 2019-06-25 at 11.24.50 AM.jpeg','0'),(154,57,'vehicle_image/WhatsApp Image 2019-06-25 at 11.25.02 AM.jpeg','0'),(175,61,'vehicle_image/WhatsApp Image 2019-06-25 at 11.30.51 AM.jpeg','0'),(176,61,'vehicle_image/WhatsApp Image 2019-06-25 at 11.30.51 AM-2.jpeg','0'),(177,61,'vehicle_image/WhatsApp Image 2019-06-25 at 11.30.53 AM.jpeg','0'),(178,61,'vehicle_image/WhatsApp Image 2019-06-25 at 11.30.52 AM.jpeg','0'),(180,62,'vehicle_image/suzuki-swift-fr.jpg','0'),(181,62,'vehicle_image/40157__ANI1352.JPG','0'),(186,60,'vehicle_image/c48426c3-0677-4ca3-b212-131db39f311c.jpeg','0'),(187,60,'vehicle_image/af58743f-7e12-4560-8fca-3e9033b3de65.jpeg','0'),(188,60,'vehicle_image/4752681e-7dd6-4bed-870b-94c052146b8c.jpeg','0'),(189,60,'vehicle_image/2caa3eaa-5405-4745-9876-49df106f008a.jpeg','0'),(190,60,'vehicle_image/c04e0aa2-79c3-4413-a0bb-8a7305d63426.jpeg','0'),(191,60,'vehicle_image/87b107e7-28fe-442e-8205-cb9e2e701321.jpeg','0'),(192,58,'vehicle_image/640beef5-e620-4a4d-9523-0f53b83ce3ae.jpeg','0'),(193,58,'vehicle_image/f1f67d18-c7c3-46bb-867f-02cadd43d96f.jpeg','0'),(194,58,'vehicle_image/a64d1efe-5f08-466a-95a4-f169949c2fc1.jpeg','0'),(195,58,'vehicle_image/6d2246ed-f54d-4cc6-89ab-203183c78435.jpeg','0'),(196,58,'vehicle_image/21e96fb0-a357-4818-9eb4-63206ea908c9.jpeg','0'),(197,58,'vehicle_image/9640e2a0-3e8e-4927-9cef-1be11ce33b3b.jpeg','0'),(198,59,'vehicle_image/621bd9aa-c2e3-4c47-9b6e-9102acb1b06f.jpeg','0'),(199,59,'vehicle_image/4ddb5964-bad8-4b35-a7f9-4defe0ae8b30.jpeg','0'),(200,59,'vehicle_image/3729041e-dd55-4f04-951d-f798dd4ce927.jpeg','0'),(201,59,'vehicle_image/217a6dff-f49f-4983-815d-ae0c9f137522.jpeg','0'),(202,59,'vehicle_image/482523c8-860c-412b-8585-7a7b298601ca.jpeg','0'),(203,63,'vehicle_image/358ae271-da4a-4ac5-8165-c852f874601e.jpeg','0'),(204,63,'vehicle_image/9a67ea99-962c-4e5c-92da-6c53b21d3c2c.jpeg','0'),(205,63,'vehicle_image/22834346-fc66-42f3-8a67-2eee1685488d.jpeg','0'),(206,63,'vehicle_image/99b62619-a717-4962-a5a9-5a7d903b58ed.jpeg','0'),(207,63,'vehicle_image/c4d0f3a0-befc-432a-9c44-104949472a45.jpeg','0'),(208,57,'vehicle_image/04803283-185e-443e-aa7d-67538a369b3b.jpeg','0'),(209,57,'vehicle_image/d798d163-9b05-4c7a-871e-731b09eb2837.jpeg','0'),(210,57,'vehicle_image/1c555d5b-3d45-4d55-8d2b-1483a5ee5f85.jpeg','0'),(211,57,'vehicle_image/b2b3a168-ca94-4a7a-bb1e-bbb063ea3774.jpeg','0'),(227,67,'vehicle_image/images.jpeg','0'),(230,68,'vehicle_image/download.jpeg','0'),(231,68,'vehicle_image/istanbulturkey-october-25-2017-renault-260nw-1107060698.jpg','0'),(232,64,'vehicle_image/2017_honda_civic_type_r_rouge_001.png','0'),(233,64,'vehicle_image/CAC70HOC021B121001.jpg','0'),(234,64,'vehicle_image/cc_2019hoc020082_02_640_si.jpg','0'),(235,69,'vehicle_image/images (1).jpeg','0'),(237,69,'vehicle_image/download (2).jpeg','0'),(238,69,'vehicle_image/download.jpeg','0'),(239,69,'vehicle_image/download (1).jpeg','0'),(240,69,'vehicle_image/download (2).jpeg','0'),(241,72,'vehicle_image/images.jpeg','0'),(242,72,'vehicle_image/download.jpeg','0'),(247,73,'vehicle_image/images (2).jpeg','0'),(248,73,'vehicle_image/images (1).jpeg','0'),(249,73,'vehicle_image/images.jpeg','0'),(250,73,'vehicle_image/renault-lodgy-car-500x500.jpg','0'),(251,73,'vehicle_image/front-left-side-47.jpg','0'),(253,67,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20171027045534_Buying-used-Duster-2.jpg','0'),(254,67,'vehicle_image/images (1).jpeg','0'),(255,67,'vehicle_image/renault-duster-pearl-white.png','0'),(256,67,'vehicle_image/300x225x37481091-renault_duster.jpg.pagespeed.ic.Z1ew9n4t2w.jpg','0'),(259,65,'vehicle_image/download.jpeg','0'),(266,65,'vehicle_image/1.jpg','0'),(267,65,'vehicle_image/accord1.jpeg','0'),(268,65,'vehicle_image/accord3.jpeg','0'),(269,66,'vehicle_image/honda-jazz.jpg','0'),(270,66,'vehicle_image/44900-jazz360red01-honda-site.jpg','0'),(271,66,'vehicle_image/hondajazz11.jpeg','0'),(272,66,'vehicle_image/maxresdefault.jpg','0'),(273,74,'vehicle_image/Gti.mp4','1'),(274,74,'vehicle_image/0_Screen-Shot-2018-11-05-at-122140.png','0'),(275,74,'vehicle_image/3613e107a1e1f224e4c09df19c925af8.jpg','0'),(276,74,'vehicle_image/Golf_GTI_Performance_main_trans_NvBQzQNjv4BqpwPJL_eQFfZ-6VvDjKshhEeZcSoYanrs9VRY2OlIW1Y.jpg','0'),(277,74,'vehicle_image/golf_gti_tcr_014111.jpg','0'),(278,74,'vehicle_image/I0rR5fl.jpg','0'),(279,67,'vehicle_image/1.jpg','0'),(280,75,'vehicle_image/5b4749cbbdee0.jpg','0'),(281,75,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_Galleries_20160314112028_31.jpg','0'),(282,75,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_Galleries_20120619033950__ND30578.jpg','0'),(283,75,'vehicle_image/13-dacia-duster-2018-rt-cabin.jpg','0'),(284,75,'vehicle_image/duster-sce-4x4-prestige24.jpg','0'),(285,75,'vehicle_image/New-2016-Renault-Duster-rear-head-on35.jpg','0'),(286,76,'vehicle_image/05_ig_w400_h225.jpg','0'),(287,76,'vehicle_image/0_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20170726110229_Renault Kwid.jpg','0'),(288,76,'vehicle_image/mf_2325901.jpg','0'),(289,77,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20171103020551_Hyundai-Grand-i10-front-thr.jpg','0'),(290,77,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20171103020551_Hyundai-Grand-i10-rear-thre.jpg','0'),(291,77,'vehicle_image/big_5ce0382928e8c0ac3e05219d.jpg','0'),(292,77,'vehicle_image/1389627182583ed4f372197.jpg','0'),(293,77,'vehicle_image/Hyundaii100916Int(4).jpg','0'),(294,77,'vehicle_image/Hyundaigrand_i10_infotainment.jpg','0'),(295,78,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20171103020551_Hyundai-Grand-i10-front-thr.jpg','0'),(296,78,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20171103020551_Hyundai-Grand-i10-rear-thre.jpg','0'),(297,78,'vehicle_image/1389627182583ed4f372197.jpg','0'),(298,78,'vehicle_image/grand-i10.jpg','0'),(299,78,'vehicle_image/Hyundaigrand_i10_infotainment.jpg','0'),(300,78,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20171103020551_Hyundai-Grand-i10-rear-thre.jpg','0'),(301,79,'vehicle_image/2014-hyundai-eon---driven.jpg','0'),(302,79,'vehicle_image/1286_7T4G7384.JPG','0'),(303,79,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20180412083536_Eon Rear.jpg','0'),(304,79,'vehicle_image/1253_4.JPG','0'),(305,80,'vehicle_image/34805_HyundaiXcent2017-023.JPG','0'),(306,80,'vehicle_image/big_455153_1492757625.jpg','0'),(307,80,'vehicle_image/34825_HyundaiXcent2017-025.JPG','0'),(308,81,'vehicle_image/2014-Hyundai-Elite-i20-Review-6-720x480.jpg','0'),(309,81,'vehicle_image/2017-Hyundai-Elite-i20-1.jpg','0'),(310,81,'vehicle_image/Hyundai-Elite-i20-Rear-side-e1472911510885.jpg','0'),(311,81,'vehicle_image/dsc_3971_0_0_0.jpg','0'),(312,81,'vehicle_image/all-new-hyundai-i20-interior-detailed-photo-gallery_7.jpg','0'),(313,81,'vehicle_image/Hyundai-i20-Active-14.jpg','0'),(314,82,'vehicle_image/Front 1.jpg','0'),(315,82,'vehicle_image/hyundai-verna-500x500.jpg','0'),(316,82,'vehicle_image/dsc_3971_0_0_0.jpg','0'),(317,82,'vehicle_image/Hyundai-Verna-Interior-105752.jpg','0'),(318,82,'vehicle_image/maxresdefault.jpg','0'),(319,82,'vehicle_image/37455_Hyundai_Verna_2017-005.JPG','0'),(320,83,'vehicle_image/2019-hyundai-tuscon-first-drive-feat.jpg','0'),(321,83,'vehicle_image/BBS324j.img.jpeg','0'),(322,83,'vehicle_image/37455_Hyundai_Verna_2017-005.JPG','0'),(323,83,'vehicle_image/Hyundai-Verna-Interior-105752.jpg','0'),(324,84,'vehicle_image/47870_Hyundai_Santro_2019_001.JPG','0'),(325,84,'vehicle_image/47873_Hyundai_Santro_2019_005.JPG','0'),(326,84,'vehicle_image/66433926.cms.jpeg','0'),(327,84,'vehicle_image/Hyundai_Santro_First_Drive.png.jpeg','0'),(328,84,'vehicle_image/1_578_872_0_70_http___cdni.autocarindia.com_ExtraImages_20181026012040_SantroGREENFRONTTRACKING.jpg','0'),(329,85,'vehicle_image/New-Hyundai-Elantra-2019-India-Launch.jpg','0'),(330,85,'vehicle_image/2019 Hyundai Elantra (3a).jpg','0'),(331,85,'vehicle_image/37455_Hyundai_Verna_2017-005.JPG','0'),(332,85,'vehicle_image/Front 1.jpg','0'),(333,86,'vehicle_image/front-right-view-120.jpg','0'),(334,86,'vehicle_image/side-view-(right)-38.jpg','0'),(335,86,'vehicle_image/rear-right-side-48.jpg','0'),(336,86,'vehicle_image/dashboard-59.jpg','0'),(337,86,'vehicle_image/wheel-42.jpg','0'),(338,86,'vehicle_image/model-and-badging-100.jpg','0');
/*!40000 ALTER TABLE `vehicle_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_model`
--

DROP TABLE IF EXISTS `vehicle_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `model_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `model_name_UNIQUE` (`model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_model`
--

LOCK TABLES `vehicle_model` WRITE;
/*!40000 ALTER TABLE `vehicle_model` DISABLE KEYS */;
INSERT INTO `vehicle_model` VALUES (1,1,'Eon'),(2,1,'Elantra'),(3,1,'Elite i20'),(4,1,'Grand i10'),(5,1,'Santro'),(6,1,'Tuscon'),(7,1,'Verna'),(8,1,'Xcent'),(9,4,'Alto 800'),(10,4,'Alto K10'),(11,4,'Baleno'),(12,4,'Baleno RS'),(13,4,'Celerio'),(14,4,'Celerio X'),(15,3,'3 Series'),(16,3,'4 Series'),(17,3,'7 Series 2019'),(18,3,'8 Series'),(19,3,'x2'),(20,3,'x5'),(21,3,'x7'),(22,3,'i3'),(23,3,'i8'),(24,7,'Achiever'),(25,7,'Destini 125'),(26,7,'Duet'),(27,7,'Glamour'),(28,7,'HF Dawn'),(29,7,'HF Deluxe'),(30,7,'Karizma ZMR'),(31,7,'Maestro Edge'),(32,7,'Passion Pro'),(33,7,'Passion XPro'),(34,7,'Pleasure'),(35,7,'Splendor PRO'),(36,7,'Splendor PLUS'),(37,7,'Splendor iSmart 110'),(38,7,'Super Splendor'),(39,7,'Xtreme 200R'),(40,7,'Xtreme Sports'),(41,7,'Dare'),(42,7,'Super Splendor iSmart'),(43,7,'XF3R'),(44,7,'XPulse 200'),(45,7,'XPulse 200T'),(46,8,'Bullet 350'),(47,8,'Bullet 500'),(48,8,'Bullet Trials 350'),(49,8,'Bullet Trials 500'),(50,8,'Classic 350'),(51,8,'Classic 500'),(52,8,'Continental GT 650'),(53,8,'Himalayan'),(54,8,'Interceptor 650'),(55,8,'Thunderbird 350'),(56,8,'Thunderbird 350X'),(57,8,'Thunderbird 500'),(58,8,'Thunderbird 500X'),(59,8,'2020 Classic 350'),(60,8,'2020 Thunderbird 500'),(61,2,'Accord'),(62,2,'Amaze'),(63,2,'BRV'),(64,2,'Brio'),(65,2,'City'),(66,2,'Civic'),(67,2,'Jazz'),(68,2,'WRV'),(69,2,'Vezel'),(71,9,'Aprilia SR 150'),(72,9,'Aprilia SR 125'),(73,9,'Aprilia Storm'),(74,10,'Apache RTR 160'),(75,10,'Apache RTR 160 4V'),(76,10,'Apache RR 310'),(77,10,'Apache RTR 200 4V Race Edition 2.0'),(78,10,'Apache RTR 180'),(79,10,'Jupiter'),(80,10,'NTORQ 125'),(81,11,'Platina 110'),(82,11,'Pulsar 150'),(83,11,'Pulsar NS200'),(84,11,'Pulsar 200F'),(85,11,'Pulsar RS200'),(86,11,'Pulsar NS160'),(87,11,'Pulsar 180'),(88,11,'Pulsar 220F'),(89,12,'YZF R15 V3'),(90,12,'MT 15'),(91,12,'FZ-Fi Version 3.0'),(92,12,'Fascino'),(93,12,'YZF R1'),(94,13,'Gixxer SF 250'),(95,13,'Access 125'),(96,13,'Hayabusa'),(97,13,'Intruder'),(98,13,'RM Z450'),(99,14,'Vespa 150'),(100,15,'Jaguar XF'),(101,16,'Audi Q7'),(102,17,'Benz E 250'),(103,17,'Benz E 220'),(104,3,'x6'),(105,3,'520d '),(106,17,'Benz c 250'),(108,4,'Swift'),(109,18,'Polo GT'),(110,20,'Duster'),(111,20,'KWID'),(112,20,'Captur'),(113,20,'Lodgy'),(114,18,'GTI');
/*!40000 ALTER TABLE `vehicle_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_sales_transactions`
--

DROP TABLE IF EXISTS `vehicle_sales_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_sales_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `unit_sold` int(11) DEFAULT NULL,
  `selling_price` float(15,2) DEFAULT NULL,
  `selling_date` date DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_sales_transactions`
--

LOCK TABLES `vehicle_sales_transactions` WRITE;
/*!40000 ALTER TABLE `vehicle_sales_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sales_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_test_drive`
--

DROP TABLE IF EXISTS `vehicle_test_drive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_test_drive` (
  `drive_id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(11) DEFAULT NULL,
  `schedule_date` varchar(10) DEFAULT NULL,
  `schedule_time` varchar(10) DEFAULT NULL,
  `special_instructions` text,
  `drive_location_address` text,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`drive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_test_drive`
--

LOCK TABLES `vehicle_test_drive` WRITE;
/*!40000 ALTER TABLE `vehicle_test_drive` DISABLE KEYS */;
INSERT INTO `vehicle_test_drive` VALUES (1,1,'2019-03-29','5:30','fgfdgf','HSR Layout',NULL),(2,2,'2019-03-25','17.30','','',NULL),(3,3,'2019-03-25','17.30','','',NULL),(4,4,'2019-03-25','17.30','fgfdgf','',NULL),(5,5,'2019-03-29','5:30','fgfdgf','HSR Layout',NULL),(6,6,'2019-03-25','17.30','fgfdgf','cbdvbmnd',NULL),(7,7,'2019-03-29','5:54','fgfdqwea','HSR layoutaa',NULL),(8,8,'2019-12-12','12:30','be carefull','abc',NULL),(9,9,'2019-12-12','12:30','be carefull','abc',NULL),(10,10,'2019-12-12','12:30','be carefull','abc',NULL),(11,11,'2019-04-12','sudhu','becareful','itpl',NULL),(12,12,'2019-04-12','sudhu','becareful','itpl',NULL),(13,13,'2019-04-12','sudhu','becareful','itpl',NULL),(14,14,'2019-04-12','sudhu','becareful','itpl',NULL),(15,15,'2019-04-12','sudhu','becareful','itpl',NULL),(16,16,'2019-04-12','sudhu','becareful','itpl',NULL),(17,17,'2019-04-12','12:30','beaware','mysoree',NULL),(18,4,'2019-05-31','12:30','be quick','near by',NULL),(19,5,'12-7-2019','12:00','that’s all ok','',NULL),(20,6,'2019-06-07','13:30','Test','',NULL),(21,7,'2019-06-08','10:32','pick up at residence','',NULL),(22,8,'','','','',NULL),(23,9,'2019-06-28','10:0','test','',NULL),(24,10,'2019-06-28','10:0','test drive','',NULL),(25,11,'12-03-2019','12:30','test','',NULL),(26,12,'12-03-2019','12:30','test','',NULL),(27,13,'2019-06-28','10:0','test','',NULL),(28,14,'2019-06-27','3:10','Test','',NULL),(29,15,'2019-06-28','10:0','test','',NULL),(30,16,'2019-06-28','10:0','test','',NULL),(31,17,'2019-06-28','11:0','test','',NULL),(32,18,'2019-06-27','0:17','Test','',NULL),(33,19,'2019-07-30','14:41','test ','',NULL);
/*!40000 ALTER TABLE `vehicle_test_drive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles_stock`
--

DROP TABLE IF EXISTS `vehicles_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicles_stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `estimate_cost_price_unit` float(15,2) DEFAULT NULL,
  `Margin` float(3,2) DEFAULT NULL,
  `estimate_sell_price_unit` float(15,2) DEFAULT NULL,
  `total_units_stock` int(11) DEFAULT NULL,
  `total_unit_sale` int(11) DEFAULT NULL,
  `total_available_units` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles_stock`
--

LOCK TABLES `vehicles_stock` WRITE;
/*!40000 ALTER TABLE `vehicles_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles_stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-30 15:17:14
