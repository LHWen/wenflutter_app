import 'package:flutter/material.dart';

class MyCardListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new MyCardListHome(),
    );
  }
}

class MyCardListHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyCardListHome> {
  
  var card = SizedBox(
    height: 210.0,
    child: Card(
      child: Column(
        children: [
//          Stack(
//            alignment: const Alignment(0.6, 0.6),
//            children: [
//              CircleAvatar(
//                backgroundImage: AssetImage('images/pic.jpg'),
//                radius: 100.0,
//              ),
//              Container(
//                decoration: BoxDecoration(
//                  color: Colors.black45,
//                ),
//                child: Text(
//                  'Mia B',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ],
//          ),
          ListTile(
            title: Text('1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text('My City, CA 99984'),
            leading: Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500)),
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          ListTile(
            title: Text('costa@example.com'),
            leading: Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: card,
      ),
    );
  }
}