(*
6. Una empresa importadora de microprocesadores desea implementar un sistema de software para analizar la
información de los productos que mantiene actualmente en stock. Para ello, se conoce la siguiente información de
los microprocesadores: marca (Intel, AMD, NVidia, etc), línea (Xeon, Core i7, Opteron, Atom, Centrino, etc.),
cantidad de cores o núcleos de procesamiento (1, 2, 4, 8), velocidad del reloj (medida en Ghz) y tamaño en
nanómetros (nm) de los transistores (14, 22, 32, 45, etc.). La información de los microprocesadores se lee de
forma consecutiva por marca de procesador y la lectura finaliza al ingresar un procesador con 0 cores (que no
debe procesarse). Se pide implementar un programa que lea información de los microprocesadores de la empresa
importadora e informe:
● Marca y línea de todos los procesadores de más de 2 cores con transistores de a lo sumo 22 nm.
● Las dos marcas con mayor cantidad de procesadores con transistores de 14 nm.
● Cantidad de procesadores multicore (de más de un core) de Intel o AMD, cuyos relojes alcancen velocidades de
al menos 2 Ghz.
*)
program procesadorespr6;
	type
		Procesadores = record
		Marca : string;
		Linea : string;
		CantidadNucleoscores : integer;
		VelocidadGh : real;
		Nanometros : integer;
	end;

	procedure Leer( var Proces : Procesadores );
	begin
		writeln('Ingrese Marca: ');
		readln(Proces.Marca);
		writeln('Ingrese Linea: ');
		readln(Proces.Linea);
		writeln('Ingrese cantidad de nucleos: ');
		readln(Proces.CantidadNucleoscores);

		if ( Proces.CantidadNucleoscores >= 1 ) then begin
			writeln('Ingrese Velocidad de procesador: ');
			readln(Proces.VelocidadGh);
			writeln('Ingrese Nanometros: ');
			readln(Proces.Nanometros);
		end;


	end;

	procedure Marcas14Nm( var Proces : Procesadores, var Marca14Nm1 : string, var Marca14Nm1 : string, var 14Nm1 : integer, var 14Nm2 : integer );
	var
		Actual: string;
	begin
		Actual:= Proces.Marca;

		if (( Proces.Nanometros = 14 ) and ( 14Nm1 >= 14Nm2  )) then begin

			if ( Marca14Nm1 <> Actual ) then begin
				Marca14Nm2:= Marca14Nm1;
				14Nm2:= 14Nm1;
			end;

			Marca14Nm1:= Proces.Marca;
			14Nm1:= 14Nm1 + 1

		end
		else 
			if ((Proces.Nanometros = 14 ) and ( 14Nm1 < 14Nm2 )) then begin
				Marca14Nm2:= Proces.Marca;
				14Nm2:= 14Nm2 + 1;
		end;

	end;

	var
		Marca14Nm1: string;
		Marca14Nm2: string;
		14Nm1: integer;
		14Nm2: integer;
		Multicore: integer;
		2Cores22nm: integer;
		MultiCore2Ghz: integer;
		Proces : Procesadores;

	begin
		Multicore:= 0;
		14Nm1:= 0;
		14Nm2:= 0;
		Proces.CantidadNucleoscores:= -1; 

		while ( Proces.CantidadNucleoscores <> 0 ) do begin
			Leer(Proces);
			Marcas14Nm(Proces, Marca14Nm1, Marca14Nm2, 14Nm1, 14Nm2);

		end;

		writeln('Las marcas con mas procesadores de 14 Nanometros son: ', Marca14Nm1, ' tiene ', 14Nm1, ' procesadores y ', Marca14Nm2, ' tiene ', 14Nm2, ' procesadores.')
	end;
end.



