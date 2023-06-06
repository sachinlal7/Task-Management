import 'package:animations/animations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sambhav/New%20folder/high.dart';
import 'package:sambhav/views/screens/homepagenew.dart';
import 'package:sambhav/utils/color_code.dart';

import 'medium.dart';
import 'missed.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;
  final bottomNavigationKey = GlobalKey<CurvedNavigationBarState>();
  List<Widget> screenList = [
    // HomePage(),
    // AllTask(),
    HomeScreen(),
    Missed(),
    HighTask(),
    MediumTask(),
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
        ],
      ),
    );
  }
}
