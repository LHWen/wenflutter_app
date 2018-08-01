import 'package:flutter/material.dart';

class MyGridViewApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyGridViewHome(),
    );
  }
}

class MyGridViewHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyGridViewHome> {

  // The images are saved with names img1.jpg, img2.jpg...img30.jpg.
  // The List.generate constructor allows an easy way to create
  // a list when objects have a predictable naming pattern.
  List<Container> _buildGridTitleList(int count) {
    List<Container> containers = List<Container>.generate(
      count,
    (int index) => Container(child: Image.asset('images/img${index+1}.jpg'))
    );

    return containers;
  }

  Widget buildGrid(){
    return GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: _buildGridTitleList(30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}