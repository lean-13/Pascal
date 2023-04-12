(*
6. Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La
lectura finaliza cuando se ingresa el legajo -1, que no debe procesarse.
Por ejemplo, se lee la siguiente secuencia:
33423
8.40
19003
6.43
-1
En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo
19003, cuyo promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un
promedio).
Al finalizar la lectura, informar:
a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar
1).
c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean
menor al valor 2500 (en el ejemplo anterior se debería informar 0%).
*)

program pr6a;
var
	Legajo, Promedio, Promedio6, Promedio8, Alumnos : real;
begin
	Legajo:= 0;
	Alumnos:= 0;
	Promedio6:= 0;
	Promedio8:= 0;

	while(Legajo <> -1) do
	begin
		writeln('Escriba numero de Legajo: ');
		read(Legajo);

		if (Legajo <> -1) then
		begin
			writeln('Escriba numero de Promedio: ');
			read(Promedio);

			if((Promedio > 8.5) and (Legajo < 2500)) then
				Promedio8:= Promedio8 + 1
			else
				if(Promedio > 6.5) then
					Promedio6:= Promedio6 + 1;

			Alumnos:= Alumnos + 1;
			writeln('Legajo: ', Legajo:4:0 , ' Promedio: ', Promedio:2:0 );
			writeln('Promedio 6.5: ', Promedio6:4:2, ' Promedio 8.5: ', Promedio8:4:2 );
			writeln('Cantidad de alumnos leidos: ', Alumnos:4:0 );


		end
	end
end.