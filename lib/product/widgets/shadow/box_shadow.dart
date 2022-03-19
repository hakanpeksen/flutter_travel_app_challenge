import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BoxShadowCustom extends BoxShadow {
  // HeaderNotificationImage
  BoxShadowCustom(BuildContext context)
      : super(
            color: context.colorScheme.onSurface,
            offset: const Offset(0, 3.22),
            blurRadius: 4.84,
            spreadRadius: 0.12);
}
