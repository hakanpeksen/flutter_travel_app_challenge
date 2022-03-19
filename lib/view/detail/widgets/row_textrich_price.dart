part of detail_view;

class RowTextRichPrice extends StatelessWidget {
  const RowTextRichPrice({Key? key}) : super(key: key);
  final text = '\$410';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Text.rich(TextSpan(
              text: text,
              style: context.textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(text: TextConstant.personText, style: context.textTheme.subtitle1)
              ])),
        ),
        ElevatedButtonIcon(
          label: CustomText.bodyText1(TextConstant.continueText, context: context),
          onPressed: () {},
        )
      ],
    );
  }
}
