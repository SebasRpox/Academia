-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: academia
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actores` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `documento` varchar(20) NOT NULL,
  `tipo_documento` varchar(3) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `contrasena` varchar(100) NOT NULL,
  `correo` varchar(255) NOT NULL DEFAULT 'correo@dominio.com',
  `telefono_celular` varchar(30) DEFAULT NULL COMMENT 'Teléfono celular del estudiante',
  `numero_expediente` varchar(255) NOT NULL,
  `genero` enum('hombre','mujer') NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_actor_id` int(5) unsigned DEFAULT NULL,
  `institucion_id` int(5) DEFAULT NULL,
  `tipo_actor_id` int(5) unsigned DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_actualizacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `documento` (`documento`),
  UNIQUE KEY `numero_expediente` (`numero_expediente`),
  KEY `tipo_actor_id` (`tipo_actor_id`),
  CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`tipo_actor_id`) REFERENCES `tipo_actores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_actores`
--

DROP TABLE IF EXISTS `estado_actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_actores` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_actores`
--

LOCK TABLES `estado_actores` WRITE;
/*!40000 ALTER TABLE `estado_actores` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulos`
--

DROP TABLE IF EXISTS `modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulos` (
  `id` int(5) NOT NULL,
  `modulo` varchar(255) DEFAULT NULL,
  `mod` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulos`
--

LOCK TABLES `modulos` WRITE;
/*!40000 ALTER TABLE `modulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `modulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_actores`
--

DROP TABLE IF EXISTS `tipo_actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_actores` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `perfil` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_actores`
--

LOCK TABLES `tipo_actores` WRITE;
/*!40000 ALTER TABLE `tipo_actores` DISABLE KEYS */;
INSERT INTO `tipo_actores` VALUES (1,'Docente');
/*!40000 ALTER TABLE `tipo_actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_documento` (
  `codigo` varchar(3) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 12:17:26
