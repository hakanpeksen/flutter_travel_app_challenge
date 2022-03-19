part of detail_view;

class ElevatedButtonIcon extends StatelessWidget {
  const ElevatedButtonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.arrow_back, color: context.colorScheme.background),
        label: CustomText.bodyText1(TextConstant.continueText, context: context),
        style: ElevatedButton.styleFrom(fixedSize: const Size(160, 43)),
      ),
    );
  }
}
