Program Ex1 ;
Uses CRT;
Var
salarioBase, salarioNovo, aumento, imposto: REAL;
Begin
  writeln( 'Digite o sal�rio do funcion�rio: ' );
  read(salarioBase);
  
  aumento := 50.0;
  imposto := 0.9;
  salarioNovo := (salarioBase * imposto) + aumento;
  
  writeln( 'O novo sal�rio do funcion�rio �: ', salarioNovo ) ;
End.