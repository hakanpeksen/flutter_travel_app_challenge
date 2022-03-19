import '../../../view/home/model/city_model.dart';
import '../../../view/home/model/product_model.dart';
import '../text/text_constants.dart';

class PngConstant {
  PngConstant._init();

  static PngConstant? _instace;
  static PngConstant get instance => _instace ??= PngConstant._init();

// İcons
  final String notification = 'ic_notification_group2x'.toPNG;
  final String filter = 'ic_filter'.toPNG;
  final String location1x = 'ic_location1x'.toPNG;

// Image
  final String womanCircle = 'header_top_circle'.toImagePng;

  final List<CitiesModel> circleCitiesList = [
    CitiesModel(imageName: "india", title: TextConstant.homeCitiesIndia),
    CitiesModel(imageName: "newyork", title: TextConstant.homeCitiesNewyork),
    CitiesModel(imageName: "australia", title: TextConstant.homeCitiesAust),
    CitiesModel(imageName: "poland", title: TextConstant.homeCitiesPoland)
  ];
  // Card Image
  final String cardImage1 = 'cardImage1'.toImagePng;
  final String cardImage2 = 'cardImage2'.toImagePng;

  final List<ProductModel> productImageList = [
    ProductModel(imageName: "cardImage1"),
    ProductModel(imageName: "cardImage2"),
  ];

  // User Review Image
  final String userReviewOne1x = 'user_review_imageone1x'.toImagePng;
  final String userReviewTwo1x = 'user_review_imagetwo1x'.toImagePng;
  final String userReviewThree1x = 'user_review_imagethree1x'.toImagePng;
}

extension PngConstantExtension on String {
  String get toPNG => 'assets/png/$this.png';
}

extension PngImageExtension on String {
  String get toImagePng => 'assets/images/$this.png';
}
