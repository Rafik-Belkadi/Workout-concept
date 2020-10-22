import 'package:flutter/material.dart';
import 'package:workoutConcept/screens/Intro.dart';
import 'package:workoutConcept/screens/Login.dart';

class EntryPoint extends StatefulWidget {
  EntryPoint({Key key}) : super(key: key);

  @override
  _EntryPointState createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
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
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: theme.backgroundColor.withOpacity(0.8),
              )),
          Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(20.0),
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
                          "Welcome",
                          style: textTheme.headline3,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Train and live new experience \nof exerciesing at home",
                          style: textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: size.width * .75,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: theme.primaryColor,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        IntroScreen())),
                            child: Text(
                              "Try Now",
                              style: textTheme.button,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: size.width * .75,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border:
                                  Border.all(width: 2.0, color: Colors.white)),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            color: theme.backgroundColor.withOpacity(0.7),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Login())),
                            child: Text(
                              "Login",
                              style: textTheme.button,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            alignment: Alignment.bottomCenter,
            child: FlatButton(
                onPressed: () => {},
                child: Text(
                  "Change language",
                  style: textTheme.bodyText2.apply(color: theme.primaryColor),
                )),
          )
        ],
      ),
    );
  }
}
