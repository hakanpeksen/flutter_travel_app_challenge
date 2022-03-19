library splash_view;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/elevated_button_icon.dart';
import '../../product/constants/text/text_constants.dart';
import '../../product/constants/widget_size.dart';
import '../../product/widgets/padding/custom_padding.dart';
import '../home/home_view.dart';
import 'splash_model.dart';
import 'package:kartal/kartal.dart';

import 'splash_view_model.dart';
part 'widgets/splash_image.dart';
part 'widgets/row_circle_dot.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const CustomPadding.highHorizontal(),
      child: Column(children: [
        Expanded(
            child: PageView.builder(
                controller: pageViewController,
                itemCount: SplashModels.splashItems.length,
                onPageChanged: (value) {
                  changeIndex(value);
                },
                itemBuilder: (context, index) {
                  return Column(children: [
                    Expanded(flex: 5, child: SplashImage(model: SplashModels.splashItems[index])),
                    buildOnBoardTitle(context),
                    context.emptySizedHeightBoxLow3x,
                    buildOnBoardSubTitle(context),
                    Expanded(child: RowCircleDot(selectedIndex: selectedIndex)),
                    buildvisibilitybutton(context),
                    const Spacer(),
                  ]);
                }))
      ]),
    ));
  }

  Text buildOnBoardSubTitle(BuildContext context) {
    return Text(TextConstant.onBoardSubTitle,
        textAlign: TextAlign.center,
        style: context.textTheme.button?.copyWith(color: context.colorScheme.onPrimary));
  }

  Text buildOnBoardTitle(BuildContext context) {
    return Text(TextConstant.onBoardTitle,
        textAlign: TextAlign.center, style: context.textTheme.headline6);
  }

  Visibility buildvisibilitybutton(BuildContext context) {
    return Visibility(
      visible: isLastPage,
      child: ElevatedButtonIcon(
          onPressed: goToView,
          label: CustomText.bodyText1(TextConstant.getStartedText, context: context)),
    );
  }
}
