import 'package:flutter/material.dart';

class Work {
  String title;
  String text;
  String contactText;
  String imageUrl;

  Work(
      {required this.title,
      required this.text,
      required this.contactText,
      required this.imageUrl});
}

List<Work> workList = [
  Work(
    title: "Web Developer",
    text: "web development",
    contactText: "5 contacts",
    imageUrl:
        "https://w7.pngwing.com/pngs/501/438/png-transparent-man-using-laptop-illustration-web-development-web-developer-web-design-web-development-text-computer-presentation.png",
  ),
  Work(
      title: "Design",
      text: "design",
      contactText: "24 contacts",
      imageUrl:
          "https://investip.vn/wp-content/uploads/2023/01/design-tools.jpeg"),
  Work(
      title: "Cinema",
      text: "cinema",
      contactText: "",
      imageUrl:
          "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/97/27/16/cinema-rex.jpg?w=1200&h=-1&s=1")
];
