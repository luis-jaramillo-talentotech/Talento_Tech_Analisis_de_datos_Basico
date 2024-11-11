---1.

---1.1.

UPDATE libros SET Disponible = 0 WHERE Titulo = 'Rayuela';

---1.2.

UPDATE prestamos SET Fecha_Devolucion = '2024-11-06' WHERE ID_Prestamo = 1;

---1.3.

DELETE FROM libros WHERE Titulo = 'Kafka en la orilla';
