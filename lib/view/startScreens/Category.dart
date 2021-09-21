import 'package:flutter/material.dart';
import 'package:orion/Widget/HeaderDrawer.dart';
import 'package:orion/Widget/appBar.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: HeaderDrawer(),
    );
  }
}
