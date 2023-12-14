// task_manager.dart
import 'task_model.dart';

class TaskManager {
  static final TaskManager _instance = TaskManager._internal();

  factory TaskManager() {
    return _instance;
  }

  TaskManager._internal();

  List<TaskModel> tasks = [];
}
