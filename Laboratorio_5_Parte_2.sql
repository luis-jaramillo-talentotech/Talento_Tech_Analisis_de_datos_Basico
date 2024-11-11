---1.

---1.1.

UPDATE libros SET Disponible = 0 WHERE Titulo = 'Rayuela';

---1.2.

UPDATE prestamos SET Fecha_Devolucion = '2024-11-06' WHERE ID_Prestamo = 1;

---1.3.

DELETE FROM libros WHERE Titulo = 'Kafka en la orilla';

---2.

---2.1.

SELECT * FROM libros ;

---2.2.

SELECT Nombre FROM autores;

---2.3.

SELECT * FROM libros WHERE ID_Autor = 1;

---2.4.

SELECT * FROM `prestamos` WHERE MONTH(Fecha_Devolucion) = 8 AND YEAR(Fecha_Devolucion) = 2024;
