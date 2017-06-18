Program Ex20 ;

Var
matricula, totalAlunos, totalAprovados, totalReprovados : integer;
nota1, nota2, nota3, mediaFinal : real;

Begin
  
  while matricula <> 9999 do
  begin
    
    
    write('Digite o numero matricula: ');
    read(matricula);
    if  matricula <> 9999 then
    begin
      write('Digite a nota 1: ');
      read(nota1);
      write('Digite a nota 2: ');
      read(nota2);
      write('Digite a nota 3: ');
      read(nota3);
      
      mediaFinal:= ((2 * nota1) + (3 * nota2) + (4 * nota3))/9;
      
      if mediaFinal >= 5 then
      begin
        writeln('"APROVADO"');
        totalAprovados:= totalAprovados + 1;
      end
      else
      begin
        writeln('"REPROVADO"');
        totalReprovados:= totalReprovados + 1;
      end
    end;
    
  end ;
  
  totalAlunos:= totalAprovados + totalReprovados;
  
  writeln('O total de alunos é: ', totalAlunos);
  writeln('O total de alunos aprovados é: ', totalAprovados);
  writeln('O total de alunos reprovados é: ', totalReprovados);
  
End.