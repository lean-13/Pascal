(*
9. Realizar un programa modularizado que lea información de alumnos de una facultad. Para cada alumno se
lee: número de inscripción, apellido y nombre. La lectura finaliza cuando se ingresa el alumno con número de
inscripción 1200, que debe procesarse. Se pide calcular e informar:
● Apellido de los dos alumnos con número de inscripción más chico.
● Nombre de los dos alumnos con número de inscripción más grande.
● Porcentaje de alumnos con nro de inscripción par
*)

program pr9;

procedure AlumnoF;
	var 
		Nombre, Apellido: string;
	begin
		writeln('Ingrese numero de inscripción: ');
			readln(NrInscripcion);
			writeln('Ingrese nombre: ');
			readln(Nombre);
			writeln('Ingrese Apellido: ');
			readln(Apellido);

			// minimo
			if (NrInscripcion < NrMin1) then begin
				// actualizo el segundo puesto
				NrMin2:= NrMin1;
				NrMinAlum2:= NrMinAlum1;
				// actualizo el primer puesto
				NrMin1:= NrInscripcion;
				NrMinAlum1:= Apellido
			end
			else 
				if (NrInscripcion < NrMin2) then begin
					// actualizo segundo puesto
					NrMin2:= NrInscripcion;
					NrMinAlum2:= Apellido;
				end;
			// maximo
			if (NrInscripcion > NrMax1) then begin
				//actualizo segundo lugar
				NrMax2:= NrMax1;
				NrMaxAlum2:= NrMaxAlum1;
				//actualizo el primer puesto
				NrMax1:= NrInscripcion;
				NrMaxAlum1:= Nombre
			end
			else
				if (NrInscripcion > NrMax2) then begin
					NrMax2:= NrInscripcion;
					NrMaxAlum2:= Nombre;
				end;

			if ((NrInscripcion mod 2) = 0) then begin
				NrInscripcionPar:= NrInscripcionPar + 1;
			end;

	end;
var
	NrInscripcion, NrInscripcionPar, NrMax1, NrMax2, NrMin1, NrMin2: integer;
	NrMaxAlum1, NrMaxAlum2, NrMinAlum1, NrMinAlum2: string;
begin

	NrInscripcionPar:= 0;
	NrInscripcion:= -1;
	NrMax1:= -1;
	NrMax2:= -1;
	NrMin1:= 10000;
	NrMin2:= 10000;

	while (NrInscripcion <> 1200) do begin

		AlumnoF(NrInscripcion, NrInscripcionPar, NrMax1, NrMax2, NrMin1, NrMin2, NrMaxAlum1, NrMaxAlum2, NrMinAlum1, NrMinAlum2);

	end;

	writeln('El numero maximo de inscripcion son: ', NrMaxAlum1, '(', NrMax1, ') y ', NrMaxAlum2, '(', NrMax2, ')');
	writeln('El numero minimo de inscripcion son: ', NrMinAlum1, '(', NrMin1, ') y ', NrMinAlum2, '(', NrMin2, ')');
	writeln('La cantidad de numero de inscripción par son: ', NrInscripcionPar);


end.