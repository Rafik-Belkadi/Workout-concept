import 'package:flutter/material.dart';

class Workout extends StatefulWidget {
  Workout({Key key}) : super(key: key);

  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
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
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/back6.png"),
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
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 30,
                      child: RaisedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.timer,
                              color: Colors.white,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "3 Hours",
                              style: textTheme.bodyText1,
                            )
                          ],
                        ),
                        onPressed: () => {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[100],
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      height: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(width: 0.5, color: Colors.white)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                              text: TextSpan(
                                  style: textTheme.bodyText1
                                      .apply(color: theme.primaryColor),
                                  children: [
                                TextSpan(text: "16"),
                                TextSpan(
                                    text: " Moves", style: textTheme.bodyText2)
                              ])),
                          RichText(
                              text: TextSpan(
                                  style: textTheme.bodyText1
                                      .apply(color: theme.primaryColor),
                                  children: [
                                TextSpan(text: "12"),
                                TextSpan(
                                    text: " Sets", style: textTheme.bodyText2)
                              ])),
                          RichText(
                              text: TextSpan(
                                  style: textTheme.bodyText1
                                      .apply(color: theme.primaryColor),
                                  children: [
                                TextSpan(text: "30"),
                                TextSpan(
                                    text: " min", style: textTheme.bodyText2)
                              ])),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Advanced Workout",
                      style: textTheme.headline3.apply(fontSizeFactor: 0.7),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: 150,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                            size: 17.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                            size: 17.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[800],
                            size: 17.0,
                          ),
                          Icon(
                            Icons.star,
                            color: theme.accentColor,
                            size: 17.0,
                          ),
                          Icon(
                            Icons.star,
                            color: theme.accentColor,
                            size: 17.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Description",
                          style: textTheme.bodyText1.apply(fontSizeFactor: 1.2),
                        ),
                        Text(
                          "Feedback",
                          style: textTheme.bodyText1.apply(
                              fontSizeFactor: 1.2,
                              color: textTheme.caption.color),
                        ),
                        Text(
                          "Related",
                          style: textTheme.bodyText1.apply(
                              fontSizeFactor: 1.2,
                              color: textTheme.caption.color),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet",
                      style: textTheme.bodyText1.apply(fontSizeFactor: 0.8),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          r"Begin Train for $5.00",
                          style: textTheme.button,
                        ),
                        onPressed: () => {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border:
                            Border.all(width: 1.0, color: theme.primaryColor),
                      ),
                      child: Center(
                        child: Text(
                          "Begin Train Demo",
                          style: textTheme.button,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
