part of detail_view;

class ContentTextRich extends StatelessWidget {
  const ContentTextRich({Key? key}) : super(key: key);
  final text = ' Read More...';

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 6,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: TextConstant.detailPageContent,
        style: TextStyle(color: context.colorScheme.secondary),
        children: <TextSpan>[
          TextSpan(
              text: text,
              style: context.textTheme.subtitle2
                  ?.copyWith(fontWeight: FontWeight.bold, color: context.colorScheme.primary))
        ],
      ),
    );
  }
}
