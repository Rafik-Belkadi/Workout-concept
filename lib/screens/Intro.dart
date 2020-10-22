import 'package:flutter/material.dart';

import 'Home.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var titles = [
    "I am\nnactive",
    "I am\nBeginner",
    "I am\nAdvanced",
    "I am\nExpert",
  ];
  var descriptions = [
    "I have never trained",
    "I train sometimes",
    "I train at least 3 times",
    "I train everyday",
  ];
  var selectedIndex = 0;

  onselected(index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/back2.png"), fit: BoxFit.cover)),
          ),
          Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: theme.backgroundColor.withOpacity(0.8),
              )),
          Container(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: RichText(
                        text: TextSpan(style: textTheme.headline1, children: [
                      TextSpan(text: "HARD"),
                      TextSpan(text: " ELEMENT", style: textTheme.headline2)
                    ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About you",
                          style: textTheme.headline3,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "we want to know more about you, follow the next steps to complete the information",
                          style: textTheme.bodyText1,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: titles.length,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () => onselected(index),
                              child: Container(
                                margin: EdgeInsets.only(right: 20.0),
                                width: 180,
                                padding: EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                    color: theme.accentColor,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: selectedIndex != index
                                          ? Container(
                                              width: 30.0,
                                              height: 30.0,
                                            )
                                          : Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: theme.canvasColor),
                                              child: Icon(
                                                Icons.check,
                                                color: theme.primaryColor,
                                              ),
                                            ),
                                    ),
                                    Text(
                                      titles[index],
                                      style: textTheme.headline4
                                          .apply(fontSizeFactor: 0.7),
                                    ),
                                    Text(descriptions[index],
                                        style: textTheme.bodyText1),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home())),
                    child: Text(
                      "Skip Intro",
                      style: textTheme.caption,
                    )),
                Container(
                  height: 30.0,
                  width: 120,
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home())),
                    child: Text(
                      "Next",
                      style: textTheme.bodyText1,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
