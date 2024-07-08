

import 'package:flutter/material.dart';
import 'package:weatherdetails/utils/themes/widgets/text.theme.dart';
import 'package:weatherdetails/utils/themes/widgets/textField.theme.dart';

class WAppTheme {
  WAppTheme._();

  static ThemeData customThemeData = ThemeData(
    useMaterial3: true,
    textTheme: WTextTheme.customTextTheme,
    inputDecorationTheme: WTextFormFieldTheme.customInputTheme,

  );
}