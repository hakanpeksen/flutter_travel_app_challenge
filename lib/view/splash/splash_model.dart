class SplashModel {
  final String imageName;

  SplashModel(this.imageName);
  String get imageWithPath => 'assets/svg/$imageName.svg';
}

class SplashModels {
  static final List<SplashModel> splashItems = [
    SplashModel('onboard'),
    SplashModel('grass'),
    SplashModel('pana'),
  ];
}
