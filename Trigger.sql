--trigger que evite el ingreso de un ejemplar si no tiene minimo 10 prestamos--
CREATE OR REPLACE FUNCTION libros_eliminados() returns trigger 
as $libros_eliminados$
	declare
	cantidadprestamos int;
	begin
		select count(*)into cantidadprestamos
		from prestamos
		where id_ejemplar=new.id_ejemplar;
		if(cantidadprestamos<10) then
			raise exception 'tiene que tener 10 prestamos minimo';
		end if;
		return new;
	end
$libros_eliminados$
LANGUAGE PLPGSQL;
	
CREATE TRIGGER libros_eliminados BEFORE INSERT 
ON libros_retirados FOR EACH ROW
EXECUTE PROCEDURE libros_eliminados();

--datos de prueba--
INSERT INTO libros_retirados VALUES('1','10011','12403','10/12/2021')
INSERT INTO libros_retirados VALUES('1','10012','12406','15/12/2021');