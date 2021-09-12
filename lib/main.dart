import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labs/pages/animation.page.dart';
import 'package:labs/pages/modal.page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/modal',
      routes: {
        AnimationPage.routeName: (context) => AnimationPage(),
        ModalPage.routeName: (context) => ModalPage(),
      },
    );
  }
}
