import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';
import 'package:sonphy/modules/profile/pages/profile_settings_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: customTextWidget(
                text: "Profile",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(-4, 12),
                        )
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundColor: ColorConstants.appYellowColor,
                      child: Icon(
                        EvaIcons.people,
                        size: 41,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextWidget(
                        text: "Bellatrix Lestrange",
                        fontNameP: "Raleway",
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    customTextWidget(
                      text: "jawadsubhan@gmail.com",
                      fontNameP: "Raleway",
                      fontSize: 18,
                      // color: ColorConstants.lightGreySecondaryColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
              ],
            ),
            Spaces.large,
            Column(
              children: profileOptions
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customTextWidget(text: e),
                              GestureDetector(
                                  onTap: () {
                                    context.pushScreenTo(ProfileSettingsPage());
                                  },
                                  child:
                                      const Icon(EvaIcons.arrow_ios_forward)),
                            ],
                          ),
                          const Divider(),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customElevatedBtnWidget(
                bgColor: Colors.white,
                borderColor: ColorConstants.lightGreySecondaryColor,
                width: context.screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    Spaces.extrasmallw,
                    Spaces.extrasmallw,
                    customTextWidget(text: "Log out"),
                  ],
                ),
                func: () {},
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

const profileOptions = [
  "Profile Settings",
  "Food Preferences",
  "Your recipie",
];
final profilePages = [
  ProfileSettingsPage(),
  ProfileSettingsPage(),
  ProfileSettingsPage(),
  ProfileSettingsPage(),
];
