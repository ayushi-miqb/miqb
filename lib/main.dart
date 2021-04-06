import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miqb/onBoardingScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: MainPage(),
        //home : new LoginPage(),
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.red));
  }
}

//************************************************FIRST PAGE***************************************************//
class MainPage extends StatefulWidget {
  @override
  State createState() => new MainPageState();
}

class MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> _iconAnimation;
  late AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => onBoarding())));
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeIn,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'Assets/logo.png',
                width: _iconAnimation.value * 300,
                height: _iconAnimation.value * 300,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
