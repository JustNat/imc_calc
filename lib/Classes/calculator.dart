import 'dart:math';

class Calculator {
  Calculator._();

  static String imcCalc(double weight, double height) {
    if (weight <= 0 || height <= 0) {
      throw ArgumentError('Insira valores válidos');
    } else {
      try {
        height = height / 100;
        return (weight / pow(height, 2)).toStringAsFixed(2);
    } catch (e) {
        return '$e';
    }
    }
  }

  static String imcResult(double imc) {
    if (imc <= 0) {
      throw ArgumentError('IMC inválido');
    } else if (imc < 18.5) {
      return 'Baixo peso';
    } else if (imc >= 18.5 && imc <= 24.9) {
      return 'Peso normal';
    } else if (imc >= 25 && imc <= 29.9) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc <= 34.9) {
      return 'Obesidade grau 1';
    } else if (imc >= 35 && imc <= 39.9) {
      return 'Obesidade grau 2';
    } else {
      return 'Obesidade grau 3';
    }
  }

}