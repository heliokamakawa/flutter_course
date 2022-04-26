import 'dart:io';

void main(List<String> arguments) {
  print('\n***exemplo de função com retorno e com parâmetro***');
  /*
  muito versáteis, são definidas para definir vários módulos do sistema 
  Exemplo: cálculos, pool de funções, aplicação de regras de negócio, validções, outros...
  */

  //coletando dados
  stdout.write('1º nota: ');              
  double nota1 = double.parse(stdin.readLineSync()!); 

  stdout.write('2º nota: ');              
  double nota2 = double.parse(stdin.readLineSync()!); 

  /*
  na chamada da função verificarAprovacao:
  (1) somos obrigados a informar todos os parâmetros
  (2) somos obrigados e informar na sequência correta
  */
  var valor = verificarAprovacao(nota1, nota2, 6);  
  print(valor);     

  /*
  na chamada da função verificarAprovacaoComValorPadrao:
  (1) o parâmetro media é opcinal - repare que ele está circundado com []
  (2) quando não informamos o valor padrão é 6 - conforme definido na função
  (3) se necessário, pode-se informar uma outra média
  */      
  valor = verificarAprovacaoComValorPadrao(nota1, nota2);   
  print(valor);                                           

}


//definindo uma função com retorno e com parâmetro
String verificarAprovacao(double nota1, double nota2, double media){
  double nota =  (nota1 + nota2) / 2;
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

/*
parâmetro com valor padrão
Para tornar o parâmetro opcional, utilizamos "[]"
Assim, pode-se definir um valor padrão, atribuindo um valor
*/
String verificarAprovacaoComValorPadrao(double nota1, double nota2, [double media=6]){
  double nota =  (nota1 + nota2) / 2;
  if(nota > media){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
}

