import 'package:flutter/material.dart';
import 'package:trippin_app/pages/explore_page.dart';
import 'package:trippin_app/pages/friends_page.dart';
import 'package:trippin_app/pages/profile_page.dart';
import 'package:trippin_app/pages/start_page.dart';

class LandingPage extends StatefulWidget {
  @override
  LandingPageState createState() => new LandingPageState();
}

class LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: new Center(
          child: new Image.asset('assets/images/logo.png', height: 50.0),
        ),
        elevation: 1.0,
      ),
      bottomNavigationBar: new Material(
        color: new Color(0xAA1498d6),
        child: new TabBar(controller: controller, tabs: <Tab>[
          new Tab(icon: new Icon(Icons.home)),
          new Tab(icon: new Icon(Icons.explore)),
          new Tab(icon: new Icon(Icons.people)),
          new Tab(icon: new Icon(Icons.person)),
        ]),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new StartPage(),
          new ExplorePage(),
          new FriendsPage(),
          new ProfilePage()
        ],
      ),
    );
  }
}
