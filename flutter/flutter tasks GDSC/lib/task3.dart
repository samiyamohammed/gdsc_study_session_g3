import 'dart:async';

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    if (b == 0) {
      throw const IntegerDivisionByZeroException();
    }
    return a / b;
  }
}

void main() async {
  final calculator = Calculator();

  try {
    double result;

    result = calculator.add(10, 5);
    print('Addition result: $result');
    result = calculator.subtract(10, 5);
    print('Subtraction result: $result');

    result = calculator.multiply(10, 5);
    print('Multiplication result: $result');

    result = calculator.divide(10, 2);
    print('Division result: $result');

    result = calculator.divide(10, 0);

    await Future.delayed(const Duration(seconds: 5));
    print('Result after a 5-second delay: $result');
  } catch (e) {
    print('Error: $e');
  }
}
