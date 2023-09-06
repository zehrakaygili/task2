import 'package:flutter/material.dart';
import 'package:task2/features/home/mixin/home_page_mixin.dart';
import 'package:task2/features/home/widget/home_body.dart';
import 'package:task2/product/widget/bottom_navigation_bar.dart';

class WorksPage extends StatelessWidget with HomePageMixin {
  WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(workList: workList),
      bottomNavigationBar: ProjectBottomNavigationBar(
        tabs: tabs,
      ),
    );
  }
}
