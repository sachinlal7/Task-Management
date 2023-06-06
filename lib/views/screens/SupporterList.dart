import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:sambhav/views/screens/Notification.dart';

class SupporterList extends StatefulWidget {
  const SupporterList({super.key});

  @override
  State<SupporterList> createState() => _SupporterListState();
}

class _SupporterListState extends State<SupporterList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back, color: ColorCode.white),
          //   onPressed: () => Navigator.of(context).pop(),
          // ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationList()));
                },
                child: Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            )
          ],

          title: const Text("Supporters list",
              style: TextStyle(
                color: ColorCode.black,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              )),
          backgroundColor: ColorCode.bluebg,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorCode.boxBg,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1, color: ColorCode.lightgrey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Search here',
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    decoration: BoxDecoration(
                        color: ColorCode.boxBg,
                        border: Border.all(width: 1, color: Color(0xffc3c3c3)),
                        borderRadius: BorderRadius.circular(12)),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 5.0),
                          dense: true,
                          leading: Icon(
                            Icons.person,
                            color: ColorCode.middleCircle,
                            size: 30,
                          ),
                          minLeadingWidth: 10,
                          title: Text(
                            "Supporter Name",
                            style: TextStyle(
                                color: ColorCode.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 5.0),
                          dense: true,
                          leading: Icon(
                            Icons.location_pin,
                            color: ColorCode.middleCircle,
                            size: 30,
                          ),
                          minLeadingWidth: 10,
                          title: Text(
                            "Location",
                            style: TextStyle(
                                color: ColorCode.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 5.0),
                          dense: true,
                          leading: Icon(
                            Icons.mobile_screen_share,
                            color: ColorCode.middleCircle,
                            size: 30,
                          ),
                          minLeadingWidth: 10,
                          title: Text(
                            "+91 8545254254",
                            style: TextStyle(
                                color: ColorCode.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )),
                Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    decoration: BoxDecoration(
                        color: ColorCode.boxBg,
                        border: Border.all(width: 1, color: Color(0xffc3c3c3)),
                        borderRadius: BorderRadius.circular(12)),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 5.0),
                          dense: true,
                          leading: Icon(
                            Icons.person,
                            color: ColorCode.middleCircle,
                            size: 30,
                          ),
                          minLeadingWidth: 10,
                          title: Text(
                            "Supporter Name",
                            style: TextStyle(
                                color: ColorCode.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 5.0),
                          dense: true,
                          leading: Icon(
                            Icons.location_pin,
                            color: ColorCode.middleCircle,
                            size: 30,
                          ),
                          minLeadingWidth: 10,
                          title: Text(
                            "Location",
                            style: TextStyle(
                                color: ColorCode.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 5.0),
                          dense: true,
                          leading: Icon(
                            Icons.mobile_screen_share,
                            color: ColorCode.middleCircle,
                            size: 30,
                          ),
                          minLeadingWidth: 10,
                          title: Text(
                            "+91 8545254254",
                            style: TextStyle(
                                color: ColorCode.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    )),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      // adding some properties
                      showModalBottomSheet(
                        context: context,
                        // color is applied to main screen when modal bottom screen is displayed
                        //background color for modal bottom screen
                        backgroundColor: ColorCode.white,
                        //elevates modal bottom screen
                        elevation: 10,

                        // gives rounded corner to modal bottom screen
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        builder: (BuildContext context) {
                          // UDE : SizedBox instead of Container for whitespaces
                          return Container(
                            height: MediaQuery.of(context).size.height / 1,
                            padding: EdgeInsets.all(20),
                            child: Center(
                              child: ListView(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: const [
                                      Flexible(
                                          flex: 12,
                                          child: Text(
                                            "Add Supporter",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: const [
                                      Flexible(
                                        flex: 12,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: ColorCode.lightblue,
                                            border: OutlineInputBorder(),
                                            hintText: 'Name',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: const [
                                      Flexible(
                                        flex: 12,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: ColorCode.lightblue,
                                            border: OutlineInputBorder(),
                                            hintText: 'Location',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: const [
                                      Flexible(
                                        flex: 12,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: ColorCode.lightblue,
                                            border: OutlineInputBorder(),
                                            hintText: 'Mobile No',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        flex: 12,
                                        child: FilledButton(
                                          style: FilledButton.styleFrom(
                                              padding: const EdgeInsets.only(
                                                  left: 10, right: 10),
                                              backgroundColor:
                                                  ColorCode.middleCircle),
                                          onPressed: () {},
                                          child: const Text('Add Supports'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    backgroundColor: ColorCode.black,
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
