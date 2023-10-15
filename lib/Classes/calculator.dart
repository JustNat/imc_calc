import 'dart:math';

class Calculator {
  Calculator._();

  static String imcCalc(double weight, double height) {
    if (weight <= 0 || height <= 0) {
      return 'Insira valores válidos';
    } else {
      try {
        height = height / 100;
        return (weight / pow(height, 2)).toStringAsFixed(2);
    } catch (e) {
        return '$e';
    }
    }
  }
}