import 'package:flutter/material.dart';
import 'package:trippin_app/pages/landing_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = new AnimationController(
      duration: new Duration(seconds: 1),
      vsync: this,
    );
    _animation = new CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceOut,
    );

    _animationController.addListener(() => this.setState(() {}));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new InkWell(
        onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                builder: (_) => new LandingPage(),
              ),
            ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              'assets/images/logo_text.png',
              height: _animation.value * 200.0,
            ),
            _animation.value == 1
                ? new Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: new Text(
                      'Tap to start your journey',
                      style: new TextStyle(fontSize: 16.0),
                    ),
                  )
                : new Container(height: 20.0),
          ],
        ),
      ),
    );
  }
}
