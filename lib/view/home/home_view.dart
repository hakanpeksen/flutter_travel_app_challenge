library home_view;

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/constants/icon_size_constant.dart';
import '../../product/constants/image/png_constants.dart';
import '../../product/constants/text/text_constants.dart';
import '../../product/constants/widget_size.dart';
import '../../product/widgets/cliprect/custom_clip_rect.dart';
import '../../product/widgets/decoration/custom_decoration.dart';
import '../../product/widgets/input/search_input_field.dart';
import '../../product/widgets/padding/custom_padding.dart';
import '../../product/widgets/radius/custom_radius.dart';
import '../../product/widgets/shadow/box_shadow.dart';
import '../detail/detail_view.dart';
part 'model/bottom_navbar_model.dart';

part '../../product/widgets/text/custom_text.dart';
part 'widgets/bottom_navbar.dart';
part 'widgets/card/product_card_arrow_icon.dart';
part 'widgets/card/product_card_bottom.dart';

// Header
part 'widgets/header/header_notification_image.dart';
part 'widgets/header/header_part_input.dart';
part 'widgets/header/header_part_text_icon.dart';
part 'widgets/header/header_text_rich.dart';

part '../../components/row_location_image.dart';
part '../../components/custom_row_text.dart';
part 'widgets/filter_image_container.dart';

part 'widgets/listview/product_card_listview.dart';
part 'widgets/circle_count_text.dart';

part 'widgets/listview/listview_cities.dart';
part 'widgets/popoular_card_bottom.dart';
part 'widgets/listview/popoular_card_listview.dart';
part 'widgets/popoular_card_stack.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const CustomPadding.onlyLTR(),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // Header => Text, Icon
                  const HeaderPartTextIcon(),
                  SizedBox(height: context.dynamicHeight(0.029)),
                  CustomText.commonText(TextConstant.homefindText, context: context),
                  SizedBox(height: context.dynamicHeight(0.007)),
                  // Header => Input
                  const HeaderPartInput(),
                  // Header => ListViewCities
                  SizedBox(height: context.dynamicHeight(0.023)),
                  //  0.13 den dynamicHeight(0.17) e gelince yatay da düzeltti
                  SizedBox(height: context.dynamicHeight(0.17), child: const ListViewCities()),
                  // Product Card
                  CustomRowText(
                      child:
                          CustomText.commonText(TextConstant.homeOurProperties, context: context)),
                  SizedBox(height: context.dynamicHeight(0.014)),

                  SizedBox(
                      height: context.dynamicHeight(0.4),
                      width: context.width,
                      child: const ListViewProductCard()),
                  // Popoular Card
                  SizedBox(height: context.dynamicHeight(0.014)),
                  CustomRowText(
                      child: CustomText.commonText(TextConstant.homePopoular, context: context)),
                  SizedBox(height: context.dynamicHeight(0.014)),
                  //  0.17 den dynamicHeight(0.18) e gelince yatay da düzeltti
                  SizedBox(height: context.dynamicHeight(0.18), child: const ListViewPopoularCard())
                ])),
          ),
        ),
        bottomNavigationBar: const BottomNavBar());
  }
}
