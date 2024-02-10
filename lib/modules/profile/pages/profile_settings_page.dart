import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';

class ProfileSettingsPage extends StatelessWidget {
  ProfileSettingsPage({super.key});
  final TextEditingController controller = TextEditingController();

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
                  // const Spacer(),
                  customElevatedBtnWidget(
                    height: context.screenHeight * 0.04,
                    child: customTextWidget(text: "Save", color: Colors.white),
                    func: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(-4, 12),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 80,
                  backgroundColor: ColorConstants.appYellowColor,
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 41,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: customTextWidget(
                text: "Name",
                fontSize: 19,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customTextField(controller: controller),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: customTextWidget(
                text: "Email",
                fontSize: 19,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customTextField(controller: controller),
          ),
        ],
      ),
    );
  }
}
