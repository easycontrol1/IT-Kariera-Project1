-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mrusnata_bageta
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Dumping data for table `bakeries`
--

LOCK TABLES `bakeries` WRITE;
/*!40000 ALTER TABLE `bakeries` DISABLE KEYS */;
INSERT INTO `bakeries` VALUES (1,'Burgaski nacepen hlqb','Traditional crunchy black bread baked on a hot stone plate.',2.50),(2,'Trakiiska cepka','Authentic Thracian leavened bread, soft and airy inside.',1.80),(3,'Sofiiski plikcheta','Small, soft white buns perfect for burgers or breakfast.',0.60),(4,'Parna pita','Steam-baked flatbread, soft and pliable, ideal with grilled meat.',1.20),(5,'Edro pitka','Large round bun topped with sesame seeds, slightly crispy crust.',1.50),(6,'Kocho','Sourdough bread mixed with yogurt and herbs for unique flavor.',1.20),(7,'Prezanek','Dry savory bun flavored with lard and cumin, traditional delight.',0.80),(8,'Selezhka sirenka','Fresh bread roll generously filled with white brine cheese.',1.80),(9,'Maslen krakonche','Braided pastry rich in butter, golden and flaky.',1.50),(10,'Domatena pita','Flatbread topped with fresh tomato, peppers and spices.',1.40);
/*!40000 ALTER TABLE `bakeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Mrusnata Bageta OOD');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Simeon','Stoyanov',5000.00,1,NULL),(2,'Gabriela','Andonova',5000.00,1,NULL),(3,'Petar','Dimitrov',2200.00,2,NULL),(4,'Ivana','Petrova',2200.00,2,NULL),(5,'Georgi','Ivanov',1800.00,3,1),(6,'Stoyan','Kolev',1800.00,3,2),(7,'Elena','Popova',1800.00,3,3),(8,'Dimitar','Draganov',1800.00,3,4),(9,'Nadia','Morozova',1800.00,3,5),(10,'Ivan','Vazov',1800.00,3,6),(11,'Pencho','Slaveikov',1800.00,3,7),(12,'Hristo','Botev',1800.00,3,8),(13,'Luben','Karavelov',1800.00,3,9),(14,'Raina','Kniaginia',1800.00,3,10),(15,'Vasil','Levski',1800.00,3,11),(16,'Kiril','Hristov',1800.00,3,12),(17,'Anna','Georgieva',1300.00,4,1),(18,'Milan','Kunchev',1300.00,4,1),(19,'Stefan','Nikolov',1300.00,4,2),(20,'Rositsa','Kirilova',1300.00,4,2),(21,'Viktor','Petkov',1300.00,4,3),(22,'Dragan','Kanchev',1300.00,4,3),(23,'Kamelia','Dimitrova',1300.00,4,4),(24,'Elisaveta','Bagriana',1300.00,4,4),(25,'Plamen','Minchev',1300.00,4,5),(26,'Todor','Kableshkov',1300.00,4,5),(27,'Vera','Cochkova',1300.00,4,6),(28,'Dimitar','Talev',1300.00,4,6),(29,'Mihail','Lermontov',1300.00,4,7),(30,'Nikola','Vaptsarov',1300.00,4,7),(31,'Silvia','Sultanova',1300.00,4,8),(32,'Yana','Yazova',1300.00,4,8),(33,'Assen','Jordanov',1300.00,4,9),(34,'Nikolai','Rakitov',1300.00,4,9),(35,'Biser','Hristov',1300.00,4,10),(36,'Maria','Grob',1300.00,4,10),(37,'Zahari','Stoyanov',1300.00,4,11),(38,'Elin','Pelin',1300.00,4,11),(39,'Nikolai','Haytov',1300.00,4,12),(40,'Dora','Gabe',1300.00,4,12);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'owner'),(2,'accountant'),(3,'manager'),(4,'employee');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'Sofia Mall Branch','Sofia, 1000, Tsarigradsko Shose Blvd 115',1,1),(2,'Vitosha Street Shop','Sofia, 1000, Vitosha Blvd 42',1,1),(3,'Studentski Grad Shop','Sofia, 1000, James Bourchier Blvd 73',1,1),(4,'Plovdiv Central','Plovdiv, 4000, Main St 15',2,1),(5,'Varna Grand Mall','Varna, 9000, Vasil Levski Blvd 114',3,1),(6,'Varna Sea Garden','Varna, 9000, Primorski Blvd 12',3,1),(7,'Asparuhovo Shop','Varna, 9020, Asparuhovo Blvd 1',3,1),(8,'Burgas Central','Burgas, 8000, Aleksandrovska Blvd 1',4,1),(9,'Burgas Port','Burgas, 8000, Port Entrance 2',4,1),(10,'VT Bulevard','Veliko Tarnovo, 5000, Vasil Levski 5',5,1),(11,'Ruse Center','Ruse, 7000, Aleksandrovska 15',6,1),(12,'SZ Mall','Stara Zagora, 6000, General Stoletov Blvd 12',7,1);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `shops_bakery`
--

LOCK TABLES `shops_bakery` WRITE;
/*!40000 ALTER TABLE `shops_bakery` DISABLE KEYS */;
INSERT INTO `shops_bakery` VALUES (1,1),(11,1),(1,2),(2,2),(12,2),(1,3),(3,3),(1,4),(4,4),(1,5),(2,5),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `shops_bakery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `towns`
--

LOCK TABLES `towns` WRITE;
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` VALUES (1,'Sofia'),(2,'Plovdiv'),(3,'Varna'),(4,'Burgas'),(5,'Veliko Tarnovo'),(6,'Ruse'),(7,'Stara Zagora'),(8,'Blagoevgrad'),(9,'Haskovo'),(10,'Gabrovo');
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-16 23:16:51
