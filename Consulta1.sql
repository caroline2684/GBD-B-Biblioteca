--Historico de los libros y tipo de prestamo--
select
libros.titulo_libro,
count(prestamos.id_ejemplar) as cantidad_de_lectores,
count(*) filter (where "tipo_prestamo") as prestamos_internos,
count(*) filter (where not "tipo_prestamo") as prestamos_externos
from  prestamos
inner join ejemplares on ejemplares.id_ejemplar=prestamos.id_ejemplar
inner join libros on libros.id_libro=ejemplares.id_libro
group by libros.titulo_libro