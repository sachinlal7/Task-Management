import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/screens/Notification.dart';

import 'ImageReelGallery.dart';
//import 'ImageReels.dart';
import 'TextReels.dart';
import 'VideoReela.dart';

class StoryReelsTab extends StatefulWidget {
  const StoryReelsTab({super.key});

  @override
  State<StoryReelsTab> createState() => StoryReelsTabState();
}

class StoryReelsTabState extends State<StoryReelsTab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    tabController = TabController(
      vsync: this,
      length: 3,
    );

    return Scaffold(
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
          title: Text("Story Board",
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
        // backgroundColor: ColorCode.bluebg,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(30),
        //   ),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationList()));
              },
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  controller: tabController,
                  labelColor: ColorCode.middleCircle,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.normal),
                  indicatorColor: ColorCode.middleCircle,
                  isScrollable: false,
                  tabs: const [
                    Tab(
                      text: "Text",
                    ),
                    Tab(
                      text: "Reels",
                    ),
                    Tab(
                      text: "Images",
                    )
                  ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 10, bottom: 0),
                width: double.maxFinite,
                //height: MediaQuery.of(context).size.height / 1,
                height: 400,
                child: TabBarView(controller: tabController, children: const [
                  TextReels(),
                  VideoReels(),
                  ImageReelGallery(),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
