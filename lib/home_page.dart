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
import 'pages/page_13.dart';
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final pages = const [
    SizedBox(height: 100),
    SizedBox(height: 100),
    SizedBox(height: 100),

    PageButton(pageNumber: 0, page: Page0()),
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
    Hero(
      tag: 'page_13_transition_key',
      child: PageButton(pageNumber: 13, page: Page13()),
    ),
    PageButton(pageNumber: 14, page: Page14()),
    PageButton(pageNumber: 15, page: Page15()),
    PageButton(pageNumber: 16, page: Page16()),
    PageButton(pageNumber: 17, page: Page17()),
    PageButton(pageNumber: 18, page: Page18()),
    PageButton(pageNumber: 19, page: Page19()),
    PageButton(pageNumber: 20, page: Page20()),
    PageButton(pageNumber: 21, page: Page21()),
    PageButton(pageNumber: 22, page: Page22()),
    PageButton(pageNumber: 23, page: Page23()),
    PageButton(pageNumber: 24, page: Page24()),
    PageButton(pageNumber: 25, page: Page25()),
    PageButton(pageNumber: 26, page: Page26()),
    PageButton(pageNumber: 27, page: Page27()),
    PageButton(pageNumber: 28, page: Page28()),
    PageButton(pageNumber: 29, page: Page29()),
    PageButton(pageNumber: 30, page: Page30()),
    PageButton(pageNumber: 31, page: Page31()),
    PageButton(pageNumber: 32, page: Page32()),

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

    SizedBox(height: 100),
    SizedBox(height: 100),
    SizedBox(height: 100),
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
            }));
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
