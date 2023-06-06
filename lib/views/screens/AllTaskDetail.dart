import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import '../../utils/TaskDataModels.dart';

class AllTaskDetail extends StatelessWidget {
  final TaskDataModel taskDataModel;
  const AllTaskDetail({Key? key, required this.taskDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: ListTile(
          title: Text(taskDataModel.name,
              style: const TextStyle(
                color: ColorCode.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
          subtitle: const Text("Lorem ipsum dolor sit amet adipiscing elit.",
              style: TextStyle(
                color: ColorCode.black,
                fontSize: 14,
              )),
        ),
        backgroundColor: ColorCode.bluebg,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Text(
              taskDataModel.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            child: Text(
              taskDataModel.desc,
            ),
          ),
          Container(
            child: Text(
              taskDataModel.date,
            ),
          ),
        ]),
      ),
    );
  }
}
