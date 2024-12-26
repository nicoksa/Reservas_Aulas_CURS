CREATE DATABASE  IF NOT EXISTS `reserva_aulas_laboratorio` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reserva_aulas_laboratorio`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: reserva_aulas_laboratorio
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradores` (
  `DNI_Administrador` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Contraseña` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DNI_Administrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES ('11111111','Claudio','Perez','CPerez1111',1),('22222222','Nora','Perez','NPerez2222',1);
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aulas` (
  `Id_Aula` int(11) NOT NULL,
  `Nombre_Aula` varchar(50) DEFAULT NULL,
  `Capacidad` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id_Aula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` VALUES (1,'Punto Digital',18,1),(2,'Aula 2',35,1),(3,'Aulas 3 y 4 Unificadas',70,1),(5,'Aula 5',35,1),(6,'Aula 6',35,1),(7,'Aula 7',35,1),(8,'Aula 8',40,1),(9,'Aula 9',40,1),(10,'Aula 10',40,1),(11,'Aula 11',50,1),(12,'Aula 12',50,1),(13,'Aula 13',120,1),(14,'Aula 14',120,1),(15,'Aula 15',100,1),(16,'SUM',400,1),(17,'Aula Magna',200,1),(18,'Aula 18',20,1),(19,'Aula 19',40,1);
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `Id_Carrera` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Institucion` int(11) NOT NULL,
  `Carrera` varchar(255) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id_Carrera`),
  KEY `fk_carrera_institucion_idx` (`Id_Institucion`),
  CONSTRAINT `fk_carrera_institucion` FOREIGN KEY (`Id_Institucion`) REFERENCES `instituciones` (`Id_Institucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
INSERT INTO `carreras` VALUES (1,1,'Diseño Gráfico',1),(2,1,'Licenciatura en Ciencias de la Computación',1),(3,2,'Odontología',1),(4,2,'Licenciatura en Astronomía',1),(5,3,'Ciencias Veterinarias',1),(6,3,'Geofísica',1),(7,4,'Derecho Empresarial',1),(8,4,'Medicina de la Familia y Comunitaria',1),(9,5,'Ingeniería Electrónica',1),(10,5,'Ingeniería en Petróleo',1),(11,6,'Arquitectura IV',1),(12,6,'Data Science',1),(13,7,'Licenciatura en Antropología',1),(14,7,'Farmacia',1),(15,8,'Bioingeniería',1),(16,8,'Licenciatura en Fonoaudiología',1),(17,9,'Ingeniería Agronómica',1),(18,9,'Licenciatura en Trabajo Social',1),(19,10,'Geografía',1),(20,10,'Licenciatura en Física',1),(21,11,'Licenciatura en Filosofía',1),(22,11,'Ingeniería en Energía',1),(23,12,'Turismo',1),(24,12,'Ciencias Ambientales',1),(25,13,'Música Sacra',1),(26,13,'Psicopedagogía',1),(27,14,'Biotecnología',1),(28,14,'Arqueología IV',1),(29,15,'Ingeniería en Recursos Hídricos',1),(30,15,'Enfermería',1),(31,13,'Tecnicatura Universitaria en Programacion',1),(32,17,'Carrera Nueva',1);
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_EliminarMateria
AFTER UPDATE ON carreras
FOR EACH ROW
BEGIN 
   -- Si se cambió el estado de la carrera
    IF OLD.estado = 1 AND NEW.estado = 0 THEN
        -- cambia el estado de las materias asociadas
        UPDATE materias
        SET estado = 0
        WHERE Id_Carrera = NEW.Id_Carrera;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_institucion_en_materias
AFTER UPDATE ON carreras
FOR EACH ROW
BEGIN
  -- Verificar si el Id_Institucion ha cambiado
  IF OLD.Id_Institucion <> NEW.Id_Institucion THEN
    -- Actualizar el Id_Institucion correspondiente en la tabla materias
    UPDATE materias
    SET Id_Institucion = NEW.Id_Institucion
    WHERE Id_Carrera = NEW.Id_Carrera;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `instituciones`
--

DROP TABLE IF EXISTS `instituciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituciones` (
  `Id_Institucion` int(11) NOT NULL AUTO_INCREMENT,
  `Institucion` varchar(255) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id_Institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituciones`
--

LOCK TABLES `instituciones` WRITE;
/*!40000 ALTER TABLE `instituciones` DISABLE KEYS */;
INSERT INTO `instituciones` VALUES (1,'Universidad de Buenos Aires (UBA)',1),(2,'Universidad Nacional de Cordoba (UNC)',1),(3,'Universidad Nacional de La Plata (UNLP)',1),(4,'Universidad Austral (UA)',1),(5,'Instituto Tecnologico de Buenos Aires (ITBA)',1),(6,'Universidad Torcuato Di Tella (UTDT)',1),(7,'Universidad Nacional de Rosario (UNR)',1),(8,'Universidad Nacional del Litoral (UNL)',1),(9,'Universidad Nacional de Cuyo (UNCUYO)',1),(10,'Universidad Nacional del Sur (UNS)',1),(11,'Universidad Nacional de San Martín (UNSAM)',1),(12,'Universidad Nacional de Mar del Plata (UNMDP)',1),(13,'Universidad Catolica Argentina (UCA)',1),(14,'Universidad Nacional de Tucuman (UNT)',1),(15,'Universidad Nacional de Santiago del Estero (UNSE)',1),(16,'Universidad Tecnologica Nacional (UTN)',1),(17,'Institucion Nueva',1);
/*!40000 ALTER TABLE `instituciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_EliminarCarrera
AFTER UPDATE ON INSTITUCIONES
FOR EACH ROW
BEGIN 
   -- Si se cambió el estado de la institución
    IF OLD.estado = 1 AND NEW.estado = 0 THEN
        -- cambia el estado de las materias asociadas
        UPDATE carreras
        SET estado = 0
        WHERE Id_Institucion = NEW.Id_Institucion;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `Id_Materia` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Carrera` int(11) NOT NULL,
  `Id_Institucion` int(11) NOT NULL,
  `Materia` varchar(255) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id_Materia`),
  KEY `fk_materia_carrera_idx` (`Id_Carrera`),
  KEY `fk_materia_institucion_idx` (`Id_Institucion`),
  CONSTRAINT `fk_materia_carrera` FOREIGN KEY (`Id_Carrera`) REFERENCES `carreras` (`Id_Carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia_institucion` FOREIGN KEY (`Id_Institucion`) REFERENCES `carreras` (`Id_Institucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,1,1,'Tipografía I',1),(2,1,1,'Comunicación Visual I',1),(3,2,1,'Algoritmos y Estructuras de Datos',1),(4,2,1,'Arquitectura de Computadoras',1),(5,3,2,'Anatomía Dental',1),(6,3,2,'Materiales Dentales',1),(7,4,2,'Astrofísica',1),(8,4,2,'Observación Astronómica',1),(9,5,3,'Anatomía Animal',1),(10,5,3,'Farmacología Veterinaria',1),(11,6,3,'Métodos Geofísicos',1),(12,6,3,'Física de la Tierra Sólida',1),(13,7,4,'Derecho Societario',1),(14,7,4,'Derecho Tributario',1),(15,8,4,'Salud Pública',1),(16,8,4,'Medicina Preventiva',1),(17,9,5,'Circuitos Electrónicos',1),(18,9,5,'Sistemas Digitales',1),(19,10,5,'Geología del Petróleo',1),(20,10,5,'Producción de Hidrocarburos',1),(21,11,6,'Taller de Proyecto I',1),(22,11,6,'Historia de la Arquitectura I',1),(23,12,6,'Estadística Avanzada',1),(24,12,6,'Machine Learning',1),(25,13,7,'Antropología Social',1),(26,13,7,'Métodos de Investigación Cualitativa',1),(27,14,7,'Química Farmacéutica',1),(28,14,7,'Farmacognosia',1),(29,15,8,'Biomecánica',1),(30,15,8,'Electrónica Médica',1),(31,16,8,'Neurología',1),(32,16,8,'Técnicas de Evaluación Fonoaudiológica',1),(33,17,9,'Botánica General',1),(34,17,9,'Manejo de Suelos',1),(35,18,9,'Políticas Públicas',1),(36,18,9,'Problemáticas Sociales',1),(37,19,10,'Climatología',1),(38,19,10,'Geografía Humana',1),(39,20,10,'Mecánica Cuántica',1),(40,20,10,'Física Experimental',1),(41,21,11,'Historia de la Filosofía Antigua',1),(42,21,11,'Filosofía Contemporánea',1),(43,22,11,'Energías Renovables',1),(44,22,11,'Termodinámica',1),(45,23,12,'Planificación Turística',1),(46,23,12,'Patrimonio Cultural',1),(47,24,12,'Ecología',1),(48,24,12,'Gestión Ambiental',1),(49,25,13,'Armonía y Contrapunto',1),(50,25,13,'Historia de la Música Sacra',1),(51,26,13,'Psicología del Aprendizaje',1),(52,26,13,'Diagnóstico Psicopedagógico',1),(53,27,14,'Biología Molecular',1),(54,27,14,'Ingeniería Genética',1),(55,28,14,'Métodos de Excavación',1),(56,28,14,'Análisis de Restos Materiales',1),(57,29,15,'Hidrología Aplicada',1),(58,29,15,'Obras Hidráulicas',1),(59,30,15,'Salud Comunitaria',1),(60,30,15,'Enfermería Pediátrica',1);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_EliminarReservasActivas

AFTER UPDATE ON materias
FOR EACH ROW
BEGIN

IF old.Estado = 1 AND new.Estado = 0 THEN 

UPDATE reservas_aulas
SET Estado = 0
WHERE Id_Materia = new.Id_Materia AND Fecha >= now();

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores` (
  `DNI_Profesor` varchar(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DNI_Profesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES ('21548795','Eliana','Ferreiro','2345658954','eli.ferreiro@gmail.com',1),('23546987','Pedro','Narvaja','2458796521','pedro.narvaja@ecsanet.com.ar',1),('24587965','Ariel','Tapia','1145874588','arieltapia@yahoo.com',1),('25172988','Lucas','Centurion','2344474092','lucascent@gmail.com',1),('25365987','Roque','Perez','2345659874','roque.perez.14@cestel.com.ar',1),('25888888','Profesor','Nuevo','2344444444','profenuevo@gmail.com',1),('27654321','María','Gómez','1145678907','maria.gomez23@yahoo.com',1),('28278216','Patricia','Abarca','1145873625','patoabarca@gmail.com',1),('28765432','Sofía','López','1123456789','sofia.lopez45@outlook.com',1),('29876543','Diego','Ramírez','1134567890','diego.ramirez33@gmail.com',1),('30014256','Victoria ','Magliano','2345425698','vickymagliano@hotmail.com',1),('30125458','Joaquin','Mancinelli','2344586589','patita.mancinelli@gmail.com',1),('31245678','Ana Maria','Moreno','3881234888','ana.moreno77@live.com.ar',1),('32145678','Lucía','Pérez','2613456789','lucia.perez88@gmail.com',1),('33898570','Sergio','Poderoso','2344458002','elpode2015@gmail.com',1),('34567123','Miguel','Rodríguez','3514567890','miguel.rodriguez22@mail.com',1),('34586958','Nicolas','Casarino','2314587462','nicocasarino@gmail.com',1),('34790913','Enzo ','Di Candia','2344585858','enzodc@gmail.com',1),('34871265','Juan','Martínez','1123456789','juan.martinez87@gmail.com',1),('35353535','Mariano','Driusso','2344428344','marianodriusso@gmail.com',1),('39567812','Carlos','Fernández','3416781234','carlos.fernandez12@hotmail.com',1),('44256354','Mateo','Mancinelli','4531556235','teo.mancinelli@hotmail.com',1);
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tri_validar_reservas_profesor
AFTER UPDATE ON profesores
FOR EACH ROW
BEGIN

    IF OLD.estado = 1 AND NEW.estado = 0 THEN
        IF (SELECT COUNT(*) FROM reservas_aulas
            WHERE DNI_Profesor = NEW.DNI_Profesor AND estado = 1 AND Fecha >= NOW()) > 0 THEN 

            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'No se puede dar de baja el profesor porque cuenta con reservas activas.';
        END IF;
    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `profesores_por_materias`
--

DROP TABLE IF EXISTS `profesores_por_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores_por_materias` (
  `DNI_Profesor` varchar(10) NOT NULL,
  `Id_Materia` int(11) NOT NULL,
  PRIMARY KEY (`DNI_Profesor`,`Id_Materia`),
  KEY `fk_pxm_materia_idx` (`Id_Materia`),
  CONSTRAINT `fk_pxm_materia` FOREIGN KEY (`Id_Materia`) REFERENCES `materias` (`Id_Materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pxm_profesor` FOREIGN KEY (`DNI_Profesor`) REFERENCES `profesores` (`DNI_Profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores_por_materias`
--

LOCK TABLES `profesores_por_materias` WRITE;
/*!40000 ALTER TABLE `profesores_por_materias` DISABLE KEYS */;
INSERT INTO `profesores_por_materias` VALUES ('21548795',1),('23546987',2),('24587965',3),('25172988',4),('25365987',5),('27654321',6),('28278216',7),('28765432',8),('29876543',9),('30014256',10),('30125458',11),('31245678',12),('32145678',13),('33898570',14),('34567123',15),('34586958',16),('34790913',17),('34871265',18),('35353535',19),('39567812',20),('44256354',21),('21548795',22),('23546987',23),('24587965',24),('25172988',25),('25365987',26),('27654321',27),('28278216',28),('28765432',29),('29876543',30),('30014256',31),('30125458',32),('31245678',33),('32145678',34),('33898570',35),('34567123',36),('34586958',37),('34790913',38),('34871265',39),('35353535',40),('39567812',41),('44256354',42),('21548795',43),('23546987',44),('24587965',45),('25172988',46),('25365987',47),('27654321',48),('28278216',49),('28765432',50),('29876543',51),('30014256',52),('30125458',53),('31245678',54),('32145678',55),('33898570',56),('34567123',57),('34586958',58),('34790913',59),('34871265',60);
/*!40000 ALTER TABLE `profesores_por_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_aulas`
--

DROP TABLE IF EXISTS `reservas_aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservas_aulas` (
  `Id_Reserva` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Aula` int(11) NOT NULL,
  `DNI_Administrador` varchar(10) NOT NULL,
  `DNI_Profesor` varchar(10) NOT NULL,
  `Id_Materia` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Final` time NOT NULL,
  `Estado` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id_Reserva`),
  KEY `fk_reserva_aula_idx` (`Id_Aula`),
  KEY `fk_reserva_profesor_idx` (`DNI_Profesor`),
  KEY `fk_reserva_materia_idx` (`Id_Materia`),
  KEY `fk_reserva_administrador_idx` (`DNI_Administrador`),
  CONSTRAINT `fk_reserva_administrador` FOREIGN KEY (`DNI_Administrador`) REFERENCES `administradores` (`DNI_Administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_aula` FOREIGN KEY (`Id_Aula`) REFERENCES `aulas` (`Id_Aula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_materia` FOREIGN KEY (`Id_Materia`) REFERENCES `profesores_por_materias` (`Id_Materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reserva_profesor` FOREIGN KEY (`DNI_Profesor`) REFERENCES `profesores` (`DNI_Profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_aulas`
--

LOCK TABLES `reservas_aulas` WRITE;
/*!40000 ALTER TABLE `reservas_aulas` DISABLE KEYS */;
INSERT INTO `reservas_aulas` VALUES (3,1,'11111111','25172988',4,'2024-12-15','12:00:00','14:00:00',1),(4,5,'11111111','25172988',25,'2024-12-17','09:00:00','12:00:00',1);
/*!40000 ALTER TABLE `reservas_aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reserva_aulas_laboratorio'
--

--
-- Dumping routines for database 'reserva_aulas_laboratorio'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_cambiarestadoprofesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cambiarestadoprofesor`(IN ME_DNI_Profesor VARCHAR (10))
BEGIN

DECLARE vContarReservasActivas int;
DECLARE vEstadoProfesor tinyint;



-- CUENTO RESERVAS PENDIENTES
SELECT COUNT(*) INTO vContarReservasActivas
FROM reservas_aulas
WHERE DNI_Profesor = ME_DNI_Profesor AND CONCAT (Fecha, ' ', Hora_Final)> NOW();


-- VERIFICO ESTADO DEL PROFESOR
SELECT Estado INTO vEstadoProfesor
From Profesores
Where DNI_Profesor = ME_DNI_Profesor;


IF vEstadoProfesor = 1 THEN

-- VERIFICO SI TIENE RESERVAS PENDIENTES
	IF vContarReservasActivas = 0 THEN

-- MODIFICO ESTADO DEL PROFESOR
	UPDATE Profesores 
	SET Estado = 0
	WHERE DNI_Profesor = ME_DNI_Profesor;

-- LANZO SQLEXCEPTION
	ELSE 
	SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'El profesor tiene reservas pendientes y no puede ser desactivado.';
        END IF;

-- REACTIVO PROFESOR
ELSE
	UPDATE Profesores
    SET Estado = 1
    WHERE DNI_Profesor = ME_DNI_Profesor;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargaaulas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargaaulas`(IN AAU_Id INT(11), IN AAU_Nombre VARCHAR (50))
BEGIN
INSERT INTO aulas (Id_Aula, Nombre_Aula) VALUES (AAU_Id, AAU_Nombre);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargacarrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargacarrera`(IN AC_IdInstitucion INT (11), IN AC_Carrera VARCHAR (255), IN AC_Estado TINYINT (1))
BEGIN
INSERT INTO carreras (Id_Institucion, Carrera, Estado) VALUES (AC_IdInstitucion, AC_Carrera, AC_Estado);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargainstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargainstitucion`(IN AI_Institucion VARCHAR (255))
BEGIN
INSERT INTO instituciones (Institucion) VALUES (AI_Institucion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargamaterias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargamaterias`(IN AM_IdCarrera INT (11), IN AM_IdInstitucion INT (11), IN AM_Materia VARCHAR (255))
BEGIN
INSERT INTO Materias (Id_Carrera, Id_Institucion, Materia) VALUES ( AM_IdCarrera, AM_IdInstitucion, AM_Materia);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargaprofemateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargaprofemateria`(IN APM_DNIProfesor VARCHAR (10), IN APM_IdMateria INT (11))
BEGIN
INSERT INTO profesores_por_materias (DNI_Profesor, Id_Materia) VALUES (APM_DNIProfesor, APM_IdMateria);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargaprofesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargaprofesor`(IN AP_DNI VARCHAR(10), IN AP_Nombre VARCHAR (50), IN AP_Apellido VARCHAR (50), IN AP_Telefono VARCHAR (15), IN AP_Email VARCHAR (255))
BEGIN
INSERT INTO profesores (DNI_Profesor, Nombre, Apellido, Telefono, Email) VALUES (AP_DNI, AP_Nombre, AP_Apellido, AP_Telefono, AP_Email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargaradmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargaradmin`(IN AAD_DNI VARCHAR(10), IN AAD_Nombre VARCHAR(50), IN AAD_Apellido VARCHAR (50), IN AAD_Contraseña VARCHAR(20))
BEGIN
INSERT INTO administradores (DNI_Administrador, Nombre, Apellido, Contraseña) VALUES (AAD_DNI, AAD_Nombre, AAD_Apellido, AAD_Contraseña);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cargareserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cargareserva`(IN AR_IdAula INT (11), IN AR_DNIAdministrador VARCHAR (10), IN AR_DNIProfesor VARCHAR (10), IN AR_IdMateria INT (11), IN AR_Fecha date, IN AR_HoraInicio time, IN AR_HoraFinal time )
BEGIN
INSERT INTO reservas_aulas (Id_Aula, DNI_Administrador, DNI_Profesor, Id_Materia, Fecha, Hora_Inicio, Hora_Final) VALUES (AR_IdAula, AR_DNIAdministrador, AR_DNIProfesor, AR_IdMateria, AR_Fecha, AR_HoraInicio, AR_HoraFinal);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminaadministrador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminaadministrador`(IN EAD_DNI VARCHAR (10))
BEGIN
Delete From administradores
where DNI_Administrador = EAD_DNI;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminaaula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminaaula`(IN EAU_IdAula INT (11))
BEGIN
Delete from aulas
where Id_Aula = EAU_IdAula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminacarrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminacarrera`(IN EC_IdCarrera INT (11))
BEGIN
Delete from carreras
where Id_Carrera = EC_IdCarrera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminainstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminainstitucion`(IN EI_IdInstitucion INT (11))
BEGIN
Delete from instituciones
where Id_Institucion = EI_IdInstitucion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminamateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminamateria`(IN EM_IdMateria INT (11))
BEGIN
Delete from materias
where Id_Materia = EM_IdMateria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminaprofematerias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminaprofematerias`(IN EPM_DNIProfesor VARCHAR (10), IN EPM_IdMateria INT (11))
BEGIN
Delete from profesores_por_materias
where DNI_Profesor = EPM_DNIProfesor and Id_Materia = EPM_IdMateria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminaprofesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminaprofesor`(IN EP_DNIProfesor VARCHAR(10))
BEGIN
Delete from profesores
where Id_Profesor = EP_DNIProfesor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminareserva_fecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminareserva_fecha`(IN ERF_IdAula INT (11), IN ERF_Fecha DATE, IN ERF_HoraInicio TIME)
BEGIN
Delete from reservas_aulas
where Id_Aula = ERF_IdAula and Fecha = ERF_Fecha and Hora_Inicio = ERF_HoraInicio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminareserva_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminareserva_id`(IN ERI_IdReserva INT(11))
BEGIN
Delete from reservas
where Id_Reserva = ERI_IdReserva;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificaadministradores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificaadministradores`(IN MA_DNIAdministrador VARCHAR (10), IN MA_Nombre VARCHAR (50), 
IN MA_Apellido VARCHAR (50), IN MA_Contraseña VARCHAR (20), IN MA_Estado TINYINT(1))
BEGIN
Update administradores
SET
Nombre = MA_Nombre,
Apellido = MA_Apellido,
Contraseña = MA_Contraseña,
Estado = MA_Estado
WHERE
DNI_Administrador = MA_DNIAdministrador;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificaaula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificaaula`(IN MAU_IdAula INT (11), IN MAU_Nombre VARCHAR (50), 
IN MAU_Capacidad INT (11), IN MAU_Estado TINYINT(1))
BEGIN
UPDATE aulas
SET
Nombre_Aula = MAU_Nombre,
Capacidad = MAU_Capacidad,
Estado = MAU_Estado
WHERE
Id_Aula = MAU_IdAula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificacarrera` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificacarrera`(IN MC_IdCarrera INT (11), IN MC_IdInstitucion INT(11), 
IN MC_Carrera VARCHAR (255), IN MC_Estado TINYINT (1))
BEGIN
UPDATE carreras
SET
Id_Institucion = MC_IdInstitucion,
Carrera = MC_Carrera,
Estado = MC_Estado
WHERE 
Id_Carrera = MC_IdCarrera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificainstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificainstitucion`(IN MI_IdInstitucion INT (11), IN MI_Institucion VARCHAR (255),
IN MI_Estado TINYINT(1))
BEGIN
UPDATE instituciones
SET
Institucion = MI_Institucion,
Estado=MI_Estado
WHERE
Id_Institucion = MI_IdInstitucion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificamateria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificamateria`(IN MM_IdMateria INT (11), IN MM_IdCarrera INT (11), 
IN MM_IdInstitucion INT (11), IN MM_Materia VARCHAR (255), IN MM_Estado TINYINT (1))
BEGIN
UPDATE materias
SET
Id_Carrera = MM_IdCarrera,
Id_Institucion = MM_IdInstitucion,
Materia = MM_Materia,
Estado = MM_Estado
WHERE
Id_Materia = MM_IdMateria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificaprofesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificaprofesor`(IN MP_DNIProfesor VARCHAR (10), IN MP_Nombre VARCHAR (50), IN MP_Apellido VARCHAR (50), 
IN MP_Telefono VARCHAR (15), IN MP_Email VARCHAR (255), IN MP_Estado TINYINT (1))
BEGIN
UPDATE profesores
SET
Nombre = MP_Nombre,
Apellido = MP_Apellido,
Telefono = MP_Telefono,
Email = MP_Email,
Estado = MP_Estado
WHERE
DNI_Profesor = MP_DNIProfesor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_modificarprofesorespormaterias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificarprofesorespormaterias`(
IN accion varchar (10), -- 'INSERT', 'UPDATE', 'DELETE' --
IN MPM_DNI_Profesor varchar (10), -- Id del Profesor actual o nuevo si es INSERT --
IN MPM_Id_Materia int (11), -- Id de Materia actual o nueva si es INSERT --
IN DNI_Profesor_Nuevo varchar (10), -- Nuevo ID profesor UPDATE --
IN Id_Materia_Nuevo int (11) -- Nuevo ID materia si es UPDATE --
)
BEGIN

IF accion = 'INSERT' THEN

INSERT INTO profesores_por_materias (DNI_Profesor, Id_Materia)
VALUES (MPM_DNI_Profesor, MPM_Id_Materia);


ELSEIF accion = 'DELETE' THEN
DELETE FROM profesores_por_materias
WHERE DNI_Profesor = MPM_DNI_Profesor AND Id_Materia = MPM_Id_Materia;


ELSEIF accion = 'UPDATE' THEN
 
DELETE FROM profesores_por_materias
WHERE DNI_Profesor = MPM_DNI_Profesor AND Id_Materia = MPM_Id_Materia;

INSERT INTO profesores_por_materias (DNI_Profesor, Id_Materia)
VALUES (MPM_DNI_Profesor, MPM_Id_Materia);

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 18:54:12
