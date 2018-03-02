import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend.dart';
import 'package:trippin_app/ui/planned_experience.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: new EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: new Column(
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                'Rickard Laurin',
                style: new TextStyle(
                  color: Colors.black45,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              new Container(height: 6.0),
              new Text(
                'Male / 32 years',
                style: new TextStyle(
                  color: Colors.black26,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new Container(height: 32.0),
              new Text(
                "You're about to experience",
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
          ),
          new PlannedExperience(
            'Whistler, Canada',
            [
              new Friend('98b50512dfeaea8a4ba9d4e3ba20eced', ''),
              new Friend('df2dc89db476f82b895b762e638b6d22', ''),
            ],
            '2018-03-03',
            'assets/images/bg_1.jpeg',
          ),
          new PlannedExperience(
            'Fishing in Alaska',
            [new Friend('98b50512dfeaea8a4ba9d4e3ba20eced', '')],
            '2018-03-10',
            'assets/images/fishing.jpeg',
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(height: 16.0),
              new Text(
                'Past experiences',
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
          ),
          new PlannedExperience(
            'Desert safari in Egypt',
            [],
            '2018-03-10',
            'assets/images/bg_2.jpeg',
          ),
        ],
      ),
    );
  }
}
