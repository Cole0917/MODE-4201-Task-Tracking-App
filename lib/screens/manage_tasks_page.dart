import 'package:flutter/material.dart';
import '../models/task_model.dart';
import '../models/task_manager.dart';

class ManageTasksPage extends StatefulWidget {
  const ManageTasksPage({Key? key}) : super(key: key);

  @override
  _ManageTasksPageState createState() => _ManageTasksPageState();
}

class _ManageTasksPageState extends State<ManageTasksPage> {
  TextEditingController _taskController = TextEditingController();
  TaskManager taskManager = TaskManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Tasks'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _taskController,
              decoration: InputDecoration(
                hintText: 'Enter a new task',
                suffixIcon: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      taskManager.tasks
                          .add(TaskModel(name: _taskController.text));
                      _taskController.clear();
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: taskManager.tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(taskManager.tasks[index].name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          _editTask(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteTask(index);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.alarm),
                        onPressed: () {
                          // Implement set reminder functionality
                          // Date picker or show dialog for reminder setting
                        },
                      ),
                      Checkbox(
                        value: taskManager.tasks[index].isComplete,
                        onChanged: (value) {
                          setState(() {
                            taskManager.tasks[index].isComplete = value!;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _editTask(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: TextField(
            controller:
                TextEditingController(text: taskManager.tasks[index].name),
            onChanged: (text) {
              taskManager.tasks[index].name = text;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _deleteTask(int index) {
    setState(() {
      taskManager.tasks.removeAt(index);
    });
  }

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }
}
