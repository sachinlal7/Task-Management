import 'package:flutter/material.dart';
import 'package:sambhav/New%20folder/homepage.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/global_widgets/CommanBottomNavigation.dart';

import '../../New folder/bottombar.dart';
import '../screens/LanguageSelect.dart';
import '../screens/MyTask.dart';
import '../screens/SupporterList.dart';

class CommanSideMenu extends StatefulWidget {
  const CommanSideMenu({super.key});

  @override
  State<CommanSideMenu> createState() => _CommanSideMenuState();
}

class _CommanSideMenuState extends State<CommanSideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        appBar: AppBar(
          toolbarHeight: 70,
          leading: const Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/flag.png'),
              radius: 80,
            ),
          ),
          title: const ListTile(
            title: Text("User Name",
                style: TextStyle(
                  color: ColorCode.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            subtitle: Text("Lorem ipsum dolor sit amet adipiscing elit.",
                style: TextStyle(
                  color: ColorCode.black,
                  fontSize: 14,
                )),
          ),
          backgroundColor: ColorCode.bluebg,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width * 100,
          height: MediaQuery.of(context).size.height * 100,
          child: Drawer(
            backgroundColor: ColorCode.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // ListTile(
                //   leading: Icon(Icons.verified_user),
                //   title: const Text('My Task'),
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) =>
                //                 const CommanBottomNavigation()));
                //   },
                // ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Language Select'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LanguageSelect()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.border_color),
                  title: Text('Feedback'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          ),
        ));
  }
}
