import 'package:flutter/material.dart';
import 'package:ffg_app/screens/notifications.dart';
import 'package:ffg_app/screens/main_screen.dart';
import 'package:ffg_app/widgets/badge.dart';
import 'package:getflutter/getflutter.dart';

class NotifyHomeless extends StatefulWidget {
  @override
  _NotifyHomelessState createState() => _NotifyHomelessState();
}

class _NotifyHomelessState extends State<NotifyHomeless> {
  final TextEditingController _nameControl = new TextEditingController();
  final TextEditingController _ageControl = new TextEditingController();
  final TextEditingController _genderControl = new TextEditingController();
  final TextEditingController _descControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_backspace,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Report a rough sleeper",
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications,
              size: 22.0,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Notifications();
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            GFImageOverlay(
              height: 160, //200
              width: 280, //280
              boxFit: BoxFit.cover,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
                  child: Text(
                    'If you are concerned about someone that you have seen sleeping rough around Kuala Lumpur that you know that she/he need help to get out of poverty, you can use this form to send an alert to FFG. The details you provide are sent to FFG team to help them find the individual and connect them to support.',
                    style: TextStyle(color: GFColors.WHITE, height: 1.5),
                    textAlign: TextAlign.justify,
                  )),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.60), BlendMode.darken),
              image: const AssetImage('assets/ffg20.jpg'),
              margin: new EdgeInsets.only(top: 10.0), //outside
              borderRadius: BorderRadius.circular(10),
            ),
            SizedBox(height: 30.0),

            TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                labelText: "Where is the person located?",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.location_on,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _nameControl,
            ),
            SizedBox(height: 10.0),
            TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                labelText: "His/Her Name",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.face,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _nameControl,
            ),
            SizedBox(height: 10.0),
           TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                labelText: "Gender",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons. perm_identity,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _nameControl,
            ),
            SizedBox(height: 10.0),
            TextField(
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide:
                        BorderSide(color: Theme.of(context).accentColor)),
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                labelText: "Age",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.all_inclusive,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _nameControl,
            ),
            SizedBox(height: 10.0),
            Container(
              height: 50.0,
              child: RaisedButton(
                child: Text(
                  "Submit".toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return MainScreen();
                      },
                    ),
                  );
                },
                color: Theme.of(context).accentColor,
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
