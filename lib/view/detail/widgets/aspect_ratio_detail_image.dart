part of detail_view;

//aspectRatio: 21 / 9,
// aspectRatio: 4 / 3
class AspectRatioImage extends StatelessWidget {
  const AspectRatioImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 3,
      child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(PngConstant.instance.productImageList[1].imageName.toImagePng),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: context.isMediumScreen
                ? const CustomPadding.medium40Horizontal()
                : const CustomPadding.onlyLTR(),
            // Text ve Icon
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              const Spacer(flex: 4),
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
              const Spacer()
            ]),
          )),
    );
  }
}
