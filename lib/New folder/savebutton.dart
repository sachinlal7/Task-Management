import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: ElevatedButton(onPressed: () {}, child: Text("SAVE")),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: ElevatedButton(onPressed: () {}, child: Text("CANCEL")),
              ),
            ],
          ),
        )
      ],
    );
  }
}
