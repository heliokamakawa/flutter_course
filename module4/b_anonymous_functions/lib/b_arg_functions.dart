import 'dart:io';

/*
>>> Parâmetros do tipo função <<<
Agora que entendemos o contexto aplicável, vamos para o próximo passo, Function Parameters. 
No contexto em que preciamos de ações dinâmicas para realizar uma função, podemos definir um parâmetro do tipo função.
Assim, pode-se definir a ação no momento da chamda da função.

Neste arquivo, vamos definir uma ação com a chamada de uma função nomeada.

Nesta parte da aula é importante que você entenda:
→ O que são e para que servem Function Parameters (parâmetros do tipo função).
→ O que são, para que servem e quando utilizamos Funções Nomeadas.
*/

void main(List<String> arguments) {
  print('''
    Escolha uma opção: 
    (1) - verificar aprovação pela média;
    (2) - verificar aprovação pela maior nota; e
    (3) - verificar aprovação pela menor nota.
  ''');
  int escolha = int.parse(stdin.readLineSync()!);
  print('Informe a 1º nota:');
  double n1 = double.parse(stdin.readLineSync()!);
  print('Informe a 2º nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  bool aprovado;
  if(escolha == 1){
    aprovado = verificarAprovacao(n1, n2, calcularMedia); //definindo a ação "aprovacaoMedia" na chamada da função verificarAprovacao
  }else if(escolha == 2){
    aprovado = verificarAprovacao(n1, n2, calcularMaiorNota); //definindo a ação "aprovacaoMaiorNota" na chamada da função verificarAprovacao
  } else {
    aprovado = verificarAprovacao(n1, n2, calcularMenorNota); //definindo a ação "aprovacaoMenorNota" na chamada da função verificarAprovacao
  }
  print( aprovado ? 'aprovado' : 'reprovado' );
}

bool verificarAprovacao(double nota1, double nota2, Function caclularNota){
    double nota = caclularNota(nota1,nota2);
    return (nota >= 6);
}

double calcularMedia(double nota1, double nota2){
  double media = (nota1 + nota2) / 2;
  return media;
}

double calcularMaiorNota(double nota1, double nota2){
  double maior = nota1;
  if(nota2 > nota1) maior = nota2;
  return maior;
}

double calcularMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1) menor = nota2;
  return menor;
}

/*
Atividade I 
1) Qual a diferença em relação ao código do arquivo anterior? Na sua opinão, o que melhorou e o que piorou?
2) O que é e para que serve parâmtros do tipo função? Em que caso utilizamos?
3) O que é função nomeada? Para que serve? Quando utilizamos?
R: Uma função nomeada é um conjunto de código que realiza uma ação em que possui um nome - assim torna-se possível invocá-la pelo nome.
Definimos uma função nomeada, quando previamente sabemos o que se deve fazer.

Atividade II - Defina 3 funções do mesmo contexto e um menu para estas funções
Nesta prática, eu já estou definindo o contexto. Assim, o objetivo é você entender e treinar a sintaxe.
→ Receber salario e um valor. Adicionar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargo de 10%. Adicionar o bônus (já com o desconto do encargo) no salário e informar o % adicioando em relação ao salário.
→ Menu para acesso das funções

Atividade III
Nesta atividade, o objetivo é fazer com que você entenda o contexto.
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/
