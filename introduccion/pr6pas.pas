program pr6;
const
	ValorDolar = 206.92;
	ComisionBanco = 0.04;
var
	ValorTransaccion, TransaccionPeso,Comision , Total:real;
begin
	write('Ingrese el valor de la transaccion que quiere realizar: ');
	read(ValorTransaccion);
	if (ValorTransaccion > 0) then
		begin
			TransaccionPeso:= ValorTransaccion * ValorDolar;
			Comision:= TransaccionPeso * ComisionBanco;
			Total:= TransaccionPeso - Comision;
			writeln('Valor en pesos: $',TransaccionPeso:6:2 ,' Su transaccion sera de: $', Total:6:2);
		end
end.