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

    // Example: performing addition
    result = calculator.add(10, 5);
    print('Addition result: $result');

    // Example: performing subtraction
    result = calculator.subtract(10, 5);
    print('Subtraction result: $result');

    // Example: performing multiplication
    result = calculator.multiply(10, 5);
    print('Multiplication result: $result');

    // Example: performing division
    result = calculator.divide(10, 2);
    print('Division result: $result');

    // Example: handling division by zero
    result = calculator.divide(10, 0);

    // The program should print the result after a 5-second delay
    await Future.delayed(const Duration(seconds: 5));
    print('Result after a 5-second delay: $result');
  } catch (e) {
    print('Error: $e');
  }
}