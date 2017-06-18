// 0 não conta posição de n pois zero ficaria na "casa zero"
Program Ex17 ;
VAR
fn, i, n, ant, ant2 : integer;
Begin
  
  write('Entre com o número: ');
  read(n);
  ant:=1;
  ant2:=1;
  
  if n> 1 then
  begin
    write('FN: 0, 1, 1 ');
    if n >2 then
    begin
      for i := 3 to n do
      begin
        
        fn:= ant + ant2;
        ant2:= ant;
        ant:= fn;
        write(', ', fn);
      end
    end
  end
  else
  begin
    write('O número deve ser maior que 1. ');
  end;
  
End.