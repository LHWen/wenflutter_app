import 'package:flutter/material.dart';

class MyGatherApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyGatherHome(),
    );
  }
}

class MyGatherHome extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyGatherHome> {

  @override
  Widget build(BuildContext context) {

    // 默认情况下，行或列沿着其主轴会尽可能占用尽可能多的空间，但如果要将孩子紧密聚集在一起
    // 可以将mainAxisSize设置为MainAxisSize.min。 以下示例使用此属性将星形图标聚集在一起（如果不聚集，五张星形图标会分散开）。
    var packedRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.grey),
        Icon(Icons.star, color: Colors.grey),
      ],
    );

    return Scaffold(
      body: Center(
       child: packedRow,
      ),
    );
  }
}