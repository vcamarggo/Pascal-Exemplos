Program Pzim ;
var
primos : Array[1..10] of Integer;
numero, i, dive, qtd : integer;

Begin
  numero:= 101;
  qtd :=1;
  repeat
    dive:=0;
    for i:=1 to numero do
    begin
      
      if  (numero mod i = 0) then
      begin
        dive:= 1 + dive;
      end;
    end;
    
    if dive = 2 then
    begin
      primos[qtd] := numero;
      qtd := qtd +1;
    end;
    
    numero:= numero +1;
  until qtd = 11;
  for i:=1 to 10 do
  begin
    writeln('Número é [', i ,']:',  primos[i]);
  end;
end.