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
    writeln( 'O valor maior é a: ', a );
    If (b>c) Then
    Begin
      writeln( 'O valor médio é b: ', b );
      writeln( 'O valor menor é c: ', c);
    End
    Else
    begin
    writeln( 'O valor médio é c: ', c);
    writeln( 'O valor menor é b: ', b);
    end
  End
  
  Else   If (b>a) And (b>c )Then
  Begin
    writeln( 'O valor maior é b: ', b );
    if (a>c) Then
    Begin
      writeln( 'O valor médio é a: ', a );
      writeln( 'O valor menor é c: ', c);
    End
    Else
    begin
    writeln( 'O valor médio é c: ', c );
    writeln( 'O valor menor é a: ', a);
    end
  End
  
  Else   If (c>a) And (c>b )Then
  Begin
    writeln( 'O valor maior é c: ', c );
    if (a>b) Then
    Begin
      writeln( 'O valor médio é a: ', a );
      writeln( 'O valor menor é b: ', b );
    End
    Else
    begin
    writeln( 'O valor médio é b: ', b ) ;
    writeln( 'O valor menor é a: ', a);
    end
  End
End.