import 'package:flutter/material.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({super.key});
  final TextEditingController controller =
      TextEditingController(text: "Blueflamingo@email.com");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(
          child: CoreAppBar(),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: customTextWidget(
              text: "Forgot your password?",
              fontSize: 21,
              color: const Color(0xFFEE7A08),
            ),
          ),
          Spaces.smallh,
          Center(
            child: customTextWidget(
              text: "The good thing is that, reseting it is a piece of cake.",
              fontSize: 16,
              fontWeight: FontWeight.w300,
              textAlign: TextAlign.center,
            ),
          ),
          Spaces.smallh,
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextWidget(
                text: "Email",
                fontSize: 19,
              ),
            ),
          ),
          Spaces.smallh,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: customTextField(
              controller: controller,
              hintText: "Email",
            ),
          ),
          Spaces.mid,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: customElevatedBtnWidget(
              width: context.screenWidth,
              child: customTextWidget(
                text: "Continue",
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                textAlign: TextAlign.center,
              ),
              func: () {},
            ),
          ),
        ],
      ),
    );
  }
}
