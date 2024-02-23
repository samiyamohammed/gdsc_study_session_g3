import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'All';
  List<Task> tasks = [];

  final TextEditingController _dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Image.asset('assets/me.jpg'), // Replace with your image path
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildCategoryButton('All'),
                buildCategoryButton('Important'),
                buildCategoryButton('Most Important'),
                buildCategoryButton('Very Important'),
                buildCategoryButton('Less Important'),
              ],
            ),
          ),
          Expanded(
            child: tasks.isEmpty
                ? const Center(
                    child: Text('List is empty'),
                  )
                : ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return buildTaskItem(tasks[index]);
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open task creation dialog
          _showTaskCreationDialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildCategoryButton(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedCategory = category;
          });
        },
        style: ButtonStyle(
          backgroundColor: selectedCategory == category
              ? MaterialStateProperty.all(Colors.blue)
              : null,
        ),
        child: Text(category),
      ),
    );
  }

  Widget buildTaskItem(Task task) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.category),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              // Edit task
              _showTaskEditDialog(task);
            },
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {
              // Delete task
              setState(() {
                tasks.remove(task);
              });
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  void _showTaskCreationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String title = '';
        String category = '';

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text('Add Task'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (value) {
                      title = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Task title',
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      category = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Category',
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: IgnorePointer(
                      child: TextFormField(
                        controller: _dateController,
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      tasks.add(Task(
                        title: title,
                        category: category,
                        date: _selectedDate,
                      ));
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Add'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showTaskEditDialog(Task task) {
    showDialog(
      context: context,
builder: (context) {
        String title = task.title;
        String category = task.category;
        _selectedDate = task.date;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text('Edit Task'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    onChanged: (value) {
                      title = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Task title',
                    ),
                  ),
                  TextField(
                    onChanged: (value) {
                      category = value;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Category',
                    ),
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      _selectDate(context);
                    },
                    child: IgnorePointer(
                      child: TextFormField(
                        controller: _dateController,
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      task.title = title;
                      task.category = category;
                      task.date = _selectedDate;
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Save'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = picked.toString();
      });
    }
  }
}

class Task {
  String title;
  String category;
  DateTime date;

  Task({
    required this.title,
    required this.category,
    required this.date,
  });
}