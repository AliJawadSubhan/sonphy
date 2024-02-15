import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:sonphy/config/extensions/buildcontext_extensions.dart';
import 'package:sonphy/core/core_widgets/widget_link.dart';
import 'package:sonphy/core/utils/colors.dart';

import 'package:sonphy/modules/home/widgets/bottom_nav_bar.dart';
import 'package:sonphy/modules/home/widgets/recipie_box.dart';
import 'package:sonphy/modules/home/widgets/recipie_generate_box.dart';
import 'package:sonphy/modules/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> listOfIcons = [
    FontAwesome.house_solid,
    EvaIcons.book_open,
    EvaIcons.heart,
    EvaIcons.sync,
    EvaIcons.person,
  ];

  List<String> listOfStrings = [
    'Home',
    "Library",
    'Favorite',
    'Generate',
    'Account',
  ];

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    List<BottomNavigationBarItem> items = [];
    for (int i = 0; i < listOfIcons.length; i++) {
      items.add(
        BottomNavigationBarItem(
          icon: Icon(listOfIcons[i]),
          label: listOfStrings[i],
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: buildBottomNavBarItems(),
        currentIndex: currentIndex,
        selectedItemColor: ColorConstants.blackButtonColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      extendBody: true,
      body: SafeArea(
        child: pages[currentIndex],
      ),
    );
  }
}

List<Widget> pages = [
  HomeBody(),
  HomeBody(),
  HomeBody(),
  HomeBody(),
  const ProfilePage(),
];

class HomeBody extends StatelessWidget {
  HomeBody({
    super.key,
  });

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Spaces.mid,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: customTextField(
              controller: controller,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black.withOpacity(.3),
              ),
              hintText: "Search recipies",
            ),
          ),
          // Spaces.extrasmall,
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 6,
            ),
            child: SizedBox(
              height: context.screenHeight * 0.06,
              width: context.screenWidth,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cats
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Container(
                            height: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: e == "New"
                                  ? const Color(0xFFE8E8E8)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: const Color(0xFFE8E8E8),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: customTextWidget(text: e),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          Spaces.smallh,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextWidget(
                  text: "Hot Recipie",
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
                customTextWidget(
                  text: "See All",
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  textDecoration: TextDecoration.underline,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++) RecipieBox(),
              ],
            ),
          ),
          Spaces.mid,
          const RecipieGenerateBox(),
          Spaces.smallh,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTextWidget(
                  text: "New Recipie",
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
                customTextWidget(
                  text: "See All",
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  textDecoration: TextDecoration.underline,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++) RecipieBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const cats = [
  "New",
  "Trending",
  "Vegan",
  "Healthy",
  "Asian",
  "Mexican",
];
