import 'package:flutter/material.dart';
import 'package:workoutConcept/screens/Intro.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    image: AssetImage("assets/back7.png"), fit: BoxFit.cover)),
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
                          "Sign in",
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
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextField(
                          style: textTheme.bodyText1,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            disabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            border: new UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.white)),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 30.0),
                            labelText: "Email",
                            hintText: "Enter your email",
                            hintStyle: textTheme.bodyText1,
                            labelStyle: textTheme.caption,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: TextField(
                          obscureText: true,
                          style: textTheme.bodyText1,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            disabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white),
                            ),
                            border: new UnderlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.white)),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 30.0),
                            labelText: "Password",
                            hintText: "Enter your password",
                            hintStyle: textTheme.bodyText1,
                            labelStyle: textTheme.caption,
                          ),
                        ),
                      ),
                    ],
                  )),
                  Container(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Forgot your password?",
                      style: textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: size.width * .75,
                          height: 50,
                          child: RaisedButton(
                            color: theme.primaryColor,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        IntroScreen())),
                            child: Text(
                              "Login",
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
                              border: Border.all(
                                  width: 1.0, color: theme.primaryColor)),
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: textTheme.button,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
