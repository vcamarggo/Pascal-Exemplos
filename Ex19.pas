Program Ex19 ;

Var
idade, maiorIdade, individuosFemininoEntre18e35Anos, individuosCabelosLourosOlhosVerdes : integer;
sexo, corOlhos, corCabelos: String;
Begin
  
  while idade <> -1 do
  begin
    
    writeln('Digite a idade: ');
    read(idade);
    
    // Verifica ap�s leitura da idade se ela � diferente de 1 e roda comandos, se n�o for
    // termina leitura de dados e exibe resultado.
    if idade <> -1 then
    begin
      writeln('Digite a letra mai�scula correspondete ao sexo [Masculino,Feminino]: ');
      read(sexo);
      writeln('Digite a letra mai�scula correspondete a cor dos olhos [Azul,Castanho,Verde]: ');
      read(corOlhos);
      writeln('Digite a letra mai�scula correspondete a cor dos cabelos [Louros,Castanho,Preto]: ');
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
  
  writeln('A maior idade �: ', maiorIdade);
  writeln('O n�mero de indiv�duos do sexo femino cuja idade est� entre 18 e 35 �: ', individuosFemininoEntre18e35Anos);
  writeln('O n�mero de indiv�duos que t�m olhos verdes e cabelo louro �: ', individuosCabelosLourosOlhosVerdes);
  writeln('FIM.');
  
End.