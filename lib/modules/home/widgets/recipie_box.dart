import 'package:flutter/material.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/core_text.dart';
import 'package:sonphy/core/core_widgets/spaces.dart';

// ignore: must_be_immutable
class RecipieBox extends StatelessWidget {
  RecipieBox({
    super.key,
    this.boxHeight,
    this.boxWidth,
  });

  double? boxHeight;
  double? boxWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: boxHeight ?? context.screenHeight * 0.3,
        width: boxWidth ?? context.screenWidth * 0.67,
        decoration: BoxDecoration(
          color: const Color(0xFFF5D4C1),
          borderRadius: BorderRadius.circular(21),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spaces.mid,
            Image.asset(
              "assets/image/taco.png",
            ),
            Spaces.mid,
            customTextWidget(
              text: "Easy Fish Tacos",
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            Spaces.smallh,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Spaces.extrasmallw,
                    customTextWidget(text: "4.7"),
                  ],
                ),
                Spaces.extrasmallw,
                Spaces.extrasmallw,
                Spaces.extrasmallw,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.circle,
                      color: Colors.white,
                    ),
                    Spaces.extrasmallw,
                    customTextWidget(text: "Mexico"),
                  ],
                ),
              ],
            ),
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 17.0,
              ),
              child: customTextWidget(
                text:
                    "Fish Tacos are a favorite quick and easy weeknight meal...",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
