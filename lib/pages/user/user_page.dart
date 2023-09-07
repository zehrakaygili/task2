import 'package:flutter/material.dart';
import 'package:task2/product/widgets/bottombar.dart';
import 'package:task2/product/widgets/user_body.dart';
import 'package:task2/product/widgets/user_mixin.dart';

class UserPage extends StatelessWidget with UserPageMixin {
  UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserBody(userList: userList),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
