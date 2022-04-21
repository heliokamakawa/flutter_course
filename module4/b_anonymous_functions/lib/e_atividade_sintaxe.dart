/*
Atividade I
Arquivo a - Conseguiu entender o contexto? Explique.
Arquivo b 
1) Qual a diferença em relação ao código do arquivo anterior? Na sua opinão, o que melhorou e o que piorou?
2) O que é e para que serve parâmtros do tipo função? Em que caso utilizamos?
3) O que é função nomeada? Para que serve? Quando utilizamos?
Arquivo c 
1) Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?
2) Entendeu melhor o objetivo do parâmetro do tipo função?
3) O que é e para que serve uma função anônima?
4) Qual a diferença entre função anônima e nomeada? Em qual situção utilizamos cada uma? Pode-se utilizar ambas no mesmo contexto? Explique.
Arquivo d - Qual a diferença em relação ao código anterior? Na sua opinão, o que melhorou e o que piorou?

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
  int anos = 0;
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

// exercício 02 - crie o objeto aluno na definição do parâmetro
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


