import 'package:flutter/material.dart';

class ProjectBottomNavigationBar extends StatefulWidget {
  const ProjectBottomNavigationBar({
    super.key,
    required this.tabs,
  });

  final List<BottomNavigationBarItem> tabs;

  @override
  State<ProjectBottomNavigationBar> createState() =>
      _ProjectBottomNavigationBarState();
}

class _ProjectBottomNavigationBarState
    extends State<ProjectBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: widget.tabs,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.grey[900],
      unselectedItemColor: Colors.grey[600],
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
