import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workoutConcept/screens/EntryPoint.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        sliderTheme: SliderThemeData(trackHeight: 1.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0XFF40D876),
        accentColor: Color(0XFF232441),
        backgroundColor: Color(0xFF131429),
        buttonColor: Color(0XFF40D876),
        canvasColor: Color(0xff373850),
        textTheme: TextTheme(
          caption: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.3),
              fontFamily: GoogleFonts.montserrat().fontFamily),
          button: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: GoogleFonts.bebasNeue().fontFamily),
          bodyText1: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: GoogleFonts.montserrat().fontFamily),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: GoogleFonts.montserrat().fontFamily),
          headline1: TextStyle(
              fontSize: 25.0,
              letterSpacing: 5.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: GoogleFonts.bebasNeue().fontFamily),
          headline2: TextStyle(
              fontSize: 25.0,
              letterSpacing: 5.0,
              fontWeight: FontWeight.w700,
              color: Color(0XFF40D876),
              fontFamily: GoogleFonts.bebasNeue().fontFamily),
          headline3: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: GoogleFonts.montserrat().fontFamily),
          headline4: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w700,
              color: Color(0XFF40D876),
              fontFamily: GoogleFonts.montserrat().fontFamily),
        ),
      ),
      home: EntryPoint(),
    );
  }
}
