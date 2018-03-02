import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return new Column(
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
    );
  }
}
