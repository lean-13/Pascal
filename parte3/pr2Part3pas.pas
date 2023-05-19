(*
2. El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el año
2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese año.
a) Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada casamiento.
b) Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el definido
en el inciso a).
c) Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura finaliza al
ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos realizados durante los meses de verano (enero, febrero y marzo) y la cantidad de casamientos realizados en los primeros 10 días de
cada mes. Nota: utilizar el módulo realizado en b) para la lectura de fechas.
*)
program Bodas;
	type
		Casamiento = record
		Mes : string;
		Año : integer;
		Dia : integer;
	end;
	procedure Fechas(var Cas : Casamiento, var Enero : integer, var Febrero : integer, var Marzo : integer, var Dia10 : integer);
	begin
		writeln('Ingrese el año: ');
		readln(Cas.Año);
		if (Cas.Año = 2020) then begin
			writeln('Ingrese el mes: ');
			readln(Cas.Mes);
			writeln('Ingrese el dia: ');
			readln(Cas.Dia);

			if (Cas.Año = 2019) then
				writeln('Casamiento: ', Cas.Dia, '/', Cas.Mes, '/', Cas.Año);

			if ((Cas.Mes = "Enero") or (Cas.Mes = "enero")) then 
				Enero:= Enero + 1;
			else
				if ((Cas.Mes = "Febrero") or (Cas.Mes = "febrero")) then 
					Febrero:= Febrero + 1
				else
					if ((Cas.Mes = "Marzo") or (Cas.Mes = "marzo")) then 
						Marzo:= Marzo + 1;

			if (Cas.Dia <= 10) then
				Dia10 := Dia10 + 1;
		end;
	end;
	{ declaración de variables del programa principal }
	var
		R : Casamiento;
		Enero, Febrero, Marzo, Dia10 : integer;
		{ cuerpo del programa principal }
	begin
		R.Año:= 10;
		Enero, Febrero, Marzo, Dia10 := 0;

		while (R.Año <> 2020) do begin
			Fechas(R, Enero, Febrero, Marzo, Casamiento2019);
		end;

		writeln('En los primero 10 dias: ', Dia10);
		writeln('En Enero:', Enero, 'En marzo: ', Marzo, 'En febrero: ', Febrero);
	end.
