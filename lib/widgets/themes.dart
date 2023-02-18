import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: darkBluish,
      buttonColor: darkBluish,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lightBluish,
      accentColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));

//  Colors
  static Color creamColor = const Color(0xFFf5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluish = const Color(0xFF403b58);
  static Color lightBluish = Vx.indigo500;
}
