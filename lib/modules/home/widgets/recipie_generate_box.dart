import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/modules/generate_recipie/generate_recipie_page.dart';

class RecipieGenerateBox extends StatelessWidget {
  const RecipieGenerateBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: const Color(0xFFFDEBC9),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(-4, 12),
            )
          ],
        ),
        height: context.screenHeight * 0.25,
        width: context.screenWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spaces.smallh,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRect(
                      child: SvgPicture.asset(
                        "assets/image/blue_grid.svg",
                        height: context.screenHeight * 0.023,
                      ),
                    ),
                  ),
                  Spaces.smallh,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: customTextWidget(
                        text: "Don't know what to eat?",
                        color: const Color(0xFF303733),
                        fontSize: 16,
                        fontNameP: "Open Sans",
                        fontWeight: FontWeight.w400),
                  ),
                  Spaces.smallh,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: customTextWidget(
                        text: "Generate recipie.",
                        color: const Color(0xFF303733),
                        fontSize: 20,
                        fontNameP: "Open Sans",
                        fontWeight: FontWeight.bold),
                  ),
                  Spaces.smallh,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: customTextWidget(
                        text: "*based on your preferences",
                        color: const Color(0xFF303733),
                        fontSize: 14,
                        fontNameP: "Open Sans",
                        fontWeight: FontWeight.w300),
                  ),
                  Spaces.smallh,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: customElevatedBtnWidget(
                      func: () {
                        context.pushScreenTo(GenerateRecipiePage());
                      },
                      child: customTextWidget(
                          text: "Generate",
                          color: Colors.white,
                          fontSize: 14,
                          fontNameP: "Open Sans",
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "assets/image/lady_thinking.png",
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
