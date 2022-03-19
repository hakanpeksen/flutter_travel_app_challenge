part of detail_view;

class CardImageLocation extends StatelessWidget {
  const CardImageLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(PngConstant.instance.location1x, color: context.colorScheme.background),
      SizedBox(width: context.dynamicWidth(0.008)),
      CustomText.locationText(TextConstant.homeProductLocation, context: context),
    ]);
  }
}
