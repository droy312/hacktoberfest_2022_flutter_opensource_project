import 'dart:async';
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

  void _handleRandomPress() => randomNumberController.add(
        Random().nextInt(100).toString(),
      );

  void _handleResetPress() => randomNumberController.add(initialData);

  late StreamController<String> randomNumberController;

  @override
  void initState() {
    randomNumberController = StreamController();
    super.initState();
  }

  @override
  void dispose() {
    randomNumberController.close();
    super.dispose();
  }

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
            StreamBuilder<String>(
              stream: randomNumberController.stream,
              initialData: initialData,
              builder: (_, snapshot) {
                return Text(snapshot.data!, textScaleFactor: 3);
              },
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
