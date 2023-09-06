import 'package:flutter/material.dart';
import 'package:task2/product/model/works.dart';
import 'package:task2/product/widget/work_card_item.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({
    super.key,
    required this.workList,
  });

  final List<Works> workList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: workList.length,
        itemBuilder: (context, index) => ProjectItem(
          work: workList[index],
        ),
      ),
    );
  }
}
