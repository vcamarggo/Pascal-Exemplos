Program Pzim ;
var
matriz : array[1..2,1..2] of integer;
i, j, elemento, maior : integer;
Begin
  maior:=0;
  for i:=1 to 2 do
  begin
    for j:=1 to 2 do
    begin
      writeln('Digite o elemento [', i,'.', j, ']: ');
      read(matriz[i,j]);
    end;
  end;
  
  
  for i:=1 to 2 do
  begin
    for j:=1 to 2 do
    begin
      elemento := matriz[i,j];
      if elemento > maior then
      begin
        maior:= elemento;
      end;
    end;
  end;
  
  for i:=1 to 2 do
  begin
    for j:=1 to 2 do
    begin
      matriz[i,j] :=  matriz[i,j] * elemento;
    end;
  end;
  
  
  for i:=1 to 2 do
  begin
    for j:=1 to 2 do
    begin
      writeln('Elemento [',i,'.', j,']: ',matriz[i,j]);
    end;
  end;
End.