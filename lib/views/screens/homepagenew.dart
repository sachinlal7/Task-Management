import 'package:flutter/material.dart';
import 'package:sambhav/New%20folder/taskdetailsnew.dart';

import '../../utils/color_code.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
              title: Text("Task List",
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
          backgroundColor: Color.fromARGB(255, 225, 225, 225),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TaskDetailsNew()));
                      },
                      child: Container(
                          margin: const EdgeInsets.all(15),
                          width: 400,
                          height: MediaQuery.of(context).size.height * 0.2,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: const [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Lorem Ipsum ."),
                                    Spacer(),
                                    Text("Due Today 14 may"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("lorem ipsum data"),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  TextButton(
                                    child: Container(
                                      child: Text(
                                        'HIGH',
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 222, 192),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  TextButton(
                                    child: Text(
                                      'DECORATION',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 128, 245, 146),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  TextButton(
                                    child: Text(
                                      'DEVELOPMENT',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    style: TextButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 131, 210, 247),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.attach_file),
                                  Text("1"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.image),
                                  Text("5 photos"),
                                  Spacer(),
                                  Text("Devon Lara"),
                                  Icon(
                                    Icons.circle_rounded,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
