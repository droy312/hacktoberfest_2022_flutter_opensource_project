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
  late final ValueNotifier<String> randomNotifier;

  @override
  void initState() {
    randomNotifier = ValueNotifier(Page13.initialText);
    super.initState();
  }

  @override
  void dispose() {
    randomNotifier.dispose();
    super.dispose();
  }

  void _handleRandomPress() =>
      randomNotifier.value = Random().nextInt(100).toString();

  void _handleResetPress() => randomNotifier.value = Page13.initialText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 13'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder<String>(
              valueListenable: randomNotifier,
              builder: (context, value, child) =>
                  Text(value, textScaleFactor: 3),
            ),
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
