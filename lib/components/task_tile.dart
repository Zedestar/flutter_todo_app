import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task(
      {super.key,
      required this.taskName,
      required this.isTaskChecked,
      required this.onPressingTask});

  final bool? isTaskChecked;
  final Title taskName;
  final void Function(bool?) onPressingTask;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: widget.taskName,
      trailing: widget.isTaskChecked,
    );
  }
}
