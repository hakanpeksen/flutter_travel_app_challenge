library detail_view;

import 'package:flutter/material.dart';
import '../../components/custom_elevated_button.dart';
import '../../components/custom_icon.dart';
import '../../components/elevated_button_icon.dart';
import '../../product/constants/image/png_constants.dart';
import '../home/home_view.dart';
import '/product/constants/text/text_constants.dart';

import '../../product/widgets/padding/custom_padding.dart';
import '../../components/card_icon_button.dart';
import 'package:kartal/kartal.dart';

part 'widgets/detail_app_bar.dart';
part 'widgets/listview_circle_photos.dart';
part 'widgets/row_location.dart';

part 'widgets/row_textrich_price.dart';
part 'widgets/content_textrich.dart';

part 'widgets/stack_image.dart';
part 'widgets/aspect_ratio_detail_image.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.productIndex}) : super(key: key);

  final int productIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DetailAppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            height: context.height,
            child: Column(
              children: [
                //1 Image Alanı
                const Expanded(flex: 6, child: AspectRatioImage()),
                //2 ListView Circle  Alanı
                Expanded(flex: context.isMediumScreen ? 2 : 1, child: const ListViewCirclePhotos()),
                context.emptySizedHeightBoxLow, // height * 0.01
                //3 Buttons
                Expanded(
                    child: Padding(
                        padding: const CustomPadding.left30(),
                        child: Row(children: [
                          context.isMediumScreen ? const Spacer() : const SizedBox.shrink(),
                          CustomElevatedButton(
                              onPressed: () {},
                              child: CustomText.buttonText(TextConstant.detailButton,
                                  context: context)),
                          context.emptySizedWidthBoxLow3x, // width: 0.03
                          CustomElevatedButton(
                            onPressed: () {},
                            child:
                                CustomText.buttonText(TextConstant.reviewButton, context: context),
                            buttonColor: context.colorScheme.background,
                          ),
                          const Spacer(flex: 6),
                        ]))),
                context.emptySizedHeightBoxLow,
                //4 Content
                const Padding(
                    padding: CustomPadding.medium28Horizontal(), child: ContentTextRich()),
                context.emptySizedHeightBoxLow3x, // height * 0.03
                //5 Price
                const Expanded(
                    child: Padding(
                        padding: CustomPadding.medium28Horizontal(), child: RowTextRichPrice())),
                context.emptySizedHeightBoxLow3x
              ],
            ),
          ),
        ));
  }
}
