import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const fPrimaryColor = Color(0XFF5C3CDD);
const fSecondaryColor = Color(0XFFC7C4FF);
const fTextColor = Color(0xFF353535);
const fBorderColor = Color(0xFFBBBBBB);

final ThemeData appThemeData = ThemeData(
  primaryColor: fPrimaryColor,
  splashColor: fSecondaryColor,
  highlightColor: fPrimaryColor,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(color: fPrimaryColor),
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold, color: fTextColor),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: fPrimaryColor),
);

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold, color: fTextColor),
    headline2: GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold, color: fTextColor),
    subtitle1: GoogleFonts.nanumGothic(fontSize: 16.0, color: fTextColor),
    subtitle2: GoogleFonts.nanumGothic(fontSize: 14.0, color: fTextColor, fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.nanumGothic(fontSize: 15.0, color: fTextColor),
    bodyText2: GoogleFonts.nanumGothic(fontSize: 14.0, color: fTextColor),
  );
}
