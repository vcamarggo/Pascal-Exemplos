Program Ex13 ;
VAR
n, numero, fatorial: real;
Begin
  
  write('Entre com o n�mero: ');
  read(numero);
  
  
  if (numero = 0) or (numero = 1) then
  begin
    writeln('Fatorial �: 1')
  end
  else
  begin
    fatorial := numero * (numero -1);
    numero := numero -1;
    while numero <> 1 do
    begin
      numero:= numero - 1;
      fatorial:= numero * fatorial;
      
    end;
    writeln('Fatorial �: ', fatorial);
  end;
  
  
End.