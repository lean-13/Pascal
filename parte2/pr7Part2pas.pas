(*
7. Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los
autos se lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera
participaron 100 autos. Informar en pantalla:
- Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
- Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.
*)

program pr7;
var
	i: integer;
	Tiempo, TiempoPrimero, TiempoSegundo, TiempoAnteUltimo, TiempoUltimo: real;
	Piloto, Primero, Segundo, AnteUltimo, Ultimo: string;
begin
	TiempoPrimero:= 10000;
	TiempoSegundo:= 10000;
	TiempoAnteUltimo:= -1;
	TiempoUltimo:= -1;
	Primero:= 'Desconocido';
	Segundo:= 'Desconocido';
	AnteUltimo:= 'Desconocido';
	Ultimo:= 'Desconocido';

	for i:= 1 to 6 do 
	begin
		writeln('Ingrese nombre de piloto: ');
		readln(Piloto);
		writeln('Ingrese tiempo');
		readln(Tiempo);

		if (Tiempo < TiempoPrimero) then
		begin
			// Ultimo
			TiempoUltimo:= TiempoAnteUltimo;
			Ultimo:= AnteUltimo;
			// AnteUltimo
			TiempoAnteUltimo:= TiempoSegundo;
			AnteUltimo:= Segundo;
			// Segundo
			TiempoSegundo:= TiempoPrimero;
			Segundo:= Primero;
			// Primero
			TiempoPrimero:= Tiempo;
			Primero:= Piloto;
		end
		else
			if (Tiempo < TiempoSegundo) then
			begin 
				// Ultimo
				Ultimo:= AnteUltimo;
				TiempoUltimo:= TiempoAnteUltimo;
				// AnteUltimo
				TiempoAnteUltimo:= TiempoSegundo;
				AnteUltimo:= Segundo;
				// Segundo
				TiempoSegundo:= Tiempo;
				Segundo:= Piloto;
			end
			else 
				if (Tiempo > TiempoUltimo) then
				begin 
					TiempoUltimo:= Tiempo;
					Ultimo:= Piloto;
				end
				else 
					if (Tiempo > TiempoAnteUltimo) then
					begin
						// Ultimo
						AnteUltimo:= Ultimo;
						TiempoUltimo:= TiempoAnteUltimo;
						// AnteUltimo
						TiempoAnteUltimo:= Tiempo;
						AnteUltimo:= Piloto;
					end;

	end;

	writeln('Primero: ', Primero, ' Tiempo: ', TiempoPrimero:4:2);
	writeln('Segundo: ', Segundo, ' Tiempo: ', TiempoSegundo:4:2);
	writeln('AnteUltimo: ', AnteUltimo, ' Tiempo: ', TiempoAnteUltimo:4:2);
	writeln('Ultimo: ', Ultimo, ' Tiempo: ', TiempoUltimo:4:2);

end.