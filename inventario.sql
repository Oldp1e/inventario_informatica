-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for inventario
CREATE DATABASE IF NOT EXISTS `inventario` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `inventario`;

-- Dumping structure for table inventario.controle_usuarios
CREATE TABLE IF NOT EXISTS `controle_usuarios` (
  `ID_User` int(11) NOT NULL,
  `nome` char(16) DEFAULT NULL,
  `ID_FK_EQUIP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_User`),
  KEY `ID_FK_EQUIP` (`ID_FK_EQUIP`),
  CONSTRAINT `controle_usuarios_ibfk_1` FOREIGN KEY (`ID_FK_EQUIP`) REFERENCES `equipamentos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.equipamentos
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) NOT NULL DEFAULT '0',
  `Modelo` varchar(50) NOT NULL DEFAULT '0',
  `Setor` varchar(50) NOT NULL,
  `Processador` varchar(50) DEFAULT NULL,
  `Placa_mae` varchar(50) DEFAULT NULL,
  `GPU` varchar(50) DEFAULT NULL,
  `RAM` varchar(50) DEFAULT NULL,
  `MEM_FIS` varchar(50) DEFAULT NULL,
  `NOTA_FIS` blob DEFAULT NULL,
  `Nome_Maq` varchar(50) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.geral_nw
CREATE TABLE IF NOT EXISTS `geral_nw` (
  `ID_NW` int(11) NOT NULL,
  `ID_FK_EQUIP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_NW`),
  KEY `ID_FK_EQUIP` (`ID_FK_EQUIP`),
  CONSTRAINT `geral_nw_ibfk_1` FOREIGN KEY (`ID_FK_EQUIP`) REFERENCES `equipamentos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.impressoras_nw
CREATE TABLE IF NOT EXISTS `impressoras_nw` (
  `ID_NW_FK` int(11) DEFAULT NULL,
  `ID_FK_EQUIP` int(11) DEFAULT NULL,
  `IP` char(16) NOT NULL,
  `MAC_ADDRESS` char(20) DEFAULT NULL,
  PRIMARY KEY (`IP`),
  KEY `ID_FK_EQUIP` (`ID_FK_EQUIP`),
  KEY `ID_NW_FK` (`ID_NW_FK`),
  CONSTRAINT `impressoras_nw_ibfk_1` FOREIGN KEY (`ID_FK_EQUIP`) REFERENCES `equipamentos` (`ID`),
  CONSTRAINT `impressoras_nw_ibfk_2` FOREIGN KEY (`ID_NW_FK`) REFERENCES `geral_nw` (`ID_NW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.modelos_comp
CREATE TABLE IF NOT EXISTS `modelos_comp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL DEFAULT '0',
  `Fabricante` varchar(50) NOT NULL DEFAULT '0',
  `Tipo` varchar(50) NOT NULL DEFAULT '0',
  `Capacidade` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.setores
CREATE TABLE IF NOT EXISTS `setores` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Setor` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.softwares
CREATE TABLE IF NOT EXISTS `softwares` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `COD` varchar(50) DEFAULT NULL,
  `NOTA_FIS` varchar(50) DEFAULT NULL,
  `EQUIPAMENTO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.terminais_nw
CREATE TABLE IF NOT EXISTS `terminais_nw` (
  `ID_NW_FK` int(11) DEFAULT NULL,
  `ID_FK_EQUIP` int(11) DEFAULT NULL,
  `IP` char(16) NOT NULL,
  `MAC_ADDRESS` char(20) DEFAULT NULL,
  `TEAMVIEWER` char(9) DEFAULT NULL,
  `ANYDESK` char(9) DEFAULT NULL,
  PRIMARY KEY (`IP`),
  KEY `ID_FK_EQUIP` (`ID_FK_EQUIP`),
  KEY `ID_NW_FK` (`ID_NW_FK`),
  CONSTRAINT `terminais_nw_ibfk_1` FOREIGN KEY (`ID_FK_EQUIP`) REFERENCES `equipamentos` (`ID`),
  CONSTRAINT `terminais_nw_ibfk_2` FOREIGN KEY (`ID_NW_FK`) REFERENCES `geral_nw` (`ID_NW`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.tipos_comp
CREATE TABLE IF NOT EXISTS `tipos_comp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.tipos_equip
CREATE TABLE IF NOT EXISTS `tipos_equip` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table inventario.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
