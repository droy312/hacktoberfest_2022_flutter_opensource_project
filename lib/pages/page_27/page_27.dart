// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_button.dart';
import 'fade_and_slide_foo.dart';
import 'fade_foo.dart';


Color selectedColor = const Color(0XFF3A6FFF);
Color notSelectedColor = selectedColor.withOpacity(0.4);
enum Gender { male, female }

class Page27 extends StatefulWidget {
  const Page27({super.key});

  @override
  _Page27 createState() => _Page27();
}

class _Page27 extends State<Page27> {
  Gender selectedGender=Gender.male;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FadeFoo(
                duration:const Duration(milliseconds: 400),
                widget: Text(
                  "Choose Your Gender",
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 30, color: selectedColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: FadeAndSlideFoo(
                          delay:const Duration(milliseconds: 20),
                          slide: Slide.right,
                          child: AnimatedContainer(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: selectedGender == Gender.male
                                    ? selectedColor
                                    : notSelectedColor,
                                shape: BoxShape.circle),
                            duration: const Duration(milliseconds: 500),
                            child: Image.asset("assets/images/male.png"),
                          ),
                        ),
                      ),
                      FadeAndSlideFoo(
                        delay: const Duration(milliseconds: 20),
                        slide: Slide.right,
                        child: Text(
                          "Male",
                          style: TextStyle(color: selectedColor, fontSize: 27),
                        ),
                      )
                    ],
                  ),
                  FadeAndSlideFoo(
                    slide: Slide.right,
                    delay: const Duration(milliseconds: 150),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          child: AnimatedContainer(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: selectedGender == Gender.female
                                    ? selectedColor
                                    : notSelectedColor,
                                shape: BoxShape.circle),
                            duration: const Duration(milliseconds: 500),
                            child: Image.asset("assets/images/female.png"),
                          ),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(color: selectedColor, fontSize: 27),
                        )
                      ],
                    ),
                  ),
                ],
              ),
             const SizedBox(
                  height: 190,
                ),
                CustomBottomButton(
                ),
            ],
          ),
        ),
      ),
    );
  }
}
