class Pessoa {
  String _nome = "";
  double? _peso;
  double? _altura;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() => _nome;
  void setNome(String nome) => _nome = nome;

  double? getPeso() => _peso;
  void setPeso(double peso) => _peso = peso;

  double? getAltura() => _altura;
  void setAltura(double altura) => _altura = altura;

  double calcularImc(double peso, double altura) {
    return peso / (altura * altura);
  }

  String classificarIMC(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau II(severa)";
    } else if (imc >= 40) {
      return "Obesidade Grau III(mórbida)";
    } else {
      return "";
    }
  }

  @override
  String toString() {
    return {"Nome": getNome(), "Peso": getPeso(), "Altura": getAltura()}
        .toString();
  }
}
