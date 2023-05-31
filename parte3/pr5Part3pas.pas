(*
5. Realizar un programa que lea información de autos que están a la venta en una concesionaria. De cada auto se lee:
marca, modelo y precio. La lectura finaliza cuando se ingresa la marca “ZZZ” que no debe procesarse. La
información se ingresa ordenada por marca. Se pide calcular e informar:
a. El precio promedio por marca.
b. Marca y modelo del auto más caro.
*)

program Concesionariapr5;
	type
		Concesionaria = record
		Marca : string;
		Modelo : String;
		Precio : real;
	end;

	procedure Promedio(var Conc : Concesionaria, var Promedio : real );
	var
		Actual: string;
		Cont: integer;
	begin
		Cont:= 0;
		Actual:= Conc.Marca;

		while (( Conc.Marca = Actual ) and ( Conc.Marca <> 'zzz')) do begin
			Promedio:= Promedio + Conc.Precio;
			Cont:= Cont + 1;
		end;

		if ( Cont >= 1 ) then begin
			Promedio:= Promedio / Cont;
		end;

	end;
	procedure MayorValor(var Conc : Concesionaria, var Max : real, var MarcaMax : string, var ModeloMax : string);
	begin

		if (( Conc.Precio > Max ) and ( Conc.Marca <> 'zzz')) then begin
			Max:= Conc.Precio;
			MarcaMax:= Conc.Marca;
			ModeloMax:= Conc.Modelo;
		end;

	end;
	procedure Leer( var Conc : Concesionaria );
	begin
		writeln('Ingrese Marca: ');
		readln(Conc.Marca);

		if (Conc.Marca <> 'zzz') then begin 
			writeln('Ingrese Modelo: ');
			readln(Conc.Modelo);
			writeln('Ingrese Precio: ');
			readln(Conc.Precio);
		end;

	end;

	var 
		Conc : Concesionaria;
		Promedio: real;
		Max: real;
		MarcaMax: string;
		ModeloMax: string;
	begin
		Max:= -1;
		Promedio:= 0;
		Conc.Marca:= 't';

		while ( Conc.Marca <> 'zzz' ) do begin
			Leer( Conc );
			Promedio( Conc, Promedio );
			MayorValor(Conc, Max, MarcaMax, ModeloMax);
		end;	

		writeln('La marca con el auto de mayor valor es: Marca: ', MarcaMax, 'Modelo: ', ModeloMax);

	end;



end.