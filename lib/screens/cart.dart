import 'package:flutter/material.dart';
import 'package:ffg_app/screens/checkout.dart';
import 'package:ffg_app/util/const.dart';
import 'package:ffg_app/util/events.dart';
import 'package:ffg_app/widgets/Planner.dart';
import 'package:ffg_app/widgets/smooth_star_rating.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with AutomaticKeepAliveClientMixin<CartScreen >{
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0),
        child: ListView.builder(
          itemCount: events == null ? 0 :events.length,
          itemBuilder: (BuildContext context, int index) {
//                Food food = Food.fromJson(events[index]);
            Map food = events[index];
//                print(events);
//                print(events.length);
            return CartItem(
              img: food['img'],
              isFav: false,
              name: food['name'],
              rating: 5.0,
              raters: 23,
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        tooltip: "Checkout",
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context){
                return Checkout();
              },
            ),
          );
        },
        child: Icon(
          Icons.arrow_forward,
        ),
        heroTag: Object(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
