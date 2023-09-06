import 'package:flutter/material.dart';
import 'package:task2/features/work/mixin/home_page_mixin.dart';
import 'package:task2/features/work/widget/home_body.dart';

class WorksPage extends StatelessWidget with HomePageMixin {
  WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(workList: workList),
    );
  }
}
