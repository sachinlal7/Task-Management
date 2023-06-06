import 'package:flutter/material.dart';

import '../utils/color_code.dart';
import '../views/screens/Notification.dart';
import 'all.dart';
import 'high.dart';
import 'medium.dart';
import 'missed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
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
              title: Text("Task Management",
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

          backgroundColor: const Color.fromARGB(255, 225, 225, 225),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        indicatorColor: Colors.amber,
                        isScrollable: true,
                        labelColor: Colors.black,
                        controller: tabController,
                        unselectedLabelColor: Colors.grey,
                        tabs: const [
                          Tab(
                            text: 'All Task',
                          ),
                          Tab(
                            text: 'Missed',
                          ),
                          Tab(
                            text: 'High Priority',
                          ),
                          Tab(
                            text: 'Medium Priority',
                          ),
                        ]),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        children: [
                          Text("In Progress"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(1),
                      margin: const EdgeInsets.only(top: 10),
                      width: 400,
                      //height: MediaQuery.of(context).size.height / 1,
                      height: 600,
                      child: TabBarView(
                          controller: tabController,
                          children: const [
                            AllTask(),
                            Missed(),
                            HighTask(),
                            MediumTask(),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // bottomNavigationBar: const BottomBa(),
        ));
  }
}
