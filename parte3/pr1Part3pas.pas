program Registros;
	type
		str20 = string[20];
		alumno = record
		codigo : integer;
		nombre : str20;
		promedio : real;
	end;
	procedure leer(var alu : alumno, var Max : real, var AlumnoMax: str20);
	begin
		writeln('Ingrese el código del alumno: ');
		read(alu.codigo);
		if (alu.codigo <> 0) then begin
			writeln('Ingrese el nombre del alumno: '); 
			read(alu.nombre);
			writeln('Ingrese el promedio del alumno: '); 
			read(alu.promedio);
			writeln('Codigo: ', alu.codigo, ' Nombre: ', alu.nombre, ' Promedio: ', alu.promedio)

			if (alu.promedio > Max) then begin
				Max:= alu.promedio;
				AlumnoMax:= alu.nombre
			end;
		end;
	end;
	{ declaración de variables del programa principal }
	var
		a : alumno;
		AlumnoLeido: integer;
		AlumnoMax: string; 
		Max: real;
		{ cuerpo del programa principal }
	begin
		Max:= -1;
		AlumnoLeido := 0;
		a.codigo:= 10;
		while (a.codigo <> 0) do begin
			leer(a, Max, AlumnoMax);
			AlumnoLeido := AlumnoLeido + 1;
		end;
		writeln('AlumnosLeidos: ', AlumnoLeido);
	end.
