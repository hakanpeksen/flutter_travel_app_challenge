import 'package:flutter/material.dart';

import '../../constants/text/text_constants.dart';
import '../padding/custom_padding.dart';
import '../radius/custom_radius.dart';

class SearchInputField extends TextField {
  SearchInputField({Key? key, required ThemeData data})
      : super(
          key: key,
          decoration: InputDecoration(
              contentPadding: const CustomPadding(), // super.all(10);
              border: OutlineInputBorder(
                  borderRadius: CircularBorderRadius.eight(), borderSide: BorderSide.none),
              //  enabledBorder: InputBorder.none,
              fillColor: data.colorScheme.background,
              filled: true,
              hintText: TextConstant.homeSearchText,
              hintStyle: data.textTheme.caption,
              suffixIcon: Icon(Icons.search, color: data.colorScheme.onBackground)),
        );
}
