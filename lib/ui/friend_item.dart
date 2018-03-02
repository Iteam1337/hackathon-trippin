import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trippin_app/models/friend.dart';

class FriendItem extends StatelessWidget {
  final String name;
  final bool hideName;

  FriendItem({
    @required this.name,
    this.hideName = false,
  });

  @override
  Widget build(BuildContext context) {
    final Friend friend = new Friend(name);

    return new Padding(
      padding: const EdgeInsets.all(6.0),
      child: new Column(
        children: <Widget>[
          new CircleAvatar(
            backgroundImage: new NetworkImage(friend.gravatarId),
          ),
          hideName ? new Container() : new Container(height: 10.0),
          hideName
              ? new Container()
              : new Text(
                  friend.realName,
                  style: new TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ],
      ),
    );
  }
}
