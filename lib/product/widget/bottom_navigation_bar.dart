import 'package:flutter/material.dart';

class ProjectBottomNavigationBar extends StatelessWidget {
  const ProjectBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final void Function(int)? onTap;
  final tabs = const <BottomNavigationBarItem>[
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
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: tabs,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.grey[900],
      unselectedItemColor: Colors.grey[600],
      currentIndex: currentIndex,
      onTap: onTap,
    );
  }
}
