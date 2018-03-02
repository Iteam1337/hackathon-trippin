import 'package:flutter/material.dart';

class ExperienceButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  ExperienceButton(this.title, this.subtitle, this.icon);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new InkWell(
        child: new ListTile(
          dense: true,
          leading: new Icon(icon, size: 32.0),
          title: new Text(
            title,
            style: new TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: new Text(
            subtitle,
            style: new TextStyle(color: Colors.black38),
          ),
          trailing: new Icon(
            Icons.chevron_right,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
