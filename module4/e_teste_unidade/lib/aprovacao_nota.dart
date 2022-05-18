
import 'dart:io';

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
    aprovado = verificarAprovacao(nota1: n1, nota2: n2,caclularNota: calcularMedia); 
  }else if(escolha == 2){
    aprovado = verificarAprovacao(nota1: n1, nota2: n2,caclularNota: (double nota1, double nota2){ 
      double maior = nota1;
      if(nota2 > nota1) maior = nota2;
      return maior;
    });
  } else {
    aprovado = verificarAprovacao(nota1: n1, nota2: n2,caclularNota: (){ 
      n1 = n1 * 2; // nota1 tem peso 2
      double media = (n1 + n2) / 3;
      return media;
    });
  }
  print( aprovado ? 'aprovado' : 'reprovado' );
}

bool verificarAprovacao({required double nota1,required double nota2,required Function caclularNota}){
  validarNota(nota1: nota1, nota2: nota2);
  double nota = caclularNota(nota1,nota2);
  return (nota >= 6);
}

double calcularMedia({required double nota1,required double nota2}){
  validarNota(nota1: nota1, nota2: nota2);
  double media = (nota1 + nota2) / 2;
  return media;
}

double calcularMaiorNota(double nota1, double nota2){
  validarNota(nota1: nota1, nota2: nota2);
  double maior = nota1;
  if(nota2 > nota1) maior = nota2;
  return maior;
}

double calcularMenorNota(double nota1, double nota2){
  validarNota(nota1: nota1, nota2: nota2);
  double menor = nota1;
  if(nota2 < nota1) menor = nota2;
  return menor;
}

void validarNota({required double nota1,required double nota2,double limiteNota = 10}){
  var notaMinima = 0.0;
  if(nota1 < notaMinima || limiteNota > 10){
    throw Exception('A nota1 deverá ser de 0 a 10.');
  }
  if(nota2 < notaMinima || limiteNota > 10){
    throw Exception('A nota1 deverá ser de 0 a 10.');
  }
}
