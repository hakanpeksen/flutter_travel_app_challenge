import 'package:flutter/material.dart';

import '../radius/custom_radius.dart';

class CustomDecoration extends BoxDecoration {
  CustomDecoration(BuildContext context) : super(borderRadius: CircularBorderRadius.ten());

// FilterImageContainer,ProductCardArrowIcon
  CustomDecoration.filter(BuildContext context)
      : super(borderRadius: CircularBorderRadius.eight(), gradient: buildGradient());

// CircleCountText
  CustomDecoration.review(BuildContext context)
      : super(borderRadius: CircularBorderRadius.sixTeen(), gradient: buildGradient());

  static LinearGradient buildGradient() {
    return const LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [
      Color(0xFFF78E48),
      Color(0xFFF05A22),
    ]);
  }
}

  // CustomDecoration.onlyLeftAndRight(BuildContext context)
  //     : super(
  //           borderRadius: BorderRadius.only(
  //             bottomLeft: Radius.circular(Sizes.twenty.rawValue()),
  //             bottomRight: Radius.circular(Sizes.twenty.rawValue()),
  //           ),
  //           color: context.colorScheme.onSecondary);