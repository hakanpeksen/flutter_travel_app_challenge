part of home_view;

class ListViewProductCard extends StatelessWidget {
  const ListViewProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.dynamicHeight(0.33),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: PngConstant.instance.productImageList.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: context.dynamicWidth(0.7), child: buildProductCard(index));
                  }))
        ]));
  }

  Card buildProductCard(int index) {
    return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: CircularBorderRadius.sixTeen()),
        child: Padding(
            padding: const CustomPadding.onlyTB(),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              buildExpandedImage(index),
              ProductCardBottom(productIndex: index),
            ])));
  }

  Expanded buildExpandedImage(int index) {
    return Expanded(
        child: Image.asset(PngConstant.instance.productImageList[index].imageName.toImagePng,
            fit: BoxFit.cover));
  }
}
