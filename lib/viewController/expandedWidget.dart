import 'package:flutter/material.dart';

class MyExpandedApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyExpandedHome(),
    );
  }
}

class MyExpandedHome extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyExpandedHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 也许你想要一个widget占据其兄弟widget两倍的空间。您可以将行或列的子项放置在Expandedwidget中
      // 以控制沿着主轴方向的widget大小。Expanded widget具有一个flex属性，它是一个整数，用于确定widget的弹性系数,默认弹性系数是1。
      // 例如，要创建一个由三个widget组成的行，其中中间widget的宽度是其他两个widget的两倍，将中间widget的弹性系数设置为2：
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('images/pic1.jpg'),
            ),
            Expanded(
              flex: 2,
              child: Image.asset('images/pic4.jpg'),
            ),
            Expanded(
              child: Image.asset('images/pic3.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}