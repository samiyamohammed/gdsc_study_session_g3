import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  final Map<String, String> taskDetails;

  TaskDetailPage({Key? key, required this.taskDetails}) : super(key: key);

  // rest of the code...


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
                child: Text(
                  taskDetails['taskName'] ?? 'No Task Name',
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
                  taskDetails['description'] ?? 'No Description',
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
                  taskDetails['dueDate'] ?? 'No Due Date',
                  style: const TextStyle(
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
