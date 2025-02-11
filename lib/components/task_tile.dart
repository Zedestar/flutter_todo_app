import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
    required this.taskName,
  });

  final String taskName;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isTaskCheck = true;
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
      titleTextStyle: TextStyle(
        decoration: (isTaskCheck ?? false) ? TextDecoration.lineThrough : null,
        fontSize: 20.0,
      ),
      trailing: Checkbox(
        value: isTaskCheck,
        onChanged: (newValue) {
          setState(() {
            isTaskCheck = newValue;
          });
        },
      ),
    );
  }
}
