import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form表单'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('input 表单'),
            subtitle: Text('表单的示例'),
            onTap: () {
              Navigator.pushNamed(context, '/textField');
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('radio 表单'),
            subtitle: Text('radio 示例'),
            onTap: () {
              Navigator.pushNamed(context, '/radiobox');
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('switch 开关'),
            subtitle: Text('switch 示例'),
            onTap: () {
              Navigator.pushNamed(context, '/radiobox');
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('checkbox 多选框'),
            subtitle: Text('checkbox 示例'),
            onTap: () {
              Navigator.pushNamed(context, '/checkbox');
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('demo-学员管理系统'),
            subtitle: Text('学员管理系统 示例'),
            onTap: () {
              Navigator.pushNamed(context, '/formdemo');
            },
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
