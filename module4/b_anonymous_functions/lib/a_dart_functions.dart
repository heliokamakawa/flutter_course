import 'dart:io';

/*
>>> Contexto de Aplicação <<<
Antes de aprender a respeito de funções anônimas,
é importante entender onde e quando podemos utilizar este recurso

Funções Anônimas são úteis em circunstâncias em que é necessário uma função 
que precisa de dados (variáveis/dinâmicos) e ações (variável/dinâmico) para realizar a função

Exemplo:
Um contexto em que precisamos de uma função para verificar a aprovação mediante 2 notas. 
Porém, é muito comum que haja situações em que cada professor tem uma forma de considerar a aprovação.

Por exemplo, vamos elaborar uma função que verifica a aprovação em 3 situações:
→ pela media
→ pela maior nota
→ pela menor nota
obs: poderia ter várias outras formas
*/

String verificarAprovacaoCompleto(int escolha, double nota1, double nota2){
  if(escolha == 1){
    double media = (nota1 + nota2) / 2;
    if(media >= 6){
      return 'aprovado';
    }else{
      return 'reprovado';
    }
  }else if(escolha == 2){
      double maior = nota1;
      if(nota2 > nota1){
        maior = nota2;
      } 
      if(maior >= 6){
        return 'aprovado';
      }else{
        return 'reprovado';
      }
    } else {
      double menor = nota1;
      if(nota2 < nota1){
        menor = nota2;
      } 
      if(menor >= 6){
        return 'aprovado';
      }else{
        return 'reprovado';
      }
    }
}


/*
Definir tudo em uma única função pode torná-la difícil de dar manutenção.
Devemos tomar cuidado com: (1) a quantidade de linhas; (2)a unidade lógica; e (3) na modularização.
*/

void main()  { 
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
  if(maior >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

String aprovacaoMenorNota(double nota1, double nota2){
  double menor = nota1;
  if(nota2 < nota1){
    menor = nota2;
  } 
  if(menor >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}


/*
Atividade I
Conseguiu entender o contexto? Explique.

Atividade II - Defina 3 funções do mesmo contexto e um menu para estas funções
Nesta prática, eu já estou definindo o contexto. Assim, o objetivo é você entender e treinar a sintaxe.
→ Receber salario e um valor. Adicionar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Neste caso o valor é o bônus que tem encargo de 10%. Adicionar o bônus (já com o desconto do encargo) no salário e informar o % adicioando em relação ao salário.
→ Menu para acesso das funções

Atividade III
Nesta atividade, o objetivo é fazer com que você elabore o contexto para que consiga aprofundar o conhecimento.
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
*/
