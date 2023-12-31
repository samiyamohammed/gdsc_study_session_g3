void calculateGrade(double score) {
  if (score >= 0 && score <= 100) {
    var grade;
    if (score >= 90) {
      grade = 'A';
    } else if (score >= 80) {
      grade = 'B';
    } else if (score >= 70) {
      grade = 'C';
    } else if (score >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }
    print('Your grade is: $grade');
  } else {
    print('Invalid score. Please enter a number between 0 and 100.');
  }
}

void main() {
  String userInput = '85'; // Replace with your desired input
  double? score = double.tryParse(userInput);
  calculateGrade(score ?? -1);
}