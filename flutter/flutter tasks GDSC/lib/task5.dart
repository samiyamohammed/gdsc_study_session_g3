import 'package:flutter/material.dart';
import 'createtask.dart';
import 'taskdetail.dart';
import 'tasklist.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mine',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/tasks': (context) => const TasksPage(),
        '/create-task': (context) => const CreateTaskPage(),
        '/task-detail': (context) => TaskDetailPage(
  taskDetails: const {
    'taskName': 'UI/UX App Design',
    'dueDate': 'April. 29, 2023',
    'description': 'my description',
  },
),
 },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("f.jpg"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/tasks'),
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


