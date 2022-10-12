import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Page 1',
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
