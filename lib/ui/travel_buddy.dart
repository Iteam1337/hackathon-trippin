import 'package:flutter/material.dart';
import 'package:trippin_app/models/friend.dart';

class TravelBuddy extends StatelessWidget {
  final String name;
  final String location;
  final String time;

  TravelBuddy({
    this.name,
    this.location,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    final Friend friend = new Friend(name);

    return new ListTile(
      dense: true,
      leading: new CircleAvatar(
        backgroundImage: new NetworkImage(friend.gravatarId),
      ),
      title: new Text(
        friend.realName,
        style: new TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: new Text(location),
      trailing: new Text(
        time,
        style: new TextStyle(
          color: Colors.black26,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
