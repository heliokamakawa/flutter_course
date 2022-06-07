
import 'package:test/test.dart';

import '../bin/dart_application_1.dart';

void main() {
  group('teste da função calcularIMC', (){
    test('imc deve apresentar 26.54320987654321 ', () {
      expect(calcularIMC(alturaEmMt: 1.80,pesoEmKl: 86), 26.54320987654321);
    });
    test('peso negativo - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: 1.80,pesoEmKl: -10), throwsException);
    });
    test('peso fora do limite - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: 1.80,pesoEmKl: 201), throwsException);
    });
    test('altura negativa - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: -1.80,pesoEmKl: 80), throwsException);
    });
    test('altura fora do limite - deve gerar exception', () {
      expect(()=>calcularIMC(alturaEmMt: 3,pesoEmKl: 80), throwsException);
    });
  });
  
  group('teste da função classificarPesoLipschitz', (){
    test('classificação deve apresentar baixo peso', () {
      expect(classificarPesoLipschitz(IMC: 20), 'baixo peso');
    });
    test('classificação deve apresentar adequado', () {
      expect(classificarPesoLipschitz(IMC: 26), 'adequado');
    });
    test('classificação deve apresentar sobrepeso', () {
      expect(classificarPesoLipschitz(IMC: 28), 'sobrepeso');
    });
    test('classificação deve gerar exception', () {
      expect(()=>classificarPesoLipschitz(IMC:-10), throwsException);
    });
  });

  group('teste da função classificarPesoOMS', (){
    test('classificação deve apresentar baixo peso', () {
      expect(classificarPesoOMS(IMC: 18), 'baixo peso');
    });
    test('classificação deve apresentar adequado', () {
      expect(classificarPesoOMS(IMC: 24), 'adequado');
    });
    test('classificação deve apresentar sobrepeso', () {
      expect(classificarPesoOMS(IMC: 28), 'sobrepeso');
    });
    test('classificação deve apresentar obesidade', () {
      expect(classificarPesoOMS(IMC: 31), 'obesidade');
    });
    test('classificação deve gerar exception', () {
      expect(()=>classificarPesoOMS(IMC:-10), throwsException);
    });
  });
}
