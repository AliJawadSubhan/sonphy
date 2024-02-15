import 'package:flutter/material.dart';
import 'package:sonphy/config/themes/theme.dart';
import 'package:sonphy/modules/profile/pages/your_pages.dart';
import 'package:sonphy/modules/splash/splash_page.dart';

class Sonphy extends StatelessWidget {
  const Sonphy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.theme,
      home: SplashPage(),
    );
  }
}
