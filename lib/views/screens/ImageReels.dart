import 'package:flutter/material.dart';
import 'package:sambhav/views/screens/imageDialog.dart';

class ImageReels extends StatelessWidget {
  const ImageReels({super.key});

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
              margin: const EdgeInsets.all(5),
              height: 373,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  //color: Colors.black12,
                  borderRadius: BorderRadius.circular(8)),
              child: GestureDetector(
                onTap: () => {
                  showDialog(
                      context: context,
                      builder: (_) =>
                          const ImageDialog('assets/dummy-image.png'))
                },
                child: Image.asset("assets/images/dummy-image.png",
                    height: 373, fit: BoxFit.contain),
              )),
        );
      }),
    );
  }
}
