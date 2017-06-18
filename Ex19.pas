Program Ex19 ;

Var
idade, maiorIdade, individuosFemininoEntre18e35Anos, individuosCabelosLourosOlhosVerdes : integer;
sexo, corOlhos, corCabelos: String;
Begin
  
  while idade <> -1 do
  begin
    
    writeln('Digite a idade: ');
    read(idade);
    
    // Verifica após leitura da idade se ela é diferente de 1 e roda comandos, se não for
    // termina leitura de dados e exibe resultado.
    if idade <> -1 then
    begin
      writeln('Digite a letra maiúscula correspondete ao sexo [Masculino,Feminino]: ');
      read(sexo);
      writeln('Digite a letra maiúscula correspondete a cor dos olhos [Azul,Castanho,Verde]: ');
      read(corOlhos);
      writeln('Digite a letra maiúscula correspondete a cor dos cabelos [Louros,Castanho,Preto]: ');
      read(corCabelos);
      
      
      if maiorIdade < idade then
      begin
        maiorIdade:=idade;
      end;
      
      if (sexo = 'F') and ((idade >= 18) and (idade <= 35)) then
      begin
        individuosFemininoEntre18e35Anos:= individuosFemininoEntre18e35Anos +1;
      end;
      
      if (corOlhos = 'V') and (corCabelos = 'L') then
      begin
        individuosCabelosLourosOlhosVerdes:= individuosCabelosLourosOlhosVerdes +1;
      end ;
    end;
    
  end ;
  
  writeln('A maior idade é: ', maiorIdade);
  writeln('O número de indivíduos do sexo femino cuja idade está entre 18 e 35 é: ', individuosFemininoEntre18e35Anos);
  writeln('O número de indivíduos que têm olhos verdes e cabelo louro é: ', individuosCabelosLourosOlhosVerdes);
  writeln('FIM.');
  
End.