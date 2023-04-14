(*
1. Realizar un programa que lea 10 números enteros e informe la suma total de los números leídos.
a. Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5
*)

program pr1;
var
	Nr, i, Resultado: integer;
begin 
	Resultado:= 0;

	for i:= 1 to 10 do begin
		writeln('Escriba un numero entero: ');
		read(Nr);
		Resultado:= Resultado + Nr;
	end;
	
	writeln('Total: ', Resultado);

end.