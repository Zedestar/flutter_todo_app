import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/alert_dialog.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/model/task_structure.dart';
import 'package:todo_app/providers/taskList_provider.dart';

class BottomTaskAdd extends StatefulWidget {
  const BottomTaskAdd({
    super.key,
    // required this.taskList,
    // required this.addTaskFunction,
  });

  // final List<TaskStructure> taskList;
  // final void Function(String) addTaskFunction;

  @override
  State<BottomTaskAdd> createState() => _BottomTaskAddState();
}

class _BottomTaskAddState extends State<BottomTaskAdd> {
  late String taskName;

  late TextEditingController resettingTheInputWidget = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final taskListProvider =
        Provider.of<TasklistProvider>(context, listen: false);
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
                taskListProvider.addTaskInTaskList(taskName);
                theDialog(
                  context: context,
                  backgroundColor: Colors.lightBlueAccent,
                  title: "Successfully",
                  content: "$taskName is successfully added",
                  textColor: Colors.white,
                );
                resettingTheInputWidget.clear();
                setState(() {
                  taskName = '';
                });
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
