import 'package:flutter/material.dart';

class MyColumnApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyColumnImageHome(),
    );
  }
}

class MyColumnImageHome extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyColumnImageHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // 每个图片高100个像素。 渲染盒（在这种情况下，整个屏幕）的高度大于300像素
          // 因此设置主轴对齐方式为spaceEvenly，它会在每个图像之间，上方和下方均匀分配空闲的垂直空间
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/pic1.jpg'),
            Image.asset('images/pic2.jpg'),
            Image.asset('images/pic3.jpg'),
          ],
        ),
      ),
    );
  }
}