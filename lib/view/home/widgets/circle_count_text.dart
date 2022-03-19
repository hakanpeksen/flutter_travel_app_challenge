part of home_view;

class CircleCountText extends StatelessWidget {
  const CircleCountText({Key? key}) : super(key: key);
  final text = '49';

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: WidgetSize.size26,
        height: WidgetSize.size26,
        decoration: CustomDecoration.review(context),
        child: CustomText.circleText(text, context: context));
  }
}
