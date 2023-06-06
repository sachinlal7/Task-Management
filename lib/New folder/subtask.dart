import 'package:flutter/material.dart';

class SubTask extends StatefulWidget {
  const SubTask({Key? key, this.text, this.isChecked = false})
      : super(key: key);

  final String? text;
  final bool isChecked;

  @override
  State<SubTask> createState() => _SubTaskState();
}

class _SubTaskState extends State<SubTask> {
  bool checked1 = false;
  bool checked2 = false;

  @override
  void initState() {
    super.initState();
    checked1 = widget.isChecked;
    checked2 = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    bool allChecked = checked1 && checked2;
    String status = allChecked ? 'Completed' : 'In Progress';

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 50,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    subtitle: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 153, 191, 210)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: checked1,
                            onChanged: (val) {
                              setState(() {
                                checked1 = val!;
                              });
                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Checkbox 1',
                              // style: TextStyle(
                              //   decoration:
                              //       checked1 ? TextDecoration.lineThrough : null,
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 70,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    subtitle: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 153, 191, 210)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: checked2,
                            onChanged: (val) {
                              setState(() {
                                checked2 = val!;
                              });
                            },
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Checkbox 2',
                              // style: TextStyle(
                              //   decoration:
                              //       checked2 ? TextDecoration.lineThrough : null,
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              status,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
