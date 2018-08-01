import 'package:flutter/material.dart';
import 'package:wenflutter_app/viewController/firstPage.dart';
import 'package:wenflutter_app/viewController/secondPage.dart';
import 'package:wenflutter_app/viewController/thridPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: controller,
          children: <Widget>[
            new FirstPage(),
            new SecondPage(),
            new ThridPage()
          ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue[500],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(text: '首页', icon: new Icon(Icons.home)),
            new Tab(text: 'lake', icon: new Icon(Icons.whatshot)),
            new Tab(text: '我的', icon: new Icon(Icons.card_giftcard))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
