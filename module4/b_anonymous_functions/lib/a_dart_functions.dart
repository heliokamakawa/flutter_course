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
  print(interfaceNotas(escolha, n1, n2));
}

String interfaceNotas(int escolha, double nota1, double nota2){
    if(escolha == 1){
      var resultado = verificarAprovacao(nota1, nota2);
      return 'o alunos está $resultado';
    }else if(escolha == 2){
      var maior = verificarMaiorNota(nota1, nota2);
      return 'a maior nota é $maior';
    } else {
      var media = calcularMedia(nota1, nota2);
      return 'A média é $media.';
    }
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
Atividade I - Defina 3 funções do mesmo contexto e uma interface para estas funções
→ Interface Salario 
→ Receber salario e um valor. Bonificar o valor no salário e informar se o total é maior que o salário mínimo.
→ Receber salario e um valor. Descontar o valor no salário e informar se ainda resta salário a receber.
→ Receber salario e um valor. Calcular e informar o % que o valor da comissão representa em relação ao salário.
*/

/*
Atividade II
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/
