import 'package:flutter/material.dart';
import 'package:task2/product/widgets/header.dart';
import 'package:task2/product/widgets/user_card.dart';
import 'package:task2/product/widgets/users.dart';

class UserBody extends StatelessWidget {
  const UserBody({
    super.key,
    required this.userList,
  });

  final List<Users> userList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [const Header(), UserCard(userList: userList)],
          )),
    );
  }
}
