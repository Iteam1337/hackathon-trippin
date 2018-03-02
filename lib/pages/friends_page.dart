import 'package:flutter/material.dart';
import 'package:trippin_app/ui/friend_item.dart';
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
            title: 'Family',
            friends: [
              new FriendItem(name: 'nils'),
              new FriendItem(name: 'martin'),
              new FriendItem(name: 'einar'),
            ],
            buttonText: 'Plan a trip',
          ),
          new FriendsList(
            title: 'Skiing',
            friends: [
              new FriendItem(name: 'nils'),
              new FriendItem(name: 'martin'),
            ],
            buttonText: 'Go skiing',
          ),
          new FriendsList(
            title: 'Iteam',
            friends: [
              new FriendItem(name: 'radu'),
              new FriendItem(name: 'sebastian'),
              new FriendItem(name: 'anders'),
              new FriendItem(name: 'maria_c'),
              new FriendItem(name: 'alexander'),
            ],
            buttonText: 'Plan a trip',
          ),
        ],
      ),
    );
  }
}
