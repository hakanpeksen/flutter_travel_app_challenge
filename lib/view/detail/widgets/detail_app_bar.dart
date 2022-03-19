part of detail_view;

class DetailAppBar extends StatelessWidget implements PreferredSize {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const CustomPadding.onlyLTR(),
        child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(TextConstant.detailText, style: Theme.of(context).textTheme.headline6),
            leading:
                CardIconButton(onPressed: () => Navigator.pop(context), iconData: Icons.arrow_back),
            actions: [
              CardIconButton(
                  onPressed: () => Navigator.pop(context), iconData: Icons.more_horiz_outlined)
            ]));
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
