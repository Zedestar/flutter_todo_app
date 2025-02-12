import 'package:flutter/material.dart';
import 'package:todo_app/components/alert_dialog.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/model/task_structure.dart';

class BottomTaskAdd extends StatefulWidget {
  const BottomTaskAdd({super.key, required this.taskList});

  final List<TaskStructure> taskList;

  @override
  State<BottomTaskAdd> createState() => _BottomTaskAddState();
}

class _BottomTaskAddState extends State<BottomTaskAdd> {
  late String taskName;

  late TextEditingController resettingTheInputWidget = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 30.0,
      ),
      child: Column(
        children: [
          Text(
            "Add Task",
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w500,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            controller: resettingTheInputWidget,
            decoration: kTextFieldDecorationStyles,
            onChanged: (value) {
              setState(() {
                taskName = value;
              });
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            style: kTextButtomStyles,
            onPressed: () {
              if (taskName.isEmpty) {
                theDialog(
                  context: context,
                  backgroundColor: Colors.black87,
                  title: "Error",
                  content: "Task name can't be empty",
                  textColor: Colors.white38,
                );
              } else {
                TaskStructure newTask = TaskStructure(
                  taskName: taskName,
                  isItDone: false,
                );
                widget.taskList.add(newTask);
                theDialog(
                  context: context,
                  backgroundColor: Colors.lightBlueAccent,
                  title: "Successfully",
                  content: "$taskName is successfully added",
                  textColor: Colors.white38,
                );
                resettingTheInputWidget.clear();
                setState(() {
                  taskName = '';
                });
                for (int i = 0; i < widget.taskList.length; i++) {
                  print("This is task $i ${widget.taskList[i].taskName}");
                }
              }
            },
            child: Text(
              "Add",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
