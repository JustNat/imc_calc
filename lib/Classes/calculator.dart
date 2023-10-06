import 'dart:math';

class Calculator {
  double _imc = 0;

double imcCalc(double weight, double height) {
  _imc = weight / pow(height, 2);
  return _imc;
}

}