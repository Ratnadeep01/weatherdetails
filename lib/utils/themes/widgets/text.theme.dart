
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherdetails/utils/constants/colors.constant.dart';

class WTextTheme {
  WTextTheme._();
  static TextTheme customTextTheme = TextTheme(
    headlineLarge: GoogleFonts.nunito(
      color: WColors.textWhite,
      fontSize: 96,
      fontWeight: FontWeight.w700,
      height: 1
    ),
      headlineMedium: GoogleFonts.nunito(
          color: WColors.textWhite,

          fontSize: 48,
      fontWeight: FontWeight.w700,
      height: 1.2
  ),
    headlineSmall: GoogleFonts.nunito(
        color: WColors.textWhite,

        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: 1.4
    ),
    titleLarge: GoogleFonts.nunito(
        color: WColors.textWhite,

        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 1.4
    ),
    titleMedium: GoogleFonts.nunito(
        color: WColors.textBlue,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 1.4
    ),
    titleSmall: GoogleFonts.nunito(
        color: WColors.textWhite,

        fontSize: 14,
        fontWeight: FontWeight.bold,
        height: 1.4
    ),
    bodyLarge: GoogleFonts.nunito(
        color: WColors.textWhite,

        fontSize: 20,
        fontWeight: FontWeight.normal,
        height: 1.4
    ),
    bodyMedium: GoogleFonts.nunito(
        color: WColors.textWhite,

        fontSize: 16,
        fontWeight: FontWeight.normal,
        height: 1.4
    ),
    bodySmall: GoogleFonts.nunito(
        color: WColors.textWhite,

        fontSize: 24,
        fontWeight: FontWeight.normal,
        height: 1.4
    ),
  );
}