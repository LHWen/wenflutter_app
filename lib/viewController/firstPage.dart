import 'package:flutter/material.dart';
import 'testFirstPush.dart';
import 'columnImage.dart';
import 'expandedWidget.dart';
import 'gather.dart';
import 'listOrRow.dart';
import 'container.dart';
import 'gridView.dart';
import 'listView.dart';
import 'stack.dart';
import 'cardList.dart';

class FirstPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new FirstPageHome(),
    );
  }
}

class FirstPageHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<FirstPageHome> {
  final _suggestions = [
    'Row Center Image',
    'Column Center Image',
    'Expanded Widget',
    '聚集 widgets',
    '嵌套行和列',
    'Container',
    'GridView',
    'ListView',
    'Stack',
    'Card'
  ];

  final _detailStr = [
    '行 均匀分布',
    '列 均匀分布',
    '中间图比较大，显示为比其他2倍大',
    '聚集，星星的评论',
    '行列聚集嵌套布局,综合性布局',
    '图片显示，添加边框,均匀分布',
    '图片的展示，可滑动',
    '列表',
    '图片覆盖叠加层次显示',
    '卡片样式'
  ];

  List<Widget> _buildListView(int count) {
    List<Widget> listArr = [];
    for (int i = 0; i < count; i++) {
      var listTitle = ListTile(
        title: Text(
          _suggestions[i],
          style: TextStyle(fontSize: 16.0),
        ),
        subtitle: Text(_detailStr[i]),
        onTap: () {
          setState(() {
            print(_suggestions[i]);
            _pushSaved(_suggestions[i], i);
          });
        },
        trailing:
            new Icon(Icons.keyboard_arrow_right, color: Colors.grey), // 箭头显示
      );

      listArr.add(listTitle);
      listArr.add(Divider());
    }
    return listArr;
  }

  void _pushSaved(String NavTitle, int i) {
    List<Widget> bodWidgetArr = [
      MyFirstApp(),
      MyColumnApp(),
      MyExpandedApp(),
      MyGatherApp(),
      MyListRowApp(),
      MyContainerApp(),
      MyGridViewApp(),
      MyListViewApp(),
      MyStackApp(),
      MyCardListApp()
    ];

    // 添加Navigator.push调用
    Navigator.of(context).push(
      // 添加MaterialPageRoute及其builder
      new MaterialPageRoute(
        builder: (context) {
          // builder返回一个Scaffold，其中包含名为“Saved Suggestions”的新路由的应用栏。 新路由的body由包含ListTiles行的ListView组成; 每行之间通过一个分隔线分隔。
          return new Scaffold(
            appBar: new AppBar(
              title: new Text(NavTitle),
            ),
            body: bodWidgetArr[i],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
        ),
        body: ListView(
          children: _buildListView(_suggestions.length),
        ));
  }
}
