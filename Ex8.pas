// Fique com d�vidas se seriam cinco valores ou um valor de cinco d�gitos, 
//ent�o preferi fazer com que o usu�rio digitasse cinco valores de 1 d�gito
// O Programa n�o oferece tratamento quanto aos valores maiores que 1  d�gito
Program Ex8 ;
Var
codigo : Array[1..5] of Integer;
digitoV, i,s : Integer;
Begin
  
  for i:=1 to 5 do
  Begin
    write('Entre com 1 n�mero para o c�digo[',i, '] : ');
    read(codigo[i]);
    
    s:= s + ((7 -i)*codigo[i]);
  End;
  
  digitoV := (s)mod (7);
  writeln( 'Digito Verificador: ', digitoV);
  
End.