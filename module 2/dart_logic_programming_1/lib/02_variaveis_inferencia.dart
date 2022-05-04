void main(List<String> arguments) {
  print('sample inference variables');
  //para definir uma variável com inferência de tipo: var nome_variável = atribuição;
  var nomeProduto = "Ferrero Rocher";     //é uma String
  var descricaoProduto = 'chocolate';     //é uma String
  var precoProduto = 27.2;                //é um double
  var quantidadeProduto = 3;              //é um inteiro
  var produtoDisponivel = true;           //é um booleano
  var valor = null;                       //como o tipo é definido na atribuição, neste caso o valor pode ser nulo
  print('''o produto $nomeProduto é um $descricaoProduto,
    o seu preço é $precoProduto, 
    compramos $quantidadeProduto unidades''');
}

/*
  A variável nomeProduto é um tipo dinâmico ou estático?
  → ESTÁTICO!!! Na atribuição, o dart faz a inferência do valor atribuído e defini o tipo
  var nomeProduto = "Ferrero Rocher"; → neste momento nomeProduto vira uma String
  Assim, uma vez que é definida como String, não há como atribuir outros tipos
  nomeProduto = 10; >>>> gera erro, visto que estamos atribuindo um inteiro em nomeProduto que é uma String
  */
