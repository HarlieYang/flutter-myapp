import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget {
  TextFiledPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<TextFiledPage> {
  var username = TextEditingController(); // 设置初始值
  var _password;
  @override
  void initState() {
    super.initState();
    this.username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('form组件'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: username,
                onChanged: (value) => {
                  // 不推荐
                  // setState(() {
                  //   this.username.text = value;
                  // });
                },
              ),
              TextField(
                onChanged: (value) {
                  this._password = value;
                  print('value${this._password}');
                  // setState(() {
                  //   this.username.text = value;
                  // });
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '请输入名称',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: '多行文本框',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '密码框',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  labelText: '文本框',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'icon文本框',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ));
  }
}
