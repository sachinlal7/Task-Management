import 'package:flutter/material.dart';

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
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              'TASK MANAGEMENT',
              style: TextStyle(
                  color: Color.fromARGB(255, 28, 26, 26),
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
              ),
            ],
            flexibleSpace: Container(
                decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/appbar.jpg'),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(52),
                // bottomRight: Radius.circular(52)
              ),
              color: Colors.blue,
              // gradient: LinearGradient(colors: [
              //   Colors.blue,
              //   Color.fromARGB(255, 58, 113, 252),
              // ])
            )),
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  // width: double.maxFinite,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              indicatorColor:
                                  const Color.fromARGB(255, 234, 94, 13),
                              isScrollable: true,
                              labelColor:
                                  const Color.fromARGB(255, 234, 94, 13),
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
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
