part of detail_view;

class ListViewCirclePhotos extends StatelessWidget {
  const ListViewCirclePhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: context.dynamicWidth(0.04));
        },
        scrollDirection: Axis.horizontal,
        itemCount: PngConstant.instance.circleCitiesList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const CustomPadding.left20(),
            child: Row(children: [
              Column(children: [
                Image.asset(PngConstant.instance.circleCitiesList[index].imageName.toImagePng),
                context.emptySizedHeightBoxLow, // height: 0.01;
              ])
            ]),
          );
        });
  }
}
