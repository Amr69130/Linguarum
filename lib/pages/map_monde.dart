import 'package:flutter/material.dart';

class MapMonde extends StatelessWidget {
  const MapMonde({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Placeholder(), // Placeholder widget
        Image.asset("assets/images/mapmonde.png"), // Image widget
      ],
    );
  }
}


