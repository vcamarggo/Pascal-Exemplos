// Fique com dúvidas se seriam cinco valores ou um valor de cinco dígitos, 
//então preferi fazer com que o usuário digitasse cinco valores de 1 dígito
// O Programa não oferece tratamento quanto aos valores maiores que 1  dígito
Program Ex8 ;
Var
codigo : Array[1..5] of Integer;
digitoV, i,s : Integer;
Begin
  
  for i:=1 to 5 do
  Begin
    write('Entre com 1 número para o código[',i, '] : ');
    read(codigo[i]);
    
    s:= s + ((7 -i)*codigo[i]);
  End;
  
  digitoV := (s)mod (7);
  writeln( 'Digito Verificador: ', digitoV);
  
End.