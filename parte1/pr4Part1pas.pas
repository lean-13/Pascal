(*
Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se
ingrese uno cuyo valor sea exactamente el doble de X (el primer número leído).
*)
program pr4;
var
	PrimerNumero, Numero: real;

begin

	Numero:= -1;
	writeln('Ingrese un numero real: ');
	read(PrimerNumero);

	while( (Numero) <> (PrimerNumero * 2) ) do
	begin
		writeln('Ingrese numero real: ');
		read(Numero);
	end
end.