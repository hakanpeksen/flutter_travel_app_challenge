part of home_view;

class CustomRowText extends StatelessWidget {
  final Widget? child;
  const CustomRowText({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      child ?? const Text(''),
      CustomText.viewText(TextConstant.homeViewAll, context: context),
    ]);
  }
}
