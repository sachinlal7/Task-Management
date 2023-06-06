import 'package:flutter/material.dart';
import 'package:sambhav/New%20folder/bottomnavbar.dart';

import '../utils/color_code.dart';
import '../views/global_widgets/CommanBottomNavigation.dart';
import 'all.dart';
import 'high.dart';
import 'medium.dart';
import 'missed.dart';

class TaskDetailsNew extends StatefulWidget {
  const TaskDetailsNew({Key? key}) : super(key: key);

  @override
  State<TaskDetailsNew> createState() => _TaskDetailsNewState();
}

class _TaskDetailsNewState extends State<TaskDetailsNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              height: MediaQuery.of(context).size.height * 0.335,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  width: double.maxFinite,
                  height: 300,
                  child: Image.asset("assets/taskapp.jpg")),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.3,
              left: 0,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  width: double.maxFinite,
                  height: double.maxFinite,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                "Task Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Spacer(),
                              Text(
                                "Upcoming event",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.task,
                                color: Colors.orange,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sat, May 25, 2023",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "10:00 AM to 9:00 PM",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.orange,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Central Park",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Manhattan, New York Park",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 8),
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.orange,
                              ),
                              Text(
                                " 560",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 10),
                          child: Text(
                              "Contrary to popular belief , loerm ipsum is not Contrary to popular belief , loerm ipsum is not Contrary to popular belief , loerm ipsum is not "),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Attachement",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            children: [
                              Icon(Icons.file_copy),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.image),
                              SizedBox(
                                width: 20,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.orange),
                                  child: Text("Upload"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Work status",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "comment here",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Contrary to popular belief , loerm ipsum is not Contrary to popular belief ",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(
                                    255, 241, 175, 100), // Background color
                              ),
                              child: Text(
                                "Complete",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 152, 244, 155)),
                              child: Text("In progress"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 211, 148, 252)),
                              child: Text("Delay"),
                            )
                          ],
                        ),
                        Center(
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange),
                                child: Text("Save")))
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
