import 'package:animations/animations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sambhav/New%20folder/homepage.dart';
import 'package:sambhav/views/global_widgets/CommanSideMenu.dart';

import 'package:sambhav/views/screens/StoryReels.dart';
import 'package:sambhav/views/screens/SupporterList.dart';
import 'package:sambhav/views/screens/dashboard.dart';
import 'package:sambhav/utils/color_code.dart';

class CommanBottomNavigation extends StatefulWidget {
  const CommanBottomNavigation({super.key});

  @override
  State<CommanBottomNavigation> createState() => _CommanBottomNavigationState();
}

class _CommanBottomNavigationState extends State<CommanBottomNavigation> {
  int index = 2;
  final bottomNavigationKey = GlobalKey<CurvedNavigationBarState>();
  List<Widget> screenList = [
    // const HomeScreen(),
    const HomePage(),
    const SupporterList(),
    const Dashboard(),
    const StoryReelsTab(),
    // const NotificationList(),
    const CommanSideMenu()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      //body: screenList[index],
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: screenList[index],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: bottomNavigationKey,
        onTap: (index) => {
          setState(() => {
                this.index = index,
              })
        },
        index: index,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: ColorCode.middleCircle,
        color: ColorCode.bluebg,
        items: const [
          Icon(Icons.calendar_month, size: 30, color: ColorCode.black),
          Icon(Icons.groups_outlined, size: 35, color: ColorCode.black),
          Icon(Icons.perm_identity_outlined, size: 30, color: ColorCode.black),
          Icon(Icons.difference_outlined, size: 30, color: ColorCode.black),
          Icon(Icons.menu_open_outlined, size: 30, color: ColorCode.black),
        ],
      ),
    );
  }
}
