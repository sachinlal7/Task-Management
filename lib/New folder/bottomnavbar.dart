import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.task_outlined),
          label: 'My Task',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notes_sharp),
          label: 'PR Post',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Menu',
        ),
      ],
      onTap: (index) {
        // Handle navigation to a different page based on the index
        switch (index) {
          case 0:
            // Navigate to the home page
            break;
          case 1:
            // Navigate to the search page
            break;
          case 2:
            // Navigate to the profile page
            break;
        }
      },
    );
  }
}
