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
  print(verificarAprovacao(escolha, n1, n2));
}

String verificarAprovacao(int escolha, double nota1, double nota2){
  if(escolha == 1){
      return  aprovacaoMedia(nota1, nota2);
    }else if(escolha == 2){
      return aprovacaoMaiorNota(nota1, nota2);
    } else {
      return aprovacaoMenorNota(nota1, nota2);
    }
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
Atividade I - Defina 3 funções do mesmo contexto e uma interface para estas funções
→ Interface Salario 
→ Receber salario e um valor. Bonificar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Informar o % que o valor da comissão representa em relação ao salário.
*/

/*
Atividade II
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/
