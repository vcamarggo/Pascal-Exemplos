Program Ex9 ;

VAR
salarioMinimo, gratificacao, salarioLiquido,irff, salarioBruto,salarioMes, numeroHorasTrabalhadas,valorHorasTrabalhadas, numeroHorasExtras, valorHorasExtrasTrabalhadas: REAL;
numeroDependentes:INTEGER;

Begin

writeln( 'Digite o valor do salário mínimo: ' );
read(salarioMinimo);
writeln( 'Digite o número de horas trabalhadas: ' );
read(numeroHorasTrabalhadas);
writeln( 'Digite o número de dependentes do funcionário: ' );
read(numeroDependentes);
writeln( 'Digite o número de horas extras trabalhadas: ' );
read(numeroHorasExtras);



valorHorasTrabalhadas:= (salarioMinimo/5);

salarioMes:= numeroHorasTrabalhadas * valorHorasTrabalhadas;

salarioMes:=   (numeroDependentes * 32) + salarioMes;

valorHorasExtrasTrabalhadas := (valorHorasTrabalhadas *1.5) * numeroHorasExtras;

salarioBruto:=   salarioMes +   valorHorasExtrasTrabalhadas;


If  salarioBruto < 200 Then
Begin
irff := 1;
salarioLiquido:= salarioBruto * irff;
End
Else  If  (salarioBruto >= 200) AND (salarioBruto <= 500) Then
Begin
irff := 0.9;
salarioLiquido:= salarioBruto * irff;
End
Else  If  salarioBruto > 500 Then
Begin
irff := 0.8;
salarioLiquido:= salarioBruto * irff;
End;


If  salarioLiquido <= 350 Then
Begin
gratificacao := 100;
salarioLiquido:= salarioLiquido + gratificacao;
End
Else  If salarioBruto >350 Then
Begin
gratificacao := 50;
salarioLiquido:= salarioLiquido + gratificacao;
End;


writeln( 'O salário a receber é: ', salarioLiquido );
End.