import 'package:flutter/material.dart';

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
        '/task-detail': (context) => const TaskDetailPage(),
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

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo List',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset(
              'assets/p.png',
              width: 300,
              height: 280,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Tasks List',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5.0),
            ListTile(
              title: const Text('UI/UX App'),
              subtitle: const Text('Design'),
              trailing: const Text('April. 29, 2023'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            ListTile(
              title: const Text('UI/UX App'),
              subtitle: const Text('Design'),
              trailing: const Text('April. 29, 2023'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            ListTile(
              title: const Text('View Candidates'),
              trailing: const Text('April. 29, 2023'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            ListTile(
              title: const Text('Football cu'),
              subtitle: const Text('Dribbling'),
              trailing: const Text('April. 29, 2023'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
           Column(
  children: [
    ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, '/create-task'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 238, 117, 4),
        foregroundColor: Colors.white,
      ),
      child: const Text('Create Task'),
    ),
    const SizedBox(height: 16), // Adds a vertical space of 16 pixels
  ],
)
          ]
        ),
      ),
    );
  }
}
class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Create New Task'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Main Task Name',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ListTile(
              title: Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'UI/UX App Design',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Text(
            'Due Date',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ListTile(
              leading: const Icon(Icons.calendar_today),
              title: Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  '12/12/2023',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Text(
            'Description',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ListTile(
              title: Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'my description',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          
          Column(
  children: [
    ElevatedButton(
      onPressed: () => Navigator.pushNamed(context, '/task-detail'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 238, 117, 4),
        foregroundColor: Colors.white,
      ),
      child: const Text('Add Task'),
    ),
    const SizedBox(height: 16), // Adds a vertical space of 16 pixels
  ],
)
        ],
      ),
    );
  }
}
class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Task Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/g.png',
               width: 200,
              height: 280,
              fit: BoxFit.contain,
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Title',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ListTile(
              title: Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'UI/UX App Design',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Description',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ListTile(
              title: Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'my description',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Due date',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: ListTile(
               leading: const Icon(Icons.calendar_today),
              title: Container(
                padding: const EdgeInsets.all(8),
                child: const Text(
                  'April. 29, 2023',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}