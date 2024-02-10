import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';

void deleteBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: context.screenHeight * 0.31,
        width: context.screenWidth,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(31),
            topRight: Radius.circular(31),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Spaces.smallh,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextWidget(
                    text: "Deleting the recipie",
                    fontSize: 21,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.popFromScreen();
                    },
                    child: const Icon(
                      EvaIcons.close,
                      color: ColorConstants.lightGreySecondaryColor,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: customTextWidget(
                text:
                    "Are you sure you want to delete “Easy Fish Tacos”recipes. Once you delete it, it can’t be undone",
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: customElevatedBtnWidget(
                bgColor: const Color(0xFFEF3061),
                width: context.screenWidth,
                child: customTextWidget(
                  text: "Delete",
                  color: Colors.white,
                ),
                func: () {
                  context.popFromScreen();
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
