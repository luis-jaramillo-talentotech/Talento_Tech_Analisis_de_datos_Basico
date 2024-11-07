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

INSERT INTO usuarios (ID_Usuario, Nombre, Direccion, Telefono) VALUES 
(1, 'Juan Pérez', 'Calle 123', 1234567890), 
(2, 'María Gómez', 'Avenida 456', 2345678901), 
(3, 'Carlos Martínez', 'Boulevard 789', 3456789012), 
(4, 'Ana Rodríguez', 'Calle 101', 4567890123), 
(5, 'Luis López', 'Calle 202', 5678901234), 
(6, 'Patricia Ramírez', 'Avenida 303', 6789012345), 
(7, 'José Sánchez', 'Calle 404', 7890123456), 
(8, 'Laura Castillo', 'Avenida 505', 8901234567), 
(9, 'Andrés Morales', 'Calle 606', 9012345678), 
(10, 'Sofía Torres', 'Avenida 707', 1234509876);

INSERT INTO categorías (ID_Categoria, Categoria) VALUES 
(1, 'Ficción'), 
(2, 'No Ficción'), 
(3, 'Ciencia'), 
(4, 'Historia'), 
(5, 'Biografía'), 
(6, 'Fantasía'), 
(7, 'Autoayuda'), 
(8, 'Misterio'), 
(9, 'Infantil'), 
(10, 'Cómics');
