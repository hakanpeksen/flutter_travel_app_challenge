part of home_view;

class ListViewCities extends StatelessWidget {
  const ListViewCities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: context.dynamicWidth(0.12));
        },
        scrollDirection: Axis.horizontal,
        itemCount: PngConstant.instance.circleCitiesList.length,
        itemBuilder: (context, index) {
          return Row(children: [
            Column(children: [
              Image.asset(PngConstant.instance.circleCitiesList[index].imageName.toImagePng),
              context.emptySizedHeightBoxLow, // height: 0.01;
              cityListTitle(index, context)
            ])
          ]);
        });
  }

  Text cityListTitle(int index, BuildContext context) {
    return Text(PngConstant.instance.circleCitiesList[index].title,
        style: context.textTheme.caption?.copyWith(fontFamily: TextConstant.fontFamilyTechna));
  }
}
