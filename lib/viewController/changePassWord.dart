import 'package:flutter/material.dart';

class ChangePassWord extends StatelessWidget {

  final String oldPwd;
  ChangePassWord(this.oldPwd);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: new ChangePassWordHome(oldPwd),
    );
  }
}

class ChangePassWordHome extends StatefulWidget {

  final String oldPwd;
  ChangePassWordHome(this.oldPwd);

  @override
  _MyHomePageState createState() => new _MyHomePageState(oldPwd);
}

class _MyHomePageState extends State<ChangePassWordHome> {

  final String oldPwd;
  _MyHomePageState(this.oldPwd);

  TextEditingController controller;
  String oldPassword = '';
  String newPassword = '';
  String surePassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: '请输入旧密码',
              helperText: '密码由数组、字母、特殊符号(必须包含一个)组成，长度6~12位',
              ),
              onChanged: _onChange,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: '请输入新密码',
              ),
              onChanged: _newPasswordChange,
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: '请确认新密码',
              ),
              onChanged: _sureNewPasswordChange,
             ),
            Container(
//              padding: EdgeInsets.all(13.0),
              margin: EdgeInsets.fromLTRB(13.0, 66.0, 13.0, 0.0),
              height: 44.0,
              color: Colors.blue[500],
              child: FlatButton(
                  onPressed: (){
                    print('change password\nold pwd: ' + oldPassword + '\nnew pwd: '+ newPassword+ '\nsure new pwd: ' + surePassword);
                  },
                  child: Text('确认修改', style: TextStyle(color: Colors.white, fontSize: 16.0))),
            ),
          ],
        ),
      ),
    );
  }

  void _onChange(String value) {
    setState(() {
      print('旧密码输入：' + value);
      oldPassword = value;
    });
  }

  void _newPasswordChange(String value) {
    setState(() {
      print('新密码输入: ' + value);
      newPassword = value;
    });
  }

  void _sureNewPasswordChange(String value) {
    setState(() {
      print('新密码确认: ' + value);
      surePassword = value;
    });
  }
  
}