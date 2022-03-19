part of detail_view;

class StackImage extends StatelessWidget {
  const StackImage({Key? key, required this.productIndex}) : super(key: key);

  final int productIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Image.asset(PngConstant.instance.productImageList[productIndex].imageName.toImagePng,
          fit: BoxFit.fill),
      Padding(
          padding: const CustomPadding.onlyLTRB(),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Spacer(flex: 6),
            CustomText.detailHomeProduct(TextConstant.homeProductMisty, context: context),
            Row(children: [
              const CardImageLocation(),
              const Spacer(),
              Row(children: [
                const CustomIcon(iconData: Icons.share),
                context.emptySizedWidthBoxLow,
                const CustomIcon(iconData: Icons.favorite_border_rounded)
              ])
            ]),
            const Spacer(),
          ])),
    ]);
  }
}
