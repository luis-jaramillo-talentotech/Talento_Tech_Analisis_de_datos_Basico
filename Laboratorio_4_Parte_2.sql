CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE autores (
    ID_Autor INT(11) NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Nacionalidad VARCHAR (50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    PRIMARY KEY (ID_Autor)
);
