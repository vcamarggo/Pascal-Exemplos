// Havia feito com array, mas como o Sr. disse que tinha meio mais f�cil, 
//eu mudei para este, que produz mesmo efeito mas tem c�digo mais simples e limpo
Program Ex12 ;
Var
contador : Integer;
nome :String;
media, acumuladorSalario, salario, maiorSalario, menorSalario : Real;

Begin
  while nome <> 'fim' do
  begin
    Begin
      
      write('Entre com o nome do funcion�rio: ');
      read(nome);
      
      if nome <> 'fim' then
      begin
      write('Entre com o Sal�rio: ');
      read(salario);
      
      if contador = 0 then
      begin
        maiorSalario:= salario;
        menorSalario := salario;
      end;
      
      if (salario>maiorSalario) Then
      begin
        maiorSalario := salario;
      end;
      
      if (salario<menorSalario) Then
      begin
        menorSalario:= salario;
      end;
      
      
      contador:=contador + 1;
      acumuladorSalario := acumuladorSalario + salario;
    end;
  End;
End;

if contador <> 0 tHEN
BEGIN
  media:=   acumuladorSalario/(contador);
END;

writeln( 'O maior sal�rio �: ', maiorSalario );
writeln( 'O menor sal�rio �: ', menorSalario );
writeln( 'A m�dia �: ', media );

End.