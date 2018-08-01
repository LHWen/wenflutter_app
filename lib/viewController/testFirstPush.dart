import 'package:flutter/material.dart';

//void main() => runApp(new MyFirstApp());

class MyFirstApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyFirstHomePage(),
    );
  }
}

class MyFirstHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyFirstHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          // 3个图像中的每一个都是100像素宽。渲染盒（在这种情况下，整个屏幕）宽度超过300个像素
          // 因此设置主轴对齐方式为spaceEvenly，它会在每个图像之间，之前和之后均匀分配空闲的水平空间
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
