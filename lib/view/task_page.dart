import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/task_view_model.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Todo List App'),
      ),
      body: SafeArea(
        child: Consumer<TaskViewModel>(
          builder: (context, taskViewModel, child) {
            final tasks = taskViewModel.listTasks;
            return tasks.isEmpty
                ? const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.task_alt_sharp,
                            size: 80,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Belum Ada Taks,\nCoba Tambahkan Tasks Baru',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final taskItem = tasks[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(taskItem.title),
                          tileColor: Colors.purple[50],
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Checkbox(
                                value: taskItem.isCompleted,
                                onChanged: (value) {
                                  taskViewModel.update(
                                    id: taskItem.id,
                                    value: value ?? false,
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              IconButton(
                                onPressed: () {
                                  taskViewModel.removeTaskById(task: taskItem);
                                },
                                icon: const Icon(
                                  Icons.delete_forever,
                                ),
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 16.0,
          right: 6,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          onPressed: () {
            final titleTextController = TextEditingController();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Tambah Task Baru"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: titleTextController,
                        decoration: const InputDecoration(
                          labelText: 'Judul Task',
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Batal',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        final String title = titleTextController.text;
                        final taskViewModel =
                            Provider.of<TaskViewModel>(context, listen: false);
                        taskViewModel.addTask(title: title);
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Tambah',
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: const Icon(
            Icons.add,
            size: 24,
          ),
        ),
      ),
    );
  }
}
