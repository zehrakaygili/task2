import 'package:flutter/material.dart';
import 'package:task2/features/user/page/user_page.dart';
import 'package:task2/product/const/constants.dart';
import 'package:task2/product/model/works.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.work,
  });

  final Works work;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const UserPage();
          }));
        },
        child: Container(
          height: 120,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                work.imageUrl,
                width: 150,
                fit: BoxFit.cover,
                height: 120,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        work.title,
                        style: titleTextStyle,
                      ),
                      Expanded(
                        child: Text(
                          work.description,
                          style: subtitleTextStyle,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person),
                          Text(work.numberpersonText),
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
    );
  }
}
