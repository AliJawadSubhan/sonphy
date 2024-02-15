import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sonphy/core/utils/colors.dart';

int currentIndex = 0;

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
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
    return BottomNavigationBar(
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
    );
  }
}
