--Procedimiento Almacenado para ver los prestamos realizados por un cliente con el ingreso de la cedula--
create or replace function prestamos_clientes(varchar) 
returns varchar
as $$
declare
	cedula alias for $1;
	datos RECORD;
	cur_datos cursor for select
	concat (clientes.nom_usuario||' '||clientes.ape_usuario) as cliente,
	libros.titulo_libro as titulo, prestamos.fecha_prestamo as fecha
	FROM libros 
	INNER JOIN ejemplares 
			INNER JOIN (clientes 
						INNER JOIN prestamos ON clientes.id_cliente = prestamos.id_cliente) 
			ON ejemplares.id_ejemplar = prestamos.id_ejemplar
			ON libros.Id_libro = ejemplares.id_libro
			where clientes.ced_usuario = $1
			GROUP BY clientes.nom_usuario,clientes.ape_usuario, libros.titulo_libro, prestamos.fecha_prestamo;
begin 
		OPEN cur_datos;
		FETCh cur_datos INTO datos;
		RAISE NOTICE 
			'
			CLIENTE: % 
			
        ESTE CLIENTE AH TENIDO LOS SIGUIENTES PRESTAMOS:
			',
			datos.cliente;
		while (found) loop 
			RAISE NOTICE 
			'
			LIBRO: %
			FECHA: %	
			',
			datos.titulo, datos.fecha;
			FETCh cur_datos INTO datos;
		end loop;
end;
$$
LANGUAGE PLPGSQL;

--Prueba---
select prestamos_clientes('1306921451');