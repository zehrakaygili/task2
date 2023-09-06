import 'package:flutter/material.dart';

class HomeDecoration extends BoxDecoration {
  const HomeDecoration()
      : super(
          image: const DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover),
        );
}
