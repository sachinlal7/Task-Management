import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/screens/AddTask.dart';
import 'package:sambhav/views/screens/AllTask.dart';

class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  Widget build(BuildContext context) {
    tabController = TabController(
      vsync: this,
      length: 4,
    );
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
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
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      text: "All Task",
                    ),
                    Tab(
                      text: "Missed Task",
                    ),
                    Tab(
                      text: "High Priority Task",
                    ),
                    Tab(
                      text: "Medium Priority Task",
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
                  AllTask(),
                  AllTask(),
                  AllTask(),
                  AllTask(),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    heroTag: FloatingActionButtonLocation.endDocked,
                    mini: true,
                    backgroundColor: ColorCode.black,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AddTask()));
                    },
                    child: const Icon(Icons.add),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
