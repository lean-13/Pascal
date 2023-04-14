(*
3. Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera
Analista en TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un
número entre 1 y 10). La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe
procesarse. Al finalizar la lectura informar:
- La cantidad de alumnos aprobados (nota 8 o mayor) y
- la cantidad de alumnos que obtuvieron un 7 como nota.
*)

program pr3;
var
	AlumAprob, Alum7, Nota: integer;
	Nombre: string;
begin
	AlumAprob:= 0;
	Alum7:= 0;
	Nombre:= 'Desconocido';

	while (Nombre <> 'Zidane Zinedine') do 
	begin 
		Nota:= -1;

		writeln('Ingrese nombre: ');
		readln(Nombre);
		
       if (Nombre <> 'Zidane') then
        begin
        
    		while ((Nota < 1) or (Nota > 10)) do
    		begin
    		    writeln('Ingrese nota: ');
    			readln(Nota);
    		end;
    
    		if (Nota >= 8) then
    			AlumAprob:= AlumAprob + 1
    		else
    			if (Nota = 7) then
    				Alum7:= Alum7 + 1;
    
    		writeln('Nombre: ',Nombre,' Nota: ', Nota);
    	
    	end;
	end;

	writeln('Cantidad de alumnos aprobados (nota 8 o mayor): ', AlumAprob);
	writeln('Cantidad de alumnos que obtuvieron nota 7: ', Alum7);

end.