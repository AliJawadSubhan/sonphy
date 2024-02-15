import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/utils/colors.dart';
import 'package:sonphy/modules/onnboarding/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.PushReplacementScreenTo(const OnBoardingPage());
    });
  }

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
