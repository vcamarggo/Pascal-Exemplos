Program SS ;
VAR
a, b, i, cont: integer ;
Begin
  
  for i:= 1 to 5 do
  begin
    write('Entre com o número (a,b): ');
    read(a,b);
    
    if (a >= 0) and (b >= 0)then
    begin
      for cont:=a to b do
      begin
        if cont mod 2 = 0 then
        writeln(cont);
      end
    end
    else
    begin
      write('O número deve ser positivo e inteiro!');
    end
  end;
End.