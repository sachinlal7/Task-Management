import 'package:flutter/material.dart';

class SupportDocuments extends StatefulWidget {
  const SupportDocuments({super.key});

  @override
  State<SupportDocuments> createState() => _SupportDocumentsState();
}

class _SupportDocumentsState extends State<SupportDocuments> {
  List<String> value = [
    'assets/appbar.jpg',
    'assets/appbar1.jpg',
    'assets/appbar.jpg',
    'assets/appbar.jpg',
    'assets/appbar.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Text(
            "Supporting Documents",
            style: TextStyle(
                color: Color.fromARGB(255, 159, 95, 95),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Container(
                  height: 90,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(8),
                        elevation: 5,
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const documents1()));
                          },
                          child: Image.asset(
                            value[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
