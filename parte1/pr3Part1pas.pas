program pr3;
var
   num1, num2, num3 : integer;
begin
   writeln('Ingrese el primer número:');
   readln(num1);
   writeln('Ingrese el segundo número:');
   readln(num2);
   writeln('Ingrese el tercer número:');
   readln(num3);

   if (num1 > num2) then
      if (num1 > num3) then
         if (num2 > num3) then
            writeln(num1,' ',num2,' ',num3)
         else
            writeln(num1,' ',num3,' ',num2)
      else
         writeln(num3,' ',num1,' ',num2)
   else
      if (num2 > num3) then
         if (num1 > num3) then
            writeln(num2,' ',num1,' ',num3)
         else
            writeln(num2,' ',num3,' ',num1)
      else
         writeln(num3,' ',num2,' ',num1);
end.