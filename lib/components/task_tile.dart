import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
    required this.taskName,
    required this.isJobDone,
    required this.onChange,
    required this.onLongPress,
  });

  final String taskName;
  final bool? isJobDone;
  final void Function(bool?) onChange;
  final VoidCallback onLongPress;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  // bool? isTaskCheck = true;
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
        decoration:
            (widget.isJobDone ?? false) ? TextDecoration.lineThrough : null,
        fontSize: 20.0,
      ),
      onLongPress: widget.onLongPress,
      trailing: Checkbox(
        value: widget.isJobDone,
        onChanged: widget.onChange,
      ),
    );
  }
}
