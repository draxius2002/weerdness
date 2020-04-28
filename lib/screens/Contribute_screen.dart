import 'package:flutter/material.dart';
//import 'package:ffg_app/util/const.dart';
import 'package:ffg_app/util/Contributions.dart';
//import 'package:ffg_app/podo/Contribute.dart';
//import 'package:ffg_app/widgets/smooth_star_rating.dart';

class ContributeScreen extends StatefulWidget {
  @override
  _ContributeScreenState createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen>
    with AutomaticKeepAliveClientMixin<ContributeScreen> {
  final TextEditingController _ContributeControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Card(
            elevation: 6.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "Search..",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                maxLines: 1,
                controller: _ContributeControl,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: EdgeInsets.all(20.0),
            /* child: Text(
              "Contributions",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            child: Text(
              "Contributions",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),*/
            child: Row(
              children: <Widget>[
               Text(
                      "Contribution ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                Text(
                      "By : 1 May 2020",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            itemCount: contributions == null ? 0 : contributions.length,
            itemBuilder: (BuildContext context, int index) {
              Map Contribute = contributions[index];
              return ListTile(
                title: Text(
                  "${Contribute['goods']}",
                  style: TextStyle(
//                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                leading: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    "${Contribute['img']}",
                  ),
                ),
                trailing: Text("${Contribute['pcs']}"),
                subtitle: Row(
                  children: <Widget>[
                    /*  SmoothStarRating(
                      starCount: 1,
                      color: Constants.ratingBG,
                      allowHalfRating: true,
                      rating: 5.0,
                      size: 12.0,
                    ),
                    SizedBox(width: 6.0), */
                    Text(
                      "By : " + "${Contribute['name']}",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              );
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
