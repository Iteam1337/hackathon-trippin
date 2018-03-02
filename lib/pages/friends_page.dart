import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend.dart';
import 'package:trippin_app/ui/friends_list.dart';

class FriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: new EdgeInsets.only(top: 20.0),
      child: new Column(
        children: <Widget>[
          new FriendsList(
            'Family',
            [
              new Friend('98b50512dfeaea8a4ba9d4e3ba20eced', 'Nisse'),
              new Friend('df2dc89db476f82b895b762e638b6d22', 'Martin'),
              new Friend('5a9204a813e8ed32bf8cd5f98f821008', 'Einar')
            ],
            'Plan a trip',
          ),
          new FriendsList(
            'Skiing',
            [
              new Friend('98b50512dfeaea8a4ba9d4e3ba20eced', 'Nisse'),
              new Friend('df2dc89db476f82b895b762e638b6d22', 'Martin'),
            ],
            'Go skiing',
          ),
          new FriendsList(
            'Iteam',
            [
              new Friend('43e083786d44ee05b1e6ab2fa99f55d2', 'Radu'),
              new Friend('80bfef931665c72fda1cd09069648bd3', 'Sebastian'),
              new Friend('fff397e622f3d6c92399ffe1c396c92c', 'Anders'),
              new Friend('e63088e3daf28b70eee0256ff274a97d', 'Maria C'),
              new Friend('72a2002411ffd107a42cd1fb582d6ed5', 'Alex'),
            ],
            'Plan a trip',
          ),
        ],
      ),
    );
  }
}
