Program Ex16;
var
n, contador : integer;
primo : boolean;
Begin
  write('Entre com o n�mero: ');
  read(n);
  
  contador:=2;
  primo:= true ;
  if n > 1 Then
  begin
    // testa todos os numeros at� chegar no N
    while (contador<n) and (primo) do
    begin
      // quando um n�mero n�o � primo ele � divis�vel por outros (que n�o +-1 ou +- ele mesmo) ent�o retorna  mod = 0 = (resto da divis�o)
      if (n mod contador = 0) then
      begin
        primo:= false ;
      end ;
      contador:= contador+1 ;
    end;
    
    if (primo) then
    Begin
      writeln(n, ' � um n�mero primo!');
    End
    else
    Begin
      writeln(n, ' n�o � um n�mero primo!');
    End;
  end
  else
  writeln('N�mero deve ser maior ou igual a 2!');
  
End.