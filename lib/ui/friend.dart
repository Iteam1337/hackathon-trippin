import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  final String gravatar;
  final String name;

  Friend(this.gravatar, this.name);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new CircleAvatar(
            backgroundImage: new NetworkImage(
              'https://www.gravatar.com/avatar/$gravatar.jpg?s=1000',
            ),
          ),
          name.length > 0 ? new Container(height: 10.0) : new Container(),
          name.length > 0
              ? new Text(
                  name,
                  style: new TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                )
              : new Container(),
        ],
      ),
    );
  }
}
