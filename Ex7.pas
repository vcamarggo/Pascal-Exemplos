Program Ex7 ;
Var
a, b, c: REAL;
i : Integer;
Begin
  writeln( 'Digite o código I: ' );
  read(i);
  writeln( 'Digite o valor a: ' );
  read(a);
  writeln( 'Digite o valor b: ' );
  read(b);
  writeln( 'Digite o valor c: ' );
  read(c);
  Case i Of
    1: Begin
      
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
    End;
    2 : Begin
      
      If (a<b) And (a<c )Then
      Begin
        writeln( 'O valor menor é a: ', a );
        If (b>c) Then
        Begin
          writeln( 'O valor médio é c: ', c);
          writeln( 'O valor maior é b: ', b);
        End
        Else
        begin
          writeln( 'O valor médio é b: ', b );
          writeln( 'O valor maior é c: ', c);
        end
      End
      Else   If (b<a) And (b<c )Then
      Begin
        writeln( 'O valor menor é b: ', b );
        if (a<c) Then
        Begin
          writeln( 'O valor médio é a: ', a);
          writeln( 'O valor maior é c: ', c );
        End
        Else
        begin
          writeln( 'O valor médio é c: ', c );
          writeln( 'O valor maior é a: ', a);
        end
      End
      Else   If (c<a) And (c<b )Then
      Begin
        writeln( 'O valor menor é c: ', c );
        if (a<b) Then
        Begin
          writeln( 'O valor médio é a: ', a );
          writeln( 'O valor maior é b: ', b );
        End
        Else
        begin
          writeln( 'O valor médio é b: ', b ) ;
          writeln( 'O valor maior é a: ', a);
        end
      End
    End;
    3: Begin
      
      If (a>b) And (a>c )Then
      Begin
        writeln( 'O valor médio é b: ', b );
        writeln( 'O valor maior é a: ', a );
        writeln( 'O valor menor é c: ', c);
      End
      Else   If (b>a) And (b>c )Then
      Begin
        writeln( 'O valor médio é a: ', a );
        writeln( 'O valor maior é b: ', b );
        writeln( 'O valor menor é c: ', c);
        if (a>c) Then
      End
      Else   If (c>a) And (c>b )Then
      Begin
        writeln( 'O valor médio é a: ', a );
        writeln( 'O valor maior é c: ', c );
        writeln( 'O valor menor é b: ', b );
        
      End
    End
    Else
    writeln( 'Código não válido.' ) ;
  End;
End.