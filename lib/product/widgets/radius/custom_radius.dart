import 'package:flutter/material.dart';
import '../../init/utility/border_radius_utils.dart';

class CircularBorderRadius extends BorderRadius {
  CircularBorderRadius({required Sizes radius}) : super.circular(radius.rawValue());

  CircularBorderRadius.zero() : super.circular(Sizes.zero.rawValue());
  CircularBorderRadius.four() : super.circular(Sizes.four.rawValue());
  CircularBorderRadius.six() : super.circular(Sizes.six.rawValue());
  CircularBorderRadius.eight() : super.circular(Sizes.eight.rawValue());
  CircularBorderRadius.ten() : super.circular(Sizes.ten.rawValue());
  CircularBorderRadius.twelve() : super.circular(Sizes.twelwe.rawValue());
  CircularBorderRadius.sixTeen() : super.circular(Sizes.sixTeen.rawValue());
  CircularBorderRadius.twenty() : super.circular(Sizes.twenty.rawValue());
  CircularBorderRadius.twentyFour() : super.circular(Sizes.twentyFour.rawValue());
  CircularBorderRadius.twentyFive() : super.circular(Sizes.twentyFive.rawValue());

  CircularBorderRadius.thirty() : super.circular(Sizes.thirty.rawValue());
}
