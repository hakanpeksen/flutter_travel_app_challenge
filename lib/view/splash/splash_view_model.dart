import 'package:flutter/material.dart';

import '../home/home_view.dart';
import 'splash_model.dart';
import 'splash_view.dart';
import 'package:kartal/kartal.dart';

abstract class SplashViewModel extends State<SplashView> {
  int selectedIndex = 0;

  bool get isLastPage => selectedIndex == SplashModels.splashItems.length - 1;

  final pageViewController = PageController();

  void changeIndex(int value) {
    selectedIndex = value;
    setState(() {});
  }

  void buttonControl() {
    if (pageViewController.page != SplashModels.splashItems.length - 1) {
      pageViewController.animateToPage((pageViewController.page!.toInt() + 1),
          duration: context.durationNormal, curve: Curves.easeOutSine);
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (BuildContext context) => const HomeView()));
    }
  }
}
