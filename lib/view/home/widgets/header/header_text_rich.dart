part of home_view;

class HeaderTextRich extends StatelessWidget {
  const HeaderTextRich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
        text: TextConstant.homeheaderText1,
        style: context.textTheme.subtitle2,
        children: <TextSpan>[
          TextSpan(text: TextConstant.homeheaderText2, style: context.textTheme.subtitle1)
        ]));
  }
}
