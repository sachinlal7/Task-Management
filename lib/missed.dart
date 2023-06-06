import 'package:flutter/material.dart';

class Missed extends StatelessWidget {
  const Missed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Container(
            width: 600,
            height: 105,
            color: const Color.fromARGB(255, 135, 223, 241),
            alignment: Alignment.topCenter,
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
    ));
  }
}
