import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required ListView child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}
