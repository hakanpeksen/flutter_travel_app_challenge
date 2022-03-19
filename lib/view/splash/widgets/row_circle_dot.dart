part of splash_view;

class RowCircleDot extends StatelessWidget {
  const RowCircleDot({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(SplashModels.splashItems.length, (index) {
          return SizedBox(
              height: WidgetSize.size14,
              width: WidgetSize.size14,
              child: Card(
                  color: selectedIndex == index
                      ? context.colorScheme.primary
                      : context.colorScheme.primary.withOpacity(0.4)));
        }));
  }
}
