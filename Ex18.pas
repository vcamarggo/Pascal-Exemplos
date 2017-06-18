// Oferece tratamento para caso a,b ou a e b sejam numeros negativos
Program Ex18 ;
VAR
a, i, b,c : integer;
Begin
  
  write('Digite o número a: ');
  read(a);
  
  write('Digite com o número b: ');
  read(b);
  
  c:= 0;
  if b> 0 then
  begin
    for i := 1 to b do
    begin
      c:= c + a;
    end
  end
  else if a> 0 then
  begin
    for i := 1 to a do
    begin
      c:= c + b;
    end
  end
  else
  begin
    a:= -a ;
    b:= -b;
    for i := 1 to a do
    begin
      c:= c + b;
    end
  end;
  
  writeln('Resultado é : ',c);
  
End.