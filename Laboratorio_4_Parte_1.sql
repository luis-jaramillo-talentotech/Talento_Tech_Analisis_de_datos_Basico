CREATE DATABASE universidad;

USE universidad;

CREATE TABLE cursos (
    ID_cursos INT(11) NOT NULL AUTO_INCREMENT,
    N_Curso VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_cursos)
);

CREATE TABLE estudiantes (
    ID_Estudiante INT(11) NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    PRIMARY KEY (ID_Estudiante)
);
