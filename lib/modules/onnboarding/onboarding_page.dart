import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.appYellowColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spaces.mid,
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 54,
                    width: 68,
                    decoration: BoxDecoration(
                      color: ColorConstants.appYellowColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(-4, 12),
                        )
                      ],
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: SvgPicture.asset("assets/icons/sonpy_app.svg"),
                  ),
                  Spaces.smallw,
                  customTextWidget(
                      text: "Sonphy",
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/image/lady.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            // SvgPicture.asset("assets/image/rate_review.svg"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                    child: customElevatedBtnWidget(
                        bgColor: Colors.white,
                        width: context.screenWidth * 0.5,
                        child: customTextWidget(
                          text: "Log In",
                          // color: Colors.white,
                        ),
                        func: () {}),
                  ),
                  Spaces.smallw,
                  Flexible(
                    child: customElevatedBtnWidget(
                        width: context.screenWidth * 0.5,
                        child: customTextWidget(
                          text: "Sign Up",
                          color: Colors.white,
                        ),
                        func: () {}),
                  ),
                ],
              ),
            ),
            Spaces.mid,
          ],
        ),
      ),
    );
  }
}
