import 'package:flutter/material.dart';
import 'package:labs/widgets/animation.widget.dart';

class AnimationPage extends StatelessWidget {
  static const routeName = '/animation';

  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: ColorChanger(),
    );
  }
}
