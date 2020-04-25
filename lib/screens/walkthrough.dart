import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
//import 'package: dots_indicator/lib/src/dots_decorator.dart';
import 'package:ffg_app/screens/join.dart';


class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> pages = [
      PageViewModel(
        title:  "Individual Volunteering",
       body: "Share you volunteering spirit with us. Come and make new friends along the way",
        image: Image.asset("assets/V1.png",  height: 175.0,  ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).accentColor,
          ),
          bodyTextStyle: TextStyle(fontSize: 15.0),
          pageColor: Theme.of(context).primaryColor,
        ),
      ),

      PageViewModel(
       title:  "Group Volunteering",
       body : "Make your organization, company and group to collaborate with us. Together we change the world ",
        image: Image.asset(  "assets/V2.png", height: 185.0,),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).accentColor,
          ),
          bodyTextStyle: TextStyle(fontSize: 15.0),
          pageColor: Theme.of(context).primaryColor,
        ),
      ),

      PageViewModel(
       title :  "Easy Payment",
       body : "Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus."
            " Vestibulum ac diam sit amet quam vehicula elementum sed sit amet "
            "dui. Nulla porttitor accumsan tincidunt.",
        image: Image.asset(
          "assets/on3.png",
          height: 175.0,
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).accentColor,
          ),
          bodyTextStyle: TextStyle(fontSize: 15.0),
          pageColor: Theme.of(context).primaryColor,
        ),
      ),
    ];

    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: IntroductionScreen(
            pages: pages,
            onDone: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return JoinApp();
                  },
                ),
              );
            },
            onSkip: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return JoinApp();
                  },
                ),
              );
            },
            showSkipButton: true,
            skip: Text("Skip"),
            next: Text(
              "Next",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).accentColor,
              ),
            ),
            done: Text(
              "Done",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).accentColor,
              ),
            ),
             dotsDecorator: DotsDecorator(
            activeColor: Theme.of(context).accentColor,
            activeSize: Size.fromRadius(8),
          ),
          ),
        ),
        
      ),
      
    );
  }
}
