part of home_view;

class ListViewProductCard extends StatelessWidget {
  const ListViewProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: PngConstant.instance.productImageList.length,
        itemBuilder: (context, index) {
          return SizedBox(width: context.dynamicWidth(0.7), child: buildProductCard(index));
        });
  }

  Column buildProductCard(int index) {
    return Column(
      children: [
        Expanded(
          child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: CircularBorderRadius.sixTeen()),
              child: Column(children: [
                Expanded(child: buildmage(index)),
                ProductCardBottom(productIndex: index),
              ])),
        ),
      ],
    );
  }

  Image buildmage(int index) {
    return Image.asset(PngConstant.instance.productImageList[index].imageName.toImagePng,
        fit: BoxFit.fill);
  }
}
