import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miqb/complainContact.dart';
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
      drawer : NavDrawer(),
    );
  }
}

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
              //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => meetingRoom()))
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
            //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => complainContact()))
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_comment),
            title: Text('Our Associations'),
            onTap: () => {
              //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => complainContact()))
            },
          ),
        ],
      ),
    );
  }
}


