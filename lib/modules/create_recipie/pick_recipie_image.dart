import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';

class PickRecipieImagePage extends StatelessWidget {
  const PickRecipieImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spaces.mid,
              Spaces.mid,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.popFromScreen();
                    },
                    child: Row(
                      children: [
                        Spaces.smallw,
                        const Icon(
                          Icons.arrow_back_ios,
                          size: 14,
                        ),
                        customTextWidget(
                          text: "Back",
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  customTextWidget(
                    text: "Add new recipie",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  customElevatedBtnWidget(
                    height: context.screenHeight * 0.04,
                    child:
                        customTextWidget(text: "Create", color: Colors.white),
                    func: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: context.screenHeight * 0.3,
              width: context.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: const Color(0xFFDED2F9),
              ),
              child: Center(
                child: SizedBox(
                  width: context.screenWidth * 0.5,
                  child: customElevatedBtnWidget(
                    bgColor: Colors.white,
                    child: Row(
                      children: [
                        const Icon(
                          EvaIcons.file_add,
                          color: Colors.black,
                        ),
                        customTextWidget(text: "Upload Image(s)"),
                      ],
                    ),
                    func: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: context.screenHeight * 0.25,
              width: context.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                border: Border.all(
                  color: ColorConstants.lightGreySecondaryColor,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spaces.smallh,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          height: 25,
                          width: 23,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorConstants.lightGreySecondaryColor,
                            ),
                          ),
                        ),
                      ),
                      customTextWidget(
                        text: "Private Recipie",
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: customTextWidget(
                      text:
                          "By Checking this checkbox this recipie will be avaiable only for you",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
