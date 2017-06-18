Program Ex6 ;
VAR
notaLaboratorio, avaliacaoSemestral, exameFinal, notaFinal: REAL;
Begin
  writeln( 'Digite a nota da avaliação de laboratório: ' );
  read(notaLaboratorio);
  
  writeln( 'Digite a nota da avaliação semestral: ' );
  READ(avaliacaoSemestral);
  
  writeln( 'Digite a nota do exame final: ' );
  read(exameFinal);
  
  
  notaLaboratorio := notaLaboratorio * 2;
  avaliacaoSemestral := avaliacaoSemestral * 3;
  exameFinal:= exameFinal * 5;
  notaFinal :=(notaLaboratorio + avaliacaoSemestral +  exameFinal) / 10;
  
  
  IF   (notaFinal >= 8) Then
  writeln( 'Conceito A e nota: ', notaFinal )
  
  Else If (notaFinal < 8) AND (notaFinal >= 7) Then
  writeln(  'Conceito B e nota: ', notaFinal  )
  
  Else If (notaFinal < 7) AND (notaFinal >= 6) Then
  writeln(  'Conceito C e nota: ', notaFinal  )
  
  Else If (notaFinal < 6) AND (notaFinal >= 5) Then
  writeln(  'Conceito D e nota: ', notaFinal  )
  
  Else If (notaFinal < 5) AND (notaFinal >= 0) Then
  writeln(  'Conceito E e nota: ', notaFinal  );
End.