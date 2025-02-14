import 'package:flutter/material.dart';
import 'package:todo_app/model/task_structure.dart';

class TasklistProvider with ChangeNotifier {
  final List<TaskStructure> _taskList = [];

  List<TaskStructure> get getTaskList => _taskList;

  void addTaskInTaskList(String taskName) {
    TaskStructure newTask = TaskStructure(taskName: taskName, isItDone: false);

    _taskList.add(newTask);
    notifyListeners();
  }

  void toggleTaskStatus(int index) {
    _taskList[index].isItDone = !_taskList[index].isItDone;
    notifyListeners();
  }
}
