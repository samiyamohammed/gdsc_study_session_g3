import 'package:flutter/material.dart';
import './random_Words.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 59, 1, 49),
      ),
      home: const RandomWords(),
    );
  }
}
