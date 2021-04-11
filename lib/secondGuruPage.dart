import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miqb/complainContact.dart';
import 'package:miqb/meetingRoom.dart';


class SecondGuruPage extends StatefulWidget
{
  @override
  State createState() => new SecondGuruPageState();
}
class SecondGuruPageState extends State<SecondGuruPage> with SingleTickerProviderStateMixin {
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
          //ALLOCATED WORK STATIONS
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 360.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 350.0,
                        height: 233.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/gurugram/allocated-work-stations.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'ALLOCATED WORK STATIONS',
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
                            context: context ,
                            builder: (BuildContext context)
                              {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),),
                                  child : Container(
                                    height : 340,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Executive Workstations.\t\t',)],),),
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
                                      )
                                    )
                                  )
                                );
                              }
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //CREATE YOUR OWN
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 360.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 350.0,
                        height: 233.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/gurugram/create-your-own.jpg')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top : 10.0),
                  ),
                  Text(
                    'CREATE YOUR OWN',
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
                            context: context,
                            builder : (BuildContext context)
                              {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),),
                                  child : Container(
                                    height: 340,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Built \t\t',)],),),
                                          Text.rich( TextSpan(
                                            style: TextStyle(fontSize: 17,),
                                            children: [
                                              WidgetSpan(child: Icon(Icons.person),),
                                              TextSpan(text: '  Workstations on first come first serve basis\t\t',)],),),
                                        ],
                                      )
                                    )
                                  )
                                );
                              }
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //OPEN FLEXI
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 360.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 350.0,
                        height: 233.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/gurugram/open-flexi.jpg')),
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
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child : Container(
                                  height: 200,
                                  child : Padding(
                                    padding  :const EdgeInsets.all(2.0),
                                    child : Column(
                                      mainAxisAlignment: MainAxisAlignment.center ,
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
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
                                    )
                                  )
                                ),
                                );
                              }
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //PRIVATE OFFICE
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 360.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 350.0,
                        height: 233.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/gurugram/private-office.jpg')),
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
                            context : context ,
                            builder : (BuildContext context)
                              {
                                return Dialog(
                                  shape : RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                  child : Container(
                                    height : 340,
                                    child : Padding(
                                      padding : const EdgeInsets.all(2.0),
                                      child : Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children : [
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
                              }
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          //SUITES
          Card(
            elevation: 2.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: 300.0,
              height: 360.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: new Image(
                        width: 350.0,
                        height: 233.0,
                        fit: BoxFit.fill,
                        image: new AssetImage('Assets/gurugram/suites.jpg')),
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
                              vertical: 10.0, horizontal: 40.0),
                          child: Text(
                            "KNOW MORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "WorkSansBold"),
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0)), //this right here
                                  child: Container(
                                    height: 340,
                                    child: Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Text.rich( TextSpan(
                                              style: TextStyle(fontSize: 17,),
                                              children: [
                                                WidgetSpan(child: Icon(Icons.person),),
                                                TextSpan(text: '  Accomodates 15-30 people.\t\t',)],),),
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
            onTap: () => {},
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
            title: Text('Our Associations'),
            onTap: () => {

            },
          ),
        ],
      ),
    );
  }
}


