import 'dart:math';

class Calculator {
  Calculator._();

  static double imcCalc(double weight, double height) {
    if (weight <= 0 || height <= 0) {
      return -1;
    } else {
      try {
        return weight / pow(height, 2);
      } catch (e) {
        return -1;
      }
    }
  }
}