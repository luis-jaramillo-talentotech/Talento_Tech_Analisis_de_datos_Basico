---1. Create database and tables

CREATE DATABASE empresa;

USE empresa;

CREATE TABLE cargo (
    id_cargo INT(11) NOT NULL AUTO_INCREMENT,
    nombre_cargo VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    salario INT(11) NOT NULL,
    PRIMARY KEY (id_cargo)
);

CREATE TABLE empleados (
    id_empl INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_cargo INT(11) NOT NULL,
    salario INT(11) NOT NULL,
    PRIMARY KEY (id_empl),
    FOREIGN KEY (id_cargo) REFERENCES cargo (id_cargo)
);

INSERT INTO cargo (nombre_cargo, descripcion, salario) VALUES
('Gerente', 'Responsable de la gestión general de la empresa', 15000000),
('Contador', 'Responsable de la contabilidad y finanzas', 3000000),
('Ingeniero', 'Encargado de proyectos de ingeniería', 3500000),
('Asistente', 'Asistente administrativo', 2000000),
('Ventas', 'Encargado de las ventas y atención al cliente', 2500000);

INSERT INTO empleados (nombre, id_cargo, salario) VALUES
('Juan Pérez', 1, 15000000),
('Ana Gómez', 2, 3000000),
('Carlos Sánchez', 3, 3500000),
('María Rodríguez', 4, 2000000),
('Luis Martínez', 5, 2500000),
('Elena Torres', 1, 15000000),
('Fernando Ruiz', 2, 3000000),
('Sofía Mendoza', 3, 3500000),
('José López', 4, 2000000),
('Laura Díaz', 5, 2500000);

---2.

SELECT * FROM empleados;

---3.
---3.1.

SELECT nombre_cargo FROM cargo;

---3.2.

SELECT nombre FROM empleados WHERE salario > 7000000;

---3.3.

UPDATE empleados SET salario = 6500000 WHERE nombre = 'Fernando Ruiz';
