import 'package:flutter/material.dart';
import 'package:orion/Widget/HeaderDrawer.dart';
import 'package:orion/Widget/appBar.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: HeaderDrawer(),
    );
  }
}
