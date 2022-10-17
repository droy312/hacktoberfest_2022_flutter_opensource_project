
import 'package:flutter/material.dart';

class FadeFoo extends StatefulWidget {
  final Duration duration;
  final Widget widget;
   const FadeFoo({super.key, required this.duration,required this.widget});

  @override
  _FadeFooState createState() => _FadeFooState();
}

class _FadeFooState extends State<FadeFoo> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> fade;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration:const Duration(milliseconds: 1400),
    );
    fade = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fade,
      child: widget.widget,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}