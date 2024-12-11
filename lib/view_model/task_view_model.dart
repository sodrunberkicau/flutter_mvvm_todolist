import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm_todolist/model/models/task.dart';
import 'package:flutter_mvvm_todolist/model/repositories/task_repository.dart';

class TaskViewModel extends ChangeNotifier {
  final TaskRepository _repository = TaskRepository();

  List<Task> listTasks = [];

  void addTask({required String title}) {
    int id = 0;
    if (_repository.getTaskList().isNotEmpty) {
      id = _repository.getTaskList().last.id + 1;
    } else {
      id = 1;
    }

    final newTask = Task(
      id: id,
      title: title,
      isCompleted: false,
    );
    _repository.addTask(newTask);
    listTasks = _repository.getTaskList();
    notifyListeners();
  }

  void update({required int id, required bool value}) {
    _repository.update(id: id, value: value);
    listTasks = _repository.getTaskList();
    notifyListeners();
  }

  void removeTaskById({required Task task}) {
    _repository.removeTask(task: task);
    listTasks = _repository.getTaskList();
    notifyListeners();
  }
}
