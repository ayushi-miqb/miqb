import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'userPage.dart';

class onBoarding extends StatefulWidget
{
  @override
  onBoardingState createState() => new onBoardingState() ;
}

class onBoardingState extends State<onBoarding>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Stack(
        children : <Widget>[
          new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              'Assets/cubes.png',
              height : 464,
              width : 600,
            ),
            Text(
              "FIND YOUR WORKSPACE",
              style: TextStyle(fontWeight: FontWeight.bold , fontSize: 30.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 100.0),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(1.0, 6.0),
                    blurRadius: 20.0,
                  ),
                  BoxShadow(
                    color: Colors.white70,
                    offset: Offset(1.0, 6.0),
                    blurRadius: 20.0,
                  ),
                ],
                gradient: new LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black
                    ],
                    begin: const FractionalOffset(0.2, 0.2),
                    end: const FractionalOffset(1.0, 1.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
              child: MaterialButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.white,
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 42.0),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: "WorkSansBold"),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => userPage()));
                },
              ),
            ),
          ],
        ),
      ],
    ),
    );
  }

}