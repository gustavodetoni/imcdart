import 'dart:convert';
import 'dart:io';

import 'package:imcdart/classes/pessoa.dart';

void main(List<String> arguments) {
  print("Bem-vindos ao calculador de IMC(Índice de Massa Corporal)");
  print("Qual o seu nome? ");
  String nome = stdin.readLineSync(encoding: utf8) ?? "";
  double peso, altura;
  try {
    print("Qual o seu peso em kgs? (Ex.: 60)");
    peso = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
    print("Qual sua altura em metros? (Ex.: 1.80)");
    altura = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
  } catch (e) {
    print(
        "Erro ao ler a entrada. Certifique-se de que digitou um número válido.");
    return;
  }
  var pessoa = Pessoa(nome, peso, altura);
  var imctotal = pessoa.calcularImc(peso, altura);
  var imc = imctotal.toStringAsFixed(1);

  print("Seu IMC é: $imc");
  print(pessoa.classificarIMC(imctotal));
}
