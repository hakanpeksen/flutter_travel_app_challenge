import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ElevatedButtonIcon extends StatelessWidget {
  const ElevatedButtonIcon({Key? key, required this.label, required this.onPressed})
      : super(key: key);
  final Widget label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(Icons.arrow_back, color: context.colorScheme.background),
        label: label,
        style: ElevatedButton.styleFrom(fixedSize: const Size(160, 43)),
      ),
    );
  }
}
