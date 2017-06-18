Program Ex4 ;
VAR
a, b, c: INTEGER;
Begin
  writeln( 'Digite o valor a: ' );
  read(a);
  
  writeln( 'Digite o valor b: ' );
  read(b);
  
  c:= a;
  a:=b;
  b:=c;
  
  writeln( 'O valor novo de A é: ', a );
  
  writeln( 'O valor novo de B é: ', b);
End.