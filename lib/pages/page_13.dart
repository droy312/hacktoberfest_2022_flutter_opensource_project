import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page13 extends StatefulWidget {
  const Page13({super.key});

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  static const initialData = 'Tap button below';

  void _handleRandomPress() =>
      randomNotifier.value = Random().nextInt(100).toString();

  void _handleResetPress() => randomNotifier.value = initialData;

  late ValueNotifier<String> randomNotifier;

  @override
  void initState() {
    randomNotifier = ValueNotifier(initialData);
    super.initState();
  }

  @override
  void dispose() {
    randomNotifier.dispose();
    super.dispose();
  }

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
              builder: (_, value, __) => Text(value, textScaleFactor: 3),
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
