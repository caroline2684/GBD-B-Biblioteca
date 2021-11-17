--Historico de total de atendidos por bibliotecario--
SELECT prestamos.id_bibliotecario as Identificador, 
bibliotecario.ced_bibliotecario as Cedula, 
EXTRACT (year from prestamos.fecha_prestamo) as Fecha,
Count(prestamos.id_prestamo) AS Numero_de_atendidos
FROM libros 
INNER JOIN 
(ejemplares INNER JOIN (bibliotecario INNER JOIN prestamos 
ON bibliotecario.id_bibliotecario = prestamos.id_bibliotecario) 
ON ejemplares.id_ejemplar = prestamos.id_ejemplar)
ON libros.Id_libro = ejemplares.id_libro
GROUP BY prestamos.id_bibliotecario,
EXTRACT(year from prestamos.fecha_prestamo),bibliotecario.ced_bibliotecario;