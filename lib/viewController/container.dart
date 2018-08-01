import 'package:flutter/material.dart';

class MyContainerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyContainerHome(),
    );
  }
}

class MyContainerHome extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyContainerHome> {

  @override
  Widget build(BuildContext context) {

   var container = Container(
     decoration: BoxDecoration(
       color: Colors.black26,
     ),
     child: Column(
       children: <Widget>[
         Row(
           children: <Widget>[
             Expanded(
                 child:Container(
                   decoration: BoxDecoration(
                     border: Border.all(
                       width: 5.0,
                       color: Colors.lightBlueAccent,
                     ),
                     borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                   ),
                   margin: const EdgeInsets.all(4.0),
                   child: Image.asset('images/pic5.jpg'),
                 ),
             ),
             Expanded(
               child:Container(
                 decoration: BoxDecoration(
                   border: Border.all(
                     width: 5.0,
                     color: Colors.lightBlueAccent,
                   ),
                   borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                 ),
                 margin: const EdgeInsets.all(4.0),
                 child: Image.asset('images/pic6.jpg'),
               ),
             ),
           ],
         ),
         Row(
           children: <Widget>[
             Expanded(
               child:Container(
                 decoration: BoxDecoration(
                   border: Border.all(
                     width: 5.0,
                     color: Colors.lightBlueAccent,
                   ),
                   borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                 ),
                 margin: const EdgeInsets.all(4.0),
                 child: Image.asset('images/pic7.jpg'),
               ),
             ),
             Expanded(
               child:Container(
                 decoration: BoxDecoration(
                   border: Border.all(
                     width: 5.0,
                     color: Colors.lightBlueAccent,
                   ),
                   borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
                 ),
                 margin: const EdgeInsets.all(4.0),
                 child: Image.asset('images/pic8.jpg'),
               ),
             ),
           ],
         ),
       ],
     ),
   );

    return Scaffold(
      body: Center(
        child: container,
      ),
    );
  }
}