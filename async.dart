import 'dart:async';

void main() async {
  // Create a list of asynchronous operations
  final operations = [
    // Simulate fetching data from a network
    Future.delayed(const Duration(seconds: 1), () => 'Data from network'),
    // Simulate reading data from a file
    Future.delayed(const Duration(seconds: 2), () => 'Data from file'),
    // Simulate performing a database operation
    Future.delayed(const Duration(seconds: 3), () => 'Data from database'),
  ];

  // Wait for all operations to complete and collect the results
  final results = await Future.wait(operations);

  // Print the results
  for (final result in results) {
    print(result);
  }
}
