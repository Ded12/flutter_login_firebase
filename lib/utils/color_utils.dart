import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");

  if (hexColor.length == 6) {
    hexColor == "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

class Constants {
// Name
  static String appName = "Rhinestone";

  // Material Design Color
  static Color lightPrimary = Color(0xfffcfcff);
  static Color lightAccent = const Color.fromARGB(255, 233, 41, 207);
  static Color lightBackground = Color(0xfffcfcff);

  static Color darkPrimary = Colors.black;
  static Color darkAccent = Color.fromARGB(255, 216, 25, 152);
  static Color darkBackground = Colors.black;

  static Color grey = const Color(0xff707070);
  static Color textPrimary =const Color(0xFF486581);
  static Color textDark = const Color(0xFF102A43);

  static Color backgroundColor = Color(0xFFF5F5F7);

  // Green
  static Color darkGreen = Color(0xFF3ABD6F);
  static Color lightGreen = Color.fromARGB(255, 8, 131, 49);

  // Yellow
  static Color darkYellow = Color(0xFF3ABD6F);
  static Color lightYellow = Color.fromARGB(255, 236, 194, 7);

  // Blue
  static Color darkBlue = Color(0xFF3B72FF);
  static Color lightBlue = Color(0xFF3EC6FF);

  // Orange
  static Color darkOrange = const Color(0xFFFFB74D);

  static ThemeData lighTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: lightBackground,
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: lightBackground,
      textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: lightAccent,
        ), toolbarTextStyle: GoogleFonts.latoTextTheme(Theme.of(context).textTheme).bodyText2, titleTextStyle: GoogleFonts.latoTextTheme(Theme.of(context).textTheme).headline6,
      ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lightAccent), textSelectionTheme: TextSelectionThemeData(cursorColor: lightAccent),
    );
  }

  static double headerHeight = 228.5;
  static double paddingSide = 30.0;
}
