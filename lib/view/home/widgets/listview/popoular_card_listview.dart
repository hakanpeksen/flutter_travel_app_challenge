part of home_view;

class ListViewPopoularCard extends StatelessWidget {
  const ListViewPopoularCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: PngConstant.instance.productImageList.length,
        itemBuilder: (context, index) {
          return SizedBox(
              width: context.dynamicWidth(0.80),
              child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: CircularBorderRadius.sixTeen()),
                  child: Padding(
                    padding: const CustomPadding.onlyLR(),
                    child: Row(children: [
                      Image.asset(PngConstant.instance.productImageList[index].imageName.toImagePng,
                          width: 120, height: 80, fit: BoxFit.cover),
                      SizedBox(width: context.dynamicWidth(0.009)),
                      const PopoularCardBottom(),
                    ]),
                  )));
        });
  }
}
