program pr3;
var
	nr1, nr2, division:real;
begin
	write('Ingrese el primer numero: ');
	read(nr1);

	write('Ingrese el segundo numero: ');
	read(nr2);

	division:= nr1 / nr2;
	write('El resultado de dividir ', nr1, ' y ', nr2, ' es ');
	writeln(division:2:2);
end.