import 'package:flutter/material.dart';
import 'package:sonphy/core/utils/colors.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
    indicatorColor: ColorConstants.appYellowColor,
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: ColorConstants.blackButtonColor,
        selectionColor: ColorConstants.blackButtonColor.withOpacity(.1),
        selectionHandleColor: ColorConstants.blackButtonColor),
    primaryColor: ColorConstants.blackButtonColor,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark, // Set overall brightness to dark
    indicatorColor:
        ColorConstants.appYellowColor, // Adjust if needed for dark theme
    textSelectionTheme: TextSelectionThemeData(
        cursorColor:
            ColorConstants.appYellowColor, // Adjust if needed for dark theme
        selectionColor: ColorConstants.appYellowColor
            .withOpacity(.1), // Adjust for better visibility in dark theme
        selectionHandleColor:
            ColorConstants.appYellowColor), // Adjust if needed for dark theme
    primaryColor: Colors.grey[900], // A darker shade for primaryColor
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            Colors.grey[850], // A darker shade for the bottom navigation
        selectedItemColor:
            ColorConstants.appYellowColor, // Adjust for better visibility
        unselectedItemColor:
            Colors.grey // Adjust for better visibility in dark theme
        ),
    scaffoldBackgroundColor:
        Colors.grey[850], // A darker shade for the background
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.grey[900], // A darker shade for the AppBar
      iconTheme: const IconThemeData(
          color: Colors.white), // Ensuring icons are visible
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20), // Ensuring title is visible
    ),
  );
}
