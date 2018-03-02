import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend.dart';

class PlannedExperience extends StatelessWidget {
  final String location;
  final String image;
  final List<Friend> friends;
  final String time;

  PlannedExperience(this.location, this.friends, this.time, this.image);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Row(
        children: <Widget>[
          new Image.asset(
            image,
            height: 75.0,
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  location,
                  style: new TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Container(height: 2.0),
                new Text(
                  'Date: $time',
                  style: new TextStyle(
                    color: Colors.black26,
                    fontSize: 12.0,
                  ),
                ),
                new Container(height: 6.0),
                new Row(children: friends),
              ],
            ),
          )
        ],
      ),
    );
  }
}
