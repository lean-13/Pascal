program pr1part1;
var
	nr1, nr2:integer;
begin
	write('Escriba un numero: ');
	read(nr1);
	write('Escriba otro numero');
	read(nr2);

	if (nr1 > nr2) then
		write('El primer numero es mayor: ', nr1);
	else
		if (nr2 > nr1) then
			write('El segundo numero es mayor: ', nr2);
		else
			if (nr1 = nr2) then
				write('Ambos numeros son identicos');

end.