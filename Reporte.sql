---Datos para el reporte---
SELECT libros.titulo_libro, 
Count(prestamos.id_prestamo) AS Numero_lecturas
FROM libros 
INNER JOIN ejemplares ON libros.Id_libro = ejemplares.id_libro
INNER JOIN prestamos ON ejemplares.id_ejemplar = prestamos.id_ejemplar
GROUP BY libros.titulo_libro
ORDER BY Count(prestamos.id_prestamo) DESC;