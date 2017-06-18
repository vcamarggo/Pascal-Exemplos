// Fiz com tratamento para caso de 1, 2 ou 3 números, 
// nos casos restantes continua reproduzindo os numeros pelas N vezes digitadas pelo usuário.
Program Ex15 ;
VAR
a,b,c, n: integer;
Begin
  
  write('Entre com o número: ');
  read(n);
  
  
  a:=2;
  b:=7;
  c:=3;
  
  if ( frac(n) = 0) and (n > 0) then
  begin
    if n = 1 then
    begin
      write('E = ');
      write('', a);
    end
    else if n = 2 then
    begin
      write('E = ');
      write('', a);
      write(', ', b);
    end
    else if n = 3 then
    begin
      write('E = ');
      write('', a);
      write(', ', b);
      write(', ', c);
    end
    else
    begin
      write('E = ');
      write('', a);
      write(', ', b);
      write(', ', c);
      while n <> 3 do
      begin
        if n <> 3 then
        begin
          a:= a * 2;
          n:= n - 1;
          write(', ', a);
        end;
        if n <> 3 then
        begin
          b:= b * 3;
          n:= n - 1;
          write(', ', b);
        end;
        if n <> 3 then
        begin
          c:= c * 4;
          n:= n - 1;
          write(', ', c);
        end;
      end;
    end;
  end
  else
  begin
    write('O número deve ser positivo e inteiro maior que zero!');
  end
  
  
  
End.