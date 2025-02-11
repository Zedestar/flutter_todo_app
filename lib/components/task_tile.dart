import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile(
      {super.key,
      required this.taskName,
      required this.isTaskChecked,
      required this.onPressingTask});

  final bool? isTaskChecked;
  final String taskName;
  final void Function(bool?) onPressingTask;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
      titleTextStyle: TextStyle(fontSize: 20.0),
      trailing: Checkbox(
          value: widget.isTaskChecked, onChanged: widget.onPressingTask),
    );
  }
}
