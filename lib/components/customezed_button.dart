import 'package:flutter/material.dart';

class MyCustomizedButton extends StatelessWidget {
  const MyCustomizedButton({
    super.key,
    required,
    required this.buttonIcon,
    required this.whenPressed,
    required this.backgroundColor,
    required this.iconColor,
  });
  final VoidCallback whenPressed;
  final IconData buttonIcon;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: backgroundColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: whenPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          buttonIcon,
          color: iconColor,
        ),
      ),
    );
  }
}
