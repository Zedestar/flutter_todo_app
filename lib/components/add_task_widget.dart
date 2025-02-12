import 'package:flutter/material.dart';
import 'package:todo_app/components/alert_dialog.dart';
import 'package:todo_app/model/task_structure.dart';

class BottomTaskAdd extends StatefulWidget {
  const BottomTaskAdd({super.key});

  @override
  State<BottomTaskAdd> createState() => _BottomTaskAddState();
}

class _BottomTaskAddState extends State<BottomTaskAdd> {
  @override
  Widget build(BuildContext context) {
    String taskName = '';
    List<TaskStructure> taskList = [];

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
            decoration: InputDecoration(
              hintText: "Add here the task to be added",
              hintStyle: TextStyle(
                fontSize: 15,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 1.0,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            onChanged: (value) {
              taskName = value;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              minimumSize: Size(
                300,
                40,
              ),
            ),
            onPressed: () {
              if (taskName.isEmpty) {
                myAlertDialog(context);
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
