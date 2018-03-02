import 'package:flutter/material.dart';
import 'package:trippin_app/ui/experience_button.dart';
import 'package:image_carousel/image_carousel.dart';
import 'package:trippin_app/ui/travel_buddy.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          new ImageCarousel(
            <ImageProvider>[
              new AssetImage('assets/images/bg_2.jpeg'),
              new AssetImage('assets/images/bg_4.jpeg'),
              new AssetImage('assets/images/bg_6.jpeg'),
            ],
            interval: new Duration(seconds: 5),
          ),
          new Padding(
            padding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: new Column(
              children: <Widget>[
                new TravelBuddy('98b50512dfeaea8a4ba9d4e3ba20eced', 'Nisse',
                    'Skiing in Canada', 'Now'),
                new TravelBuddy('df2dc89db476f82b895b762e638b6d22', 'Martin',
                    'Surfing in Hawaii', '32 min ago'),
                new Container(
                  height: 12.0,
                ),
                new Container(
                  height: 1.0,
                  color: Colors.grey[200],
                ),
                new Container(
                  height: 6.0,
                ),
                new ExperienceButton(
                  'Experience with friends',
                  'Sharing is caring',
                  Icons.people,
                ),
                new Container(
                  height: 6.0,
                ),
                new ExperienceButton(
                  'Experience now!',
                  'Find your destination',
                  Icons.explore,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
