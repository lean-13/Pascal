program pr5b;
const 	
	precioCaramelos = 1.60;
var
	cantidad, clientes, cantClientes, sobra:integer;
	precio:real;
begin
	write('ingrese cantidad de producto: ');
	read(cantidad);
	write('ingrese cantidad de clientes: ');
	read(clientes);

	if ((cantidad > 0) and (clientes > 0)) then
		begin
			sobra:= cantidad MOD clientes;
			cantClientes:= cantidad DIV clientes;
			write('Cada cliente obtiene: ', cantClientes);
			write(', Sobra: ', sobra);

			precio:= cantClientes * precioCaramelos;
			writeln(', El precio para cada clientes es: $', precio:4:2);
		end
end.