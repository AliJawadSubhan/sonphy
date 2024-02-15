import 'package:flutter/material.dart';
import 'package:sonphy/config/constants/fonts_constants.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';
import 'package:sonphy/modules/generate_recipie/widgets/delete_bottom_sheet.dart';

class GenerateRecipiePage extends StatelessWidget {
  GenerateRecipiePage({super.key});

  final TextEditingController textEditingController = TextEditingController();

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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const Spacer(),
                  customTextWidget(
                    text: "Generate Recipie",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customElevatedBtnWidget(
                width: context.screenWidth,
                bgColor: const Color(0xFFFAFAFA),
                borderColor: const Color(0xFFE0E0E0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.blue,
                    ),
                    Spaces.smallw,
                    customTextWidget(
                      text: "Please note all all inputs are required",
                      fontNameP: FontsConstants.nunito,
                    ),
                  ],
                ),
                func: () {},
              ),
            ),
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                    text: "Ingredients you want",
                    fontSize: 19,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextField(
                  controller: textEditingController,
                  hintText: "e.g. mushroom, olive oil etc."),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                    text: "Ingredients you don't want",
                    fontSize: 19,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextField(
                  controller: textEditingController,
                  hintText: "e.g. mushroom, olive oil etc."),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                    text: "Total Time",
                    fontSize: 19,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextField(
                controller: textEditingController,
                hintText: "3 Min",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                  text: "Please input maximum value",
                  color: ColorConstants.lightGreySecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                    text: "Servings",
                    fontSize: 19,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextField(
                controller: textEditingController,
                hintText: "2",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                  text: "Please input maximum value",
                  color: ColorConstants.lightGreySecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Spaces.mid,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customElevatedBtnWidget(
                width: context.screenWidth,
                child: customTextWidget(
                  text: "Generate",
                  color: Colors.white,
                ),
                func: () {
                  deleteBottomSheet(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
