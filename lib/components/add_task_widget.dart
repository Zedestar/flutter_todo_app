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
          TextField(),
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
            onPressed: null,
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
