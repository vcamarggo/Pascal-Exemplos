Program EditorDeTexto ;
type tipo_matriz = array[1..24,1..80] of char;
var
sair, inserir, jaSalvo, selecionado, selecLine,selecAll, crtlEsquerda, crtlDireita, isTeclaNormal, isDeletar : boolean;
m: tipo_matriz;
i, j, contador, marcInicio, abrir, coluna, linha, n, o, aux : integer;
arq: text;
tecla : char;
nome, nomeArquivo : string[16];

  procedure mostraMatriz (isTeclaNormal : boolean);
  Var
  coluna, linha, n, o : integer;
  begin
    clrScr;
    textcolor(white);
    textbackground(black);
    coluna:= j;
    linha:= i;
    if not inserir then
    begin
      
      // não funciona sem insert, como o desenvolvimento desta função
      // dava bug em outras, optamos por não inserir nem mesmo rascunho
      // da mesma. (um for pra m[i,j+1] := m[i,j];
      // e um for para escrever tudo depois).
      
      // deixei o insert como padrão. (true no início do programa)
      
    end
    else
    begin
      for linha:=1 to 24 do
      begin
        for coluna:=1 to 80 do
        begin
          if m[linha,coluna] <> '@' then
          begin
            write(m[linha,coluna]);
          end;
        end;
      end;
    end;
    
    if isTeclaNormal then
    begin
      if j < 80 then
      begin
        j:= j+1;
      end
      else if i < 24 then
      begin
        j:= 1;
        i:= i +1;
      end;
    end;
    
  end;

  function menu:String;forward;
  
    procedure testaExiste;
    begin
      assign (arq, nomeArquivo);
      Reset (arq);
      Close (arq);
      jaSalvo:=(IoResult=0);
    end;
  
  
    procedure salvar ( var jasalvo : boolean);
    begin
      writeln('');
      write('Digite o nome do arquivo: ');
      read(nomeArquivo);
      nomeArquivo:= nomeArquivo + '.txt';
      assign (arq, nomeArquivo);
      if jaSalvo then
      begin
        reset(arq);
      end
      else
      begin
        rewrite(arq);
      end;
      for i:=1 to 24 do
      begin
        for j:=1 to 80 do
        begin
          if(m[i,j] = '@') then
          begin
            m[i,j] := ' ';
            m[i,j+1] := ' ';
            j:= 80;
            i:=24;
          end
          else
          write(arq,m[i,j]);
        end;
      end;
      close(arq);
      jasalvo:= true;
    end;
  
  
    procedure deletar( var i,j : integer);
    var
    coluna, linha:integer;
    begin
      isTeclaNormal := false;
      linha:= i;
      coluna:= j;
      isDeletar:=true;
      for i:=linha to 24 do
      begin
        for j:=coluna to 80 do
        begin
          if j<>80 then
          m[i,j]:= m[i,j+1];
          write(m[i,j]);
        end;
      end;
      i:=linha;
      j:=coluna;
      if selecLine then
      begin
        for j:=1 to 80 do
        begin
          m[i,j]:= ' ';
        end;
        j:= 1;
      end;
      if selecAll then
      begin
        for i:= 1 to 24 do
        begin
          for j:=1 to 80 do
          begin
            m[i,j]:= ' ';
          end;
        end;
        j:= 1;
        i:=1;
      end;
      
      
      // falta implementar direita
      if crtlEsquerda then
      begin
        n:= j;
        isDeletar:=false;
        for j:=j to coluna do
        begin
        end;
        j:= n;
      end;
      
      crtlEsquerda :=false;
      
      
      selecLine:=false;
      selecAll:=false;
      crtlEsquerda:= false;
    end;
  
    procedure crtl_Direita;
    begin
      coluna:= j;
      crtlDireita := true;
      crtlEsquerda:=false;
      
      for n:=coluna to 80 do
      begin
        if ((n+1) = 80) then
        begin
          
          gotoxy(coluna +1, i);
          j:=n + 1;
          for coluna:=coluna to n do
          begin
            textcolor(black);
            textbackground(white);
            write(m[i,coluna+1]);
          end;
          n:=80;
        end
        else if (m[i,n+1] = ' ') then
        begin
          
          gotoxy(coluna, i);
          j:=n;
          for coluna:=coluna to n do
          begin
            textcolor(black);
            textbackground(white);
            write(m[i,coluna]);
          end;
          n:=80;
        end;
      end;
    end;
  
    procedure crtl_esquerda;
    begin
      coluna:= j;
      crtlEsquerda := true;
      crtlDireita:=false;
      
      for n:=coluna downto 1 do
      begin
        if ((n-1) = 1) then
        begin
          
          gotoxy(n -1, i);
          j:=n - 1;
          for n:=n to coluna do
          begin
            textcolor(black);
            textbackground(white);
            write(m[i,n-1]);
          end;
          n:=1;
        end
        else if (m[i,n-1] = ' ') then
        begin
          
          gotoxy(n, i);
          j:=n;
          for n:=n to coluna do
          begin
            textcolor(black);
            textbackground(white);
            write(m[i,n]);
          end;
          n:=1;
        end;
      end;
    end;
  
  
    procedure teclaInsert;
    begin
      if inserir then
      begin
        inserir:=false;
      end
      else
      begin
        inserir := true;
      end;
      
      isTeclaNormal := false;
      
      if j > 1  then
      begin
        j:= j + 1;
        m[i,j]:= tecla;
      end
      else if (i < 24) and (i<> 1) then
      begin
        j:= 80;
        i:= i - 1;
        m[i,j] := ' ';
      end;
      selecLine:=false;
      selecAll:=false;
    end;
  
  
    procedure teclaHome;
    begin
      isTeclaNormal := false;
      selecLine:=false;
      selecAll:= false;
      crtlDireita:= false;
      crtlEsquerda:=false;
      j := 1;
    end;
  
  
  procedure teclaEnd;
  begin
    isTeclaNormal := false;
    selecLine:=false;
    selecAll:= false;
    crtlDireita:= false;
    crtlEsquerda:=false;
    j := 80;
  end;
  
  
    procedure teclaPageUp;
    begin
      isTeclaNormal := false;
      selecLine:=false;
      selecAll:= false;
      crtlDireita:= false;
      crtlEsquerda:=false;
      i:= 1;
    end;
    
    
      procedure teclaPageDown;
      begin
        isTeclaNormal := false;
        selecLine:=false;
        selecAll:= false;
        crtlDireita:= false;
        crtlEsquerda:=false;
        i:= 24;
      end;
      
      
        procedure teclaUp;
        begin
          isTeclaNormal := false;
          selecLine:=false;
          selecAll:= false;
          crtlDireita:= false;
          crtlEsquerda:=false;
          if i > 1  then
          begin
            i := i - 1;
          end;
      end;
      
      
        procedure teclaDown;
        begin
          isTeclaNormal := false;
          selecLine:=false;
          selecAll:= false;
          crtlDireita:= false;
          crtlEsquerda:=false;
          if i < 24  then
          begin
            i := i + 1;
          end;
      end;
      
      
        procedure teclaLeft (var i,j: integer);
        begin
          isTeclaNormal := false;
          crtlDireita:= false;
          crtlEsquerda:=false;
          inserir:=true;
          
          if selecLine then
          begin
            j:=1;
            selecLine:=false;
          end;
        
        if selecAll then
        begin
          j:=1;
          i:=1;
          selecAll:=false;
        end;
      
      if j > 1  then
      begin
        j:= j - 1;
      end
    else if (i < 24) and (i<> 1) then
    begin
      j:= 79;
      i:= i - 1;
    end;
end;


  procedure teclaRight(var i,j: integer);
  begin
    isTeclaNormal := false;
    crtlDireita:= false;
    crtlEsquerda:=false;
    
    if selecLine then
    begin
      j:=80;
      selecLine:=false;
    end;
  
  if selecAll then
  begin
    j:=1;
    i:=1;
    selecAll:=false;
  end;

if j < 80 then
begin
  j:= j+1;
end
else if i < 23 then
begin
  j:= 1;
  i:= i +1;
end;

end;


procedure teclasNormais(var tecla: char; var i,j: integer);
begin
  m[i,j]:= tecla;
  isTeclaNormal := true;
  if selecLine then
  begin
    for j:=1 to 80 do
    begin
      m[i,j]:= ' ';
    end;
    m[i,1]:= tecla;
    j:= 1;
  end;

if selecAll then
begin
  for i:= 1 to 24 do
  begin
    for j:=1 to 80 do
    begin
      m[i,j]:= ' ';
    end;
  end;
  m[1,1]:= tecla;
  j:= 1;
  i:=1;
end;

// falta arrumar
if crtlEsquerda then
begin
  n:= j;
  for j:=j to coluna do
  begin
    m[i,j]:= ' ';
  end;
  j:= n;
  m[i,n]:= tecla;
end;

crtlEsquerda:= false;
selecAll:=false;
selecLine:=false;
end;


procedure espaco;
begin
  isTeclaNormal := true;
  m[i,j]:= ' ';
  write(m[i,j]);
  if selecLine then
  begin
    for j:=1 to 80 do
    begin
      m[i,j]:= ' ';
    end;
    j:= 1;
  end;
if selecAll then
begin
  for i:=1 to 24 do
  begin
    for j:=1 to 80 do
    begin
      m[i,j]:= ' ';
    end;
  end;
  j:= 1;
  i:=1;
end;

if crtlEsquerda then
begin
  n:= j;
  for j:=j to coluna do
  begin
    m[i,j]:= ' ';
  end;
  j:= n;
  m[i,n]:= tecla;
end;

crtlEsquerda :=false;
selecAll:=false;
selecLine:=false;
end;

procedure esc;
begin
  sair:= true;
  isTeclaNormal := false;
  selecAll:=false;
  selecLine:=false;
end;

//falta
  procedure enter;
  begin
    isTeclaNormal :=false;
    coluna:= j;
    linha:= i;
    for linha:=1 to 24 do
    begin
      for coluna:=1 to 80 do
      begin
        if(m[linha,coluna] = '@') then
        begin
          m[linha,coluna] := ' ';
          j:= 1;
          i:= linha + 1;
          coluna:= 80;
          linha:=24;
        end
        else
        write(m[i,j]);
      end;
    end;
end;


  procedure tab;
  begin
    isTeclaNormal := false;
    if selecLine then
    begin
      j:=1;
    end;
  if selecAll then
  begin
    j:= 1;
    i:=1;
  end;
selecLine:=false;
selecAll:=false;

m[i,j]:= ' ';

j:= j + 10;

if j < 80 then
begin
  j:= j+1;
end
else if i < 24 then
begin
  j:= 1;
  i:= i +1;
end;

end;

// falta
procedure localizarSubst;
begin
end;

//falta
  procedure localizar;
  begin
    textbackground(red);
  end;
  
  
    procedure backspace;
    begin
      isTeclaNormal := false;
      
      
      linha:= i;
      if j <> 1 then
      begin
        coluna:= j - 1;
      end
    else
    begin
      coluna := j;
    end;
  
  for i:=linha to 24 do
  begin
    for j:=coluna to 79 do
    begin
      textbackground(black);
      textcolor(white);
      m[i,j]:= m[i,j+1];
      write(m[i,j]);
    end;
  end;
i:=linha;
j:=coluna;
if selecLine then
begin
  for j:=1 to 80 do
  begin
    m[i,j]:= ' ';
  end;
  j:= 1;
end;
if selecAll then
begin
  for i:= 1 to 24 do
  begin
    for j:=1 to 80 do
    begin
      m[i,j]:= ' ';
    end;
  end;
  j:= 1;
  i:=1;
end;

// falta crtlDireita e Esquerda

selecLine:=false;
selecAll:=false;
end;


procedure selecionarTudo;
begin
  clrScr;
  isTeclaNormal:= false;
  selecAll:= true;
  for i:=1 to 24 do
  begin
    for j:=1 to 80 do
    begin
      textcolor(black);
      textbackground(white);
      write(m[i,j]);
    end;
  end;
end;


procedure selecionarLinha;
begin
  if not selecLine then
  begin
    selecLine:=true;
    isTeclaNormal:= false;
    gotoxy(i,1);
    for j:=1 to 80 do
    begin
      textcolor(black);
      textbackground(white);
      write(m[i,j]);
    end;
    
  end
else
begin
  selecLine:=false;
  textcolor(white);
  textbackground(black);
  j:=1;
end;
end;

procedure abrirArq(nome:String);
begin
  clrscr;
  nome:=nome+'.txt';
  assign (arq, nome);
  if jaSalvo then
  begin
    reset(arq);
    for i:=1 to 24 do
    begin
      for j:=1 to 80 do
      begin
        read(arq ,m[i,j]);
        write(m[i,j]);
      end;
    end;
    close(arq);
    i:=1;
    j:=1;
  end
else
begin
  writeln('Arquivo não encontrado!');
  writeln('Pressione espaço para continuar.');
  while   ord(tecla) <> 32 do
  begin
    tecla:= readkey;
  end;
  nome:= menu;
end;
end;

procedure listaComandos;
begin
  writeLn(' (A)   Para salvar arquivos pressione F1.');
  writeLn(' (B)   Para sair do programa pressione ESC.');
  writeLn(' (C)   Para localizar alguma palavra no texto pressione Ctrl+L.');
  writeLn(' (D)   Para localizar e substituir alguma palavra no texto pressione Ctrl+R.');
  writeLn(' (E)   Para selecionar parte de uma linha do texto aperte Ctrl+Esq ou Ctrl+Dir.');
  writeLn(' (F)   Para selecionar o texto inteiro pressione Ctrl+A.');
  writeLn(' (G)   Para selecionar uma linha inteira pressione Ctrl+D.');
  writeLn(' (H)   Para ir para o começo da linha aperte Home.');
writeLn(' (I)   Para ir para o fim da linha aperte End.');
writeLn(' (J)   Para ir para o começo do texto aperte Page Up.');
writeLn(' (K)   Para ir para o fim do texto aperte Page Down.');
writeLn('');
writeLn('Para voltar pressione espaço.');

while   ord(tecla) <> 32 do
begin
  tecla:= readkey;
end;
ClrScr;
nome:= menu;
end;

function menu:String;
begin
  ClrScr;
  writeLn('=================================== MENU ======================================');
  writeLn(' ');
  writeLn(' (1)     Iniciar um novo documento.');
  writeLn(' (2)     Abrir um documento já existente.');
  writeLn(' (3)     Como usar o programa.');
  writeLn(' ');
  writeLn('===============================================================================');
  writeLn(' ');
  writeLn('Digite a opção que deseja realizar: ');
  tecla := readkey;
  case ord(tecla) of
    49:
    begin
      ClrScr;
    end;
  50:
  begin
    ClrScr;
    write('Nome do ficheiro a consultar: ');
    readln(nome);
    abrirArq(nome);
  end;
51:
begin
  ClrScr;
  listaComandos;
end;
27:begin
  sair:=true;
end;
else
ClrScr;
nome:=menu;
end;
end;


procedure tratarTecla(var i,j : integer; var jaSalvo, selec, selecLine : boolean);
begin
tecla:= readkey;
if (tecla = #0) then
begin
  tecla:=readkey;
  case tecla of
    #71: teclaHome;
  #79:  teclaEnd;
#73: teclaPageUp;
#81: teclaPageDown;
#72: teclaUp;
#80: teclaDown;
#77: teclaRight(i,j);
#75: teclaLeft(i,j);
#59:
begin;
  m[i,j+1]:= '@';
  salvar (jaSalvo);
end;
#82: teclaInsert;
#83: deletar(i,j);
#115: crtl_esquerda;
#116: crtl_direita;
end;
end
else
begin
case ord(tecla) of
33..125 : teclasNormais(tecla,i,j);
32: espaco;
27: esc;
13: begin
  if (i <> 24) and (j<>80) then
  begin
    m[i,j+1]:= '@';
    enter;
  end;
end;
12: localizar;
8: backspace;
9:tab;
1: selecionarTudo;
18: localizarSubst;
4: selecionarLinha;
end;
end;
end;



Begin
textcolor(white);
ClrScr;
for i:=1 to 24 do
for j:=1 to 80 do
m[i,j]:= ' ';
i:=1;
j:=1;
contador:=0;
inserir:= true;
sair:= False;
jaSalvo:= False;
nome:= menu;
crtlEsquerda:= False;
selecionado:= false;
selecLine:= false;
repeat
begin
tratarTecla(i,j,jaSalvo,selecionado,selecLine);
if((not selecLine) and (not crtlEsquerda)and (not crtlDireita) and (not sair) and (not selecAll) and (not isDeletar)) then
begin
  mostraMatriz(isTeclaNormal);
end;
isDeletar :=false;
gotoxy(j,i);
end;
until sair;
End.