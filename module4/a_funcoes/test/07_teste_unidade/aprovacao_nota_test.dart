import 'package:dart_function/07_teste_unidade/aprovacao_nota.dart';
import 'package:test/test.dart';


void main() {

  // para definir um único teste
  test('média com notas acima da média', () {
    expect(calcularMedia(nota1: 10, nota2: 8), 9);
  });

  //definir um grupo de testes para uma função, utilizamos group
  group('teste cálculo média', (){
    test('notas acima da média com casas decimais', () {
      expect(calcularMedia(nota1: 9, nota2: 8), 8.5);
    });
    test('notas abaixo da média', () {
      expect(calcularMedia(nota1: 5, nota2: 3), 4);
    });
    test('media com casas decimais', () {
      expect(calcularMedia(nota1: 5, nota2: 4), 4.5);
    });
    test('exceção da nota negativa - 1º parâmetro', () {
      expect(() => calcularMedia(nota1: -5, nota2: 3), throwsException);
    });
    test('exceção da nota negativa - 2º parâmetro', () {
      expect(() => calcularMedia(nota1: 6, nota2: -8), throwsException);
    });
  });
}

/**
01) Faça um teste para verificar se a função calcularMaiorNota. De que forma pode-se executar este teste?
02) Quantos testes de unidade é o ideal para uma determinada função? Justifique. 
03) Elabore um grupo testes de unidade para função calcularMaiorNota. De que forma pode-se executar este grupo?
04) É possível executar todos os testes de um arquivo específico? Se sim, informe como.
05) É possível executar todos os testes de um projeto? Se sim, informe como.
06) Quais são os passos e os cuidados necessários para definir/escrever testes de unidade?
07) Escreva um grupo de teste para aprovação presença.
*/
