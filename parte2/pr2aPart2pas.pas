(*
2. Realice un programa que lea 10 números e informe cuál fue el mayor número leído. Por ejemplo, si
se lee la secuencia:
							3 5 6 2 3 10 98 8 -12 9
				deberá informar: “El mayor número leído fue el 98”

a. Modifique el programa anterior para que, además de informar el mayor número leído, se
informe el número de orden, dentro de la secuencia, en el que fue leído. Por ejemplo, si se lee la
misma secuencia:
							3 5 6 2 3 10 98 8 -12 9
				deberá informar: “El mayor número leído fue el 98, en la posición 7”

*)

program pr2;
var
	Nr, max, Pos, PosMax, i: integer;
begin
	Max:= -1000;
	Pos:= 0;
	PosMax:= 0;

	for i:= 1 to 10 do begin
		writeln('Ingrese un numero: ');
		read(Nr);
		Pos:= Pos + 1;

		if (Nr >= Max) then
		begin
			max:= Nr;
			PosMax:= Pos;
		end

	end; 

	writeln('El mayor numero leido fue el: ', Max, ' En la posicion: ', PosMax);

end.