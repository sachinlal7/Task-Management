import 'package:flutter/material.dart';
import 'package:sambhav/utils/TaskDataModels.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/screens/AllTaskDetail.dart';

class AllTask extends StatefulWidget {
  const AllTask({super.key});

  @override
  State<AllTask> createState() => _AllTaskState();
}

class _AllTaskState extends State<AllTask> {
  static List<String> taskname = ['Task1', 'Task2', 'Task3'];
  static List<String> taskdes = ['Task1 Desc', 'Task2 Desc', 'Task3 Desc'];
  static List<String> taskdate = [
    'Due Date : April 12',
    'Due Date : March 28',
    'Due Date : March 25'
  ];

  final List<TaskDataModel> TaskList = List.generate(
      taskname.length,
      (index) => TaskDataModel(
          '${taskname[index]}', '${taskdes[index]}', '${taskdate[index]}'));
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: TaskList.length,
        itemBuilder: (context, index) {
          return Card(
              color: ColorCode.peach,
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
                  child: Text(
                    TaskList[index].name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                trailing: Text(TaskList[index].date),
                subtitle: Text(TaskList[index].desc),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AllTaskDetail(
                            taskDataModel: TaskList[index],
                          )));
                },
              ));
        });
  }
}
