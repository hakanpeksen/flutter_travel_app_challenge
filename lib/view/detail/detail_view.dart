library detail_view;

import 'package:flutter/material.dart';
import '../../components/custom_elevated_button.dart';
import '../../components/custom_icon.dart';
import '../../product/constants/image/png_constants.dart';
import '../home/home_view.dart';
import '/product/constants/text/text_constants.dart';

import '../../product/widgets/padding/custom_padding.dart';
import '../../components/card_icon_button.dart';
import 'package:kartal/kartal.dart';

part 'widgets/detail_app_bar.dart';
part 'widgets/listview_circle_photos.dart';
part 'widgets/row_location.dart';
part 'widgets/elevated_button_icon.dart';
part 'widgets/row_textrich_price.dart';
part 'widgets/content_textrich.dart';

part 'widgets/stack_image.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.productIndex}) : super(key: key);

  final int productIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DetailAppBar(),
        body: Padding(
          padding: const CustomPadding.onlyLTR(),
          child: Column(children: [
            // Image
            Expanded(flex: 6, child: StackImage(productIndex: productIndex)),
            // Circle List
            SizedBox(height: context.dynamicHeight(0.09), child: const ListViewCirclePhotos()),
            //  Buttons
            Row(children: [
              CustomElevatedButton(
                  onPressed: () {},
                  child: CustomText.buttonText(TextConstant.detailButton, context: context)),
              context.emptySizedWidthBoxLow3x,
              CustomElevatedButton(
                onPressed: () {},
                child: CustomText.buttonText(TextConstant.reviewButton, context: context),
                buttonColor: context.colorScheme.background,
              )
            ]),
            context.emptySizedHeightBoxLow, // height: 0.01
            // Content
            const ContentTextRich(),
            const Spacer(),
            // Footer
            const Expanded(child: RowTextRichPrice()),
            context.emptySizedHeightBoxLow3x
          ]),
        ));
  }
}
