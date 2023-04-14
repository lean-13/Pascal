(*
5. Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se
ingrese el número 100, el cual debe procesarse. Informar en pantalla:
◦ El número máximo leído.
◦ El número mínimo leído.
◦ La suma total de los números leídos.
*)

program pr5;
var
	Max, Min, Total, Nr: integer;
begin
	Max:= -10000;
	Min:= 10000;
	Total:= 0;
	Nr:= 0;

	while (Nr <> 100) do 
	begin
		writeln('Ingrese un numero entero: ');
		readln(Nr);

		if (Nr > Max) then
			Max:= Nr;
		if (Nr < Min) then
			Min:= Nr;

		Total:= Total + Nr;

	end;

	writeln('Maximo: ', Max, ' Mínimo: ', Min, ' Total: ', Total);

end.