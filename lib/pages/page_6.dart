import 'package:flutter/material.dart';

// TODO: Beautify this page according to your imagination
class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    final headline = Theme.of(context).textTheme.headline6;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Composition FTW!'),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white10,
          ),
          child: Padding(
            padding: const EdgeInsets.all(48.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                Text(
                  'Flutter is designed to use composition '
                  'rather than inheritance, and a great way '
                  'to see it in action is in build methods.',
                  style: headline,
                ),
                const SizedBox(height: 16),
                Text(
                  'Instead of having every Widget inherit '
                  'from a base class with all the necessary '
                  'properties (like padding), Flutter uses '
                  'individual classes.',
                  style: headline,
                ),
                const SizedBox(height: 16),
                Text(
                  'Padding, for example, knows how to pad '
                  'a child... and nothing else! ',
                  style: headline,
                ),
                const SizedBox(height: 16),
                Text(
                  'An app\'s UI is then composed by '
                  'putting instances of these simple '
                  'classes together, which can lead to '
                  'simpler code.',
                  style: headline,
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
