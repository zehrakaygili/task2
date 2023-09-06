import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/features/home/page/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorksPage(),
      theme: ThemeData.light(),
    );
  }
}
