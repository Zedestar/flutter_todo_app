import 'package:flutter/material.dart';

void theDialog({
  required BuildContext context,
  required Color backgroundColor,
  required String title,
  required Color textColor,
  required String content,
}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: backgroundColor,
          title: Text(
            title,
            style: TextStyle(color: textColor),
          ),
          content: Text(
            content,
            style: TextStyle(
              color: textColor,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Okay"),
            )
          ],
        );
      });
}
