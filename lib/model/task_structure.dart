import 'package:flutter/material.dart';

class TaskStructure {
  TaskStructure({required this.taskName, required this.isItDone});

  late final String taskName;
  late bool? isItDone;

  void togglingTheTask() {
    isItDone = !(isItDone ?? false);
  }
}
