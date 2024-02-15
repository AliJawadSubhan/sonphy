import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/modules/home/widgets/recipie_box.dart';

class YourPages extends StatelessWidget {
  const YourPages({super.key});

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
                      text: "Your Recipies",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Slidable(
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          flex: 2,
                          onPressed: (BuildContext context) {},
                          backgroundColor: const Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.archive,
                          label: 'Archive',
                          autoClose: true,
                        ),
                        SlidableAction(
                          onPressed: (BuildContext context) {},
                          backgroundColor: Color(0xFF0392CF),
                          foregroundColor: Colors.white,
                          icon: Icons.save,
                          label: 'Save',
                        ),
                      ],
                    ),
                    child: RecipieBox(
                      boxHeight: context.screenHeight * 0.4,
                    ),
                  ),
                ],
              ),
            ),
            Spaces.smallh,
            Slidable(
              key: const ValueKey(1),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    flex: 2,
                    onPressed: (BuildContext context) {},
                    backgroundColor: const Color(0xFF7BC043),
                    foregroundColor: Colors.white,
                    icon: Icons.archive,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: (BuildContext context) {},
                    // backgroundColor: Color(0xFF0392CF),
                    foregroundColor: Colors.white,
                    icon: Icons.save,
                    label: 'Save',
                  ),
                ],
              ),
              child: RecipieBox(
                boxHeight: context.screenHeight * 0.4,
              ),
            ),
          ],
        ));
  }
}
