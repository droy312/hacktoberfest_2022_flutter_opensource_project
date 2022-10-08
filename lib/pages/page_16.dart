import 'package:flutter/material.dart';
import 'dart:math' as math;

class Page16 extends StatefulWidget {
  const Page16({super.key});

  @override
  State<Page16> createState() => _Page16State();
}

class _Page16State extends State<Page16> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * math.pi,
              child: child,
            );
          },
          child: Center(
              child: Text(
            'Welcome to \n    Page 16',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
