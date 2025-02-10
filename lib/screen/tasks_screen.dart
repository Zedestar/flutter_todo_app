import 'package:flutter/material.dart';
import 'package:todo_app/components/customezed_button.dart';
import 'package:todo_app/components/expanded_widget.dart';
import 'package:todo_app/components/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  bool isChecked = true;

  void togglingCheckedButton(bool? value) {
    setState(() {
      if (value == true) {
        isChecked = false;
      } else {
        isChecked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: Material(
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: [
                      Text("Task 1"),
                      Text("Task 2"),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Material(
                  elevation: 20.0,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Task(
                              taskName: "Task 1",
                              isTaskChecked: true,
                              onPressingTask: (value) {},
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Task(
                              taskName: "I will buy eggs",
                              isTaskChecked: false,
                              onPressingTask: (value) {},
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Task(
                              taskName: "I will do some flutter project",
                              isTaskChecked: true,
                              onPressingTask: (value) {
                                print(
                                  'The current value is  $value',
                                );
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            MyCustomizedButton(
                              buttonIcon: Icons.add,
                              whenPressed: () {},
                              backgroundColor: Colors.black54,
                              iconColor: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
