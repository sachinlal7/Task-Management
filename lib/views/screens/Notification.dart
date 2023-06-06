import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({super.key});

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: const Padding(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/flag.png'),
            radius: 80,
          ),
        ),
        title: const ListTile(
          title: Text("Notifications",
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
      body: ListView(
        children: const [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            selectedColor: Colors.black12,
            leading: Image(
              image: AssetImage('assets/profile-img.png'),
            ),
            title: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontSize: 14, color: ColorCode.black),
            ),
            subtitle: Text(
              "2 hour ago",
              style: TextStyle(fontSize: 12, color: ColorCode.middleCircle),
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            selectedColor: Colors.black12,
            leading: Image(
              image: AssetImage('assets/profile-img.png'),
            ),
            title: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontSize: 14, color: ColorCode.black),
            ),
            subtitle: Text(
              "2 hour ago",
              style: TextStyle(fontSize: 12, color: ColorCode.middleCircle),
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            selectedColor: Colors.black12,
            leading: Image(
              image: AssetImage('assets/profile-img.png'),
            ),
            title: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontSize: 14, color: ColorCode.black),
            ),
            subtitle: Text(
              "2 hour ago",
              style: TextStyle(fontSize: 12, color: ColorCode.middleCircle),
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            selectedColor: Colors.black12,
            leading: Image(
              image: AssetImage('assets/profile-img.png'),
            ),
            title: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontSize: 14, color: ColorCode.black),
            ),
            subtitle: Text(
              "2 hour ago",
              style: TextStyle(fontSize: 12, color: ColorCode.middleCircle),
            ),
          ),
          Divider(),
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            selectedColor: Colors.black12,
            leading: Image(
              image: AssetImage('assets/profile-img.png'),
            ),
            title: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontSize: 14, color: ColorCode.black),
            ),
            subtitle: Text(
              "2 hour ago",
              style: TextStyle(fontSize: 12, color: ColorCode.middleCircle),
            ),
          ),
        ],
      ),
    );
  }
}
