
  /*
  Variável é um espaço na memória que reservamos para armazenar um dado 
  Um valor que pode "variar", hora é um valor, hora é outro - é por isto que chamamos de variável.
  
  Sintaxe para definir uma variável com tipo explícito: 
  tipo nome_variável = valor; // = representa atribuição
  
  Tipos existentes: String (conjunto de caracteres), char (caractere), double (números com casas decimais), int (números inteiros), bool (valor booleano)
  */

void main(List<String> arguments) {
  print('sample type variables in Dart');
  //definindo variáveis
  String nomeProduto = 'Prestígio';                 //conjunto de caracteres
  String descricaoProduto = 'chocolate';            //conjunto de caracteres
  double precoProduto = 27.2;                       //números com casas decimais
  int quantidadeProduto = 3;                        //números inteiros
  bool produtoDisponivel = true;                    //booleano - só pode ser true ou false
  double total = precoProduto * quantidadeProduto;  //na declaração podemos fazer atribuição com operações envolvendo outras variáveis
  /*
  → não podemos declarar mais de uma variável com o mesmo nome
  String nomeProduto = 'Chokito'; >>>> gera erro
  */
  //podemos atribuir outros valores
  nomeProduto = 'Ferrero Rocher'; //veja que não tem o tipo antes do nome da variável, só estamos atribuindo um novo valor
  //imprimindo com concatenação
  print('o produto '+nomeProduto+' é um '+descricaoProduto); 
  //imprimindo com interpolação - mais fácil, abre a string uma única vez 
  print('o produto ${nomeProduto} é um ${descricaoProduto}'); 
  //na interpolação, quando o nome é simples, não é necessário inserir chaves 
  //a documentação oficial indica a retirada de chaves em nomes simples na interpolação
  print('o produto $nomeProduto é um $descricaoProduto'); 
  //para definir uma String podemos utilizar ' ou ""
  print("o produto $nomeProduto é um $descricaoProduto");
  //podemos utilizar ''' para quebrar linhas nas sentenças
  print('''o produto $nomeProduto é um $descricaoProduto,
    o seu preço é $precoProduto, 
    compramos $quantidadeProduto unidades''');
  /**
  a partir da versão 2.12 do dart as variávies por padrão são Null Safety - não anuláveis por padrão
  nomeProduto = null; >>>> gera erro
  */
  //para declarar uma variável que pode ser nula adicionaos "?" logo após o tipo
  String? nome = null;
}
