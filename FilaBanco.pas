Program CRUD ;

type pessoaLista = ^pessoa ;     
      
      pessoa = record
              nome: string;
              senha : integer ;
              caixa: integer;
              prox : ^pessoa ; 
           end ;

Var 
    primeiraPessoa1: pessoaLista;
    primeiraPessoa2: pessoaLista;
    primeiraPessoa3: pessoaLista;
    primeiraPessoa4: pessoaLista;
    primeiraPessoa5: pessoaLista;
    ultimaPessoa1: pessoaLista;
    ultimaPessoa2: pessoaLista;
    ultimaPessoa3: pessoaLista;
    ultimaPessoa4: pessoaLista;
    ultimaPessoa5: pessoaLista;
    aux: pessoaLista;
    resposta: char;
    nome: String;
    senhaGlobal, i: integer;
    nrNaFila:array[1..5] of integer;
    
function listaVazia(nrFila:integer):boolean;
begin
case nrFila of
          1 : 
          begin
           listaVazia := (primeiraPessoa1 = nil);
          end;
          
          2 : 
          begin
            listaVazia := (primeiraPessoa2 = nil);
          end;
          
          3 : 
          begin
            listaVazia := (primeiraPessoa3 = nil);
          end;
          
          4 : 
          begin
           listaVazia := (primeiraPessoa4 = nil);
          end;
          
          5 : 
          begin
            listaVazia := (primeiraPessoa5 = nil);
          end;
        end; 
end;

function procuraNaLista(nome:string) : pessoaLista;
var achou: boolean;
begin
  achou:= false; 
  aux:=nil;
  if(not listaVazia(1)) then   
  begin
    aux := primeiraPessoa1;
    while(aux <> nil) do
    begin
      if(aux^.nome = nome) then
      begin
        procuraNaLista :=aux;
        achou := true; 
        break;
      end;
      aux := aux^.prox;
    end;
  end;
  if(not listaVazia(2) and not achou) then   
  begin
    aux := primeiraPessoa2;
    while(aux <> nil) do
    begin
      writeln(aux^.nome);
      if(aux^.nome = nome) then
      begin
        procuraNaLista :=aux;
        achou := true; 
        break;
      end;
      aux := aux^.prox;
    end;
  end;
  if(not listaVazia(3) and not achou) then   
  begin
    aux := primeiraPessoa3;
    while(aux <> nil) do
    begin
      if(aux^.nome = nome) then
      begin
        procuraNaLista :=aux;
        achou := true; 
        break;
      end;
      aux := aux^.prox;
    end;
  end;
  if(not listaVazia(4) and not achou) then   
  begin
    aux := primeiraPessoa4;
    while(aux <> nil) do
    begin
      if(aux^.nome = nome) then
      begin
        procuraNaLista :=aux;
        achou := true; 
        break;
      end;
      aux := aux^.prox;
    end;
  end;
  if(not listaVazia(5) and not achou) then   
  begin
    aux := primeiraPessoa5;
    while(aux <> nil) do
    begin
      if(aux^.nome = nome) then
      begin
        procuraNaLista :=aux;
        achou := true; 
        break;
      end;
      aux := aux^.prox;
    end;
  end;
  
end;

function numeroMenorFila():integer;
var 
  contador, aux:integer;
begin
  aux:=1;
  for contador := 2 to 5 do
    begin   
      if nrNaFila[aux] > nrNaFila[contador] then
      begin
        aux := contador;
      end;  
    end;
    numeroMenorFila:=aux; 
end;
    
procedure inserirLista(pessoaInserida : pessoaLista);
var
  nrMenorFila:integer;  
begin
      nrMenorFila := numeroMenorFila();
        case nrMenorFila of
          1 : 
          begin
            pessoaInserida^.caixa := 1;
            nrNafila[1] := nrNafila[1] +1;
            if(listaVazia(1)) then
              begin
                primeiraPessoa1 := pessoaInserida;
                ultimaPessoa1:=primeiraPessoa1;
              end
            else
              begin
                ultimaPessoa1^.prox := pessoaInserida;
                ultimaPessoa1 := ultimaPessoa1^.prox; 
              end;
          end;
          
          2 : 
          begin
            pessoaInserida^.caixa := 2;
            nrNafila[2] := nrNafila[2] +1;
            if(listaVazia(2)) then
              begin
                primeiraPessoa2 := pessoaInserida;
                ultimaPessoa2:=primeiraPessoa2;
              end
            else
              begin
                ultimaPessoa2^.prox := pessoaInserida;
                ultimaPessoa2 := ultimaPessoa2^.prox; 
              end;
          end;
          
          3 : 
          begin
            pessoaInserida^.caixa := 3;
            nrNafila[3] := nrNafila[3] +1;
            if(listaVazia(3)) then
              begin
                primeiraPessoa3 := pessoaInserida;
                ultimaPessoa3:=primeiraPessoa3;
              end
            else
              begin
                ultimaPessoa3^.prox := pessoaInserida;
                ultimaPessoa3 := ultimaPessoa3^.prox; 
              end;
          end;
          
          4 : 
          begin
            pessoaInserida^.caixa := 4;
            nrNafila[4] := nrNafila[4] +1;
            if(listaVazia(4)) then
              begin
                primeiraPessoa4 := pessoaInserida;
                ultimaPessoa4:=primeiraPessoa4;
              end
            else
              begin
                ultimaPessoa4^.prox := pessoaInserida;
                ultimaPessoa4 := ultimaPessoa4^.prox; 
              end;
          end;
          
          5 : 
          begin
            pessoaInserida^.caixa := 5;
            nrNafila[5] := nrNafila[5] +1;
            if(listaVazia(5)) then
              begin
                primeiraPessoa5 := pessoaInserida;
                ultimaPessoa5:=primeiraPessoa5;
              end
            else
              begin
                ultimaPessoa5^.prox := pessoaInserida;
                ultimaPessoa5 := ultimaPessoa5^.prox; 
              end;
          end;
        end;
    write('Senha ');
    writeln(pessoaInserida^.senha);
    write('Caixa ');
    writeln(pessoaInserida^.caixa);
    writeln('Cadastrado com sucesso');
end;
        
procedure consultarLista(nome:String);
begin
    aux := procuraNaLista(nome);
    if(aux <> nil) then
    begin
      write('Nome:' );
      writeln(aux^.nome);
      write('Senha:' );
      writeln(aux^.senha);
      write('Caixa:' );
      writeln(aux^.caixa);
    end
    else
      writeln('Nome não encotrado!');
end;

procedure atendeCaixa(nrCaixa:integer);
begin
  case nrCaixa of
          1 : 
          begin
           if(not listaVazia(1))then
           begin
            aux := primeiraPessoa1;
            primeiraPessoa1:=primeiraPessoa1^.prox;
            nrNaFila[1]:=nrNaFila[1]-1;
           end;
          end;
          
          2 : 
          begin
            if(not listaVazia(2))then
             begin
              aux := primeiraPessoa2;
              primeiraPessoa2:=primeiraPessoa2^.prox;
              nrNaFila[2]:=nrNaFila[2]-1;
            end;
          end;
          
          3 : 
          begin
            if(not listaVazia(3))then
             begin
              aux := primeiraPessoa3;
              primeiraPessoa3:=primeiraPessoa3^.prox;
              nrNaFila[3]:=nrNaFila[3]-1;
            end;
          end;
          
          4 : 
          begin
            if(not listaVazia(4))then
             begin
              aux := primeiraPessoa4;
              primeiraPessoa4:=primeiraPessoa4^.prox;
              nrNaFila[4]:=nrNaFila[4]-1;
            end;
         end;
          
          5 : 
          begin
           if(not listaVazia(5))then
           begin
            aux := primeiraPessoa5;
            primeiraPessoa5:=primeiraPessoa5^.prox;
            nrNaFila[5]:=nrNaFila[5]-1;
          end;
        end;
      end;
      write('Nome:' );
      writeln(aux^.nome);
      write('Senha:' );
      writeln(aux^.senha);
      write('Caixa:' );
      writeln(aux^.caixa);
      dispose(aux);
end;
    
Begin
  primeiraPessoa1 := nil ;
  ultimaPessoa1 := nil ;
  primeiraPessoa2 := nil ;
  ultimaPessoa2 := nil ;
  primeiraPessoa3 := nil ;
  ultimaPessoa3 := nil ;
  primeiraPessoa4 := nil ;
  ultimaPessoa4 := nil ;
  primeiraPessoa5 := nil ;
  ultimaPessoa5 := nil ;
  senhaGlobal:=0;  
  
  new(aux);
  
  repeat
    
     writeln(  );
     writeln( 'Escolha a operação:' );
     writeln( '1: Inserir.' );
     writeln( '2: Consultar.' );
     writeln( '3: Atender Caixa 1.' );
     writeln( '4: Atender Caixa 2.' );
     writeln( '5: Atender Caixa 3.' );
     writeln( '6: Atender Caixa 4.' );
     writeln( '7: Atender Caixa 5.' );
     writeln( '8: Ver nr de pessoas na fila.' );
     writeln( '9: Sair.' );
     
     readln( resposta );
     clrscr;
     case upcase(resposta) Of
          '1' : 
          begin
          new(aux);
          senhaGlobal := senhaGlobal + 1;
            repeat
              Writeln ('Digite nome: (max 20 caracteres)');
              readln(nome);
            until length(nome) <=20;
            aux^.nome := nome;
            aux^.senha := senhaGlobal;
            aux^.prox:=nil;  
            inserirLista(aux);
            aux:=nil;
            dispose(aux); 
          end;
          
          '2' : 
          begin
            Writeln ('Digite nome:');
            readln(nome);
            consultarLista(nome); 
          end;
          
           '3' : 
          begin
            Writeln ('Atendendo caixa 1...');
            atendeCaixa(1);
            Writeln ('Atendedido o caixa 1.');
          end;
            
          '4' : 
          begin
            Writeln ('Atendendo caixa 2...');
            atendeCaixa(2);
            Writeln ('Atendedido o caixa 2.');
          end;
               
          '5' : 
          begin
            Writeln ('Atendendo caixa 3...');
            atendeCaixa(3);
            Writeln ('Atendedido o caixa 3.');
          end;
                 
          '6' : 
          begin
            Writeln ('Atendendo caixa 4...:');
            atendeCaixa(4);
            Writeln ('Atendedido o caixa 4.');
          end;
                      
          '7' : 
          begin
            Writeln ('Atendendo caixa 5...');
            atendeCaixa(5);
            Writeln ('Atendedido o caixa 5.');
          end;
              
          '8' : 
          begin
            for i:=1 to 5 do
            begin
              write( nrNaFila[i]);
              write( ' na fila do caixa ' );
              writeln(i);
            end;
          end;

          '9':
          begin
            dispose(primeiraPessoa1);
            dispose(primeiraPessoa2);
            dispose(primeiraPessoa3);
            dispose(primeiraPessoa4);
            dispose(primeiraPessoa5);
            dispose(ultimaPessoa1);
            dispose(ultimaPessoa2);
            dispose(ultimaPessoa3);
            dispose(ultimaPessoa4);
            dispose(ultimaPessoa5);
            dispose(aux);
          end;
          
          else  
          begin
            Writeln ('Opção inválida!');
          end;
     End;
  
  
  Until resposta = '9' ;

End.
