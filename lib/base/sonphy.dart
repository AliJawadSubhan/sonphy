import 'package:flutter/material.dart';
import 'package:sonphy/core/utils/colors.dart';
import 'package:sonphy/modules/create_recipie/create_recipie.dart';
import 'package:sonphy/modules/generate_recipie/generate_recipie_page.dart';
import 'package:sonphy/modules/profile/pages/profile_settings_page.dart';

class Sonphy extends StatelessWidget {
  const Sonphy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: ColorConstants.blackButtonColor,
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(backgroundColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            backgroundColor: Colors.white,
          )),
      home: ProfileSettingsPage(),
    );
  }
}
