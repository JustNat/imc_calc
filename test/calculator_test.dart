import 'package:test/test.dart';
import 'package:imc_calc/Classes/calculator.dart';

void main() {
  group('Testes métodos Calculator', () {
    test('Teste do método imcCalc (primeiro)', () {
      expect(Calculator.imcCalc(60, 177), '19.15');
    });
    test('Teste do método imcCalc (segundo)', () {
      expect(Calculator.imcCalc(59, 161), '22.76');
    });
    test('Teste método imcResult baixo peso', () {
      expect(Calculator.imcResult(18.4), 'Baixo peso');
    });
    test('Teste método imcResult peso normal', () {
      expect(Calculator.imcResult(19.15), 'Peso normal');
    });
    test('Teste método imcResult sobrepeso', () {
      expect(Calculator.imcResult(27), 'Sobrepeso');
    });
    test('Teste método imcResult obesidade 1', () {
      expect(Calculator.imcResult(31), 'Obesidade grau 1');
    });
    test('Teste método imcResult obesidade 2', () {
      expect(Calculator.imcResult(39.9), 'Obesidade grau 2');
    });
    test('Teste método imcResult obesidade 3 (primeiro)', () {
      expect(Calculator.imcResult(40), 'Obesidade grau 3');
    });
    test('Teste método imcResult obesidade 3 (segundo)', () {
      expect(Calculator.imcResult(100), 'Obesidade grau 3');
    });
  });
  group('Testes que esperam exceção - métodos Calculator', () {
    test('imcCalc com ambos argumentos 0 ou negativos', () {
      expect(() => Calculator.imcCalc(0, -12), throwsArgumentError);
    });
    test('imcCalc com height 0 ou negativo', () {
      expect(() => Calculator.imcCalc(59, -1), throwsArgumentError);
    });
    test('imcCalc com weight 0 ou negativo', () {
      expect(() => Calculator.imcCalc(0, 165), throwsArgumentError);
    });
    test('imcResult com imc 0', () {
      expect(() => Calculator.imcResult(0), throwsArgumentError);
    });
    test('imcResult com imc negativo', () {
      expect(() => Calculator.imcResult(-54), throwsArgumentError);
    });
  });
}
