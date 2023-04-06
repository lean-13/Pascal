program pr5;
var
	cantidad, clientes,cantClientes, sobra:integer;
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
			write(' Sobra: ', sobra)
		end
end.