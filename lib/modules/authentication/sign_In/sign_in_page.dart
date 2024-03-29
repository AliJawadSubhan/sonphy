import 'package:flutter/material.dart';

import 'package:sonphy/config/constants/fonts_constants.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';

import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/modules/authentication/forget_password/forget_password.dart';
import 'package:sonphy/modules/home/home_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: SizedBox(
            child: CoreAppBar(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: customTextWidget(
                text: "Welcome back!",
                fontSize: 21,
                color: const Color(0xFFEE7A08),
              ),
            ),
            Spaces.mid,
            Center(
              child: customTextWidget(
                text: "Good to see you back",
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                  text: "Email",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontNameP: FontsConstants.nunito,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextField(
                controller: controller,
                colorBorder: Colors.black,
                hintText: "Email",
              ),
            ),
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: customTextWidget(
                  text: "Password",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontNameP: FontsConstants.nunito,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: customTextField(
                controller: controller,
                colorBorder: Colors.black,
                isPassword: true,
                hintText: "**********",
                suffixText: "Show",
              ),
            ),
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () => context.pushScreenTo(ForgetPasswordPage()),
                  child: customTextWidget(
                    text: "Forgot Password",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontNameP: FontsConstants.nunito,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: customElevatedBtnWidget(
                width: context.screenHeight,
                child: customTextWidget(
                    text: "Log In",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                func: () {
                  context.PushReplacementScreenTo(const HomePage());
                },
              ),
            ),
            Spaces.mid,
            Image.asset(
              "assets/image/door.png",
            ),
          ],
        ),
      ),
    );
  }
}
