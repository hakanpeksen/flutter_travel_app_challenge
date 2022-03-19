import 'package:flutter/material.dart';

import 'product/init/theme/theme_manager.dart';
import 'view/splash/splash_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppThemeLight.instance.themeDataLight,
      home: const SplashView(),
    );
  }
}
