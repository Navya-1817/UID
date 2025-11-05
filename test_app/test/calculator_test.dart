import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/calculator.dart';

void main() {
  test("Addition test", () {
    final calc = Calculator();
    expect(calc.add(2, 3), 5);
  });

  test("Subtraction test", () {
    final calc = Calculator();
    expect(calc.subtract(5, 3), 2);
  });
}
