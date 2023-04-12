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

program pr6;
var
	Legajo, Promedio: real;
begin

	Legajo:= 0;

	while(Legajo <> -1) do
	begin
		writeln('Escriba numero de Legajo: ');
		read(Legajo);

		if (Legajo <> -1) then
		begin
			writeln('Escriba numero de Promedio: ');
			read(Promedio);
			writeln('Legajo: ', Legajo:4:0 , ' Promedio: ', Promedio:2:0 );
		end
	end
end.