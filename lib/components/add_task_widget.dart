import 'package:flutter/material.dart';

class BottomTaskAdd extends StatelessWidget {
  const BottomTaskAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50.0,
        vertical: 30.0,
      ),
      child: Column(
        children: [
          Text("Add Task"),
          TextField(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
            ),
            onPressed: null,
            child: Text(
              "Add",
            ),
          ),
        ],
      ),
    );
  }
}
