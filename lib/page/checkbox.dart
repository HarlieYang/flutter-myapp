import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key key}) : super(key: key);

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  var flag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkbox'),
      ),
      body: Column(
        children: [
          Checkbox(
            value: this.flag,
            onChanged: (newValue) {
              setState(() {
                this.flag = newValue;
              });
            },
            activeColor: Colors.red,
          ),
          Text(this.flag ? '选中' : '未选中'),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            value: this.flag,
            onChanged: (newValue) {
              setState(() {
                this.flag = newValue;
              });
            },
            title: Text("一级标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.ac_unit),
          )
        ],
      ),
    );
  }
}
