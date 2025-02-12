import 'package:flutter/material.dart';

const kTextFieldDecorationStyles = InputDecoration(
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
);

var kTextButtomStyles = TextButton.styleFrom(
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
);
