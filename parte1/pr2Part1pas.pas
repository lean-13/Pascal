(*
2. Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un
número X, se escribe |X| y se define como:
|X| = X cuando X es mayor o igual a cero
|X| = -X cuando X es menor a cero
*)
program pr2part1;
var
	nr1, nr2:real;
begin
	write('Ingrese un numero para calcular su valor absoluto: ');
	read(nr1);
	if (nr1 > 0) then
		writeln('Su valor absoluto es: ', nr1:8:0);
	else
		if (nr1 < 0) then
			begin
				nr2:= nr1 * (-1);
				writeln('Su valor absoluto es: ', nr2:8:0);
			end
end.