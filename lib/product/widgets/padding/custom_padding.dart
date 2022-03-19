import 'package:flutter/material.dart';

import '../../constants/widget_size.dart';

class CustomPadding extends EdgeInsets {
  const CustomPadding() : super.all(10);

  const CustomPadding.onlyLTR()
      : super.only(top: WidgetSize.size21, left: WidgetSize.size33, right: WidgetSize.size33);
  const CustomPadding.onlyTB() : super.only(top: WidgetSize.size12, bottom: WidgetSize.size17);
  const CustomPadding.onlyLR() : super.only(left: WidgetSize.size10, right: WidgetSize.size30);

  const CustomPadding.onlyLTRB()
      : super.only(
            left: WidgetSize.size30,
            top: WidgetSize.size27,
            right: WidgetSize.size30,
            bottom: WidgetSize.size17);

  const CustomPadding.mediumRight() : super.only(right: WidgetSize.size33);
  const CustomPadding.mediumHorizontal() : super.symmetric(horizontal: WidgetSize.size18);

  const CustomPadding.highHorizontal() : super.symmetric(horizontal: WidgetSize.size48);

  const CustomPadding.top6() : super.only(top: WidgetSize.size6);
  const CustomPadding.right30() : super.only(right: WidgetSize.size30);
  const CustomPadding.left20() : super.only(left: WidgetSize.size20);

  // const CustomPadding.normalHorizontal() : super.symmetric(horizontal: 30);
  // const CustomPadding.mediumTop() : super.only(top: 20);
  // const CustomPadding.onlyLTRB() : super.only(top: 50.0, left: 30, right: 30, bottom: 0);
}
