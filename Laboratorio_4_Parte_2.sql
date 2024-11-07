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

INSERT INTO autores (ID_Autor, Nombre, Nacionalidad, Fecha_Nacimiento) VALUES 
(1, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'), 
(2, 'Isabel Allende', 'Chilena', '1942-08-02'), 
(3, 'Julio Cortázar', 'Argentina', '1914-08-26'), 
(4, 'Mario Vargas Llosa', 'Peruana', '1936-03-28'), 
(5, 'J.K. Rowling', 'Británica', '1965-07-31'), 
(6, 'Stephen King', 'Estadounidense', '1947-09-21'), 
(7, 'George R.R. Martin', 'Estadounidense', '1948-09-20'), 
(8, 'Haruki Murakami', 'Japonesa', '1949-01-12'), 
(9, 'J.R.R. Tolkien', 'Británica', '1892-01-03'), 
(10, 'Agatha Christie', 'Británica', '1890-09-15');

INSERT INTO libros (ID_Libro, Titulo, ID_Autor, ID_Categoria, Año_Publicacion, Disponible) VALUES 
(1, 'Cien años de soledad', 1, 1, 1967, 1), 
(2, 'La casa de los espíritus', 2, 1, 1982, 1), 
(3, 'Rayuela', 3, 1, 1963, 1),
(4, 'La ciudad y los perros', 4, 4, 1962, 1), 
(5, 'Harry Potter y la piedra filosofal', 5, 6, 1997, 1), 
(6, 'El resplandor', 6, 8, 1977, 1), 
(7, 'Juego de tronos', 7, 6, 1996, 1), 
(8, 'Kafka en la orilla', 8, 3, 2002, 1), 
(9, 'El señor de los anillos', 9, 6, 1954, 1), 
(10, 'Asesinato en el Orient Express', 10, 8, 1934, 1);
