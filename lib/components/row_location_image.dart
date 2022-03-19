part of home_view;

class CommonCardImageLocation extends StatelessWidget {
  const CommonCardImageLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(PngConstant.instance.location1x),
      SizedBox(width: context.dynamicWidth(0.004)),
      Text(TextConstant.homeProductLocation,
          style: context.textTheme.button?.copyWith(color: context.colorScheme.secondary))
    ]);
  }
}
