import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page13 extends StatefulWidget {
  const Page13({super.key});

  static const initialText = 'Tap button below';

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  String random = Page13.initialText;

  void _handleRandomPress() => setState(
        () => random = Random().nextInt(100).toString(),
      );

  void _handleResetPress() => setState(
        () => random = Page13.initialText,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 12'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(random, textScaleFactor: 3),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextButton.icon(
                onPressed: _handleRandomPress,
                icon: const Icon(CupertinoIcons.restart),
                label: const Text('Get random number'),
              ),
            ),
            TextButton.icon(
              onPressed: _handleResetPress,
              icon: const Icon(CupertinoIcons.refresh),
              label: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
