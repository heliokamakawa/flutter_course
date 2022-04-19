// Atividade I → Converta as funções nomeadas abaixo em funções anônimas e execute-as.

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

// Atividade II → Refaça a atividade anterior, convertendo as funções em Arrow Function.


// Atividade III → exercício de sintaxe - faça a chamada das funções abaixo:
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


