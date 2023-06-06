import 'package:flutter/material.dart';

class TextReels extends StatelessWidget {
  const TextReels({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(8)),
            child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(8)),
            child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(8)),
            child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ),
        ],
      ),
    );
  }
}
