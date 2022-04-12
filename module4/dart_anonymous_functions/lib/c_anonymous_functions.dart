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

  if(escolha == 1){
    interfaceNotas(n1, n2, (){
      double media = (n1 + n2) / 2;

      if(media > 6){
        return 'aprovado';
      }else{
        return 'reprovado';
      }
    });
  }else if(escolha == 2){
    interfaceNotas(n1, n2, (){
      double media = (n1 + n2) / 2;
      if(n1 == n2){
        return n1;
      } else if(n1 > n2){
        return n1;
      }else{
        return n2;
      }
    }
    );
  } else {
    interfaceNotas(n1, n2, () {
      return (n1 + n2) / 2;
    }
    );
  }
}

void interfaceNotas(double nota1, double nota2, Function acao){
    acao(nota1,nota2);
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





