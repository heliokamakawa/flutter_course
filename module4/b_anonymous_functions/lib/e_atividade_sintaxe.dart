/*
Atividade I 
1). Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?
2). O que é e para que serve parâmtros do tipo função? Em que caso utilizamos?

Atividade II - Defina 3 funções do mesmo contexto e uma interface para estas funções
→ Interface Salario 
→ Receber salario e um valor. Bonificar o valor no salário e informar o % adicioando em relação ao salário.
→ Receber salario e um valor. Descontar o valor no salário e informar o % descontado em relação ao salário.
→ Receber salario e um valor. Informar o % que o valor da comissão representa em relação ao salário.
Observação: desenvolver o código para cada exemplo apresentado.

Atividade III
Pensar em um projeto único 
Fazer um exemplo seu
Fazer comentários de tudo que entendeu
Observação: desenvolver o código para cada exemplo apresentado.
*/

// Atividade IV → Converta as funções nomeadas abaixo em funções anônimas e execute-as.

void verificaPar(int numero){
  if(numero % 2 == 0){
    print('é par');
  }else{
    print('é impart');
  }
}

void calculaIdade(int anoNacimento){
  int anoAtual = DateTime.now().year; 
  int idade = anoAtual - anoNacimento;
  print('a idade é $idade anos');
}

void calculaIMC(double peso, double altura){
  double imc = peso / (altura *  altura);
  print('o imc é $imc');
}

bool idadeMinimaHabilitacao(int anoNacimento){
  int anoAtual = DateTime.now().year; 
  int idade = anoAtual - anoNacimento;
  if(idade >= 18){
    return true;
  }else{
    return false;
  }
}

int anosParaAposentar(int anoNacimento, int mesesContribuicao, bool masculino){
  int anos;
  //implemente
  return anos;
}

// Atividade V → Refaça a atividade anterior, convertendo as funções em Arrow Function.


// Atividade VI → exercício de sintaxe - faça a chamada das funções abaixo:
// exercício 01
void exeUm(String nomeCurso, double cargaHorariaCurso, Function(String nomeProfessor, String areaAluno, String titulo),
  int qtdeSeries){
    //imprimir todos os parâmetros
}

// exercício 02 - crie a o objeto aluno na definição do parâmetro
class Aluno{
  int? ra;
  String? nome;
  String? cpf;
  int? anoMatricula;
}

void exeDois(String nomeCurso, double cargaHorariaCurso, Function(String nomeProfessor, String areaAluno, String titulo),
  int qtdeSeries, Aluno aluno){
    //imprimir todos os parâmetros
}


