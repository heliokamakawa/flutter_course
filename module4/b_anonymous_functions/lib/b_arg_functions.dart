import 'dart:io';

void show() {
  print('''
    Escolha uma opção: 
    (1) - varificar a aprovação;
    (2) - verificar maior nota; e
    (3) - calcular a média.
  ''');
  int escolha = int.parse(stdin.readLineSync()!);
  print('Informe a 1º nota:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Informe a 2º nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  var resultado = '';
  if(escolha == 1){
    resultado = interfaceNotas(n1, n2, aprovacaoMedia);
  }else if(escolha == 2){
    resultado = interfaceNotas(n1, n2, aprovacaoMaiorNota);
  } else {
    resultado = interfaceNotas(n1, n2, aprovacaoMenorNota);
  }
  print(resultado);
}

String verificarAprovacao(double nota1, double nota2, Function acao){
    return acao(nota1,nota2);
}

String aprovacaoMedia(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;
  if(media >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

String aprovacaoMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1){
    maior = nota2;
  } 
  if(media >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

double aprovacaoMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1){
    maior = nota2;
  } 
  if(media >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

/*
Atividade I 
1). Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?
2). O que é e para que serve parâmtros do tipo função? Em que caso utilizamos?

Atividade II - Defina 3 funções do mesmo contexto e uma interface para estas funções
→ Interface Salario 
→ Receber salario e um valor. Bonificar o valor no salário e informar se o total é maior que o salário mínimo.
→ Receber salario e um valor. Descontar o valor no salário e informar se ainda resta salário a receber.
→ Receber salario e um valor. Calcular e informar o % que o valor da comissão representa em relação ao salário.

Atividade III
Pensar em um projeto único 
Fazer um exemplo seu
*/


