Program Ex2 ;
CONST PI = 3.1415926;
VAR
area, raio: REAL;
Begin
  writeln( 'Digite o raio: ' );
  read(raio);
  
  area:= (raio*raio) * PI;
  
  writeln( 'A área é: ', area );
End.