--Historico de ejemplares eliminados--
SELECT ejemplares.id_libro, prestamos.id_ejemplar, libros.titulo_libro, 
libros.fecha_entrada, libros_retirados.fecha_salida, 
Count(prestamos.id_prestamo) AS Numero_prestamos
FROM libros 
INNER JOIN ejemplares ON libros.Id_libro = ejemplares.id_libro
INNER JOIN libros_retirados ON (ejemplares.id_ejemplar = libros_retirados.id_ejemplar) 
AND (libros.Id_libro = libros_retirados.id_libro) 
INNER JOIN prestamos ON ejemplares.id_ejemplar = prestamos.id_ejemplar
GROUP BY ejemplares.Id_libro,prestamos.id_ejemplar,libros.titulo_libro,
libros.fecha_entrada,libros_retirados.fecha_salida;