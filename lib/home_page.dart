import 'package:flutter/material.dart';
import 'pages/page_0.dart';
import 'pages/page_1.dart';
import 'pages/page_2.dart';
import 'pages/page_3.dart';
import 'pages/page_4.dart';
import 'pages/page_5.dart';
import 'pages/page_6.dart';
import 'pages/page_7.dart';
import 'pages/page_8.dart';
import 'pages/page_9.dart';
import 'pages/page_10.dart';
import 'pages/page_11.dart';
import 'pages/page_12.dart';
import 'pages/page_13.dart'; // Imported Page13
import 'pages/page_14.dart';
import 'pages/page_15.dart';
import 'pages/page_16.dart';
import 'pages/page_17.dart';
import 'pages/page_18.dart';
import 'pages/page_19/page_19.dart';
import 'pages/page_20.dart';
import 'pages/page_21.dart';
import 'pages/page_22.dart';
import 'pages/page_23.dart';
import 'pages/page_24.dart';
import 'pages/page_25.dart';
import 'pages/page_26.dart';
import 'pages/page_27/page_27.dart';
import 'pages/page_28.dart';
import 'pages/page_29.dart';
import 'pages/page_30.dart';
import 'pages/page_31.dart';
import 'pages/page_32.dart';
import 'pages/page_33.dart';
import 'pages/page_34.dart';
import 'pages/page_35.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}); // Corrected the constructor syntax

  final pages = <Widget>[
    const SizedBox(height: 100),
    const SizedBox(height: 100),
    const SizedBox(height: 100),
    PageButton(pageNumber: 0, page: const Page0()),
    PageButton(pageNumber: 1, page: const Page1()),
    PageButton(pageNumber: 2, page: const Page2()),
    PageButton(pageNumber: 3, page: const Page3()),
    PageButton(pageNumber: 4, page: const Page4()),
    PageButton(pageNumber: 5, page: const Page5()),
    PageButton(pageNumber: 6, page: const Page6()),
    PageButton(pageNumber: 7, page: const Page7()),
    PageButton(pageNumber: 8, page: const Page8()),
    PageButton(pageNumber: 9, page: const Page9()),
    PageButton(pageNumber: 10, page: const Page10()),
    PageButton(pageNumber: 11, page: const Page11()),
    PageButton(pageNumber: 12, page: const Page12()),
    Hero(
      tag: 'page_13_transition_key',
      child: PageButton(pageNumber: 13, page: const Page13()),
    ),
    PageButton(pageNumber: 14, page: const Page14()),
    PageButton(pageNumber: 15, page: const Page15()),
    PageButton(pageNumber: 16, page: const Page16()),
    PageButton(pageNumber: 17, page: const Page17()),
    PageButton(pageNumber: 18, page: const Page18()),
    PageButton(pageNumber: 19, page: const Page19()),
    PageButton(pageNumber: 20, page: const Page20()),
    PageButton(pageNumber: 21, page: const Page21()),
    PageButton(pageNumber: 22, page: const Page22()),
    PageButton(pageNumber: 23, page: const Page23()),
    PageButton(pageNumber: 24, page: const Page24()),
    PageButton(pageNumber: 25, page: const Page25()),
    PageButton(pageNumber: 26, page: const Page26()),
    PageButton(pageNumber: 27, page: const Page27()),
    PageButton(pageNumber: 28, page: const Page28()),
    PageButton(pageNumber: 29, page: const Page29()),
    PageButton(pageNumber: 30, page: const Page30()),
    PageButton(pageNumber: 31, page: const Page31()),
    PageButton(pageNumber: 32, page: const Page32()),
    PageButton(pageNumber: 33, page: const Page33()),
    PageButton(pageNumber: 34, page: const Page34()),
    PageButton(pageNumber: 35, page: const Page35()),
    const SizedBox(height: 100),
    const SizedBox(height: 100),
    const SizedBox(height: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: pages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: (2 / 1),
        ),
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}

