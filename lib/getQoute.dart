import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:miqb/secondPage.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class getQoute extends StatefulWidget {
  //userPage({required Key key}) : super(key: key);
  @override
  getQouteState createState() => new getQouteState();
}

// ignore: camel_case_types
class getQouteState extends State<getQoute> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final FocusNode myFocusNodeEmailLogin = FocusNode();
  final FocusNode myFocusNodePasswordLogin = FocusNode();

  final FocusNode myFocusNodePassword = FocusNode();
  final FocusNode myFocusNodeEmail = FocusNode();
  final FocusNode myFocusNodeName = FocusNode();

  TextEditingController noidaIdController = new TextEditingController();
  TextEditingController noidaPasswordController = new TextEditingController();
  TextEditingController noidaPhoneController = new TextEditingController();

  bool _obscureTextLogin = true;
  bool _obscureTextSignup = true;
  bool _obscureTextSignupConfirm = true;
  bool isIdValid = true;

  TextEditingController gurugramIdController = new TextEditingController();
  TextEditingController gurugramPasswordController = new TextEditingController();
  TextEditingController gurugramPhoneController = new TextEditingController();

  late PageController _pageController;

  Color left = Colors.black;
  Color right = Colors.white;

  bool isIdValidate = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: NotificationListener<OverscrollIndicatorNotification>(
        /*onNotification: (overscroll) {
          overscroll.disallowGlow();
        },*/
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height >= 775.0
                ? MediaQuery.of(context).size.height
                : 775.0,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: new Image(
                      width: 250.0,
                      height: 250.0,
                      fit: BoxFit.fill,
                      image: new AssetImage('Assets/qoute.png')),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  //child: _buildMenuBar(context),
                ),
                Expanded(
                  flex: 2,
                  child: PageView(
                    controller: _pageController,
                    children: <Widget>[
                      new ConstrainedBox(
                        constraints: const BoxConstraints.expand(),
                        child: _buildSignIn(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    myFocusNodePassword.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodeName.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _pageController = PageController();
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    // ignore: deprecated_member_use
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    // ignore: deprecated_member_use
    _scaffoldKey.currentState!.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }
  Widget _buildSignIn(BuildContext context) {

    String _myActivity;
    String _myActivityResult;
    final formKey = new GlobalKey<FormState>();

    void initState() {
      super.initState();
      _myActivity = '';
      _myActivityResult = '';
    }
    return Container(
      padding: EdgeInsets.only(top: 0.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none ,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 300.0,
                  height: 300.0,
                  child: Wrap(
                    children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                  child: TextFormField(
                    autofocus: true,
                    focusNode: myFocusNodeName,
                    controller: noidaIdController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    style: TextStyle(
                      fontFamily: "WorkSansSemiBold",
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "MiQB ID",
                      hintStyle: TextStyle(
                          fontFamily: "WorkSansSemiBold", fontSize: 12.0),
                    ),
                  ),
                ),
        Container(
          width: 250.0,
          height: 1.0,
          color: Colors.grey[400],
        ),
        Container(
          width: 250.0,
          height: 1.0,
          color: Colors.grey[400],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
          child: DropDownFormField(
            hintText: 'All Categories',
            dataSource: [
              {
                "display": "Allocated Work Stations",
                "value": "Allocated Work Stations",
              },
              {
                "display": "Create Your Own QB",
                "value": "Create Your Own QB",
              },
              {
                "display": "Open Flexi",
                "value": "Open Flexi",
              },
              {
                "display": "Premium Cabins",
                "value": "Premium Cabins",
              },
              {
                "display": "Private Offices",
                "value": "Private Offices",
              },
              {
                "display": "Suites",
                "value": "Suites",
              },
              {
                "display": "Training Room",
                "value": "Training Room",
              },
            ],
            textField: 'display',
            valueField: 'value',

            ),
          ),
        Container(
          width: 250.0,
          height: 1.0,

          color: Colors.grey[400],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
          child: TextFormField(
            autofocus : true,
            controller: noidaPhoneController,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(
                fontFamily: "WorkSansSemiBold",
                fontSize: 14.0,
                color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Number Of Seats",
              hintStyle: TextStyle(
                  fontFamily: "WorkSansSemiBold", fontSize: 12.0),
            ),
          ),
        ),
                    ],
                ),
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 290.0),
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
                        "GET QOUTE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SecondPage()))
                    }
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }

  void _onSignUpButtonPress() {
    _pageController.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }

  void _toggleSignup() {
    setState(() {
      _obscureTextSignup = !_obscureTextSignup;
    });
  }

  void _toggleSignupConfirm() {
    setState(() {
      _obscureTextSignupConfirm = !_obscureTextSignupConfirm;
    });
  }
  bool validateTextField(String userInput) {
    if (userInput.isEmpty) {
      setState(() {
        isIdValidate = true;
      });
      return false;
    }
    setState(() {
      isIdValidate = false;
    });
    return true;
  }

}


//tabIndicationPainter
class TabIndicationPainter extends CustomPainter {
  late Paint painter;
  final double dxTarget;
  final double dxEntry;
  final double radius;
  final double dy;

  final PageController pageController;

  TabIndicationPainter(
      {this.dxTarget = 125.0,
        this.dxEntry = 25.0,
        this.radius = 21.0,
        this.dy = 25.0, required this.pageController}) : super(repaint: pageController) {
    painter = new Paint()
      ..color = Color(0xFFFFFFFF)
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {

    final pos = pageController.position;
    double fullExtent = (pos.maxScrollExtent - pos.minScrollExtent + pos.viewportDimension);

    double pageOffset = pos.extentBefore / fullExtent;

    bool left2right = dxEntry < dxTarget;
    Offset entry = new Offset(left2right ? dxEntry: dxTarget, dy);
    Offset target = new Offset(left2right ? dxTarget : dxEntry, dy);

    Path path = new Path();
    path.addArc(
        new Rect.fromCircle(center: entry, radius: radius), 0.5 * pi, 1 * pi);
    path.addRect(
        new Rect.fromLTRB(entry.dx, dy - radius, target.dx, dy + radius));
    path.addArc(
        new Rect.fromCircle(center: target, radius: radius), 1.5 * pi, 1 * pi);

    canvas.translate(size.width * pageOffset, 0.0);
    canvas.drawShadow(path, Color(0xFFfbab66), 3.0, true);
    canvas.drawPath(path, painter);
  }
  @override
  bool shouldRepaint(TabIndicationPainter oldDelegate) => true;

}
