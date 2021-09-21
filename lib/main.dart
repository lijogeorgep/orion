import 'package:flutter/material.dart';
import 'package:orion/view/Navigation/bottomNavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'orion',
      home: BottomNavigation(),

    );
  }
}
