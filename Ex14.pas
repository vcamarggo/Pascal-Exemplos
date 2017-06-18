Program Ex14 ;
CONST NUMERADOR = 1;
Var
fatorial, e, numero, nFat : real;
Begin
  
  write('Entre com o número: ');
  read(numero);
  
  if numero = 0 then
  begin
    fatorial:= 1;
  end;
  
  
  
  
  if ( frac(numero) = 0) and (numero >= 0) then
  begin
    if(numero = 0)  then
    begin
      e:= 1;
    end
    else if numero = 1 then
    begin
      e:= 2;
    end
    else
    begin
      while numero <> 1 do
      begin
        nFat:=numero;
        fatorial:=1;
        while nFat <>1 do
        begin
          fatorial:= fatorial * (nFat);
          nFat:= nFat-1;
        end;
        numero:= numero - 1;
        e:= e + (NUMERADOR/fatorial);
      end;
      e:= e + 2;
    end;
    
    write('E: ', e);
  end
  else
  begin
    write('O número deve ser positivo e inteiro!');
  end;
  
  
  
End.