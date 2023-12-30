// import 'dart:async';

// class Calculator {
//   double add(double a, double b) {
//     return a + b;
//   }

//   double subtract(double a, double b) {
//     return a - b;
//   }

//   double multiply(double a, double b) {
//     return a * b;
//   }

//   double divide(double a, double b) {
//     if (b == 0) {
//       throw IntegerDivisionByZeroException();
//     }
//     return a / b;
//   }
// }

// void main() async {
//   final calculator = Calculator();

//   try {
//     double result;

//     // Example: performing addition
//     result = calculator.add(10, 5);
//     print('Addition result: $result');

//     // Example: performing subtraction
//     result = calculator.subtract(10, 5);
//     print('Subtraction result: $result');

//     // Example: performing multiplication
//     result = calculator.multiply(10, 5);
//     print('Multiplication result: $result');

//     // Example: performing division
//     result = calculator.divide(10, 2);
//     print('Division result: $result');

//     // Example: handling division by zero
//     result = calculator.divide(10, 0);

//     // The program should print the result after a 5-second delay
//     await Future.delayed(Duration(seconds: 5));
//     print('Result after a 5-second delay: $result');
//   } catch (e) {
//     print('Error: $e');
//   }
// }
import 'dart:async';
import 'dart:io';

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
      throw IntegerDivisionByZeroException();
    }
    return a / b;
  }
}

void main() async {
  final calculator = Calculator();

  try {
    // Get the number of calculations from the user
    print('How many numbers do you want to calculate?');
    int count = int.parse(stdin.readLineSync()!);

    // Get user input for each number
    List<double> numbers = [];
    for (int i = 0; i < count; i++) {
      print('Enter number ${i + 1}: ');
      double num = double.parse(stdin.readLineSync()!);
      numbers.add(num);
    }

    // Get the operator from the user
    print('Enter the operator (+, -, *, /): ');
    String operator = stdin.readLineSync()!;

    double result;

    // Perform the operation based on the operator
    switch (operator) {
      case '+':
        result = numbers.reduce((a, b) => calculator.add(a, b));
        break;
      case '-':
        result = numbers.reduce((a, b) => calculator.subtract(a, b));
        break;
      case '*':
        result = numbers.reduce((a, b) => calculator.multiply(a, b));
        break;
      case '/':
        result = numbers.reduce((a, b) => calculator.divide(a, b));
        break;
      default:
        throw Exception('Invalid operator');
    }

    print('Result: $result');

    // The program should print the result after a 5-second delay
    await Future.delayed(Duration(seconds: 5));
    print('Result after a 5-second delay: $result');
  } catch (e) {
    print('Error: $e');
  }
}

