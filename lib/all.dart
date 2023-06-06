import 'package:flutter/material.dart';

class AllTask extends StatelessWidget {
  const AllTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            width: 600,
            height: 175,
            color: const Color.fromARGB(255, 235, 218, 185),
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                const Positioned(
                    top: 5,
                    left: 15,
                    child: Text(
                      'All Task',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        child: Container(
                          width: 350,
                          height: 65,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    )),
                const Positioned(
                    top: 35,
                    left: 35,
                    child: Icon(
                      Icons.circle,
                      color: Colors.red,
                    )),
                const Positioned(
                  top: 38,
                  left: 65,
                  child: Text(
                    "Task Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                    top: 100,
                    left: 20,
                    right: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 350,
                        height: 65,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                width: 600,
                height: 105,
                color: Color.fromARGB(255, 168, 245, 253),
                child: Stack(
                  children: [
                    const Positioned(
                        top: 5,
                        left: 15,
                        child: Text(
                          'Missed Task',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 25,
                        left: 20,
                        right: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 350,
                            height: 65,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                width: 600,
                height: 105,
                color: const Color.fromARGB(255, 221, 190, 226),
                child: Stack(
                  children: [
                    const Positioned(
                        top: 5,
                        left: 15,
                        child: Text(
                          'High Priority Task',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 25,
                        left: 20,
                        right: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 350,
                            height: 65,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
                width: 600,
                height: 105,
                color: const Color.fromARGB(255, 219, 219, 219),
                child: Stack(
                  children: const [
                    Positioned(
                        top: 5,
                        left: 15,
                        child: Text(
                          'Medium Priority Task',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        top: 45,
                        left: 110,
                        child: Text(
                          "No Task Available",
                          style: TextStyle(
                            color: Color.fromARGB(255, 117, 117, 117),
                            fontSize: 20,
                          ),
                        ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
