part of home_view;

class PopoularCardBottom extends StatelessWidget {
  const PopoularCardBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText.headline6(TextConstant.homeProductMisty, context: context),
          SizedBox(height: context.dynamicHeight(0.0032)),
          const CommonCardImageLocation(),
          SizedBox(height: context.dynamicHeight(0.01)),
          const PopoularCardStack(),
        ]);
  }
}
