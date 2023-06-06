import 'package:flutter/material.dart';

class MediumTask extends StatelessWidget {
  const MediumTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
            width: 600,
            height: 105,
            color: const Color.fromARGB(255, 174, 174, 174),
            child: Stack(
              children: const [
                Positioned(
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
    ));
  }
}
