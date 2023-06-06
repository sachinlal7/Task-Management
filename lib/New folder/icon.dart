import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  IconsPage({super.key, this.icon1, this.icon2, required this.type});
  final IconData? icon1;
  final IconData? icon2;
  final String type;
  final Map<String, Color> map = {
    "missed": Colors.blue,
    "high_p": Colors.pink,
    "all_task": Colors.orange
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon1,
          color: map[type],
          size: 18,
        ),
        Icon(
          icon2,
          color: map[type],
          size: 18,
        )
      ],
    );
  }
}
