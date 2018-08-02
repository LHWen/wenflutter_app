import 'package:flutter/material.dart';

class ThridPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    var card = SizedBox(
      height: 410.0,
      child: Card(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment(0.6, 0.6),
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/pic0233.jpg'),
                  radius: 100.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                  ),
                  child: Text(
                    'String Z',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.pink[200],
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: Text('1625 Main Street',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('My City, Ca 99984'),
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
                Icons.phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('costa@example.com'),
              leading: Icon(
                Icons.email,
                color: Colors.blue[500],
              ),
            )
          ],
        ),
      ),
    );

    List<Widget> list = <Widget>[
      ListTile(
        title: Text(
          'change passWord',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
        ),
        leading: Icon(
          Icons.verified_user,
          color: Colors.blue[500],
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),
      Divider(),
      ListTile(
        title: Text(
          'message center',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
        ),
        leading: Icon(
          Icons.message,
          color: Colors.blue[500],
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),
      Divider(),
      ListTile(
        title: Text(
          'system share',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
        ),
        leading: Icon(
          Icons.share,
          color: Colors.blue[500],
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),
      Divider(),
      ListTile(
        title: Text(
          'version info',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
        ),
        leading: Icon(
          Icons.content_paste,
          color: Colors.blue[500],
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      ),
      Divider(),
    ];

    var homeList = Container(
      child: Column(
        children: list,
      ),
    );

    var homeT = Container(
      padding: EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          card,
          homeList,
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('我的'),
      ),
      body: ListView(
        children: <Widget>[card, homeList],
      )
    );
  }
}
