part of splash_view;

class SplashImage extends StatelessWidget {
  const SplashImage({Key? key, required this.model}) : super(key: key);

  final SplashModel model;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(model.imageWithPath);
  }
}
