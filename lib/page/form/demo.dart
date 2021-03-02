import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  final Map arguments;
  FormDemoPage({Key key, this.arguments}) : super(key: key);

  @override
  _FormDemoPageState createState() =>
      _FormDemoPageState(arguments: this.arguments);
}

class _FormDemoPageState extends State<FormDemoPage> {
  final Map arguments;
  String username;
  int sex = 1;
  String info;
  List<Map> hobby = [
    {'title': '吃饭', 'checked': false},
    {'title': '看电视', 'checked': false},
    {'title': '运动', 'checked': false}
  ];

  List<Widget> widgetHobby() {
    List<Widget> list = [];
    for (var i = 0; i < hobby.length; i++) {
      list.add(
        CheckboxListTile(
          title: Text(this.hobby[i]['title']),
          value: this.hobby[i]['checked'],
          onChanged: (v) {
            setState(() {
              this.hobby[i]['checked'] = v;
            });
          },
        ),
      );
    }
    return list;
  }

  _FormDemoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学院管理系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '输入用户名称',
                // border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('男'),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                ),
                Text('女'),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (value) {
                    setState(() {
                      this.sex = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(children: this.widgetHobby()),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '描述信息',
                border: OutlineInputBorder(),
              ),
              onChanged: (v) {
                setState(() {
                  this.info = v;
                });
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  print('用户名----:${this.username}');
                  print('性别----:${this.sex}');
                  print('爱好----:${this.hobby}');
                  print('描述----:${this.info}');
                },
                child: Text('提交'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
