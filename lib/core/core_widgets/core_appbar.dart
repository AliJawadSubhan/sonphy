import 'package:flutter/material.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';

class CoreAppBar extends StatelessWidget {
  const CoreAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spaces.mid,
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
      ],
    );
  }
}
