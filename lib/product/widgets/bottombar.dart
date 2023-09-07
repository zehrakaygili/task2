import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              size: 30,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.group_outlined,
              size: 30,
            ),
            label: ""),
      ],
      backgroundColor: Colors.blue,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.grey[900],
      unselectedItemColor: Colors.grey[600],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
