import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sambhav/main.dart';

import 'documents.dart';
import 'main.dart';
import 'remarks.dart';
import 'savebutton.dart';
import 'upload.dart';

class Task12 extends StatefulWidget {
  const Task12({super.key, this.text, this.isChecked = false});

  final String? text;
  final bool isChecked;

  @override
  State<Task12> createState() => _Task12State();
}

class _Task12State extends State<Task12> {
  bool checked1 = false;
  bool checked2 = false;

  @override
  void initState() {
    super.initState();
    checked1 = widget.isChecked;
    checked2 = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    bool allChecked = checked1 && checked2;
    String status = allChecked ? 'Completed' : 'In Progress';

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/taskbg.jpg",
                  ),
                  fit: BoxFit.fill)),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const TaskApp();
                            },
                          ));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 30,
                        )),
                    const SizedBox(width: 70),
                    const Text(
                      "All Task",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  // color: Color.fromARGB(255, 169, 194, 242),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 25),
                    child: Row(
                      children: const [
                        Text(
                          "Task Name",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            "Urgent",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Due Date",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 71, 71),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Icon(
                        Icons.timer_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 20),
                      child: Text(
                        "03-06-2023",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            letterSpacing: 3,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(5),
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 222, 252, 222),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            status,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 71, 71),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Subtask",
                      style: TextStyle(
                          color: Color.fromARGB(255, 71, 71, 71),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: ListTile(
                                subtitle: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          Color.fromARGB(255, 153, 191, 210)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: checked1,
                                        onChanged: (val) {
                                          setState(() {
                                            checked1 = val!;
                                          });
                                        },
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          'Checkbox 1',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: ListTile(
                                subtitle: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color:
                                          Color.fromARGB(255, 153, 191, 210)),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Checkbox(
                                        value: checked2,
                                        onChanged: (val) {
                                          setState(() {
                                            checked2 = val!;
                                          });
                                        },
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 15),
                                        child: Text(
                                          'Checkbox 2',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SupportDocuments(),
                const Remarks(),
                const Upload(),
                const SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
