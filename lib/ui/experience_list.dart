import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trippin_app/ui/experience_image.dart';
import 'package:trippin_app/ui/section_title.dart';

class ExperienceList extends StatelessWidget {
  final String title;

  ExperienceList({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'bg_2',
      'bg_4',
      'bg_6',
      'bg_8',
    ];

    images.shuffle();

    List<Widget> experienceImages =
        images.map((asset) => new ExperienceImage(image: asset)).toList();

    return new Column(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: new SectionTitle(title: title),
        ),
        new Container(height: 10.0),
        new Container(
          height: 120.0,
          child: new ListView(
            children: <Widget>[
              new Container(
                height: 100.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: experienceImages,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
