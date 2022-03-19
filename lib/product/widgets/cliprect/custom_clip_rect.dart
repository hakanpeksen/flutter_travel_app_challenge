import 'package:flutter/material.dart';

import '../../init/utility/border_radius_utils.dart';

class CustomClipRect extends ClipRRect {
  CustomClipRect({Key? key, required Widget child})
      : super(
            key: key,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(Sizes.thirty.rawValue()),
                topLeft: Radius.circular(Sizes.thirty.rawValue())),
            child: child);
}
