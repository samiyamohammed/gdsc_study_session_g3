void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];

  int findMaximum(List<int> numbers) {
    int maximum = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > maximum) {
        maximum = numbers[i];
      }
    }
    return maximum;
  }

  int findMinimum(List<int> numbers) {
    int minimum = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] < minimum) {
        minimum = numbers[i];
      }
    }
    return minimum;
  }

  int calculateSum(List<int> numbers) {
    int sum = 0;
    for (int i = 0; i < numbers.length; i++) {
      sum += numbers[i];
    }
    return sum;
  }

  double calculateAverage(List<int> numbers) {
    int sum = calculateSum(numbers);
    double average = sum / numbers.length;
    return average;
  }

  int maximum = findMaximum(numbers);
  int minimum = findMinimum(numbers);
  int sum = calculateSum(numbers);
  double average = calculateAverage(numbers);

  print('List of numbers: $numbers');
  print('Maximum number: $maximum');
  print('Minimum number: $minimum');
  print('Sum of numbers: $sum');
  print('Average of numbers: $average');
}