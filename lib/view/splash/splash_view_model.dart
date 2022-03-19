import 'package:flutter/material.dart';

import '../home/home_view.dart';
import 'splash_model.dart';
import 'splash_view.dart';

abstract class SplashViewModel extends State<SplashView> {
  int selectedIndex = 0;

  bool get isLastPage => selectedIndex == SplashModels.splashItems.length - 1;

  void changeIndex(int value) {
    selectedIndex = value;
    setState(() {});
  }

  void goToView() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => const HomeView()));
  }
}
