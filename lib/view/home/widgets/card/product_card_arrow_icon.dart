part of home_view;

class ProductCardArrowIcon extends StatelessWidget {
  const ProductCardArrowIcon({Key? key, required this.productIndex}) : super(key: key);

  final int productIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailView(productIndex: productIndex)),
        );
      },
      child: Container(
          width: WidgetSize.size28,
          height: WidgetSize.size28,
          decoration: CustomDecoration.filter(context),
          child: IconButton(
              onPressed: null,
              icon: Icon(Icons.keyboard_arrow_right_sharp,
                  size: IconSizeConstant.arrowIconSize, color: context.colorScheme.background))),
    );
  }
}
