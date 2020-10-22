import 'package:flutter/material.dart';
import 'package:workoutConcept/screens/Workout.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      bottomNavigationBar: Container(
        width: size.width,
        height: 80.0,
        padding: EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          color: theme.accentColor,
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.apps,
                color: theme.primaryColor,
                size: 40.0,
              ),
              Text(
                "Workout",
                style: textTheme.caption,
              ),
              Text(
                "Level",
                style: textTheme.caption,
              ),
              Text(
                "Profile",
                style: textTheme.caption,
              )
            ],
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image: AssetImage("assets/back3.png"),
                        fit: BoxFit.contain)),
              ),
              Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [
                        0.3,
                        0.6,
                        1
                      ],
                          colors: [
                        Color(0xff232441).withOpacity(0.5),
                        Color(0xff131429),
                        Color(0xff131429),
                      ]))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      style: textTheme.headline4
                                          .apply(fontSizeFactor: 0.7),
                                      children: [
                                    TextSpan(text: "Hey,"),
                                    TextSpan(
                                        text: " Rafik",
                                        style: textTheme.headline3
                                            .apply(fontSizeFactor: 0.7))
                                  ])),
                              Container(
                                height: 45.0,
                                width: 45.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage("assets/pic.jpg"),
                                        fit: BoxFit.cover),
                                    border: Border.all(
                                        width: 2.0, color: theme.primaryColor)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 90.0,
                          ),
                          Center(
                            child: Container(
                              height: 70.0,
                              width: 70.0,
                              decoration: BoxDecoration(
                                color: theme.primaryColor.withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    color: theme.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(
                                      style: textTheme.headline4
                                          .apply(fontSizeFactor: 0.7),
                                      children: [
                                    TextSpan(text: "Find"),
                                    TextSpan(
                                        text: " your Workout",
                                        style: textTheme.headline3
                                            .apply(fontSizeFactor: 0.7))
                                  ])),
                              Icon(
                                Icons.sort,
                                size: 30.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Center(
                            child: Container(
                              width: size.width * 0.85,
                              height: 50.0,
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              decoration: BoxDecoration(
                                  color: theme.accentColor,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "SEARCH WORKOUT",
                                    style: textTheme.bodyText1
                                        .apply(fontSizeFactor: 0.8),
                                  ),
                                  Icon(
                                    Icons.search,
                                    size: 20.0,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.0),
                                    border: Border.all(
                                        width: 1, color: theme.primaryColor)),
                                child: Text(
                                  "Popular",
                                  style: textTheme.bodyText1
                                      .apply(fontSizeFactor: 0.7),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15.0),
                                child: Text(
                                  "Hard workout",
                                  style: textTheme.bodyText1
                                      .apply(fontSizeFactor: 0.7),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15.0),
                                child: Text(
                                  "Full body",
                                  style: textTheme.bodyText1
                                      .apply(fontSizeFactor: 0.7),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 15.0),
                                child: Text(
                                  "Crossfit",
                                  style: textTheme.bodyText1
                                      .apply(fontSizeFactor: 0.7),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            "Popular Workout",
                            style:
                                textTheme.headline3.apply(fontSizeFactor: 0.7),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 240.0,
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Workout())),
                                child: Container(
                                  margin: EdgeInsets.only(right: 20.0),
                                  height: 170.0,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("assets/back4.png")),
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Yoga exercises",
                                style: textTheme.bodyText1,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Workout())),
                                child: Container(
                                  margin: EdgeInsets.only(right: 20.0),
                                  height: 170.0,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("assets/back2.png")),
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Yoga exercises",
                                style: textTheme.bodyText1,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Workout())),
                                child: Container(
                                  margin: EdgeInsets.only(right: 20.0),
                                  height: 170.0,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("assets/back5.png")),
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Yoga exercises",
                                style: textTheme.bodyText1,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
