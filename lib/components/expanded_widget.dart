import 'package:flutter/material.dart';

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget(
      {super.key,
      required this.expandedFlex,
      required this.myExpandedWidgetColor,
      required this.column});
  final int expandedFlex;
  final Column column;
  final Color myExpandedWidgetColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandedFlex,
      child: Material(
        color: myExpandedWidgetColor,
        child: Column(),
      ),
    );
  }
}
