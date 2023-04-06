program pr5;
var
	Numero, Doble, Cont: real;
begin
	Cont:= 0;
	Numero:= -1;
	writeln('Ingrese un numero real: ');
	read(Numero);
	
    Doble:= Numero * 2;
    
	while( (Numero <> Doble) and (Cont < 10) ) do
	begin
		writeln('Ingrese numero real: ');
		read(Numero);
		Cont:= Cont + 1;
	end;
	if (Cont = 10) then
		writeln('No se ha ingresado el doble de X');
end.