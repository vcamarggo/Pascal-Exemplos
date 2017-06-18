Program CRUD ;

type numeroLista = ^caixinha ;     
      
      caixinha = record
              numero : integer ;
              prox : ^caixinha ; 
           end ;

Var primeiroNumero: numeroLista;
    ultimoNumero: numeroLista;
    aux: numeroLista;
    aux2: numeroLista;
    opcao: char;
    numero:integer;
    
function listaVazia():boolean;
begin
  if(primeiroNumero = nil) then
    listaVazia := true
  else
    listaVazia := false;
end;
    
procedure inserirLista(numero:integer);
begin
      new (aux);
      aux^.numero :=numero;
      if(listaVazia()) then
        begin
          primeiroNumero := aux;
          ultimoNumero:=aux;
          primeiroNumero^.prox := ultimoNumero;
        end
      else    
        begin
          aux^.prox:=primeiroNumero;
          ultimoNumero^.prox := aux;
          ultimoNumero := ultimoNumero^.prox;
          
        end;
end;

procedure printaLista();
begin 
  if(not listaVazia()) then   
  begin
    aux := primeiroNumero;
    repeat 
    writeln(aux^.numero);
    aux := aux^.prox;
    until (aux^.numero = primeiroNumero^.numero);
  end;
end;

procedure removeLista();
begin
  aux:= primeiroNumero;
  while(aux <> aux^.prox) do
  begin
    new(aux2);
    aux2:= aux^.prox;
    aux^.prox := aux2^.prox;
    aux:=aux^.prox;
    write(aux2^.numero);
    writeln(' foi removido.'); 
    dispose(aux2);     
  end;
  write(aux^.numero);
  writeln(' sobrou.');
  primeiroNumero :=aux;
  ultimoNumero:=aux;
end;
    
Begin
  primeiroNumero := nil ;
  ultimoNumero := nil ;
  
  repeat
    
     writeln(  );
     writeln( 'Escolha a operação:' );
     writeln( '1: Inserir.' );
     writeln( '2: Consultar.' );
     writeln( '3: Remover.' );
     writeln( '4: Sair.' );
     
     readln( opcao );
     clrscr;
     case upcase(opcao) Of
          '1' : 
          begin
            Writeln ('Digite número:');
            readln(numero); 
            inserirLista(numero); 
          end;
          
          '2' : 
          begin
            printaLista();
          end;
              
          '3' : 
          begin
            removeLista();
          end;

          '4':
          begin
            dispose(primeiroNumero);
            dispose(ultimoNumero);  
            dispose(aux);
          end;
          
          else  
          begin
            Writeln ('Opção inválida!');
          end;
     End;
  
  
  Until opcao = '4' ;

End.
