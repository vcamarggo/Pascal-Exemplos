Program Ex11 ;

VAR
a, b, c, delta, x1, x2: REAL;

Begin
  writeln( 'Digite o valor a: ' );
  read(a);
  writeln( 'Digite o valor b: ' );
  read(b);
  writeln( 'Digite o valor c: ' );
  read(c);
  
  If a<>0 Then
  Begin
    delta:= (b*b) - 4 * a * c;
    If delta > 0 Then
    Begin
      x1:= (-b+sqrt( delta ))/(2*a) ;
      x2:= (-b-sqrt( delta ))/(2*a) ;
      writeln( 'O valor x1 é: ', x1);
      writeln( 'O valor x2 é: ', x2);
    End
    else
    Begin
      writeln( 'Não existem raízes reais!');
    End
  End
  else
  Begin
    writeln( 'O valor a deve ser diferente de 0!');
  End
  
  
End.