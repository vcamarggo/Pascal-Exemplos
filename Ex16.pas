Program Ex16;
var
n, contador : integer;
primo : boolean;
Begin
  write('Entre com o número: ');
  read(n);
  
  contador:=2;
  primo:= true ;
  if n > 1 Then
  begin
    // testa todos os numeros até chegar no N
    while (contador<n) and (primo) do
    begin
      // quando um número não é primo ele é divisível por outros (que não +-1 ou +- ele mesmo) então retorna  mod = 0 = (resto da divisão)
      if (n mod contador = 0) then
      begin
        primo:= false ;
      end ;
      contador:= contador+1 ;
    end;
    
    if (primo) then
    Begin
      writeln(n, ' é um número primo!');
    End
    else
    Begin
      writeln(n, ' não é um número primo!');
    End;
  end
  else
  writeln('Número deve ser maior ou igual a 2!');
  
End.