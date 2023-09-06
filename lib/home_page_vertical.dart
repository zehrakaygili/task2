import 'package:flutter/material.dart';
import 'package:task2/constants.dart';
import 'package:task2/widgets/works.dart';

import 'user_page.dart';

class WorksPage extends StatefulWidget {
  const WorksPage({
    super.key,
  });

  @override
  State<WorksPage> createState() => _WorksPageState();
}

class _WorksPageState extends State<WorksPage> {
  List<Works> workList = [
    Works(
      title: "Web Developer",
      description:
          "Web development refers to the creating, building, and maintaining of websites.",
      numberpersonText: "5 contacts",
      imageUrl:
          "https://w7.pngwing.com/pngs/501/438/png-transparent-man-using-laptop-illustration-web-development-web-developer-web-design-web-development-text-computer-presentation.png",
    ),
    Works(
        title: "Design",
        description: "design",
        numberpersonText: "24 contacts",
        imageUrl:
            "https://investip.vn/wp-content/uploads/2023/01/design-tools.jpeg"),
    Works(
        title: "Cinema",
        description: "cinema",
        numberpersonText: "6 contacts",
        imageUrl:
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/97/27/16/cinema-rex.jpg?w=1200&h=-1&s=1"),
    Works(
        title: "Moda",
        description: "moda",
        numberpersonText: "13 contacts",
        imageUrl:
            "https://media.istockphoto.com/id/1280716343/tr/vekt%C3%B6r/casual-moda-k%C4%B1z-moda-ske%C3%A7-vekt%C3%B6r-sanat.jpg?s=170667a&w=0&k=20&c=RUWKhB9n9D10DBvXaN3ViN2sKqApBMk9OEgvhXlpWiE="),
    Works(
        title: "Architecture ",
        description: "architecture",
        numberpersonText: "7 contacts",
        imageUrl:
            "https://thearchitectsdiary.com/wp-content/uploads/2023/02/Arch2O-architectural-sketching-10-architecture-sketching-tips-1.jpg"),
    Works(
        title: "Business",
        description: "business",
        numberpersonText: "30 contacts",
        imageUrl:
            "https://online.hbs.edu/Style%20Library/api/resize.aspx?imgpath=/PublishingImages/overhead-view-of-business-strategy-meeting.jpg&w=1200&h=630"),
    Works(
        title: "Photograph",
        description: "photograph",
        numberpersonText: "9 contacts",
        imageUrl:
            "https://www.recordnet.com/gcdn/presto/2021/03/22/NRCD/9d9dd9e4-e84a-402e-ba8f-daa659e6e6c5-PhotoWord_003.JPG")
  ];
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
                height: 80,
              ),
              const Text(
                "WORKS",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const Text(
                "7 groups of contact",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
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
                                    height: 75,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${workList[index].title}',
                                        style: titleTextStyle,
                                      ),
                                      Text(
                                        '${workList[index].description}',
                                        style: subtitleTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.person),
                                          Text(
                                              '${workList[index].numberpersonText}'),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
              )
            ],
          )),
    );
  }
}
