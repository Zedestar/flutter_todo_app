import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/providers/taskList_provider.dart';
import 'package:todo_app/screen/tasks_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TasklistProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TasksScreen(),
    );
  }
}
