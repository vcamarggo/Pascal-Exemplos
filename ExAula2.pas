Program Vet ;
VAR
matriz1, matriz2 : Array[1..10] of Integer;
matriz3 : Array[1..20] of Integer;
i, j : integer;


Begin
  for i:=1 to 10 do
  begin
    write('Entre com número [',i, ']: ');
    read(matriz1[i]);
  end;
  for i:=1 to 10 do
  begin
    write('Entre com número [',i, ']: ');
  read(matriz2[i]); end;
  
  
  j:=1;
  for i:= 1 to 10 do
  begin
    matriz3[j] := matriz1[i];
    j:= j+1;
    matriz3[j] := matriz2[i];
    j:= j+1;
  end;
  
  for i:= 1 to 20 do
  write(' ', matriz3[i]);
End.