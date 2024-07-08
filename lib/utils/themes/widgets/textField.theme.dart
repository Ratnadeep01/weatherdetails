import 'package:flutter/material.dart';
import 'package:weatherdetails/utils/themes/widgets/text.theme.dart';

class WTextFormFieldTheme {
  WTextFormFieldTheme._();
  static InputDecorationTheme customInputTheme = InputDecorationTheme(
    focusedBorder: OutlineInputBorder().copyWith(
        borderSide: const BorderSide(color: Color(0xFFA4A4A4), width: 2),
        borderRadius: BorderRadius.circular(8)),
    hintStyle: WTextTheme.customTextTheme.bodySmall,
    enabledBorder: OutlineInputBorder().copyWith(
        borderSide: const BorderSide(color: Color(0xFFA4A4A4), width: 2),
        borderRadius: BorderRadius.circular(8)),
    filled: false,
    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
  );
}