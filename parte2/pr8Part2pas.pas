(*
8. Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día
del mes, los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se
lee el monto 0. Se asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto
total acumulado en ventas de todo el mes.
a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor
cantidad de ventas
*)

program pr8;
var
	Max, Precio, TotalDia, TotalMes:real;
	i, MaxDia, Ventas, VentasDia: integer;
begin
	Ventas:= 0;
	TotalMes:= 0;
	Max:= -1;
	MaxDia:= 0;

	for i:= 1 to 31 do
	begin
		TotalDia:= 0;

		writeln('Ingrese ventas de hoy: ');
		readln(VentasDia);
		writeln('Ingrese valor de las ventas de hoy: ');
		readln(TotalDia);

		// dia de mayor ventas
		if (VentasDia >= Max) then
		begin
			Max:= VentasDia;
			MaxDia:= i;
		end;

		Ventas:= Ventas + VentasDia;
		TotalMes:= TotalMes + TotalDia;
		writeln('Ventas diaria: ', VentasDia, ' Valor: ', TotalDia:6:2);

	end;

	writeln('Las ventas del mes fueron: ', Ventas, ' Valor: ', TotalMes:8:2);
	writeln('El dia de mayor ventas fue el dia: ', MaxDia);

end.