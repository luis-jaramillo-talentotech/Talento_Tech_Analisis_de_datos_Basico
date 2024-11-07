CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE autores (
    ID_Autor INT(11) NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Nacionalidad VARCHAR (50) NOT NULL,
    Fecha_Nacimiento DATE NOT NULL,
    PRIMARY KEY (ID_Autor)
);

CREATE TABLE categorías (
    ID_Categoria INT(11) NOT NULL AUTO_INCREMENT,
    Categoria VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_Categoria)
);

CREATE TABLE libros (
    ID_Libro INT(11) NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(100) NOT NULL,
    ID_Autor INT(11) NOT NULL,
    ID_Categoria INT(11) NOT NULL,
    Año_Publicacion INT(4) NOT NULL,
    Disponible TINYINT(1) NOT NULL,
    PRIMARY KEY (ID_Libro),
    FOREIGN KEY (ID_Autor) REFERENCES autores (ID_Autor),
    FOREIGN KEY (ID_Categoria) REFERENCES categorías (ID_Categoria)
);

CREATE TABLE prestamos (
    ID_Prestamo INT(11) NOT NULL AUTO_INCREMENT,
    ID_Libro INT(11) NOT NULL,
    Fecha_Prestamo DATE NOT NULL,
    Fecha_Devolucion DATE NOT NULL,
    PRIMARY KEY (ID_Prestamo),
    FOREIGN KEY (ID_Libro) REFERENCES libros (ID_Libro)
);

CREATE TABLE usuarios (
  ID_Usuario INT(11) NOT NULL AUTO_INCREMENT,
  Nombre VARCHAR(100) NOT NULL,
  Direccion VARCHAR(100) NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  PRIMARY KEY (ID_Usuario)
);

CREATE TABLE prestamos_usuarios (
  ID_Prestamo INT(11) NOT NULL,
  ID_Usuario INT(11) NOT NULL,
  FOREIGN KEY (ID_Prestamo) REFERENCES prestamos (ID_Prestamo),
  FOREIGN KEY (ID_Usuario) REFERENCES usuarios (ID_Usuario)
);
