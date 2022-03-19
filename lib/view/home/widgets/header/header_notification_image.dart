part of home_view;

class HeaderNotificationImage extends StatelessWidget {
  const HeaderNotificationImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const CustomPadding.top6(),
        width: WidgetSize.size40,
        height: WidgetSize.size40,
        decoration: BoxDecoration(
            color: context.colorScheme.background,
            borderRadius: CircularBorderRadius.twenty(),
            boxShadow: [BoxShadowCustom(context)]),
        child: Image.asset(PngConstant.instance.notification));
  }
}
