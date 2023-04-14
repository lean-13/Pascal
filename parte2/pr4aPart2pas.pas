(*
4. Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son
los dos números mínimos leídos.
a. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual debe procesarse.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer
el número 0, el cual no debe procesarse
*)

program pr4a;
var
	Nr, Min1, Min2: integer;

begin
	Min1:= 10000;
	Min2:= 10000;
	Nr:= 10000;

	while (Nr <> 0) do
	begin
		writeln('Ingrese un numero entero: ');
		read(Nr);

		if (Nr < Min1) then
			Min1:= Nr
		else
			if (Nr < Min2) then
				Min2:= Nr;

	end;

	writeln('Los dos numeros minimos son: ', Min1, ' ', Min2); 
 



end.