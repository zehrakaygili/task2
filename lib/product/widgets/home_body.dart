import 'package:flutter/material.dart';
import 'package:task2/product/widgets/header.dart';
import 'package:task2/product/widgets/work_card.dart';
import 'package:task2/product/widgets/works.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.workList,
  });

  final List<Works> workList;

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
            children: [
              const Header(),
              WorkCard(
                workList: workList,
              )
            ],
          )),
    );
  }
}
