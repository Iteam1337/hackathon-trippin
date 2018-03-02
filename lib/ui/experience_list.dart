import 'package:flutter/material.dart';
import 'package:trippin_app/ui/experience_image.dart';

class ExperienceList extends StatelessWidget {
  final String title;

  ExperienceList(this.title);

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
        images.map((asset) => new ExperienceImage(asset)).toList();

    return new Column(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: new Row(
            children: <Widget>[
              new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    title,
                    style: new TextStyle(
                      color: Colors.black45,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  new Container(height: 10.0),
                  new Container(
                    height: 2.0,
                    width: 40.0,
                    color: new Color(0xAA1498d6),
                  ),
                ],
              )
            ],
          ),
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
