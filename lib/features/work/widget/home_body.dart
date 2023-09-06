import 'package:flutter/material.dart';
import 'package:task2/features/work/widget/decoration/home_decoration.dart';
import 'package:task2/features/work/widget/header.dart';
import 'package:task2/features/work/widget/work_card.dart';
import 'package:task2/product/model/works.dart';

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
          decoration: const HomeDecoration(),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: 20,
              ),
              WorkCard(workList: workList)
            ],
          )),
    );
  }
}
