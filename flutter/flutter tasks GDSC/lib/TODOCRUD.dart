import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class TaskData {
  final String title;
  final DateTime dueDate;
  final String description;

  TaskData({
    required this.title,
    required this.dueDate,
    required this.description,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mine',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/tasks': (context) => TasksPage(),
        '/create-task': (context) => CreateTaskPage(),
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

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final List<TaskData> tasks = [];

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
            for (var task in tasks) ...[
              ListTile(
                title: Text(task.title),
                onTap: () => Navigator.pushNamed(context, '/task-detail', arguments: task),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => _editTask(task),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () => _deleteTask(task),
                    ),
                  ],
                ),
              ),
            ],
            Column(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(context, '/create-task');
                    if (result != null && result is TaskData) {
                      setState(() {
                        tasks.add(result);
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 238, 117, 4),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Create Task'),
                ),
                const SizedBox(height: 16),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _editTask(TaskData task) async {
    final result = await Navigator.pushNamed(context, '/create-task', arguments: task);
    if (result != null && result is TaskData) {
      setState(() {
        tasks[tasks.indexOf(task)] = result;
      });
    }
  }

  void _deleteTask(TaskData task) {
    setState(() {
      tasks.remove(task);
    });
  }
}

class CreateTaskPage extends StatefulWidget {
  @override
  _CreateTaskPageState createState() => _CreateTaskPageState();
}

class _CreateTaskPageState extends State<CreateTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

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
          _buildTextFormField(
            label: 'Main Task Name',
            controller: titleController,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _selectDueDate(context),
            child: const Text('Select Due Date'),
          ),
          const SizedBox(height: 16),
          _buildTextFormField(
            label: 'Description',
            controller: descriptionController,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _addTask(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 238, 117, 4),
              foregroundColor: Colors.white,
            ),
            child: const Text('Add Task'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTextFormField({required String label, required TextEditingController controller}) {
    return Container(
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
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDueDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  void _addTask(BuildContext context) {
    final taskData = TaskData(
      title: titleController.text,
      dueDate: selectedDate,
      description: descriptionController.text,
    );
    Navigator.pop(context, taskData); // Pass the taskData back to the previous screen
  }
}

class TaskDetailPage extends StatelessWidget {
  const TaskDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskData = ModalRoute.of(context)!.settings.arguments as TaskData;

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
                child: Text(
                  taskData.title,
                  style: const TextStyle(
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
                child: Text(
                  taskData.description,
                  style: const TextStyle(
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
                child: Text(
                  '${taskData.dueDate.day}/${taskData.dueDate.month}/${taskData.dueDate.year}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _editTask(context, taskData),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Edit'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () => _deleteTask(context, taskData),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Delete'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _editTask(BuildContext context, TaskData taskData) async {
    final result = await Navigator.pushNamed(context, '/create-task', arguments: taskData);
    if (result != null && result is TaskData) {
      // ignore: use_build_context_synchronously
      Navigator.pop(context, result); // Pass the updated taskData back to the previous screen
    }
  }

  void _deleteTask(BuildContext context, TaskData taskData) {
    Navigator.pop(context, taskData); // Pass the taskData back to the previous screen for deletion
  }
}
