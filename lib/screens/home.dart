import 'package:flutter/material.dart';
import 'package:ffg_app/screens/dishes.dart';
import 'package:ffg_app/screens/Homeless_Alert.dart';
import 'package:ffg_app/screens/Volunteer_Group.dart';
//import 'package:ffg_app/widgets/grid_product.dart';
//import 'package:ffg_app/widgets/home_category.dart';
import 'package:ffg_app/widgets/slider_item.dart';
import 'package:ffg_app/util/events.dart';
//import 'package:ffg_app/util/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getflutter/getflutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin<Home> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Event",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton(
                  child: Text(
                    "View More",
                    style: TextStyle(
//                      fontSize: 22,
//                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return DishesScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),

            SizedBox(height: 10.0),

            //Slider Here

            CarouselSlider(
              height: MediaQuery.of(context).size.height / 2.4,
              items: map<Widget>(
                events,
                (index, i) {
                  Map food = events[index];
                  return SliderItem(
                    img: food['img'],
                    isFav: false,
                    name: food['name'],
                    rating: 5.0,
                    raters: 23,
                  );
                },
              ).toList(),
              autoPlay: true,
//                enlargeCenterPage: true,
              viewportFraction: 1.0,
//              aspectRatio: 2.0,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
            SizedBox(height: 20.0),

            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: GFTypography(
                text: 'More to Help',
                type: GFTypographyType.typo4,
                dividerWidth: 25,
                dividerColor: Color(0xff06E9A4),
              ),
            ),

            SizedBox(height: 20.0),
            new GestureDetector(
              child: InkWell(
                splashColor: Colors.red,
                borderRadius: BorderRadius.circular(10),
                highlightColor: Colors.teal[50],
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return VolunteerGroup();
                      },
                    ),
                  );
                },
                child: GFCard(
                  color: Colors.teal[300],
                  content: GFListTile(
                    avatar: GFAvatar(
                      shape: GFAvatarShape.standard,
                      backgroundImage: AssetImage('assets/F1.jpg'),
                      foregroundColor: Colors.white,
                    ),
                    // titleText:'Volunteer as Group',
                    title: Text(
                      'Volunteer Group Registration',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    subtitleText:
                        'Gather your friend and family to be part of FFG team',
                    padding: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  ),
                  margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                ),
              ),
            ),

            new GestureDetector(
              child: InkWell(
                splashColor: Colors.teal,
                borderRadius: BorderRadius.circular(10),
                highlightColor:Colors.red[50] ,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return HomelessAlert();
                      },
                    ),
                  );
                },
                child: GFCard(
                  color: Colors.red[200],
                  content: GFListTile(
                    avatar: GFAvatar(
                      shape: GFAvatarShape.standard,
                      backgroundImage: AssetImage('assets/F2.jpg'),
                    ),
                    //titleText:'Report Homeless',
                    title: Text(
                      'Notify Homeless',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    subtitleText: 'Know homeless that need help?',
                    padding: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), //inside
                    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0), //outside
                  ),
                  margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),

          

            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: GFTypography(
                text: 'Statistic',
                type: GFTypographyType.typo4,
                dividerWidth: 25,
                dividerColor: Color(0xff06E9A4),
              ),
            ),

            SizedBox(height: 20.0),
            
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
