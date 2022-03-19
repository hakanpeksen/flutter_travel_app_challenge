part of home_view;

class PopoularCardStack extends StatelessWidget {
  const PopoularCardStack({Key? key}) : super(key: key);
  final text = '52 reviews';

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
      Image.asset(PngConstant.instance.userReviewOne1x),
      Positioned(left: WidgetSize.size18, child: Image.asset(PngConstant.instance.userReviewTwo1x)),
      Positioned(
          left: WidgetSize.size40, child: Image.asset(PngConstant.instance.userReviewThree1x)),
      const Positioned(left: WidgetSize.size60, child: CircleCountText()),
      Positioned(left: WidgetSize.size90, child: CustomText.reviewsText(text, context: context))
    ]);
  }
}
