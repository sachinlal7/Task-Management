import 'package:flutter/material.dart';

class VideoReels extends StatelessWidget {
  const VideoReels({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            height: 250,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(8)),
            child: Text(
              'Video $index',
              style: TextStyle(fontSize: 15),
            ),
          ),
        );
      }),
    );
  }
}
