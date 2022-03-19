import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;

  const CustomIcon({Key? key, required this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Icon(iconData, color: context.colorScheme.background);
  }
}
