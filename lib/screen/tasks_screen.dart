import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/components/add_task_widget.dart';
import 'package:todo_app/components/customezed_button.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/providers/taskList_provider.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // List<TaskStructure> taskList = [];
  // void addTaskFunction(String taskName) {
  //   TaskStructure newTask = TaskStructure(
  //     taskName: taskName,
  //     isItDone: false,
  //   );
  //   setState(() {
  //     taskList.add(newTask);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print("The buidl is rebuild mamamamamamammama");
    final taskListProvider = Provider.of<TasklistProvider>(
      context,
      listen: false,
    );
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
                          whenPressed: () {
                            for (int i = 0;
                                i < taskListProvider.getTaskList.length;
                                i++) {
                              print(
                                  "Task no $i with taskName ${taskListProvider.getTaskList[i].taskName}");
                            }
                          },
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
                          child: Consumer<TasklistProvider>(
                            builder: (context, taskListProvider, child) {
                              return Scrollbar(
                                child: ListView.builder(
                                  itemCount:
                                      taskListProvider.getTaskList.length,
                                  itemBuilder: (context, index) {
                                    final task = taskListProvider
                                        .getTaskList[index]; // Get task once

                                    return TaskTile(
                                      taskName: task.taskName,
                                      isJobDone: task.isItDone,
                                      onLongPress: () {
                                        taskListProvider.removeTask(index);
                                      },
                                      onChange: (value) {
                                        taskListProvider
                                            .toggleTaskStatus(index);
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyCustomizedButton(
                              buttonIcon: Icons.add,
                              whenPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => BottomTaskAdd(
                                      // addTaskFunction: addTaskFunction,
                                      // taskList: taskList,
                                      ),
                                );
                              },
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
