part of home_view;

class FilterImageContainer extends StatelessWidget {
  const FilterImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: WidgetSize.size35,
        height: WidgetSize.size35,
        decoration: CustomDecoration.filter(context),
        child: Image.asset(PngConstant.instance.filter));
  }
}
