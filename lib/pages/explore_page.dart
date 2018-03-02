import 'package:flutter/material.dart';
import 'package:trippin_app/ui/experience_list.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: new EdgeInsets.only(top: 20.0),
      child: new Column(
        children: <Widget>[
          new ExperienceList('Tired of winter?'),
          new ExperienceList('I want more snow!'),
          new ExperienceList('Gimme jungle!'),
        ],
      ),
    );
  }
}
