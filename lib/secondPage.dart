import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miqb/complainContact.dart';
import 'package:miqb/getQoute.dart';
import 'package:miqb/inviteGuest.dart';
import 'package:miqb/meetingRoom.dart';


class SecondPage extends StatefulWidget
{
  @override
  State createState() => new SecondPageState();
}
class SecondPageState extends State<SecondPage> with SingleTickerProviderStateMixin {
  late Animation<double> _iconAnimation;
  late AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(),
      drawer : NavDrawer(),
      body : ListView(
        children: [
          //open flexi
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 300.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 400.0,
                        height: 183.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/noida/open_flexi.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'OPEN FLEXI',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "WorkSansBold",
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
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
                            "KNOW MORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context : context,
                              builder : (BuildContext context) {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                      borderRadius : BorderRadius.circular(20.0)),
                                  child : Container(
                                    height : 200,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                        mainAxisAlignment : MainAxisAlignment.center,
                                        crossAxisAlignment : CrossAxisAlignment.stretch,
                                        children :[
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Workstations on first come first serve basis\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //PREMIUM OFFICE
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 300.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 400.0,
                        height: 183.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/noida/premium_office.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'PREMIUM OFFICE',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "WorkSansBold",
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
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
                            "KNOW MORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context : context,
                              builder : (BuildContext context) {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                      borderRadius : BorderRadius.circular(20.0)),
                                  child : Container(
                                    height : 340,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                        mainAxisAlignment : MainAxisAlignment.center,
                                        crossAxisAlignment : CrossAxisAlignment.stretch,
                                        children :[
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Premium Cabins accommodate up to 4 people\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.meeting_room),),
                                              TextSpan(text: '  Free uses of conference rooms, subjects to availability.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.storage),),
                                              TextSpan(text: '  Free Storage within Enclosure.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.print),),
                                              TextSpan(text: '  Free Printouts up to 100 pages per seat in a month.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.phone),),
                                              TextSpan(text: '  Wired LAN.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //private office
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 300.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 400.0,
                        height: 183.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/noida/private-office.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'PRIVATE OFFICE',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "WorkSansBold",
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
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
                            "KNOW MORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                        showDialog(
                          context : context,
                          builder : (BuildContext context) {
                              return Dialog(
                                shape : RoundedRectangleBorder(
                                  borderRadius : BorderRadius.circular(20.0)),
                              child : Container(
                                height : 340,
                                child : Padding(
                                  padding : const EdgeInsets.all(2.0),
                                  child : Column(
                                    mainAxisAlignment : MainAxisAlignment.center,
                                    crossAxisAlignment : CrossAxisAlignment.stretch,
                                    children :[
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.person),),
                                          TextSpan(text: '  Accomodates 5-30 people.\t\t',)],),),
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.meeting_room),),
                                          TextSpan(text: '  Free uses of conference rooms, subjects to availability.\t\t',)],),),
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.wifi),),
                                          TextSpan(text: '  Free Wifi.\t\t',)],),),
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.storage),),
                                          TextSpan(text: '  Free Storage within Enclosure.\t\t',)],),),
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.print),),
                                          TextSpan(text: '  Free Printouts up to 100 pages per seat in a month.\t\t',)],),),
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.phone),),
                                          TextSpan(text: '  Wired LAN and Telephone Line(on request, Charges applicable).\t\t',)],),),
                                      Text.rich( TextSpan(
                                        style: TextStyle(fontSize: 17,),
                                        children: [
                                          WidgetSpan(child: Icon(Icons.local_drink),),
                                          TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                    ],
                                  ),
                                ),
                              ),
                              );
                            });
                        },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //suites
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 300.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 400.0,
                        height: 183.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/noida/suites.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'SUITES',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "WorkSansBold",
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
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
                            "KNOW MORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context : context,
                              builder : (BuildContext context) {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                      borderRadius : BorderRadius.circular(20.0)),
                                  child : Container(
                                    height : 340,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                        mainAxisAlignment : MainAxisAlignment.center,
                                        crossAxisAlignment : CrossAxisAlignment.stretch,
                                        children :[
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Private enclosures which accommodate 15—30 people with inbuilt Private Cabins for '
                                                  'Senior/ Official/ Manager/ Entrepreneurs.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.meeting_room),),
                                              TextSpan(text: '  Free uses of conference rooms, subjects to availability.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.storage),),
                                              TextSpan(text: '  Free Storage within Enclosure.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.print),),
                                              TextSpan(text: '  Free Printouts up to 100 pages per seat in a month.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.phone),),
                                              TextSpan(text: '  Wired LAN and Telephone Line(on request, Charges applicable).\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //TRAINING ROOM
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 300.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 400.0,
                        height: 183.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/noida/training_room.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'TRAINING ROOM',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "WorkSansBold",
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
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
                            "KNOW MORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context : context,
                              builder : (BuildContext context) {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                      borderRadius : BorderRadius.circular(20.0)),
                                  child : Container(
                                    height : 500,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                        mainAxisAlignment : MainAxisAlignment.center,
                                        crossAxisAlignment : CrossAxisAlignment.stretch,
                                        children :[
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              TextSpan(text: '  CORPORATE MEMBERSHIP PLANS.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  SILVER.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 3 full days within 3 months of commencement of Membership.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  GOLD.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 5 full days within 3 months of commencement of Membership.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  PLATINUM.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 12 full days within 3 months of commencement of Membership.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  DIAMOND.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 20 full days within 3 months of commencement of Membership.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),

                                          /*Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              TextSpan(text: '  INSTITUTIONAL MEMBERSHIP PLANS.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  PEARL.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 6 Half days within 3 months of commencement of Membership.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  RUBY.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 10 Half days within 3 months of commencement of Membership.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  SAPPHIRE.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 24 Half days within 3 months of commencement of Membership\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 15,),
                                            children: [
                                              TextSpan(text: '  EMERALD.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Use of Training Rooms for any 40 Half days within 3 months of commencement of Membership\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.wifi),),
                                              TextSpan(text: '  Free Wifi.\t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 12,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.local_drink),),
                                              TextSpan(text: '  Unlimited Tea & Coffee.\t\t\t\t\t\t\t',)],),),
                                          */
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//LEFT DRAWER
class NavDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'MiQB:The Executive Co-Working Spaces',
              style: TextStyle(color: Colors.black, fontSize: 15 ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading: Icon(Icons.meeting_room),
            title: Text('Book A Meeting Room'),
            onTap: () => {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => meetingRoom()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite A Guest'),
            onTap: () => {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => inviteGuest()))
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_comment),
            title: Text('Request A Qoute'),
            onTap: () => {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => getQoute()))
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_comment),
            title: Text('Contact Us'),
            onTap: () => {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => complainContact()))
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_comment),
            title: Text('Our Associations (COMING SOON..)'),
            onTap: () => {
              },
          ),
        ],
      ),
    );
  }
}


