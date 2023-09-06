import 'package:flutter/material.dart';
import 'package:task2/constants.dart';
import 'package:task2/user_page.dart';
import 'package:task2/widgets/works.dart';

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
                      return const UserPage();
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.network(
                          '${workList[index].imageUrl}',
                          width: 150,
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${workList[index].title}',
                                style: titleTextStyle,
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  '${workList[index].description}',
                                  style: subtitleTextStyle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text('${workList[index].numberpersonText}'),
                                ],
                              ),
                            ],
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
