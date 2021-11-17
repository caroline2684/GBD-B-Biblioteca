---cursor para los datos del libro--
do $$
declare
historico RECORD;
cur_libros cursor for select 
	libros.titulo_libro, 
	Count(libros.proveedor) AS numero_proveedores, 
	Count(libros.edicion) AS numero_edicion, 
	Min(libros.precio_libro) AS minimo_precio_libro, 
	Max(libros.precio_libro) AS maximo_precio_libro
	FROM editorial INNER JOIN libros ON editorial.Id_editorial = libros.id_editorial
	GROUP BY libros.titulo_libro;
begin 
	for historico in cur_libros loop
		raise notice 
		'Titulo_libro: %| Num_proveedores: %| Num_versiones: %| Min_precio: %| Max_precio: %' ,
		historico.titulo_libro, historico.numero_proveedores, historico.numero_edicion, 
		historico.minimo_precio_libro, historico.maximo_precio_libro;
	end loop;
end$$
LANGUAGE PLPGSQL;