part of home_view;

class HeaderPartInput extends StatelessWidget {
  const HeaderPartInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(flex: 8, child: SearchInputField(data: Theme.of(context))),
      const Spacer(),
      const FilterImageContainer(),
    ]);
  }
}
