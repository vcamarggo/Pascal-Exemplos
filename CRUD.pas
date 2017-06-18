Program CRUD ;

type pessoaLista = ^pessoa ;     
      
      pessoa = record
              ra : integer ;
              nome: string;
              idade : integer ;
              curso: string;
              prox : ^pessoa ; 
           end ;

Var listaPessoa: pessoaLista;
    primeiraPessoa: pessoaLista;
    aux: pessoaLista;
    resposta: char;
    ra, idade: integer;
    nome, curso: string;
    
function listaVazia():boolean;
begin
  if(primeiraPessoa = nil) then
    listaVazia := true
  else
    listaVazia := false;
end;

function procuraNaLista(ra:integer): pessoaLista;
begin 
  procuraNaLista:=nil;
  if(not listaVazia()) then   
  begin
    listaPessoa := primeiraPessoa;
    while(listaPessoa <> nil) do
    begin
      if(listaPessoa^.ra = ra) then
      begin
        procuraNaLista := listaPessoa; 
        break;
      end;
      listaPessoa := listaPessoa^.prox;
    end;
  end;
end;
    
procedure inserirLista(curso, nome:string;idade, ra:integer);
begin
    if(procuraNaLista(ra) = nil) then
    begin
      new (aux);
      if(listaVazia()) then
        begin
          primeiraPessoa := aux;
        end
      else    
        begin
          listaPessoa := primeiraPessoa;
          while(listaPessoa^.prox <> nil) do
          listaPessoa := listaPessoa^.prox;
        end;
      aux^.ra :=ra;
      aux^.nome :=nome;
      aux^.idade :=idade;
      aux^.curso :=curso;
      aux^.prox := nil;
      listaPessoa^.prox :=aux;
      writeln('Cadastrado com sucesso');
    end
    else
      writeln('RA já existente'); 
end;
        
procedure consultarLista(ra:integer);
begin 
  if(listaVazia()) then
  begin
    writeln('Lista Vazia');
  end
  else    
  begin
    listaPessoa := procuraNaLista(ra);
    if(listaPessoa <> nil) then
    begin
      write('ra:' );
      writeln(listaPessoa^.ra);
      write('nome:' );
      writeln(listaPessoa^.nome);
      write('idade:' );
      writeln(listaPessoa^.idade);
      write('curso:' );
      writeln(listaPessoa^.curso);
    end
    else
      writeln('RA não encotrado!');
  end;
end;

procedure alterarLista(ra:integer);
var 
novoRa:integer; 
begin
  if(listaVazia()) then
  begin
    writeln('Lista Vazia');
  end
  else
  begin
    listaPessoa := procuraNaLista(ra);
    aux:= listaPessoa;
    if(listaPessoa <> nil) then
    begin
      Writeln ('Digite idade:');
      readln(idade);
      repeat
        Writeln ('Digite nome: (max 20 caracteres)');
        readln(nome);
      until length(nome) <=20;
      repeat
        Writeln ('Digite curso: (max 30 caracteres)');
        readln(curso);
      until length(curso) <=30;   
      aux^.nome:=nome;
      aux^.idade:=idade;
      aux^.curso:=nome;
      writeln('Alteração realizada com sucesso!');   
    end
    else
      writeln('RA não encotrado!');
  end;
end;

procedure removerLista(ra:integer);
var 
aux:pessoaLista;
begin
  if(listaVazia()) then
  begin
    writeln('Lista Vazia');
  end
  else
  begin
    listaPessoa := procuraNaLista(ra);
    aux:=primeiraPessoa;
    if(listaPessoa <> nil) then
    begin
      if(primeiraPessoa = listaPessoa) then
        primeiraPessoa := nil;
      
      while (aux^.prox <> listaPessoa) and (aux^.prox <> nil) do 
        aux := aux^.prox;
      aux^.prox:=listaPessoa^.prox;
      
      dispose(listaPessoa);
      
      writeln('Remoção realizada com sucesso!');   
    end
    else
      writeln('RA não encotrado!');
  end;
end;
    
Begin
  listaPessoa := nil ;
  primeiraPessoa := nil ;
  
  repeat
    
     writeln(  );
     writeln( 'Escolha a operação:' );
     writeln( '1: Inserir.' );
     writeln( '2: Consultar.' );
     writeln( '3: Remover.' );
     writeln( '4: Alterar.' );
     writeln( '5: Sair.' );
     
     readln( resposta );
     clrscr;
     case upcase(resposta) Of
          '1' : 
          begin
            Writeln ('Digite ra:');
            readln(ra);
            repeat
              Writeln ('Digite nome: (max 20 caracteres)');
              readln(nome);
            until length(nome) <=20;
            Writeln ('Digite idade:');
            readln(idade);
            repeat
              Writeln ('Digite curso: (max 30 caracteres)');
              readln(curso);
            until length(curso) <=30;  
            inserirLista(curso, nome, idade, ra); 
          end;
          
          '2' : 
          begin
            Writeln ('Digite ra:');
            readln(ra);
            consultarLista(ra); 
          end;
              
          '3' : 
          begin
            Writeln ('Digite ra:');
            readln(ra);
            removerLista(ra); 
          end;
          
          '4' : 
          begin
            Writeln ('Digite ra:');
            readln(ra);
            alterarLista(ra); 
          end;
          
          '5':
          begin
          dispose(primeiraPessoa);
          dispose(listaPessoa);
          dispose(aux);
          end;
          
          else  
          begin
            Writeln ('Opção inválida!');
          end;
     End;
  
  
  Until resposta = '5' ;

End.
