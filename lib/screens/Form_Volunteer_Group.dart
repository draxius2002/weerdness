import 'package:flutter/material.dart';
import 'package:ffg_app/screens/notifications.dart';
import 'package:ffg_app/screens/main_screen.dart';
//import 'package:ffg_app/util/events.dart';
import 'package:ffg_app/widgets/badge.dart';
//import 'package:ffg_app/widgets/grid_product.dart';
import 'package:getflutter/getflutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class VolunteerGroup extends StatefulWidget {
  @override
  _VolunteerGroupState createState() => _VolunteerGroupState();
}

class _VolunteerGroupState extends State<VolunteerGroup> {
  final TextEditingController _nameControl = new TextEditingController();
 // final TextEditingController _ageControl = new TextEditingController();
  //final TextEditingController _genderControl = new TextEditingController();
  //final TextEditingController _descControl = new TextEditingController();
  final dateFormat = DateFormat("EEEE, MMMM d, yyyy 'at' h:mma");
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
          "Volunteer Group Registration",
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
        padding: EdgeInsets.fromLTRB(10.0, 0, 10, 0),
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
                    'We invite your group or organization to be part of us to serve the poor. No experience is neccasary, we care alot more about a smile and a desire to help others. :)',
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
                labelText: "Group Name",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.perm_identity,
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
                labelText: "Group Leader",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.perm_identity,
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
                labelText: "Group Leader Name",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.perm_identity,
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
                labelText: "Phone Number",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.perm_identity,
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
                labelText: "Email",
                labelStyle: TextStyle(
                  color: Colors.black54,
                ),
                prefixIcon: Icon(
                  Icons.perm_identity,
                  color: Colors.black,
                ),
              ),
              maxLines: 1,
              controller: _nameControl,
            ),
            SizedBox(height: 10.0),
          /*  DateTimePickerFormField(
              format: dateFormat,
              decoration: InputDecoration(labelText: 'Date'),
              onChanged: (dt) => setState(() => date = dt),
            ), */
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
                  Alert(
                    context: context,
                    type: AlertType.success,
                    title: "Submission Success",
                    desc: "We'll reach you back for further process ",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "OK",
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
                        width: 120,
                      )
                    ],
                  ).show();
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
