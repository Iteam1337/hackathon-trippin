import 'package:flutter/material.dart';

class TravelBuddy extends StatelessWidget {
  final String gravatar;
  final String name;
  final String location;
  final String time;

  TravelBuddy(this.gravatar, this.name, this.location, this.time);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      dense: true,
      leading: new CircleAvatar(
        backgroundImage: new NetworkImage(
          'https://www.gravatar.com/avatar/$gravatar.jpg?s=400',
        ),
      ),
      title: new Text(
        name,
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
