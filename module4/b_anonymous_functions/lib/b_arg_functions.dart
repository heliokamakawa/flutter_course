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

  
  String resultado = '';
  if(escolha == 1){
    resultado = interfaceNotas(n1, n2, verificarAprovacao);
  }else if(escolha == 2){
    resultado = interfaceNotas(n1, n2, verificarMaiorNota);
  } else {
    resultado = interfaceNotas(n1, n2, calcularMedia);
  }
  print(resultado);
}

String interfaceNotas(double nota1, double nota2, Function acao){
    return acao(nota1,nota2);
}

String verificarAprovacao(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;

  if(media > 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

double verificarMaiorNota(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;

  if(nota1 == nota2){
    return nota1;
  } else if(nota1 > nota2){
    return nota1;
  }else{
    return nota2;
  }
}

double calcularMedia(double nota1, double nota2){
  return (nota1 + nota2) / 2;
}

/*
Atividade I
→ interfaceSalario 
→ bonificar - receber salario e o valor do bônus. Realizar o cálculo e informar se o total é maior que o salário mínimo.
→ descontar - receber salario e o valor do desconto. Realizar o cálculo e informar se o total é positivo.
→ comparar - receber dois salario. Retornar o maior salário.
*/

/*
Atividade II
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/


