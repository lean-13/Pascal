(*
6. Realizar un programa que lea información de 200 productos de un supermercado. De cada producto
se lee código y precio (cada código es un número entre 1 y 200). Informar en pantalla:
- Los códigos de los dos productos más baratos.
- La cantidad de productos de más de 16 pesos con código par.
*)

program pr6;
var
	i, CodigoProducto, Precio, MinPrecio1, MinPrecio2, MinProducto1, MinProducto2, ContPesosPar, PesosPar: integer; 
begin
	Precio:= 0;
	ContPesosPar:= 0;
	MinPrecio1:= 10000;
	MinPrecio2:= 10000;
	MinProducto1:= 00;
	MinProducto2:= 00;

	for i:= 1 to 200 do
	begin
		CodigoProducto:= -1;

		while ((CodigoProducto < 1) or (CodigoProducto > 200)) do
		begin
			writeln('Ingrese codigo de producto: ');
			readln(CodigoProducto);
		end;

		writeln('Ingrese precio de producto: ');
		readln(Precio);

		if (Precio < MinPrecio1) then
		begin
			MinPrecio1:= Precio;
			MinProducto1:= CodigoProducto;
		end
		else 
			if (Precio < MinPrecio2) then
			begin
				MinPrecio2:= Precio;
				MinProducto2:= CodigoProducto;
			end;

		if (Precio > 16) then
		begin
			PesosPar:= Precio mod 2;
			if (PesosPar = 0) then
				ContPesosPar:= ContPesosPar + 1;
		end;

		writeln('Codigo de producto: ', CodigoProducto, ' Precio: ', Precio);
		writeln('Productos mas baratos: ', MinProducto1, ' y ', MinProducto2);
		writeln('Cantidad de productos de más de 16 pesos con código par: ', ContPesosPar);
		writeln('Veces procesado: ', i);

	end;



end.