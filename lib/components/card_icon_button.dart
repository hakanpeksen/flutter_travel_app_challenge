import 'package:flutter/material.dart';

import '../product/constants/icon_size_constant.dart';
import '../product/widgets/radius/custom_radius.dart';

class CardIconButton extends StatelessWidget {
  const CardIconButton({Key? key, required this.onPressed, required this.iconData})
      : super(key: key);

  final VoidCallback onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: CircularBorderRadius.twentyFive()),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(iconData),
        iconSize: IconSizeConstant.cardIconSize,
      ),
    );
  }
}
