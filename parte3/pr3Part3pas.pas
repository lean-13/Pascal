(*
3. El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la provincia de Bs. As,
con el objetivo de evaluar si se cumple la proporción de alumnos por docente calculada por la UNESCO para el año
2015 (1 docente cada 23,435 alumnos). Para ello, se cuenta con información de: CUE (código único de
establecimiento), nombre del establecimiento, cantidad de docentes, cantidad de alumnos, localidad. Se pide
implementar un programa que procese la información y determine:
● Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO.
● CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos.
El programa debe utilizar:
a) Un módulo para la lectura de la información de la escuela.
b) Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente entre la cantidad
de alumnos y la cantidad de docentes).
*)

program MinisterioEducacion;
	type	
		Educacion = record
		Cue : integer;
		Establecimiento : string;
		CantDocentes : integer;
		CantAlumnos : integer;
		Localidad : string;
	end;
	procedure Lectura(var Edu : Educacion, var LaPlataProporcionDocenteAlumno: integer, var Cue1 : integer, var Cue2 : integer, var EscuelaPro1 : string, var EscuelaPro2 : string);
	var 
		BProposicion: boolean;
	begin
		DocenteAlumno(R, PropocionAlumnoDocente);

		if ((Edu.Localidad = 'La Plata') and (BProposicion)) then begin
			LaPlataProporcionDocenteAlumno:= LaPlataProporcionDocenteAlumno + 1;
		end;
	end;
	procedure DocenteAlumno(var Edu : Educacion, var PropocionAlumnoDocente : integer, var BProposicion : boolean);
	var
		CalculoProporcion : integer;
	begin

		writeln('Ingrese Cue: ');
		readln(Edu.Cue);
		writeln('Ingrese Localidad: ');
		readln(Edu.Localidad);
		writeln('Ingrese Establecimiento: ');
		readln(Edu.Establecimiento);
		writeln('Ingrese cantidad de docentes: ');
		readln(Edu.CantDocentes);
		writeln('Ingrese cantidad de alumnos: ');
		readln(Edu.CantAlumnos);

		CalculoProporcion:= Edu.CantAlumnos div Edu.CantDocentes;

		if (CalculoProporcion <= 23435) then begin
			PropocionAlumnoDocente:= PropocionAlumnoDocente + 1;
			BProposicion := true
		end
		else
			BProposicion:= false;

		if (BProposicion and Edu.Cue > Cue1) then begin
			Cue2 := Cue1;
			EscuelaPro2:= EscuelaPro1;
			Cue1:= Edu.Cue;
			EscuelaPro1:= Edu.Establecimiento
		end
		else
			if (BProposicion and Edu.Cue > Cue2) then begin
				Cue2:= Edu.Cue;
				EscuelaPro2:= Edu.Establecimiento;
			end;
		
	end;
	var
		R : Educacion;
		i, PropocionAlumnoDocente, LaPlataProporcionDocenteAlumno: integer;
		Cue1, Cue2 : integer;
		EscuelaPro1, EscuelaPro2 : string;
	begin
		PropocionAlumnoDocente:= 0;
		Cue1:= -1;
		Cue2:= -1;

		for i:= 1 to 4 do begin
			Lectura(R, LaPlataProporcionDocenteAlumno, Cue1, Cue2, EscuelaPro1, EscuelaPro2);
		end;
		
		writeln('Las dos mejores escuelas por relacion alumno - docente son: #1 ', Cue1, EscuelaPro1, ' #2 ', Cue2, EscuelaPro2);

	end;
end.