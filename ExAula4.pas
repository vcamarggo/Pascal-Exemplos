Program Pzim ;
var
numero : Array[1..5] of Integer;
codigo,i : integer;

Begin
  
  for i:=1 to 5 do
  begin
    writeln('Digite o número [', i ,']:');
    read(numero[i]);
  end;
  
  writeln('Digite o código: ');
  read(codigo);
  
  if (codigo = 0)then
  exit;
  
  if codigo = 1 then
  begin
    for i:=1 to 5 do
    begin
      writeln('Número [', i ,']:',  numero[i]);
    end;
  end ;
  
  
  if codigo = 2 then
  begin
    for i:=5 downto 1 do
    begin
      writeln('Número [', i ,']:',  numero[i]);
    end;
  end ;
end.