import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String sex = '1';
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkbox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            children: [
              Text('男'),
              Radio(
                value: '1',
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    print('男----$v');
                    this.sex = v;
                  });
                },
              ),
              Text('女'),
              Radio(
                value: '2',
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    print('女----$v');
                    this.sex = v;
                  });
                },
              )
            ],
          ),
          Row(
            children: [
              Text('${this.sex}'),
              Text(this.sex == '1' ? '男' : '女'),
            ],
          ),
          RadioListTile(
            title: Text("男"),
            subtitle: Text("副标题"),
            secondary: Icon(Icons.ac_unit),
            value: '1',
            groupValue: this.sex,
            selected: this.sex == '1',
            onChanged: (v) {
              setState(() {
                this.sex = v;
                this.flag = true;
              });
            },
          ),
          RadioListTile(
            title: Text("女"),
            subtitle: Text("副标题"),
            secondary: Icon(Icons.ac_unit),
            value: '2',
            groupValue: this.sex,
            selected: this.sex == '2',
            onChanged: (v) {
              setState(() {
                this.sex = v;
                this.flag = false;
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          Switch(
            value: this.flag,
            onChanged: (v) {
              setState(() {
                this.flag = v;
              });
            },
          )
        ]),
      ),
    );
  }
}
