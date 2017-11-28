Drop database chat;
CREATE DATABASE  IF NOT EXISTS chat;

use chat;

DROP TABLE IF EXISTS tipoemoji;

CREATE TABLE tipoemoji (
  idTipo int(11) NOT NULL AUTO_INCREMENT,
  tipo varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (idTipo),
  UNIQUE KEY `tipo` (tipo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS emoji;
CREATE TABLE emoji (
  idEmoji int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  tipo varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  descripcion varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (idEmoji),
  UNIQUE KEY `nombre` (`nombre`),
  UNIQUE KEY `tipo` (`tipo`),
  CONSTRAINT `tiagolex` FOREIGN KEY (`tipo`) REFERENCES `tipoemoji` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS salaChat;

CREATE TABLE salaChat (
  idChat int(11) NOT NULL AUTO_INCREMENT,
  nombreSala varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  passwordSala blob NOT NULL,
  PRIMARY KEY (idChat),
  UNIQUE KEY nombreSala (nombreSala)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
