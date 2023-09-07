import 'package:flutter/material.dart';
import 'package:task2/pages/user/user_page.dart';
import 'package:task2/product/const/constants.dart';
import 'package:task2/product/widgets/works.dart';

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
          itemBuilder: (context, index) => Card(
                elevation: 10,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return UserPage();
                    }));
                  },
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network(
                          '${workList[index].imageUrl}',
                          width: 150,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '${workList[index].title}',
                                  style: titleTextStyle,
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Text(
                                      '${workList[index].description}',
                                      style: subtitleTextStyle,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.group_outlined),
                                    Text('${workList[index].numberpersonText}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
