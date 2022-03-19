part of home_view;

class ProductCardBottom extends StatelessWidget {
  const ProductCardBottom({Key? key, required this.productIndex}) : super(key: key);
  final int productIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const CustomPadding.mediumHorizontal(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomText.headline6(TextConstant.homeProductMisty, context: context),
            SizedBox(height: context.dynamicWidth(0.0032)),
            const CommonCardImageLocation(),
          ]),
          ProductCardArrowIcon(productIndex: productIndex),
        ],
      ),
    );
  }
}
