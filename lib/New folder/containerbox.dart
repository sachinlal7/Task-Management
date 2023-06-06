import 'package:flutter/material.dart';

import 'icon.dart';
import 'task1.dart';

class ContainerBox extends StatefulWidget {
  ContainerBox(
      {super.key,
      this.color,
      this.iconData1,
      this.iconData2,
      this.type,
      this.statusDisplay});
  final Color? color;
  final IconData? iconData1;
  final IconData? iconData2;
  final String? statusDisplay;
  String? type;

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      width: 350,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: widget.color,
              radius: 11,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Task Name",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Task deScription......",
                  style: TextStyle(fontSize: 10),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: IconsPage(
                        icon1: Icons.person,
                        icon2: Icons.notification_add,
                        type: widget.type ?? "high_p",
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    "Completed",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Due Date April 17",
                  style: TextStyle(fontSize: 10),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Task11();
                        },
                      ));
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 15,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
