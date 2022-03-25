part of detail_view;

class ListViewCirclePhotos extends StatelessWidget {
  const ListViewCirclePhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final horizontal = context.dynamicWidth(0.1);
    // final vertical = context.dynamicWidth(0.1);

    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: context.dynamicWidth(0.1));
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: PngConstant.instance.circleCitiesList.length,
        itemBuilder: (context, index) {
          return Image.asset(
            PngConstant.instance.circleCitiesList[index].imageName.toImagePng,
            fit: BoxFit.cover,
          );
        });
  }
}
