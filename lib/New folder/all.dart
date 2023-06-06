import 'package:flutter/material.dart';
import 'package:sambhav/New%20folder/taskdetailsnew.dart';

class AllTask extends StatelessWidget {
  const AllTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 60,
                                    color: Color.fromARGB(255, 255, 222, 192),
                                    child: Center(
                                        child: Text(
                                      "START",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 13),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    color: Color.fromARGB(255, 128, 245, 146),
                                    child: Center(
                                        child: Text(
                                      "COMPLETED",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12),
                                    )),
                                  ),
                                ],
                              ),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 60,
                                    color: Color.fromARGB(255, 255, 222, 192),
                                    child: Center(
                                        child: Text(
                                      "START",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 13),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    color: Color.fromARGB(255, 128, 245, 146),
                                    child: Center(
                                        child: Text(
                                      "COMPLETED",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12),
                                    )),
                                  ),
                                ],
                              ),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 60,
                                    color: Color.fromARGB(255, 255, 222, 192),
                                    child: Center(
                                        child: Text(
                                      "START",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 13),
                                    )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    color: Color.fromARGB(255, 128, 245, 146),
                                    child: Center(
                                        child: Text(
                                      "COMPLETED",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 12),
                                    )),
                                  ),
                                ],
                              ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
