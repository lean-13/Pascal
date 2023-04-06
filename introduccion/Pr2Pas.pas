program pr2;
var
	nr1, nr2, suma:integer;
begin
	write('Ingrese el primer numero: ');
	read(nr1);
	write('Ingrese el segundo numero: ');
	read(nr2);
	suma:= nr1 + nr2;
	write( 'Se ingresaron los numeros ', nr1, ' y ', nr2, ' y su suma es: ', suma );
end.