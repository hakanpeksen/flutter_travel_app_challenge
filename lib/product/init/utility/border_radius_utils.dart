enum Sizes {
  zero,
  four,
  five,
  six,
  eight,
  ten,
  twelwe,
  fourTeen,
  sixTeen,
  twenty,
  twentyFour,
  twentyFive,
  thirty,
  extraCircle
}

extension SizesExtension on Sizes {
  double rawValue() {
    switch (this) {
      case Sizes.zero:
        return 0;
      case Sizes.four:
        return 4;
      case Sizes.five:
        return 5;
      case Sizes.six:
        return 6;
      case Sizes.eight:
        return 8;
      case Sizes.ten:
        return 10;
      case Sizes.twelwe:
        return 12;
      case Sizes.fourTeen:
        return 14;
      case Sizes.sixTeen:
        return 16;
      case Sizes.twenty:
        return 20;
      case Sizes.twentyFour:
        return 24;
      case Sizes.twentyFive:
        return 25;
      case Sizes.thirty:
        return 30;
      case Sizes.extraCircle:
        return 100;
    }
  }
}
