// import 'package:flutter/material.dart';

// void main() {
//   runApp(const TaskApp());
// }

// class TaskApp extends StatelessWidget {
//   const TaskApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'First Demo Project',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     tabController = TabController(length: 3, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1,
//       length: 3,
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             title: const Text('TASK MANAGEMENT'),
//             centerTitle: true,
//             leading: IconButton(
//                 onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
//             actions: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.notifications_none_outlined),
//               ),
//             ],
//             flexibleSpace: Container(
//                 decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(52),
//                         bottomRight: Radius.circular(52)),
//                     gradient: LinearGradient(colors: [
//                       Colors.blue,
//                       Colors.pink,
//                     ]))),
//           ),
//           backgroundColor: Colors.white,
//           body: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: 380,
//                     decoration: const BoxDecoration(
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: TabBar(
//                               isScrollable: true,
//                               labelColor: Colors.black,
//                               controller: tabController,
//                               unselectedLabelColor: Colors.grey,
//                               tabs: const [
//                                 Tab(
//                                   text: 'All Task',
//                                 ),
//                                 Tab(
//                                   text: 'Missed',
//                                 ),
//                                 Tab(
//                                   text: 'High Priority',
//                                 ),
//                                 // Tab(text: 'Medium Priority',),
//                               ]),
//                         ),
//                         Column(
//                           children: [
//                             Container(
//                                 width: 600,
//                                 height: 200,
//                                 color: const Color.fromARGB(255, 241, 222, 167),
//                                 alignment: Alignment.topCenter,
//                                 child: Stack(
//                                   children: [
//                                     const Positioned(
//                                         top: 5,
//                                         child: Text(
//                                           'All Task',
//                                           style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.bold),
//                                         )),
//                                     Positioned(
//                                         top: 20,
//                                         child: ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(10),
//                                           child: Container(
//                                             width: 350,
//                                             height: 70,
//                                             color: const Color.fromARGB(
//                                                 255, 255, 255, 255),
//                                           ),
//                                         )),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 110),
//                                       child: Positioned(
//                                           top: 300,
//                                           left: 20,
//                                           child: ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             child: Container(
//                                               width: 310,
//                                               height: 70,
//                                               color: const Color.fromARGB(
//                                                   255, 255, 255, 255),
//                                             ),
//                                           )),
//                                     ),
//                                   ],
//                                 )),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 3),
//                               child: Container(
//                                   width: 600,
//                                   height: 120,
//                                   color:
//                                       const Color.fromARGB(255, 167, 229, 241),
//                                   alignment: Alignment.topCenter,
//                                   child: Stack(
//                                     children: [
//                                       const Positioned(
//                                           top: 5,
//                                           left: 15,
//                                           child: Text(
//                                             'Missed Task',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.bold),
//                                           )),
//                                       Positioned(
//                                           top: 30,
//                                           left: 20,
//                                           right: 20,
//                                           child: ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             child: Container(
//                                               width: 350,
//                                               height: 70,
//                                               color: const Color.fromARGB(
//                                                   255, 255, 255, 255),
//                                             ),
//                                           )),
//                                     ],
//                                   )),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 3),
//                               child: Container(
//                                   width: 600,
//                                   height: 120,
//                                   color:
//                                       const Color.fromARGB(255, 253, 199, 234),
//                                   alignment: Alignment.topCenter,
//                                   child: Stack(
//                                     children: [
//                                       const Positioned(
//                                           top: 5,
//                                           left: 15,
//                                           child: Text(
//                                             'High Priority Task',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.bold),
//                                           )),
//                                       Positioned(
//                                           top: 30,
//                                           left: 20,
//                                           right: 20,
//                                           child: ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             child: Container(
//                                               width: 350,
//                                               height: 70,
//                                               color: const Color.fromARGB(
//                                                   255, 255, 255, 255),
//                                             ),
//                                           )),
//                                     ],
//                                   )),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 3),
//                               child: Container(
//                                   width: 600,
//                                   height: 120,
//                                   color:
//                                       const Color.fromARGB(255, 183, 182, 183),
//                                   alignment: Alignment.topCenter,
//                                   child: Stack(
//                                     children: const [
//                                       Positioned(
//                                           top: 5,
//                                           left: 15,
//                                           child: Text(
//                                             'Medium Priority Task',
//                                             style: TextStyle(
//                                                 color: Colors.black,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.bold),
//                                           )),
//                                       Positioned(
//                                           top: 50,
//                                           left: 100,
//                                           child: Text(
//                                             'Medium Priority Task',
//                                             style: TextStyle(
//                                                 color: Color.fromARGB(
//                                                     255, 48, 47, 47),
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.bold),
//                                           )),
//                                     ],
//                                   )),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }
