import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
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
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/create-task'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 238, 117, 4),
                foregroundColor: Colors.white,
              ),
              child: const Text('Create Task'),
            ),
          ],
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
        children: [
          const Text('Main Task Name'),
          const ListTile(
            title: Text('UI/UX App Design'),
          ),
          const Divider(), // Add a divider between the lists
          const Text('Due Date'),
          const ListTile(
            title: Text('12/12/2023'),
          ),
          const Divider(), // Add a divider between the lists
          const Text('Description'),
          TextFormField(
            initialValue: 'my description',
          ),
          const SizedBox(height: 10), // Add some spacing between text input and button
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/task-detail'),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 238, 117, 4), // Orange color
              foregroundColor: Colors.white,
            ),
            child: const Text('Add Task'),
          ),
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
        title: const Text('Task Detail'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/g.png',
              width: 300, // Adjust the width as needed
              height: 300, // Adjust the height as needed
            ),
          ),
          const SizedBox(height: 10), // Add some spacing between the image and the text
          const Text('Title'),
          const ListTile(
            title: Text('UI/UX App Design'),
          ),
          const Divider(), // Add a divider between the title and description
          const Text('Description'),
          const ListTile(
            title: Text('my description'),
          ),
        ],
      ),
    );
  }
}
