Program Ex5 ;
Var
a, b, c: REAL;
Begin
  writeln( 'Digite o valor a: ' );
  read(a);
  writeln( 'Digite o valor b: ' );
  read(b);
  writeln( 'Digite o valor c: ' );
  read(c);
  
  If (a>b) And (a>c )Then
  Begin
    writeln( 'O valor maior � a: ', a );
    If (b>c) Then
    Begin
      writeln( 'O valor m�dio � b: ', b );
      writeln( 'O valor menor � c: ', c);
    End
    Else
    begin
    writeln( 'O valor m�dio � c: ', c);
    writeln( 'O valor menor � b: ', b);
    end
  End
  
  Else   If (b>a) And (b>c )Then
  Begin
    writeln( 'O valor maior � b: ', b );
    if (a>c) Then
    Begin
      writeln( 'O valor m�dio � a: ', a );
      writeln( 'O valor menor � c: ', c);
    End
    Else
    begin
    writeln( 'O valor m�dio � c: ', c );
    writeln( 'O valor menor � a: ', a);
    end
  End
  
  Else   If (c>a) And (c>b )Then
  Begin
    writeln( 'O valor maior � c: ', c );
    if (a>b) Then
    Begin
      writeln( 'O valor m�dio � a: ', a );
      writeln( 'O valor menor � b: ', b );
    End
    Else
    begin
    writeln( 'O valor m�dio � b: ', b ) ;
    writeln( 'O valor menor � a: ', a);
    end
  End
End.