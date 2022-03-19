import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key, required this.child, this.buttonColor, required this.onPressed})
      : super(key: key);

  final Widget child;
  final Color? buttonColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(minimumSize: const Size(60, 26), primary: buttonColor),
        child: child);
  }
}
