import 'package:flutter/material.dart';
import 'package:task2/product/model/works.dart';

mixin HomePageMixin on StatelessWidget {
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
        description:
            "A plan or drawing produced to show the look and function or workings of a building, garment, or other object before it is made.",
        numberpersonText: "24 contacts",
        imageUrl:
            "https://investip.vn/wp-content/uploads/2023/01/design-tools.jpeg"),
    Works(
        title: "Cinema",
        description:
            "A theatre where films are shown for public entertainment.",
        numberpersonText: "6 contacts",
        imageUrl:
            "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/97/27/16/cinema-rex.jpg?w=1200&h=-1&s=1"),
    Works(
        title: "Mode",
        description:
            "A way or manner in which something occurs or is experienced, expressed, or done.",
        numberpersonText: "13 contacts",
        imageUrl:
            "https://media.istockphoto.com/id/1280716343/tr/vekt%C3%B6r/casual-moda-k%C4%B1z-moda-ske%C3%A7-vekt%C3%B6r-sanat.jpg?s=170667a&w=0&k=20&c=RUWKhB9n9D10DBvXaN3ViN2sKqApBMk9OEgvhXlpWiE="),
    Works(
        title: "Architecture ",
        description:
            "The art or practice of designing and constructing buildings.",
        numberpersonText: "7 contacts",
        imageUrl:
            "https://thearchitectsdiary.com/wp-content/uploads/2023/02/Arch2O-architectural-sketching-10-architecture-sketching-tips-1.jpg"),
    Works(
        title: "Business",
        description: "A person's regular occupation, profession, or trade.",
        numberpersonText: "30 contacts",
        imageUrl:
            "https://online.hbs.edu/Style%20Library/api/resize.aspx?imgpath=/PublishingImages/overhead-view-of-business-strategy-meeting.jpg&w=1200&h=630"),
    Works(
        title: "Photograph",
        description:
            "A picture made using a camera, in which an image is focused on to light-sensitive material and then made visible and permanent by chemical treatment, or stored digitally.",
        numberpersonText: "9 contacts",
        imageUrl:
            "https://www.recordnet.com/gcdn/presto/2021/03/22/NRCD/9d9dd9e4-e84a-402e-ba8f-daa659e6e6c5-PhotoWord_003.JPG")
  ];
}
