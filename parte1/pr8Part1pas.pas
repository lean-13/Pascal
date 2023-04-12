// 8. Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos
// uno de ellos no lo era. Por ejemplo, si se leen los caracteres “a e o” deberá informar “Los tres son
// vocales”, y si se leen los caracteres “z a g” deberá informar “al menos un carácter no era vocal”

program pr8;
var
	Caracter1, Caracter2, Caracter3: char;
	Vocal: real;

begin
	Vocal:= 0;

	writeln('Ingrese primer caracter');
	readln(Caracter1);
	writeln('Ingrese segundo caracter');
	readln(Caracter2);
	writeln('Ingrese tercer caracter');
	readln(Caracter3);

	if ((Caracter1 = a) or (Caracter1 = e) or (Caracter1 = i) or (Caracter1 = o) or (Caracter1 = u)) then
		Vocal:= Vocal + 1;
	if ((Caracter2 = a) or (Caracter2 = e) or (Caracter2 = i) or (Caracter2 = o) or (Caracter2 = u)) then
		Vocal:= Vocal + 1;
	if ((Caracter3 = a) or (Caracter3 = e) or (Caracter3 = i) or (Caracter3 = o) or (Caracter3 = u)) then
		Vocal:= Vocal + 1;

	if (Vocal = 3) then
		writeln('Los tres son vocales');
	else
		if(Vocal = 2) then
			writeln('Al menos un caracter no era vocal');

end.