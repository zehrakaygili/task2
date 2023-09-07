import 'package:flutter/material.dart';
import 'package:task2/product/widgets/bottombar.dart';
import 'package:task2/product/widgets/home_body.dart';
import 'package:task2/product/widgets/home_mixinb.dart';

class HomePage extends StatelessWidget with HomePageMixin {
  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeBody(workList: workList), bottomNavigationBar: BottomBar());
  }
}
