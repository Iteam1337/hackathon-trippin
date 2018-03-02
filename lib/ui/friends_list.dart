import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend_item.dart';
import 'package:trippin_app/ui/section_title.dart';

class FriendsList extends StatelessWidget {
  final String title;
  final List<FriendItem> friends;
  final String buttonText;

  FriendsList({
    this.title,
    this.friends,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(child: new SectionTitle(title: title)),
              new FlatButton(
                color: new Color(0x331498d6),
                onPressed: () => 'Skiing',
                child: new Text(
                  buttonText,
                  style: new TextStyle(
                      color: Colors.black54,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          new Container(height: 16.0),
          new Row(
            children: friends,
          ),
        ],
      ),
    );
  }
}
