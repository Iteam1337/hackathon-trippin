import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend_item.dart';
import 'package:trippin_app/ui/planned_experience.dart';
import 'package:trippin_app/ui/section_title.dart';

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
              new SectionTitle(title: "You're about to experience"),
            ],
          ),
          new PlannedExperience(
            location: 'Skiing in Whistler',
            friends: [
              new FriendItem(name: 'nils', hideName: true),
              new FriendItem(name: 'martin', hideName: true),
            ],
            time: '2018-03-03',
            image: 'bg_1',
          ),
          new PlannedExperience(
            location: 'Fishing in Alaska',
            friends: [
              new FriendItem(name: 'rasmus', hideName: true),
            ],
            time: '2018-03-10',
            image: 'fishing',
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(height: 16.0),
              new SectionTitle(title: 'Past experiences'),
            ],
          ),
          new PlannedExperience(
            location: 'Desert safari in Egypt',
            time: '2018-03-10',
            image: 'bg_2',
          ),
        ],
      ),
    );
  }
}
