import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonphy/core/utils/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.appYellowColor,
      body: Center(
        child: SvgPicture.asset("assets/icons/sonpy_app.svg"),
      ),
    );
  }
}
