import '../models/task.dart';

/// [TaskRepository] is a Class that handle data operations, such as adding, updating, and deleting tasks.
/// For simplicity, this use a local list to store tasks
class TaskRepository {
  /// private constructor to prevent external instantiation.
  TaskRepository._();

  /// The single instance of class
  static final TaskRepository _instance = TaskRepository._();

  /// Factory constructor to provide access to the singleton instance
  factory TaskRepository() {
    return _instance;
  }

  /// local list of task data
  List<Task> listTask = [];

  /// method to add task
  void addTask(Task task) {
    listTask.add(task);
  }

  /// Method to get task list
  List<Task> getTaskList() {
    return listTask;
  }

  /// Method to mark task to complete by id of task
  void update({required int id, required bool value}) {
    // find task to be updated by id
    final Task oldTask = listTask.firstWhere((item) => item.id == id);

    // Create new task instance with old taks props and change the value of isCompleted to true
    final Task updatedTask = Task(
      id: oldTask.id,
      title: oldTask.title,
      isCompleted: value,
    );

    final taskIndex = listTask.indexOf(oldTask);
    listTask[taskIndex] = updatedTask;
  }

  /// Method to remove task
  void removeTask({required Task task}) {
    listTask.remove(task);
  }
}
