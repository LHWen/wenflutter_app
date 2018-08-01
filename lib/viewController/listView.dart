import 'package:flutter/material.dart';

class MyListViewApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new MyListViewHome(),
    );
  }
}

class MyListViewHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyListViewHome> {
  final _suggestions = [
    'CineArts at the Empire',
    'The Castro Theater',
    'Alamo Drafthouse Cinema',
    'Roxie Theater',
    'United Artists Stonestown Twin',
    'AMC Metreon 16',
    'K\'s Kitchen',
    'Emmy\'s Restaurant',
    'Chaiya Thai Restaurant',
    'La Ciccia',
  ];
  final _subTitle = [
    '85 W Portal Ave',
    '429 Castro St',
    '2550 Mission St',
    '3117 16th St',
    '501 Buckingham Way',
    '291 30th St',
    '757 Monterey Blvd',
    '1923 Ocean Ave',
    '272 Claremont Blvd',
    '291 30th St',
  ];
  final _iconD = [
    Icons.theaters,
    Icons.backspace,
    Icons.queue_music,
    Icons.restaurant,
    Icons.radio,
    Icons.rate_review,
    Icons.timer,
    Icons.tab_unselected,
    Icons.tablet,
    Icons.ac_unit,
    Icons.airplay,
    Icons.pages,
  ];

  List<Widget> _buildList(int count) {
    List<Widget> containers = List<Widget>.generate(
      count,
      (int index) => ListTile(
            title: Text(
              _suggestions[index],
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
            ),
            subtitle: Text(_subTitle[index]),
            leading: Icon(
              _iconD[index],
              color: Colors.blue[500],
            ),
          ),
    );
    return containers;
  }

  List<Widget> _buildListView(int count) {
    List<Widget> listArr = [];

    for (int i=0; i<count; i++) {
      var listTitle = ListTile(
        title: Text(
          _suggestions[i],
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        subtitle: Text(_subTitle[i]),
        leading: Icon(
          _iconD[i],
          color: Colors.blue[500],
        ),
      );

      listArr.add(listTitle);
      listArr.add(Divider());
    }
    return listArr;
  }

  List<Widget> list = <Widget>[
    ListTile(
      title: Text(
        'CineArts at the Empire',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
      ),
      subtitle: Text('85 W Portal Ave'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text(
        'The Castro Theater',
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
      ),
      subtitle: Text('429 Castro St'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('Alamo Drafthouse Cinema',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('2550 Mission St'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('Roxie Theater',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('3117 16th St'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('United Artists Stonestown Twin',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('501 Buckingham Way'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('AMC Metreon 16',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('135 4th St #3000'),
      leading: Icon(
        Icons.theaters,
        color: Colors.blue[500],
      ),
    ),
    Divider(),
    ListTile(
      title: Text('K\'s Kitchen',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('757 Monterey Blvd'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('Emmy\'s Restaurant',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('1923 Ocean Ave'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('Chaiya Thai Restaurant',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('272 Claremont Blvd'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
    ListTile(
      title: Text('La Ciccia',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
      subtitle: Text('291 30th St'),
      leading: Icon(
        Icons.restaurant,
        color: Colors.blue[500],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
//          children: list,
//          children: _buildList(_suggestions.length),
        children: _buildListView(_suggestions.length),
        ),
      ),
    );
  }
}
