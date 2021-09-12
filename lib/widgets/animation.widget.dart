import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween;
  late AnimationController _animationController2;
  late Animation _colorTween2;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1999));
    _colorTween = ColorTween(begin: Colors.greenAccent, end: Colors.grey)
        .animate(_animationController);
    changeColors(s: 2);
    _animationController2 =
        AnimationController(vsync: this, duration: Duration(milliseconds: 999));
    _colorTween2 = ColorTween(begin: Colors.greenAccent, end: Colors.grey)
        .animate(_animationController2);
    changeColors2(s: 2);
    super.initState();
  }

  Future changeColors({required int s}) async {
    while (true) {
      await new Future.delayed(Duration(seconds: s), () {
        if (_animationController.status == AnimationStatus.completed) {
          _animationController.reverse();
        } else {
          _animationController.forward();
        }
      });
    }
  }

  Future changeColors2({required int s}) async {
    await Future.delayed(Duration(seconds: 1));
    while (true) {
      await new Future.delayed(Duration(seconds: s), () {
        if (_animationController2.status == AnimationStatus.completed) {
          _animationController2.reverse();
        } else {
          _animationController2.forward();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedBuilder(
          animation: _colorTween,
          builder: (context, child) => Container(
            child: Icon(
              Icons.circle,
              color: _colorTween.value,
            ),
          ),
        ),
        AnimatedBuilder(
          animation: _colorTween2,
          builder: (context, child) => Container(
            child: Icon(
              Icons.circle,
              color: _colorTween2.value,
            ),
          ),
        ),
      ],
    );
  }
}
