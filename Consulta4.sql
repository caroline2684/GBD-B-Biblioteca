--Historico de ganacias--
SELECT 
libros.titulo_libro as Titulo, 
Sum(ejemplares.precio_ejemplar) AS Ganancias
FROM libros 
INNER JOIN ejemplares ON libros.Id_libro = ejemplares.id_libro
INNER JOIN prestamos ON ejemplares.id_ejemplar = prestamos.id_ejemplar
GROUP BY libros.titulo_libro