import 'package:flutter/material.dart';

import 'package:sonphy/config/constants/fonts_constants.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/modules/create_recipie/pick_recipie_image.dart';

class CreateRecipiePage extends StatelessWidget {
  CreateRecipiePage({super.key});
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
                    child: customTextWidget(text: "Next", color: Colors.white),
                    func: () {
                      context.pushScreenTo(const PickRecipieImagePage());
                    },
                  ),
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
                child: customTextWidget(text: "Recipie Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: customTextField(controller: textEditingController),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(text: "Recipie Description"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: context.screenHeight * 0.2,
                child: customTextField(
                    controller: textEditingController, maxLines: 12),
              ),
            ),
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(
                        text: "Prep Time",
                      ),
                      Spaces.extrasmall,
                      SizedBox(
                        width: 130,
                        child: customTextField(
                          controller: textEditingController,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(
                        text: "Cook Time",
                      ),
                      Spaces.extrasmall,
                      SizedBox(
                        width: 130,
                        child: customTextField(
                          controller: textEditingController,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(
                        text: "Total Time",
                      ),
                      Spaces.extrasmall,
                      SizedBox(
                        width: 130,
                        child: customTextField(
                          controller: textEditingController,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(
                        text: "Servings",
                      ),
                      Spaces.extrasmall,
                      SizedBox(
                        width: 130,
                        child: customTextField(
                          controller: textEditingController,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(text: "Ingrediants"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: context.screenHeight * 0.2,
                child: customTextField(
                    controller: textEditingController, maxLines: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
