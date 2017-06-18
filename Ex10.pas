Program Ex10 ;
var peso,altura,imc: Real;

Begin
  write ('Informe a sua altura em cm ou m: ');
  read(altura);
  write('Informe o seu peso: ');
  read(peso);
  
  write('') ;
  if altura<2.50 Then
  Begin
  imc:=peso/(altura*altura);
  End
  else
  Begin
  altura := altura/100;
  imc:=peso/(altura*altura);
  End;
  
  if (imc<17)then
  Begin
    writeln('Seu IMC é: ', imc, '. Muito abaixo do Peso! ');
  End
  
  Else if (imc>=17) and (imc<=18.49) then
  Begin
    writeln('Seu IMC é: ', imc, '. Abaixo do Peso! ');
  End
  
  Else if (imc>=18.5) and (imc<=24.99) then
  Begin
    writeln('Seu IMC é: ', imc, '. Peso Normal!');
  End
  
  Else if (imc>=25) and (imc<=29.99) then
  Begin
    writeln('Seu IMC é: ', imc, '. Acima do Peso!');
  End
  
  Else if (imc>=30) and (imc<=34.99) then
  Begin
    writeln('Seu IMC é: ', imc, '. Obesidade I!');
  End
  
  Else if (imc>=35) and (imc<=39.99) then
  Begin
    writeln('Seu IMC é: ', imc, '. Obesidade II!');
  End
  
  Else if (imc>=40) then
  Begin
    writeln('Seu IMC é: ', imc, '. Obesidade III!');
  End;
  
End.