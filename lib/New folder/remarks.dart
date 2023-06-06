import 'package:flutter/material.dart';

class Remarks extends StatelessWidget {
  const Remarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            "Remarks",
            style: TextStyle(
                color: Color.fromARGB(255, 71, 71, 71),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ),
        _remarks(context),
      ],
    );
  }
}

_remarks(context) {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter Remarks',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: const Color.fromARGB(136, 202, 193, 193),
              filled: true,
            ),
          ))
    ],
  );
}
