import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/tasks': (context) => TasksPage(),
        '/create-task': (context) => CreateTaskPage(),
        '/task-detail': (context) => TaskDetailPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("f.jpg"),
              fit: BoxFit.none,
            ),
          ),
        ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/tasks'),
                  child: Text('Get Started'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks List'),
      ),
      body: ListView(
        children: [
           Container(
  child: Image.asset(
    'assets/p.png',
    width: 300, // Set desired width
    height: 1000, // Set desired height
    fit: BoxFit.cover, // Adjust fit property as needed
  ),
  // Other widget properties...
),
          ListTile(
            title: Text('UI/UX App Design'),
          ),
          ListTile(
            title: Text('UI/UX App development'),
          ),
          ListTile(
            title: Text('View Candidates'),
          ),
          ListTile(
            title: Text('Football Dribbling Practice'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/create-task'),
            child: Text('Create Task'),
          ),
        ],
      ),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Create New Task'),
      ),
      body: ListView(
        children: [
          Text('Main Task Name'),
          ListTile(
            title: Text('UI/UX App Design'),
          ),
          Text('Due Date'),
          ListTile(
            title: Text('12/12/2023'),
          ),
          Text('Description'),
          TextFormField(
            initialValue: 'my description',
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/task-detail'),
            child: Text('Add Task'),
          ),
        ],
      ),
    );
  }
}

class TaskDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Detail'),
      ),
      body: Column(
        children: [
          Container(
  child: Image.asset(
    'assets/g.png',
    width: 300, // Set desired width
    height: 1000, // Set desired height
    fit: BoxFit.cover, // Adjust fit property as needed
  ),
  // Other widget properties...
),
          Text('Title'),
          ListTile(
            title: Text('UI/UX App Design'),
          ),
          Text('Description'),
          ListTile(
            title: Text('my description'),
          ),
        ],
      ),
    );
  }
}
