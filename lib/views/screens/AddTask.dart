import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sambhav/utils/color_code.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController taskName = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
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
          title: const ListTile(
            title: Text("Add Task",
                style: TextStyle(
                  color: ColorCode.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            subtitle: Text("Lorem ipsum dolor sit amet adipiscing elit.",
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
          padding:
              const EdgeInsets.only(top: 25, bottom: 25, left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Task Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8A8BB3)),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Task';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Due Date',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8A8BB3)),
                ),
                TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2101));
                      if (pickedDate != null) {
                        String formattedDate =
                            DateFormat.yMMMMd('en_US').format(pickedDate);
                        setState(() {
                          dateController.text = formattedDate.toString();
                        });
                      } else {}
                    }),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Description',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8A8BB3)),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Description';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Event',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8A8BB3)),
                ),
                const SizedBox(
                  height: 30,
                ),
                IntrinsicHeight(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 12,
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFECEAFF),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(22), // <-- Radius
                          ),
                          minimumSize: const Size(100, 45),
                        ),
                        child: const Text('Office',
                            style: TextStyle(color: Color(0xFF8F81FE))),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFEFEB),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(22), // <-- Radius
                          ),
                          minimumSize: const Size(100, 45),
                        ),
                        child: const Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFFF0A58E),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFE9ED),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(22), // <-- Radius
                          ),
                          minimumSize: const Size(100, 45),
                        ),
                        child: const Text(
                          'Urgent',
                          style: TextStyle(
                            color: Color(0xFFF57C96),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD1FEFF),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(22), // <-- Radius
                          ),
                          minimumSize: const Size(100, 45),
                        ),
                        child: const Text(
                          'Work',
                          style: TextStyle(
                            color: Color(0xFF1EC1C3),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const MyTaskTabs()));
                  },
                  child: Container(
                    // decoration: BoxDecoration(
                    //     color: ColorCode.middleCircle,
                    //     borderRadius: BorderRadius.circular(10)),
                    //padding: const EdgeInsets.all(10),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: ColorCode.middleCircle),
                      onPressed: () {},
                      child: const Text('Add Task'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
