(*
9. Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro
carácter, debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse
una secuencia de números enteros que finaliza con 0. El programa deberá aplicar la operación leída
con la secuencia de números, e imprimir el resultado final.
Por ejemplo:
○ Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
○ Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir 0 ( -10 + 5 + 6 + (-1) )
*)

program pr9;
var
	Simbolo: char;
	Num, Num2, Resultado: integer;
begin
	writeln('Ingrese "+" o "-" ');
	readln(Simbolo);

	if ((Simbolo = +) or (Simbolo = -)) then
	begin
		Num:= -10;

		while(Num <> 0) do
		begin
			writeln('Ingrese un Numero');
			readln('Num');
			writeln('Ingrese otro Numero');
			readln('Num2');

			if(Simbolo = +) then
				Resultado:= Num + Num2;
			else
				Resultado:= Num - Num2;
			writeln('El resultado es: ', Resultado)

		end;
	end
	else 
		writeln('Simbolo invalido');


end.