import 'package:flutter/material.dart';
import 'package:task2/constants.dart';
import 'package:task2/work.dart';

import 'user_page.dart';

class WorksPage extends StatefulWidget {
  const WorksPage({super.key});

  @override
  State<WorksPage> createState() => _WorksPageState();
}

class _WorksPageState extends State<WorksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                titleText,
                style: titleTextStyle,
              ),
              Text(
                subtitleText,
                style: subtitleTextStyle,
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: workList.length,
                    itemBuilder: (context, index) {
                      Work work = workList[index];
                      return Container(
                        height: 150,
                        child: Card(
                          color: cardColor,
                          margin: EdgeInsets.all(9),
                          elevation: 5,
                          child: ListTile(
                            title: Text(work.title),
                            subtitle: Text(work.text),
                            leading: Image.network(
                              work.imageUrl,
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => UserPage()),
                              );
                            },
                          ),
                        ),
                      );
                    }),
              )
            ],
          )),
    );
  }
}
