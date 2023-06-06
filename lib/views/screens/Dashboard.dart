import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sambhav/views/screens/Notification.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
        backgroundColor: Colors.transparent,
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
            title: Text("Party Name",
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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                margin: const EdgeInsets.only(
                    top: 30, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), //color of shadow
                      spreadRadius: 3, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                  ],
                  color: ColorCode.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Supports',
                              style: TextStyle(
                                  color: ColorCode.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('23,000',
                              style: TextStyle(
                                  color: ColorCode.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(
                            height: 25,
                          ),
                          FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor: ColorCode.middleCircle),
                            onPressed: () {},
                            child: const Text('Add Supports'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Image(
                              image: AssetImage('assets/dashboard-img-1.png'),
                              width: 200,
                              fit: BoxFit.fill)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(
                      top: 30, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), //color of shadow
                        spreadRadius: 3, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                    ],
                    color: ColorCode.lightblue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const [
                          Flexible(
                            flex: 12,
                            child: Text("Notification",
                                style: TextStyle(
                                    color: ColorCode.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: SizedBox(
                              height: 120,
                              child: ListView(
                                padding: EdgeInsets.zero,
                                children: const <Widget>[
                                  ListTile(
                                    dense: true,
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -4),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 0),
                                    leading: Icon(Icons.circle,
                                        color: ColorCode.darkBlue, size: 20.0),
                                    title: Text(
                                      "Lorem Ipsum is simply",
                                      style: TextStyle(
                                          color: ColorCode.black, fontSize: 16),
                                    ),
                                    subtitle: Text("Subtitle"),
                                  ),
                                  Divider(),
                                  ListTile(
                                    dense: true,
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -4),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 0),
                                    leading: Icon(Icons.circle,
                                        color: ColorCode.darkBlue, size: 20.0),
                                    title: Text(
                                      "Lorem Ipsum is simply",
                                      style: TextStyle(
                                          color: ColorCode.black, fontSize: 16),
                                    ),
                                    subtitle: Text("Subtitle"),
                                  ),
                                ],
                              )))
                    ],
                  )),

              //TODAY ACTIVITY

              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 20),
                child: Row(
                  children: const [
                    Text("Today Activities",
                        style: TextStyle(
                            color: ColorCode.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.all(20),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorCode.peach),
                        width: 200,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Flexible(
                                    flex: 6,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Flexible(
                                  flex: 6,
                                  child: Icon(Icons.calendar_month,
                                      color: ColorCode.black, size: 30.0),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Flexible(
                                    flex: 6,
                                    child: Text(
                                      "Event",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Flexible(
                                    flex: 6,
                                    child: Text(
                                      "View",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorCode.lightgrey),
                        width: 200,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Flexible(
                                    flex: 6,
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Flexible(
                                  flex: 6,
                                  child: Icon(Icons.meeting_room,
                                      color: ColorCode.black, size: 30.0),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Flexible(
                                    flex: 6,
                                    child: Text(
                                      "Meeting",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                Flexible(
                                    flex: 6,
                                    child: Text(
                                      "View",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 20),
                child: Row(
                  children: const [
                    Text("News",
                        style: TextStyle(
                            color: ColorCode.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                  height: 250,
                  child: ListView(
                    children: <Widget>[
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //nextSlide
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //next slide
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //next Image of Slider
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //              Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: items.map((urlOfItem) {
                          //     int index = items.indexOf(urlOfItem);
                          //     return Container(
                          //       width: 10.0,
                          //       height: 10.0,
                          //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          //       decoration: BoxDecoration(
                          //         shape: BoxShape.circle,
                          //         color: _currentIndex == index
                          //             ? Color.fromRGBO(0, 0, 0, 0.8)
                          //             : Color.fromRGBO(0, 0, 0, 0.3),
                          //       ),
                          //     );
                          //   }).toList(),
                          // )
                        ],
                        //Slider Container properties
                        options: CarouselOptions(
                          height: 200,
                          //aspectRatio: 16 / 9,
                          viewportFraction: 0.5,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                          disableCenter: false,
                          //enlargeFactor: 0.3,
                          //onPageChanged: callbackFunction,
                          // onPageChanged: (index, reason) {
                          //  setState(
                          //       () {
                          //         _currentIndex = index;
                          //       },
                          //     );
                          // },
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  )),

              Container(
                margin: const EdgeInsets.only(left: 30, right: 20, top: 0),
                child: Row(
                  children: const [
                    Text("Story",
                        style: TextStyle(
                            color: ColorCode.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                  height: 250,
                  child: ListView(
                    children: <Widget>[
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //nextSlide
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //next slide
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //next Image of Slider
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.2), //color of shadow
                                    spreadRadius: 3, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        2, 2), // changes position of shadow
                                    //first paramerter of offset is left-right
                                    //second parameter is top to down
                                  ),
                                ],
                                color: ColorCode.white),
                            //width: 200,
                            padding: const EdgeInsets.all(5),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Image.asset('assets/media.png',
                                              width: 250),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            "Lorem ipsum dolor sit amet, consec eiu gravida.",
                                            style: TextStyle(
                                                color: ColorCode.black,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text("4 hour ago.",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: ColorCode.black,
                                                  fontSize: 10))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //              Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: items.map((urlOfItem) {
                          //     int index = items.indexOf(urlOfItem);
                          //     return Container(
                          //       width: 10.0,
                          //       height: 10.0,
                          //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          //       decoration: BoxDecoration(
                          //         shape: BoxShape.circle,
                          //         color: _currentIndex == index
                          //             ? Color.fromRGBO(0, 0, 0, 0.8)
                          //             : Color.fromRGBO(0, 0, 0, 0.3),
                          //       ),
                          //     );
                          //   }).toList(),
                          // )
                        ],
                        //Slider Container properties
                        options: CarouselOptions(
                          height: 200,
                          //aspectRatio: 16 / 9,
                          viewportFraction: 0.5,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: false,
                          disableCenter: false,
                          //enlargeFactor: 0.3,
                          //onPageChanged: callbackFunction,
                          // onPageChanged: (index, reason) {
                          //  setState(
                          //       () {
                          //         _currentIndex = index;
                          //       },
                          //     );
                          // },
                          scrollDirection: Axis.horizontal,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
