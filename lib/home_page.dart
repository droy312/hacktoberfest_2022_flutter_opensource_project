import 'package:flutter/material.dart';
import 'pages/page_1.dart';
import 'pages/page_10.dart';
import 'pages/page_2.dart';
import 'pages/page_3.dart';
import 'pages/page_4.dart';
import 'pages/page_5.dart';
import 'pages/page_6.dart';
import 'pages/page_7.dart';
import 'pages/page_8.dart';
import 'pages/page_9.dart';
import 'pages/page_11.dart';
import 'pages/page_12.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(height: 100),
          PageButton(pageNumber: 1, page: Page1()),
          PageButton(pageNumber: 2, page: Page2()),
          PageButton(pageNumber: 3, page: Page3()),
          PageButton(pageNumber: 4, page: Page4()),
          PageButton(pageNumber: 5, page: Page5()),
          PageButton(pageNumber: 6, page: Page6()),
          PageButton(pageNumber: 7, page: Page7()),
          PageButton(pageNumber: 8, page: Page8()),
          PageButton(pageNumber: 9, page: Page9()),
          PageButton(pageNumber: 10, page: Page10()),
          PageButton(pageNumber: 11, page: Page11()),
          PageButton(pageNumber: 12, page: Page12()),

          /// TODO: 
          /// Want to add more page buttons?
          ///
          /// Add the below code snippet
          /// Add the proper page number
          /// Create a new page in the pages folder
          /// Add the newly created Page widget in the page named parameter
          ///
          /// Code snippet
          /// ```dart
          /// PageButton(pageNumber: /*proper page number*/, page: /*newly created page number*/),
          /// ```
        ],
      ),
    );
  }
}

class PageButton extends StatelessWidget {
  final int pageNumber;
  final Widget page;
  const PageButton({
    super.key,
    required this.pageNumber,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => page));
          },
          child: Text('Page $pageNumber'),
        ),
      ],
    );
  }
}
