Program Ex7 ;
Var
a, b, c: REAL;
i : Integer;
Begin
  writeln( 'Digite o c�digo I: ' );
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
    End;
    2 : Begin
      
      If (a<b) And (a<c )Then
      Begin
        writeln( 'O valor menor � a: ', a );
        If (b>c) Then
        Begin
          writeln( 'O valor m�dio � c: ', c);
          writeln( 'O valor maior � b: ', b);
        End
        Else
        begin
          writeln( 'O valor m�dio � b: ', b );
          writeln( 'O valor maior � c: ', c);
        end
      End
      Else   If (b<a) And (b<c )Then
      Begin
        writeln( 'O valor menor � b: ', b );
        if (a<c) Then
        Begin
          writeln( 'O valor m�dio � a: ', a);
          writeln( 'O valor maior � c: ', c );
        End
        Else
        begin
          writeln( 'O valor m�dio � c: ', c );
          writeln( 'O valor maior � a: ', a);
        end
      End
      Else   If (c<a) And (c<b )Then
      Begin
        writeln( 'O valor menor � c: ', c );
        if (a<b) Then
        Begin
          writeln( 'O valor m�dio � a: ', a );
          writeln( 'O valor maior � b: ', b );
        End
        Else
        begin
          writeln( 'O valor m�dio � b: ', b ) ;
          writeln( 'O valor maior � a: ', a);
        end
      End
    End;
    3: Begin
      
      If (a>b) And (a>c )Then
      Begin
        writeln( 'O valor m�dio � b: ', b );
        writeln( 'O valor maior � a: ', a );
        writeln( 'O valor menor � c: ', c);
      End
      Else   If (b>a) And (b>c )Then
      Begin
        writeln( 'O valor m�dio � a: ', a );
        writeln( 'O valor maior � b: ', b );
        writeln( 'O valor menor � c: ', c);
        if (a>c) Then
      End
      Else   If (c>a) And (c>b )Then
      Begin
        writeln( 'O valor m�dio � a: ', a );
        writeln( 'O valor maior � c: ', c );
        writeln( 'O valor menor � b: ', b );
        
      End
    End
    Else
    writeln( 'C�digo n�o v�lido.' ) ;
  End;
End.