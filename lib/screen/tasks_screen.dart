import 'package:flutter/material.dart';
import 'package:todo_app/components/customezed_button.dart';
import 'package:todo_app/components/expanded_widget.dart';
import 'package:todo_app/components/task_tile.dart';

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
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyCustomizedButton(
                          buttonIcon: Icons.menu,
                          whenPressed: () {},
                          backgroundColor: Colors.white,
                          iconColor: Colors.lightBlueAccent,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "My Todos",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 1.0,
                        ),
                        Text(
                          "12 Tasks",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
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
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 30,
                      right: 30,
                      bottom: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Scrollbar(
                            child: ListView(
                              children: <Widget>[
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                                TaskTile(
                                  taskName: "Taking my Assignment",
                                  isTaskChecked: false,
                                  onPressingTask: (isTaskChecked) {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyCustomizedButton(
                              buttonIcon: Icons.add,
                              whenPressed: () {},
                              backgroundColor: Colors.lightBlueAccent,
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
