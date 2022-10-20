import 'package:flutter/material.dart';

class Page0 extends StatelessWidget {
  const Page0({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Pre Defining the Variable
    Color shadowColor = Colors.lightBlue;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Intro For Project',
      home: Scaffold(
          body: Container(
              width: width,
              color: Colors.black,
              child: Center(
                  child: Text(
                      "Welcome To Hactober'22\n\n\t\tExplore The Beauty\n\n\t\t\t\tOf\n\n\t\tHacktoberfest 2022",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                          color: Colors.white70,
                          //For Blurring Effects
                          shadows: [
                            Shadow(
                              color: shadowColor,
                              blurRadius: 20,
                            ),
                            Shadow(
                              color: shadowColor,
                              blurRadius: 60,
                            ),
                          ]))))),
    );
  }
}
