import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 70,
        ),
        Text(
          "WORKS",
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          "7 groups of contact",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
