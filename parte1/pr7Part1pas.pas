(* 
7. Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un
almacén. La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse.
Para cada producto leído, el programa deberá indicar si el nuevo precio del producto supera en un
10% al precio anterior.
Por ejemplo:
○ Si se ingresa el código 10382, con precio actual 40, y nuevo precio 44, deberá imprimir: “el
aumento de precio del producto 10382 no supera el 10%”
○ Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir: “el
aumento de precio del producto 32767 es superior al 10%”
*)

program pr7;
var
	Codigo, PrecioNuevo, PrecioActual: real;
const
  Porcentaje = 1.1;
begin
	Codigo:= -1;

	while(Codigo <> 32767) do
	begin
		writeln('Ingrese codigo de producto: ');
		read(Codigo);

		if(Codigo <> 32767) then
		begin
			writeln('Ingrese precio actual: ');
			read(PrecioActual);
			writeln('Ingrese nuevo precio: ');
			read(PrecioNuevo);

            if PrecioNuevo > (PrecioActual * Porcentaje) then
                writeln('El aumento de precio del producto ', codigo:6:0, ' es superior al 10%')
            else
                writeln('El aumento de precio del producto ', codigo:6:0, ' no supera el 10%');
    	
		end

	end

end.