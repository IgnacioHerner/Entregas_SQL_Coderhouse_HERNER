-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: gestor_bancario
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Luis','Pérez','30567890','Calle Mitre 123','Buenos Aires','1000','1123456789','Masculino','1980-05-20'),(2,'Ana','García','20678912','Avenida Libertador 456','Córdoba','5000','1133334567','Femenino','1992-08-15'),(3,'Martín','Rodríguez','40789123','Ruta Nacional 789','Rosario','2000','1144445678','Masculino','1985-11-10'),(4,'Sofía','Fernández','20891234','Calle San Martín 678','Mendoza','3000','1155556789','Femenino','1998-03-25'),(5,'Javier','López','30912345','Avenida Rivadavia 901','Salta','4000','1166667890','Masculino','1990-12-12');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (1,1,1,5000.00,'2022-01-15','Cuenta Corriente'),(2,2,2,7500.50,'2022-02-20','Cuenta de Ahorros'),(3,3,3,12000.75,'2022-03-10','Cuenta Corriente'),(4,4,4,3000.25,'2022-04-05','Cuenta de Ahorros'),(5,5,5,10000.00,'2022-05-12','Cuenta Corriente');
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Carlos','González','30678901','Pellegrini 4890','1155551234','Gerente',1),(2,'Ana','Rodríguez','20789123','Calle San Martín 456','1166662345','Cajero',2),(3,'Martina','Gómez','40891234','Ruta Nacional 789','1133333456','Analista',3),(4,'Javier','Fernández','50912345','Calle Sarmiento 678','1144444567','Cajero',4),(5,'Sofía','López','61023456','Avenida Rivadavia 901','1177775678','Analista',5);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'Sucursal A','Calle Principal 123','Ciudad A','12345','123456789','Ana Rodriguez'),(2,'Sucursal B','Avenida Central 456','Ciudad B','54321','987654321','Carlos Gomez'),(3,'Sucursal C','Ruta Secundaria 789','Ciudad C','67890','555111222','Elena Fernandez'),(4,'Sucursal D','Calle Peatonal 987','Ciudad D','98765','999333777','Diego Torres'),(5,'Sucursal E','Avenida Transitada 654','Ciudad E','45678','444888222','Laura Martinez');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (1,'1234567812345678','2022-01-25','2025-01-31',1,'Débito','123'),(2,'2345678923456789','2022-02-15','2024-02-29',2,'Crédito','456'),(3,'3456789034567890','2022-03-05','2023-03-31',3,'Débito','789'),(4,'4567890145678901','2022-04-10','2025-04-30',4,'Crédito','012'),(5,'5678901256789012','2022-05-20','2024-05-31',5,'Débito','345');
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (1,500.00,'2022-01-20 08:30:00',1,2,1,'Transferencia'),(2,120.50,'2022-02-05 12:45:00',2,3,2,'Depósito'),(3,1000.75,'2022-03-15 16:20:00',3,4,3,'Transferencia'),(4,50.25,'2022-04-02 09:10:00',4,5,4,'Retiro'),(5,300.00,'2022-05-10 14:30:00',5,1,5,'Depósito');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27 19:18:47
