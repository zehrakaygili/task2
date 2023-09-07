import 'package:flutter/material.dart';
import 'package:task2/product/widgets/bottombar.dart';
import 'package:task2/product/widgets/user_body.dart';
import 'package:task2/product/widgets/users.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<Users> userList = [
    Users(
      fullname: "Emily Smith",
      department: "Computer Engineer",
      ability: "Matlab, JavaScript, Dart, Flutter, C#, Photoshop",
      photoUrl:
          'https://static.vecteezy.com/system/resources/previews/019/896/012/original/female-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
    ),
    Users(
      fullname: "Wiliam Brown",
      department: "Photographer",
      ability: "Capture, Photoshop, Canva, Illustration ",
      photoUrl:
          'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
    ),
    Users(
      fullname: "Lilly Wilson",
      department: "Architect",
      ability: "AutoCad, Photoshop, 3D Studio Max, SketchUp",
      photoUrl:
          'https://i.pinimg.com/originals/a6/58/32/a65832155622ac173337874f02b218fb.png',
    ),
    Users(
      fullname: "George Martin",
      department: "Developer",
      ability: "JavaScript, Unity, Flutter, C#, Phyton",
      photoUrl:
          'https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserBody(userList: userList),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
