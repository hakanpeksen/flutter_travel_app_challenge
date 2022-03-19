part of home_view;

class HeaderPartTextIcon extends StatelessWidget {
  const HeaderPartTextIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(PngConstant.instance.womanCircle, scale: 0.7),
      SizedBox(width: context.dynamicWidth(0.035)),
      const HeaderTextRich(),
      const Spacer(),
      const HeaderNotificationImage()
    ]);
  }
}
