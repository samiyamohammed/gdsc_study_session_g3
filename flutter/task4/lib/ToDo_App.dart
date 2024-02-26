// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class Todo {
  late String id;
  late String task;
  late bool isCompleted;
  late DateTime dueDate;
  late String description;

  Todo({
    required this.id,
    required this.task,
    required this.isCompleted,
    required this.dueDate,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'task': task,
      'isCompleted': isCompleted,
      'dueDate': dueDate.toIso8601String(),
      'description': description,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] as String,
      task: map['task'] as String,
      isCompleted: map['isCompleted'] as bool,
      dueDate: DateTime.parse(map['dueDate'] as String),
      description: map['description'] as String,
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late List<Todo> todos = [];

  @override
  void initState() {
    super.initState();
    _loadTodos();
  }

  Future<void> _loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> todoStrings = prefs.getStringList('todos') ?? [];
    setState(() {
      todos = todoStrings.map((json) => Todo.fromMap(jsonDecode(json))).toList();
    });
  }

  Future<void> _saveTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> todoStrings = todos.map((todo) => jsonEncode(todo.toMap())).toList();
    prefs.setStringList('todos', todoStrings);
  }

  void _addTodo(String task, DateTime dueDate, String description) {
    final newTodo = Todo(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      task: task,
      isCompleted: false,
      dueDate: dueDate,
      description: description,
    );
    setState(() {
      todos.add(newTodo);
      _saveTodos();
    });
  }

  void _updateTodoStatus(String id, bool isCompleted) {
    final index = todos.indexWhere((todo) => todo.id == id);
    if (index != -1) {
      setState(() {
        todos[index].isCompleted = isCompleted;
        _saveTodos();
      });
    }
  }

  void _deleteTodo(String id) {
    setState(() {
      todos.removeWhere((todo) => todo.id == id);
      _saveTodos();
    });
  }

  void _editTodo(Todo todo) async {
    final editedTodo = await _showEditTodoDialog(context, todo);
    if (editedTodo != null) {
      setState(() {
        final index = todos.indexWhere((t) => t.id == todo.id);
        if (index != -1) {
          todos[index] = editedTodo as Todo;
          _saveTodos();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text(
                todo.task,
                style: TextStyle(
                  decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: unnecessary_null_comparison
                  if (todo.dueDate != null) Text('Due Date: ${todo.dueDate.toLocal()}'),
                  if (todo.description.isNotEmpty) Text('Description: ${todo.description}'),
                ],
              ),
              leading: Checkbox(
                value: todo.isCompleted,
                onChanged: (value) {
                  _updateTodoStatus(todo.id, value ?? false);
                },
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      _editTodo(todo);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      _deleteTodo(todo.id);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final taskData = await _showAddTodoDialog(context);
          if (taskData != null) {
            _addTodo(taskData['task'], taskData['dueDate'], taskData['description']);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<Map<String, dynamic>?> _showAddTodoDialog(BuildContext context) async {
    String? task;
    DateTime? dueDate;
    String? description;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Todo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  task = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your todo',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  dueDate = await _selectDueDate(context, dueDate);
                },
                child: const Text('Select Due Date'),
              ),
              const SizedBox(height: 16),
              TextField(
                onChanged: (value) {
                  description = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter description',
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
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'task': task,
                  'dueDate': dueDate,
                  'description': description,
                });
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
    return {
      'task': task,
      'dueDate': dueDate,
      'description': description,
    };
  }

  Future<Map<String, dynamic>?> _showEditTodoDialog(BuildContext context, Todo todo) async {
    String? task = todo.task;
    DateTime? dueDate = todo.dueDate;
    String? description = todo.description;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Todo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: task),
                onChanged: (value) {
                  task = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter your todo',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  dueDate = await _selectDueDate(context, dueDate);
                },
                child: const Text('Select Due Date'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: TextEditingController(text: description),
                onChanged: (value) {
                  description = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter description',
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
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'task': task,
                  'dueDate': dueDate,
                  'description': description,
                });
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
    return {
      'task': task,
      'dueDate': dueDate,
      'description': description,
    };
  }

  Future<DateTime?> _selectDueDate(BuildContext context, DateTime? initialDate) async {
    DateTime selectedDate = initialDate ?? DateTime.now();
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (pickedDate != null) {
      return DateTime(pickedDate.year, pickedDate.month, pickedDate.day, selectedDate.hour, selectedDate.minute);
    }
    return null;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoList(),
    );
  }
}
