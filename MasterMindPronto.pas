program masterMind;
var
status : String[9];
senha : String[4];
aux, palpite : string;
tecla: char;
i,j, l, tentativa, bBranca, bPreta : integer;

procedure limpaStatus;
begin
  for i:=1 to 9 do
  status[i] :='0';
end;

function isPalpiteValido(palpite : String) : boolean;
var
i:integer;
begin
  isPalpiteValido := true;
  if length( palpite ) > 4 then
  begin
    isPalpiteValido := false;
  end;
  for i:=1 to 4 do
  begin
    if (ord(palpite[i]) < 49) or (ord(palpite[i]) > 57) then
    begin
      isPalpiteValido := false;
    end;
  end;
end;

procedure geraSenha(var senha : String);
begin
  senha := '';
  j:=0;
  while ( j < 4) do
  begin
    i := (random(9)+1);
    if status[i] = '0' then
    begin
      str(i, aux);
      senha[j+1] := aux[1];
      status[i] :='1';
      j:= j +1;
    end;
  end;
end;

begin
  repeat
    textcolor(lightgreen);
    writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ MasterMind ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    writeln('                 Adivinhe a sequência de 4 números em 10 tentativas.');
    writeln('');
    writeln('                 BOLAS PRETAS  = indicam o número certo no lugar certo.');
    writeln('                 BOLAS BRANCAS = indicam o número certo no lugar errado.');
    writeln('');
    writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ BOA SORTE! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
    limpaStatus;
    geraSenha(senha);
    
    tentativa:=1;
    while (tentativa <= 10) and (palpite <> senha) do
    begin
      writeln('Tentativa: ', tentativa);
      writeln('Digite seu palpite 4 números!');
      readln(palpite);
      if isPalpiteValido(palpite) then
      begin
        limpaStatus;
        for i:= 1 to 4 do
        begin
          aux:= palpite[i];
          val(aux , j, l) ;
          if (senha[i] = palpite[i]) and ((status[j] = '0') or (status[j] = 'B')) then
          begin
            status[j] :='P';
          end
          else
          begin
            for l:= 1 to 4 do
            begin
              if (senha[l] = palpite[i]) and (status[j] = '0') then
              begin
                status[j] :='B';
              end;
            end;
          end;
        end;
        
        bPreta:= 0;
        bBranca := 0;
        for i:= 1 to 8 do
        begin
          if  status[i] = 'P' then
          begin
            bPreta := bPreta + 1;
          end
          else if status[i] = 'B' then
          begin
            bBranca := bBranca + 1;
          end;
        end;
        
        writeln('');
        textcolor(lightgray);
        writeln('Bolas Pretas: ', bPreta);
        textcolor(white);
        writeln('Bolas Brancas: ', bBranca);
        textcolor(lightgreen);
        
        limpaStatus;
        writeln('');
        tentativa := tentativa +1;
      end;
    end;
    
    if senha = palpite then
    begin
      writeln('Você ganhou!');
      writeln('');
    end
    else
    begin
      writeln('Você perdeu! A senha era: ', senha);
      writeln('');
    end;
    
    writeln('Pressione ESPAÇO para jogar novamente ou outra tecla para encerrar.');
    tecla:=readkey;
    clrScr;
    
  until  ord(tecla) <> 32;
end.