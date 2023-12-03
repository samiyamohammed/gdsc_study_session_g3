import 'dart:async';

void main() {
  print('Program started');

  Future.delayed(Duration(seconds: 5), () {
    printCurrentTime();
  });


  print('After calling delayed function');
}

void printCurrentTime() {
  DateTime now = DateTime.now();
  String formattedTime = '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
  print('Current time: $formattedTime');
}

