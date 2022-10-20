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
          body: Column(
        children: <Widget>[
          Container(
              height: (2 * height) / 3,
              width: width,
              color: Colors.black,
              child: Center(
                  child: Text(
                      "Welcome To Hactober'22 \n\n     Explore The Beauty \n\n                  Of",
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
                          ])))),
          Container(
              color: Colors.black,
              height: height / 3,
              width: width,
              child: const Expanded(
                child: Center(
                  child: Image(
                    image: AssetImage('android/Assets/Img1.webp'),
                  ),
                ),
              )),
        ],
      )),
    );
  }
}
