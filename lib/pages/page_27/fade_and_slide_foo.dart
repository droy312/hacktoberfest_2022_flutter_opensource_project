import 'package:flutter/material.dart';

class FadeAndSlideFoo extends StatefulWidget {
  final Slide slide;
  final Widget child;
  final Duration delay;
  const FadeAndSlideFoo({super.key, required this.child, this.slide = Slide.top,required this.delay});

  @override
  _FadeAndSlideFooState createState() => _FadeAndSlideFooState();
}

class _FadeAndSlideFooState extends State<FadeAndSlideFoo>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slideFoo;
  late Animation<double> fadeDown;
  late Offset _offset;

  @override
  void initState() {
    super.initState();
    if (widget.slide == Slide.top) {
      _offset = const Offset(0, -10);
    }
    if (widget.slide == Slide.right) {
      _offset = const Offset(100, 0);
    }
    if (widget.slide == Slide.left) {
      _offset = const Offset(-10, 0);
    }

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    slideFoo = Tween<Offset>(begin: _offset, end: Offset.zero).animate(
      CurvedAnimation(curve: Curves.ease, parent: _animationController),
    );
    fadeDown = Tween<double>(begin: 0, end: 1.0).animate(
      CurvedAnimation(curve: Curves.decelerate, parent: _animationController),
    );

    if (widget.delay == null) {
      _animationController.forward();
    } else {
      Future.delayed(widget.delay, () {
        _animationController.forward();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeDown,
      child: SlideTransition(
        position: slideFoo,
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

enum Slide { right, top, left, down }