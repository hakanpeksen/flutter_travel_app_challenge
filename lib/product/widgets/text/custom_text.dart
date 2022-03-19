part of home_view;

class CustomText extends Text {
  const CustomText(String data, {Key? key}) : super(data, key: key);

  // ProductCardBottom,PopoularCardBottom => homeProductMisty
  CustomText.headline6(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.headline6
                ?.copyWith(color: context.colorScheme.onSecondary, fontSize: 14));

// homefindText,homeOurProperties,homePopoular
  CustomText.commonText(String data, {Key? key, required BuildContext context})
      : super(data, key: key, style: context.textTheme.headline6);

// TextConstant.homeViewAll
  CustomText.viewText(String data, {Key? key, required BuildContext context})
      : super(data, key: key, style: context.textTheme.button);

// Detail Page => homeProductMisty
  CustomText.detailHomeProduct(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.headline6?.copyWith(color: context.colorScheme.background));

// Detail Page => Review, Detail Button
  CustomText.buttonText(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.button?.copyWith(
                color: context.colorScheme.onSecondary, fontFamily: TextConstant.fontFamilyTechna));

// Detail Page => homeProductLocation
  CustomText.locationText(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.button?.copyWith(color: context.colorScheme.background));

// Detail Page => ElevatedButtonIcon
  CustomText.bodyText1(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.bodyText1
                ?.copyWith(color: context.colorScheme.background, fontWeight: FontWeight.bold));

//Home=>  CircleCountText
  CustomText.circleText(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.caption
                ?.copyWith(fontSize: 10, color: context.colorScheme.background));

//Home=> reviews
  CustomText.reviewsText(String data, {Key? key, required BuildContext context})
      : super(data,
            key: key,
            style: context.textTheme.caption?.copyWith(color: context.colorScheme.onSecondary));
}
