import 'package:flutter/material.dart';
import 'package:task2/features/work/page/home_page.dart';
import 'package:task2/product/widget/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var screens = [];
  var _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    screens = [
      WorksPage(),
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.black,
      ),
      Container(
        color: Colors.blue,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: ProjectBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (p0) {
          setState(() {
            _currentIndex = p0;
          });
        },
      ),
    );
  }
}
