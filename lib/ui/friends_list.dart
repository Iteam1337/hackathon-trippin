import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend.dart';

class FriendsList extends StatelessWidget {
  final String title;
  final List<Friend> friends;
  final String buttonText;

  FriendsList(this.title, this.friends, this.buttonText);

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
              new Expanded(
                child: new Text(
                  title,
                  style: new TextStyle(
                    color: Colors.black45,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
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
          new Container(height: 10.0),
          new Container(
            height: 2.0,
            width: 40.0,
            color: new Color(0xAA1498d6),
          ),
          new Container(height: 8.0),
          new Row(
            children: friends,
          ),
        ],
      ),
    );
  }
}
