import 'package:test/test.dart';
import 'package:imcdart/classes/pessoa.dart';

void main() {
  group('Pessoa', () {
    test('Calcular IMC', () {
      final pessoa = Pessoa('João', 70, 1.75);
      expect(pessoa.calcularImc(70, 1.75), equals(22.857142857142858));
    });

    test('Classificar IMC - Abaixo do Peso', () {
      final pessoa = Pessoa('Maria', 50, 1.65);
      expect(pessoa.classificarIMC(pessoa.calcularImc(50, 1.65)), equals('Magreza leve'));
    });

    test('Classificar IMC - Peso Normal', () {
      final pessoa = Pessoa('Carlos', 70, 1.75);
      expect(pessoa.classificarIMC(pessoa.calcularImc(70, 1.75)), equals('Saudável'));
    });
  });
}
