import 'package:flutter/material.dart';

class ThridPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new ThridPageHome(),
    );
  }
}

class ThridPageHome extends StatefulWidget {
  @override

  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<ThridPageHome> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('界面3'),
      ),
      body: Center(
        child: new Text('Thrid Page Home'),
      ),
    );
  }
}