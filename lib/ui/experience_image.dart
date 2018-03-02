import 'package:flutter/material.dart';

class ExperienceImage extends StatelessWidget {
  final String image;

  ExperienceImage(this.image);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 160.0,
      height: 80.0,
      child: new Image.asset('assets/images/$image.jpeg'),
    );
  }
}
