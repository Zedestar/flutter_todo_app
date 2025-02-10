import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task(
      {super.key,
      required this.taskName,
      required this.isTaskChecked,
      required this.onPressingTask});

  final bool? isTaskChecked;
  final String taskName;
  final void Function(bool?) onPressingTask;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            widget.taskName,
            style: TextStyle(fontSize: 25.0),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Checkbox(value: widget.isTaskChecked, onChanged: widget.onPressingTask),
      ],
    );
  }
}
