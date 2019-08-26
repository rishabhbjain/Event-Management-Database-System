CREATE DATABASE  IF NOT EXISTS `db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `Address_id` int(11) NOT NULL,
  `Address_line1` varchar(45) NOT NULL,
  `Address_line2` varchar(45) DEFAULT NULL,
  `Address_zipcode` varchar(45) NOT NULL,
  `Address_phoneno` varchar(45) NOT NULL,
  `City_City_id` int(11) NOT NULL,
  PRIMARY KEY (`Address_id`),
  UNIQUE KEY `Address_id_UNIQUE` (`Address_id`),
  KEY `fk_Address_City1_idx` (`City_City_id`),
  CONSTRAINT `fk_Address_City1` FOREIGN KEY (`City_City_id`) REFERENCES `City` (`City_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,'RaceCourse','Mahalaxmi','400008','+91-22345678',3),(2,'Honey Apartment,Parel','Apartment  no. 212','400012','+91-22345732',3),(3,'75 Saint Alphonsus Street','Apartment no. 1212','02120','+1-34567892',1),(4,'75 Peterborough Street','Apartment no. 101','02116','+1-24543256',1),(5,'FenwayPark','Opposite Target','02215','+1-23454343',1),(6,'Boston Common','Opposite Mac Donalds','02122','+1-23423422',1),(7,'Rickie Mark','Apartment no 121','02124','+1-23432122',1),(8,'Milton Park','Opposite Rickew Hall','10134','+1-32124567',1),(9,'24 Park Drive','Apartment no 34B','02216','+1-32433211',1),(10,'11 Mission Hill','Aparment no 23A','02212','+1-33221143',1),(11,'Marine Drive Building','Apartment no 1222','400001','+91-22254359',3),(12,'Chaudari Street Shop no 212A','Lower PArel','400011','+91-22233344',3),(13,'13 Richard street','Apartment no 102','02100','+1-32324345',1),(14,'65 Parker Street','Apartment no. 112','02101','+1-45567892',1),(15,'234 Checker Street','Apartnment no 235','01021','+1-23412356',2);
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Card` (
  `Card_id` int(11) NOT NULL,
  `Card_holder_fname` varchar(45) NOT NULL,
  `Card_holder_lname` varchar(45) NOT NULL,
  `Card_type` varchar(45) NOT NULL,
  `Card_no` varchar(45) NOT NULL,
  `Card_cvv` varchar(45) NOT NULL,
  `Card_expirydate` date NOT NULL,
  `UserAccount_UserAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`Card_id`),
  KEY `fk_Card_UserAccount1_idx` (`UserAccount_UserAccount_id`),
  CONSTRAINT `fk_Card_UserAccount1` FOREIGN KEY (`UserAccount_UserAccount_id`) REFERENCES `UserAccount` (`UserAccount_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES (1,'Rishabh','Jain','VISA','a6a916666492fdfb5277e79b027117a8dc22d387','19187dc98dce52fa4c4e8e05b341a9b77a51fd26','2019-01-01',1),(2,'Simran','Idnani','VISA','f5683d78e9d6b033ac4850897bcfeb192064296c','40bd001563085fc35165329ea1ff5c5ecbdbbeef','2020-09-09',2),(3,'Neha','Jain','VISA','1f28d0ce916de70073eea49abb651baef563b192','8bd7954c40c1e59a900f71ea3a266732609915b1','2021-10-10',3),(4,'Ankush','Deora','VISA','7d7898048e0181c0d66586e51e4cc0e487711a41','a1422e6a168630cdd214ac5e31ca01ae1bee8d92','2020-12-12',4),(5,'Devanshi','Vikramsey','MASTER','e391930c32e6fe958f871b46df98c01bf6036dbc','dd7c1a3d9d5627da9aea5415e3d07202bfb5925e','2021-10-09',5);
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_person_card_details_inserted
After insert on Card
For Each Row
Begin 
insert into card_new
set action = 'inserted',
c_id = new.card_id,
c_holder_fname = new.card_holder_fname,
c_holder_lname = new.card_holder_lname,
c_type = new.card_type,
c_no = new.card_no,
c_cvv = new.card_cvv,
c_expirydate = new.card_expirydate,
c_username = (select useraccount_username from UserAccount where useraccount_id = new.useraccount_useraccount_id), 
c_changedate = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `Category_id` int(11) NOT NULL,
  `Category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Category_id`),
  UNIQUE KEY `Category_id_UNIQUE` (`Category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'Music'),(2,'Play');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `City`
--

DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `City` (
  `City_id` int(11) NOT NULL,
  `City_Name` varchar(45) NOT NULL,
  `State_State_id` int(11) NOT NULL,
  PRIMARY KEY (`City_id`),
  UNIQUE KEY `City_id_UNIQUE` (`City_id`),
  KEY `fk_City_State1_idx` (`State_State_id`),
  CONSTRAINT `fk_City_State1` FOREIGN KEY (`State_State_id`) REFERENCES `State` (`State_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES (1,'Boston',3),(2,'Manhattan',4),(3,'Mumbai',1),(4,'Pune',1);
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Company_id` int(11) NOT NULL,
  `Company_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Company_id`),
  UNIQUE KEY `Company_id_UNIQUE` (`Company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'Apple'),(2,'Microsoft'),(3,'MSN');
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `Country_id` int(11) NOT NULL,
  `Country_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Country_id`),
  UNIQUE KEY `Country_Name_UNIQUE` (`Country_Name`),
  UNIQUE KEY `Country_id_UNIQUE` (`Country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (3,'China'),(4,'Dubai'),(1,'India'),(2,'USA');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event` (
  `Event_id` int(11) NOT NULL,
  `Event_Name` varchar(45) NOT NULL,
  `Event_rating` varchar(5) NOT NULL,
  `Event_startDate` datetime(6) NOT NULL,
  `Event_endDate` datetime(6) NOT NULL,
  PRIMARY KEY (`Event_id`),
  UNIQUE KEY `Event_id_UNIQUE` (`Event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES (1,'SUNBURN','7/10','2017-08-08 14:12:13.000000','2017-08-10 20:00:00.000000'),(2,'UMF','8/10','2017-09-09 12:12:12.000000','2017-09-09 12:12:12.000000'),(3,'TOMMOROWLAND','9/10','2017-10-10 12:12:12.000000','2017-10-12 15:00:00.000000');
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Artist`
--

DROP TABLE IF EXISTS `Event_Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Artist` (
  `Event_Artist_id` int(11) NOT NULL,
  `Person_Person_id` int(11) NOT NULL,
  `Event_Event_id` int(11) NOT NULL,
  PRIMARY KEY (`Event_Artist_id`),
  UNIQUE KEY `Event_Artist_id_UNIQUE` (`Event_Artist_id`),
  KEY `fk_Event_Artist_Person1_idx` (`Person_Person_id`),
  KEY `fk_Event_Artist_Event1_idx` (`Event_Event_id`),
  CONSTRAINT `fk_Event_Artist_Event1` FOREIGN KEY (`Event_Event_id`) REFERENCES `Event` (`Event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Event_Artist_Person1` FOREIGN KEY (`Person_Person_id`) REFERENCES `Person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Artist`
--

LOCK TABLES `Event_Artist` WRITE;
/*!40000 ALTER TABLE `Event_Artist` DISABLE KEYS */;
INSERT INTO `Event_Artist` VALUES (1,5,1),(2,6,2),(3,12,3);
/*!40000 ALTER TABLE `Event_Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Category`
--

DROP TABLE IF EXISTS `Event_Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Category` (
  `Event_Category_id` int(11) NOT NULL,
  `Event_Event_id` int(11) NOT NULL,
  `Category_Category_id` int(11) NOT NULL,
  PRIMARY KEY (`Event_Category_id`),
  UNIQUE KEY `Event_Category_id_UNIQUE` (`Event_Category_id`),
  KEY `fk_Event_Category_Event1_idx` (`Event_Event_id`),
  KEY `fk_Event_Category_Category1_idx` (`Category_Category_id`),
  CONSTRAINT `fk_Event_Category_Category1` FOREIGN KEY (`Category_Category_id`) REFERENCES `Category` (`Category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Event_Category_Event1` FOREIGN KEY (`Event_Event_id`) REFERENCES `Event` (`Event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Category`
--

LOCK TABLES `Event_Category` WRITE;
/*!40000 ALTER TABLE `Event_Category` DISABLE KEYS */;
INSERT INTO `Event_Category` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `Event_Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_address`
--

DROP TABLE IF EXISTS `Event_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_address` (
  `Event_address_id` int(11) NOT NULL,
  `Event_Event_id` int(11) NOT NULL,
  `Address_Address_id` int(11) NOT NULL,
  PRIMARY KEY (`Event_address_id`),
  UNIQUE KEY `Event_address_id_UNIQUE` (`Event_address_id`),
  KEY `fk_Event_address_Event1_idx` (`Event_Event_id`),
  KEY `fk_Event_address_Address1_idx` (`Address_Address_id`),
  CONSTRAINT `fk_Event_address_Address1` FOREIGN KEY (`Address_Address_id`) REFERENCES `Address` (`Address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Event_address_Event1` FOREIGN KEY (`Event_Event_id`) REFERENCES `Event` (`Event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_address`
--

LOCK TABLES `Event_address` WRITE;
/*!40000 ALTER TABLE `Event_address` DISABLE KEYS */;
INSERT INTO `Event_address` VALUES (1,1,1),(2,2,5),(3,3,5);
/*!40000 ALTER TABLE `Event_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_sponsor`
--

DROP TABLE IF EXISTS `Event_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_sponsor` (
  `Event_sponsor_id` int(11) NOT NULL,
  `Event_Event_id` int(11) NOT NULL,
  `Person_Person_id` int(11) NOT NULL,
  `Company_Company_id` int(11) NOT NULL,
  PRIMARY KEY (`Event_sponsor_id`),
  UNIQUE KEY `Event_sponsor_id_UNIQUE` (`Event_sponsor_id`),
  KEY `fk_Event_sponsor_Event1_idx` (`Event_Event_id`),
  KEY `fk_Event_sponsor_Person1_idx` (`Person_Person_id`),
  KEY `fk_Event_sponsor_Company1_idx` (`Company_Company_id`),
  CONSTRAINT `fk_Event_sponsor_Company1` FOREIGN KEY (`Company_Company_id`) REFERENCES `Company` (`Company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Event_sponsor_Event1` FOREIGN KEY (`Event_Event_id`) REFERENCES `Event` (`Event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Event_sponsor_Person1` FOREIGN KEY (`Person_Person_id`) REFERENCES `Person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_sponsor`
--

LOCK TABLES `Event_sponsor` WRITE;
/*!40000 ALTER TABLE `Event_sponsor` DISABLE KEYS */;
INSERT INTO `Event_sponsor` VALUES (1,1,8,1),(2,2,9,2);
/*!40000 ALTER TABLE `Event_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order` (
  `Order_id` int(11) NOT NULL,
  `Order_datetime` datetime(6) DEFAULT NULL,
  `UserAccount_UserAccount_id` int(11) NOT NULL,
  `Seat_Seat_id` int(11) NOT NULL,
  `Seat_Event_Event_id` int(11) NOT NULL,
  PRIMARY KEY (`Order_id`),
  UNIQUE KEY `Order_id_UNIQUE` (`Order_id`),
  KEY `fk_Order_UserAccount1_idx` (`UserAccount_UserAccount_id`),
  KEY `fk_Order_Seat1_idx` (`Seat_Seat_id`,`Seat_Event_Event_id`),
  CONSTRAINT `fk_Order_Seat1` FOREIGN KEY (`Seat_Seat_id`, `Seat_Event_Event_id`) REFERENCES `Seat` (`Seat_id`, `Event_Event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_UserAccount1` FOREIGN KEY (`UserAccount_UserAccount_id`) REFERENCES `UserAccount` (`UserAccount_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,'2017-07-21 12:12:13.000000',1,1,1),(2,'2017-07-22 13:13:19.000000',2,2,1),(3,'2017-08-08 13:14:14.000000',3,3,2),(4,'2017-08-12 15:14:17.000000',4,4,2),(5,'2017-08-12 16:16:16.000000',5,5,1);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment` (
  `Payment_id` int(11) NOT NULL,
  `Payment_amount` int(11) NOT NULL,
  `Payment_datetime` datetime(6) NOT NULL,
  `Order_Order_id` int(11) NOT NULL,
  `Card_Card_id` int(11) NOT NULL,
  PRIMARY KEY (`Payment_id`),
  UNIQUE KEY `Payment_id_UNIQUE` (`Payment_id`),
  KEY `fk_Payment_Order1_idx` (`Order_Order_id`),
  KEY `fk_Payment_Card1_idx` (`Card_Card_id`),
  CONSTRAINT `fk_Payment_Card1` FOREIGN KEY (`Card_Card_id`) REFERENCES `Card` (`Card_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Payment_Order1` FOREIGN KEY (`Order_Order_id`) REFERENCES `Order` (`Order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1,100,'2017-07-21 12:12:45.000000',1,1),(2,100,'2017-07-22 13:14:20.000000',2,2),(3,200,'2017-08-08 13:15:14.000000',3,3),(4,200,'2017-08-12 15:14:32.000000',4,4),(5,100,'2017-08-12 16:18:00.000000',5,5);
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `Person_id` int(11) NOT NULL,
  `Person_fname` varchar(45) NOT NULL,
  `Person_lname` varchar(45) NOT NULL,
  `Person_email` varchar(45) NOT NULL,
  `Person_contactno` varchar(45) NOT NULL,
  `Person_status` varchar(45) NOT NULL,
  PRIMARY KEY (`Person_id`),
  UNIQUE KEY `Person_id_UNIQUE` (`Person_id`),
  UNIQUE KEY `Person_email_UNIQUE` (`Person_email`),
  UNIQUE KEY `Person_contactno_UNIQUE` (`Person_contactno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (1,'Rishabh ','Jain','rj@gmail.com','+1(877)444-765','1'),(2,'Simran','Idnani','si@gmail.com','+1(432)345-768','1'),(3,'Neha','Jain','nj@gmail.com','+1(432)335-987','1'),(4,'Ankush','Deora','ad@gmail.com','+1(234)445-098','1'),(5,'Martin','Hardwell','md@gmail.com','+1(234)221-098','1'),(6,'Lady','Gaga','lg@gmail.com','+1(987)098-098','1'),(7,'Devanshi','Vikramsey','dv@gmail.com','+1(234)234-098','1'),(8,'Cheng','Jin','cj@gmail.com','+1(430)987-345','1'),(9,'Yunying','Fan','yf@gmail.com','+1(654)231-567','1'),(10,'Geeta','Jain','gj@gmail.com','+91(765)231-213','1'),(11,'Alka','Jain','aj@gmail.com','+91(876)332-567','1'),(12,'Martin','Garix','mg@gmail.com','+1(342)234-456','1');
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_person_update
BEFORE update on Person
FOR EACH ROW 
BEGIN 
insert into person_old
set action = 'update',

p_id= old.person_id,
p_email = old.person_email,
p_contactno = old.person_contactno,
p_status = old.person_status,
p_changedate = NOW();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Person_address`
--

DROP TABLE IF EXISTS `Person_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_address` (
  `Person_address_id` int(11) NOT NULL,
  `Address_Address_id` int(11) NOT NULL,
  `Person_Person_id` int(11) NOT NULL,
  PRIMARY KEY (`Person_address_id`),
  UNIQUE KEY `Person_address_id_UNIQUE` (`Person_address_id`),
  KEY `fk_Person_address_Address1_idx` (`Address_Address_id`),
  KEY `fk_Person_address_Person1_idx` (`Person_Person_id`),
  CONSTRAINT `fk_Person_address_Address1` FOREIGN KEY (`Address_Address_id`) REFERENCES `Address` (`Address_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_address_Person1` FOREIGN KEY (`Person_Person_id`) REFERENCES `Person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person_address`
--

LOCK TABLES `Person_address` WRITE;
/*!40000 ALTER TABLE `Person_address` DISABLE KEYS */;
INSERT INTO `Person_address` VALUES (1,3,1),(2,4,2),(3,9,3),(4,10,4),(5,2,10),(6,11,11),(7,6,5),(8,8,6),(9,12,8),(10,13,9),(11,14,7),(12,15,12);
/*!40000 ALTER TABLE `Person_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seat`
--

DROP TABLE IF EXISTS `Seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seat` (
  `Seat_id` int(11) NOT NULL,
  `Seat_row` varchar(45) NOT NULL,
  `Seat_number` varchar(45) NOT NULL,
  `Event_Event_id` int(11) NOT NULL,
  `Seat_status` varchar(45) NOT NULL,
  `Seat_Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`Seat_id`,`Event_Event_id`),
  UNIQUE KEY `Seat_id_UNIQUE` (`Seat_id`),
  KEY `fk_Seat_Event1_idx` (`Event_Event_id`),
  CONSTRAINT `fk_Seat_Event1` FOREIGN KEY (`Event_Event_id`) REFERENCES `Event` (`Event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seat`
--

LOCK TABLES `Seat` WRITE;
/*!40000 ALTER TABLE `Seat` DISABLE KEYS */;
INSERT INTO `Seat` VALUES (1,'A','12',1,'1',100),(2,'B','13',1,'1',100),(3,'C','10',2,'1',200),(4,'D','11',2,'1',200),(5,'E','17',1,'1',100),(6,'F','18',2,'0',200),(7,'G','19',1,'0',100),(8,'H','20',1,'0',100);
/*!40000 ALTER TABLE `Seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `State`
--

DROP TABLE IF EXISTS `State`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `State` (
  `State_id` int(11) NOT NULL,
  `State_Name` varchar(45) NOT NULL,
  `Country_Country_id` int(11) NOT NULL,
  PRIMARY KEY (`State_id`),
  UNIQUE KEY `State_id_UNIQUE` (`State_id`),
  KEY `fk_State_Country_idx` (`Country_Country_id`),
  CONSTRAINT `fk_State_Country` FOREIGN KEY (`Country_Country_id`) REFERENCES `Country` (`Country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State`
--

LOCK TABLES `State` WRITE;
/*!40000 ALTER TABLE `State` DISABLE KEYS */;
INSERT INTO `State` VALUES (1,'Maharashtra',1),(2,'Gujrat',1),(3,'Massachusetts ',2),(4,'NewYork',2),(5,'California',2);
/*!40000 ALTER TABLE `State` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAccount`
--

DROP TABLE IF EXISTS `UserAccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAccount` (
  `UserAccount_id` int(11) NOT NULL,
  `UserAccount_username` varchar(45) NOT NULL,
  `UserAccount_password` varchar(45) NOT NULL,
  `UserAccount_creationDate` datetime(6) NOT NULL,
  `Person_Person_id` int(11) NOT NULL,
  PRIMARY KEY (`UserAccount_id`),
  UNIQUE KEY `UserAccount_id_UNIQUE` (`UserAccount_id`),
  UNIQUE KEY `UserAccount_username_UNIQUE` (`UserAccount_username`),
  KEY `fk_UserAccount_Person1_idx` (`Person_Person_id`),
  CONSTRAINT `fk_UserAccount_Person1` FOREIGN KEY (`Person_Person_id`) REFERENCES `Person` (`Person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAccount`
--

LOCK TABLES `UserAccount` WRITE;
/*!40000 ALTER TABLE `UserAccount` DISABLE KEYS */;
INSERT INTO `UserAccount` VALUES (1,'rishabh','56cd07000362b73cbfc6973dcd3aa275','2015-01-09 12:12:12.000000',1),(2,'simran','ac5585d98646d255299c359140537783','2015-02-12 12:12:13.000000',2),(3,'neha','36b1c5be249ad6a533dcfa9654e73396','2015-07-01 14:13:24.000000',3),(4,'ankush','523af537946b79c4f8369ed39ba78605','2015-08-02 12:13:23.000000',4),(5,'devanshi','80457cf3a7b15afb8f491f8ae06680db','2015-08-12 15:14:17.000000',7),(6,'cheng','28198b369067e88dab9fefe85484dbf4','2015-08-12 15:14:17.000000',8);
/*!40000 ALTER TABLE `UserAccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_new`
--

DROP TABLE IF EXISTS `card_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_new` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_holder_fname` varchar(50) NOT NULL,
  `c_holder_lname` varchar(50) NOT NULL,
  `c_type` varchar(10) NOT NULL,
  `c_no` varchar(50) NOT NULL,
  `c_cvv` varchar(50) NOT NULL,
  `c_expirydate` varchar(10) NOT NULL,
  `c_username` varchar(15) NOT NULL,
  `c_changedate` datetime DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_new`
--

LOCK TABLES `card_new` WRITE;
/*!40000 ALTER TABLE `card_new` DISABLE KEYS */;
INSERT INTO `card_new` VALUES (5,'Devanshi','Vikramsey','MASTER','e391930c32e6fe958f871b46df98c01bf6036dbc','dd7c1a3d9d5627da9aea5415e3d07202bfb5925e','2021-10-09','devanshi','2017-12-13 16:52:02','inserted');
/*!40000 ALTER TABLE `card_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `eventartistdetails`
--

DROP TABLE IF EXISTS `eventartistdetails`;
/*!50001 DROP VIEW IF EXISTS `eventartistdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `eventartistdetails` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Ratings`,
 1 AS `StartDate`,
 1 AS `EndDate`,
 1 AS `Person`,
 1 AS `Emailid`,
 1 AS `ContactNo`,
 1 AS `Address_line1`,
 1 AS `Address_line2`,
 1 AS `Zipcode`,
 1 AS `PhoneNo`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `eventdetails`
--

DROP TABLE IF EXISTS `eventdetails`;
/*!50001 DROP VIEW IF EXISTS `eventdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `eventdetails` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Ratings`,
 1 AS `StartDate`,
 1 AS `EndDate`,
 1 AS `Address_line1`,
 1 AS `Address_line2`,
 1 AS `Zipcode`,
 1 AS `PhoneNo`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `eventseatdetails`
--

DROP TABLE IF EXISTS `eventseatdetails`;
/*!50001 DROP VIEW IF EXISTS `eventseatdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `eventseatdetails` AS SELECT 
 1 AS `Name`,
 1 AS `StartDate`,
 1 AS `EndDate`,
 1 AS `SeatRow`,
 1 AS `Seat_Number`,
 1 AS `Price`,
 1 AS `UserName`,
 1 AS `Person`,
 1 AS `Emailid`,
 1 AS `ContactNo`,
 1 AS `Address_line1`,
 1 AS `Address_line2`,
 1 AS `Zipcode`,
 1 AS `PhoneNo`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `person_old`
--

DROP TABLE IF EXISTS `person_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_old` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_email` varchar(50) NOT NULL,
  `p_contactno` varchar(50) NOT NULL,
  `p_status` varchar(1) NOT NULL,
  `p_changedate` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_old`
--

LOCK TABLES `person_old` WRITE;
/*!40000 ALTER TABLE `person_old` DISABLE KEYS */;
INSERT INTO `person_old` VALUES (1,'rj@gmail.com','+1(867)333-656','1','2017-12-12 09:08:59','update');
/*!40000 ALTER TABLE `person_old` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `persondetails`
--

DROP TABLE IF EXISTS `persondetails`;
/*!50001 DROP VIEW IF EXISTS `persondetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `persondetails` AS SELECT 
 1 AS `ID`,
 1 AS `Person`,
 1 AS `Emailid`,
 1 AS `ContactNo`,
 1 AS `Address_line1`,
 1 AS `Address_line2`,
 1 AS `Zipcode`,
 1 AS `PhoneNo`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `useraccountdetails`
--

DROP TABLE IF EXISTS `useraccountdetails`;
/*!50001 DROP VIEW IF EXISTS `useraccountdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `useraccountdetails` AS SELECT 
 1 AS `ID`,
 1 AS `UserName`,
 1 AS `CreationDate`,
 1 AS `Person`,
 1 AS `Emailid`,
 1 AS `ContactNo`,
 1 AS `Address_line1`,
 1 AS `Address_line2`,
 1 AS `Zipcode`,
 1 AS `PhoneNo`,
 1 AS `City`,
 1 AS `State`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db'
--

--
-- Dumping routines for database 'db'
--
/*!50003 DROP PROCEDURE IF EXISTS `revenue_for_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `revenue_for_event`(eve varchar(50))
BEGIN 
SELECT Name,sum(eventseatdetails.Price) as Total_Revenue from eventseatdetails
where eventseatdetails.Name = eve;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_artist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_artist`(art varchar(50))
BEGIN 
SELECT * from eventartistdetails
where eventartistdetails.Person LIKE CONCAT(art,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search_by_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search_by_event`(msg varchar(50))
BEGIN 
SELECT * from eventseatdetails
where eventseatdetails.Name = msg ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `seats_booked_for_event` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `seats_booked_for_event`(eve varchar(50))
BEGIN 
SELECT Name,count(*) as Total_Seas_booked from eventseatdetails
where eventseatdetails.Name = eve;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `eventartistdetails`
--

/*!50001 DROP VIEW IF EXISTS `eventartistdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eventartistdetails` AS select `event_artist`.`Event_Artist_id` AS `ID`,`event`.`Event_Name` AS `Name`,`event`.`Event_rating` AS `Ratings`,`event`.`Event_startDate` AS `StartDate`,`event`.`Event_endDate` AS `EndDate`,concat_ws(' ',`person`.`Person_fname`,`person`.`Person_lname`) AS `Person`,`person`.`Person_email` AS `Emailid`,`person`.`Person_contactno` AS `ContactNo`,`address`.`Address_line1` AS `Address_line1`,`address`.`Address_line2` AS `Address_line2`,`address`.`Address_zipcode` AS `Zipcode`,`address`.`Address_phoneno` AS `PhoneNo`,`city`.`City_Name` AS `City`,`state`.`State_Name` AS `State`,`country`.`Country_Name` AS `Country` from (((((((`event` join `event_artist`) join `person`) join `person_address`) join `address`) join `city`) join `state`) join `country`) where ((`event`.`Event_id` = `event_artist`.`Event_Event_id`) and (`event_artist`.`Person_Person_id` = `person`.`Person_id`) and (`person`.`Person_id` = `person_address`.`Person_Person_id`) and (`address`.`Address_id` = `person_address`.`Address_Address_id`) and (`city`.`City_id` = `address`.`City_City_id`) and (`city`.`State_State_id` = `state`.`State_id`) and (`state`.`Country_Country_id` = `country`.`Country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eventdetails`
--

/*!50001 DROP VIEW IF EXISTS `eventdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eventdetails` AS select `event`.`Event_id` AS `ID`,`event`.`Event_Name` AS `Name`,`event`.`Event_rating` AS `Ratings`,`event`.`Event_startDate` AS `StartDate`,`event`.`Event_endDate` AS `EndDate`,`address`.`Address_line1` AS `Address_line1`,`address`.`Address_line2` AS `Address_line2`,`address`.`Address_zipcode` AS `Zipcode`,`address`.`Address_phoneno` AS `PhoneNo`,`city`.`City_Name` AS `City`,`state`.`State_Name` AS `State`,`country`.`Country_Name` AS `Country` from (((((`event` join `event_address`) join `address`) join `city`) join `state`) join `country`) where ((`event_address`.`Event_Event_id` = `event`.`Event_id`) and (`address`.`Address_id` = `event_address`.`Address_Address_id`) and (`city`.`City_id` = `address`.`City_City_id`) and (`city`.`State_State_id` = `state`.`State_id`) and (`state`.`Country_Country_id` = `country`.`Country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eventseatdetails`
--

/*!50001 DROP VIEW IF EXISTS `eventseatdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eventseatdetails` AS select `event`.`Event_Name` AS `Name`,`event`.`Event_startDate` AS `StartDate`,`event`.`Event_endDate` AS `EndDate`,`seat`.`Seat_row` AS `SeatRow`,`seat`.`Seat_number` AS `Seat_Number`,`seat`.`Seat_Price` AS `Price`,`useraccount`.`UserAccount_username` AS `UserName`,concat_ws(' ',`person`.`Person_fname`,`person`.`Person_lname`) AS `Person`,`person`.`Person_email` AS `Emailid`,`person`.`Person_contactno` AS `ContactNo`,`address`.`Address_line1` AS `Address_line1`,`address`.`Address_line2` AS `Address_line2`,`address`.`Address_zipcode` AS `Zipcode`,`address`.`Address_phoneno` AS `PhoneNo`,`city`.`City_Name` AS `City`,`state`.`State_Name` AS `State`,`country`.`Country_Name` AS `Country` from (((((((((`event` join `seat`) join `order`) join `useraccount`) join `person`) join `person_address`) join `address`) join `city`) join `state`) join `country`) where ((`seat`.`Seat_id` = `order`.`Seat_Seat_id`) and (`seat`.`Event_Event_id` = `order`.`Seat_Event_Event_id`) and (`order`.`UserAccount_UserAccount_id` = `useraccount`.`UserAccount_id`) and (`useraccount`.`Person_Person_id` = `person`.`Person_id`) and (`person`.`Person_id` = `person_address`.`Person_Person_id`) and (`address`.`Address_id` = `person_address`.`Address_Address_id`) and (`city`.`City_id` = `address`.`City_City_id`) and (`city`.`State_State_id` = `state`.`State_id`) and (`state`.`Country_Country_id` = `country`.`Country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `persondetails`
--

/*!50001 DROP VIEW IF EXISTS `persondetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `persondetails` AS select `p`.`Person_id` AS `ID`,concat_ws(' ',`p`.`Person_fname`,`p`.`Person_lname`) AS `Person`,`p`.`Person_email` AS `Emailid`,`p`.`Person_contactno` AS `ContactNo`,`a`.`Address_line1` AS `Address_line1`,`a`.`Address_line2` AS `Address_line2`,`a`.`Address_zipcode` AS `Zipcode`,`a`.`Address_phoneno` AS `PhoneNo`,`c`.`City_Name` AS `City`,`s`.`State_Name` AS `State`,`cou`.`Country_Name` AS `Country` from (((((`person` `p` join `person_address` `pa` on((`p`.`Person_id` = `pa`.`Person_Person_id`))) join `address` `a` on((`pa`.`Address_Address_id` = `a`.`Address_id`))) join `city` `c` on((`a`.`City_City_id` = `c`.`City_id`))) join `state` `s` on((`c`.`State_State_id` = `s`.`State_id`))) join `country` `cou` on((`s`.`Country_Country_id` = `cou`.`Country_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `useraccountdetails`
--

/*!50001 DROP VIEW IF EXISTS `useraccountdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `useraccountdetails` AS select `useraccount`.`UserAccount_id` AS `ID`,`useraccount`.`UserAccount_username` AS `UserName`,`useraccount`.`UserAccount_creationDate` AS `CreationDate`,concat_ws(' ',`person`.`Person_fname`,`person`.`Person_lname`) AS `Person`,`person`.`Person_email` AS `Emailid`,`person`.`Person_contactno` AS `ContactNo`,`address`.`Address_line1` AS `Address_line1`,`address`.`Address_line2` AS `Address_line2`,`address`.`Address_zipcode` AS `Zipcode`,`address`.`Address_phoneno` AS `PhoneNo`,`city`.`City_Name` AS `City`,`state`.`State_Name` AS `State`,`country`.`Country_Name` AS `Country` from ((((((`person` join `address`) join `person_address`) join `city`) join `state`) join `country`) join `useraccount`) where ((`useraccount`.`Person_Person_id` = `person`.`Person_id`) and (`person`.`Person_id` = `person_address`.`Person_Person_id`) and (`address`.`Address_id` = `person_address`.`Address_Address_id`) and (`city`.`City_id` = `address`.`City_City_id`) and (`city`.`State_State_id` = `state`.`State_id`) and (`state`.`Country_Country_id` = `country`.`Country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 21:55:45
