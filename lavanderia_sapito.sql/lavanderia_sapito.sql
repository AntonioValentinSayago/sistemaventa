-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lavanderia_sapito
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `nombreCategoria` varchar(100) NOT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Cobertores','PT'),(2,'Colcha','PZ'),(3,'Frazada','PZ'),(4,'Almohada','PT'),(5,'Peluches','PT'),(6,'Cubre-Colchon','GR'),(7,'Colchoneta','PT'),(8,'Tenis','PZ'),(9,'Cobertor de Bebe','PZ');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Perez','Calle 1 #123'),(2,'Maria Garcia','Avenida 2 #456'),(3,'Pedro Rodriguez','Calle 3 #789'),(4,'Ana Martinez','Avenida 4 #1011'),(5,'Luis Hernandez','Calle 5 #1213');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(150) NOT NULL,
  `contrasena` varchar(150) NOT NULL,
  `telefono` int DEFAULT NULL,
  `fechaEntrada` date NOT NULL,
  `fechasalida` date NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan Perez','contrasena123',-679,'2020-01-01','2022-03-15','2023-03-21 01:12:08',NULL),(2,'Maria Rodriguez','clave456',-5123,'2021-03-15','2022-03-15','2023-03-21 01:12:08',NULL),(3,'Pedro Gomez','mipassword',-3766,'2019-07-01','2021-07-01','2023-03-21 01:12:08',NULL),(4,'Ana Torres','secreto',-8210,'2022-02-01','2022-03-15','2023-03-21 01:12:08',NULL),(5,'Jorge Hernandez','qwerty',0,'2021-08-01','2022-03-15','2023-03-21 01:12:08',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastosgenerales`
--

DROP TABLE IF EXISTS `gastosgenerales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastosgenerales` (
  `idGastos` int NOT NULL AUTO_INCREMENT,
  `nombreGasto` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidadGasto` decimal(10,2) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idGastos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastosgenerales`
--

LOCK TABLES `gastosgenerales` WRITE;
/*!40000 ALTER TABLE `gastosgenerales` DISABLE KEYS */;
INSERT INTO `gastosgenerales` VALUES (1,'Alquiler','Pago de renta del local',1500.00,'2023-03-21 01:16:40'),(2,'Luz','Pago de suministro eléctrico',300.50,'2023-03-21 01:16:40'),(3,'Agua','Pago de suministro de agua',120.00,'2023-03-21 01:16:40'),(4,'Internet','Pago de servicio de internet',75.00,'2023-03-21 01:16:40'),(5,'Mantenimiento','Pago por reparación de equipo',250.00,'2023-03-21 01:16:40');
/*!40000 ALTER TABLE `gastosgenerales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `idInventario` int NOT NULL AUTO_INCREMENT,
  `nombreProducto` varchar(50) NOT NULL,
  `cantidadProducto` int NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estatus` varchar(20) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idInventario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'Toallas',100,'Toallas blancas para lavado','disponible','2023-03-21 01:22:59'),(2,'Detergente',50,'Detergente líquido para ropa','disponible','2023-03-21 01:22:59'),(3,'Lejía',30,'Lejía para blanquear la ropa','disponible','2023-03-21 01:22:59'),(4,'Secadoras',5,'Máquinas secadoras para ropa','en mantenimiento','2023-03-21 01:22:59'),(5,'Lavadoras',10,'Máquinas lavadoras para ropa','disponible','2023-03-21 01:22:59'),(6,'Suavizante',10,'de ropa Suavitel protegen las fibras de tu ropa y evitan los malos','Disponible','2023-04-01 21:11:19');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notapedido`
--

DROP TABLE IF EXISTS `notapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notapedido` (
  `idNota` int NOT NULL AUTO_INCREMENT,
  `folioNota` varchar(50) NOT NULL,
  `numeroEtiqueta` varchar(50) NOT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `estatus` varchar(50) DEFAULT NULL,
  `dineroCuneta` decimal(10,2) DEFAULT NULL,
  `dineroPendiente` decimal(10,2) DEFAULT NULL,
  `totalPagar` decimal(10,2) DEFAULT NULL,
  `fechaCreacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idCliente` int DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  `idEmpleado` int DEFAULT NULL,
  PRIMARY KEY (`idNota`),
  KEY `idCliente` (`idCliente`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idEmpleado` (`idEmpleado`),
  CONSTRAINT `notapedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `notapedido_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  CONSTRAINT `notapedido_ibfk_3` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notapedido`
--

LOCK TABLES `notapedido` WRITE;
/*!40000 ALTER TABLE `notapedido` DISABLE KEYS */;
INSERT INTO `notapedido` VALUES (1,'123','321','2023-04-23','E',75.00,25.00,100.00,'2023-04-01 02:35:54',1,1,1),(2,'124','322','2023-04-23','E',75.00,25.00,100.00,'2023-04-01 02:36:32',2,1,1);
/*!40000 ALTER TABLE `notapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio`
--

DROP TABLE IF EXISTS `precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precio` (
  `idPrecio` int NOT NULL AUTO_INCREMENT,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idCategoria` int DEFAULT NULL,
  PRIMARY KEY (`idPrecio`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `precio_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio`
--

LOCK TABLES `precio` WRITE;
/*!40000 ALTER TABLE `precio` DISABLE KEYS */;
INSERT INTO `precio` VALUES (1,60.00,'Matrimonial',1),(2,50.00,'Individual',1),(3,85.00,'Queen o King',1),(4,40.00,'Pieza',2),(5,40.00,'Pieza',3),(6,120.00,'Grande',4),(7,60.00,'Mediano',4),(8,20.00,'Chico',4),(9,120.00,'Grande',5),(10,60.00,'Mediano',5),(11,20.00,'Chico',5),(13,60.00,'Delgado',6),(14,200.00,'Songnare',6),(15,150.00,'Matrimonial',7),(16,120.00,'Individual',7),(17,30.00,'Pieza',8),(18,25.00,'Pieza',9);
/*!40000 ALTER TABLE `precio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lavanderia_sapito'
--

--
-- Dumping routines for database 'lavanderia_sapito'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 17:19:31
