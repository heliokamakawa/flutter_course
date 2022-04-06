import 'dart:io';

void execute() {
  print('sample data input');
  /*
    para fazer a entrada de dados é necessário fazer a importação 'dart:io'
  */

  stdin.readByteSync(); //realizando a leitura de linha

  /*
    apesar de realizar a leitura está faltando 2 coisas: 
    → imprimir o que é desejado; e
    → armazenar o valor
  */

  var nomeProduto;
  print('informe o nome do produto:');                //imprimindo o que é desejado
  nomeProduto = stdin.readLineSync();                 //amazendo a leitura em nomeProduto
  print('o nome digitado foi $nomeProduto');          //imprimindo o resultado

  print('informe a descrição do produto:');           //imprimindo o que é desejado
  var descricaoProduto = stdin.readLineSync();        //declarando e amazendo a leitura na variável
  print('o nome digitado foi $descricaoProduto');     //imprimindo o resultado
  
}