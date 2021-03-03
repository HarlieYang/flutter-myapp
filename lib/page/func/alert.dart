import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myapp/components/mydialog.dart';

class AlertPage extends StatefulWidget {
  AlertPage({Key key}) : super(key: key);

  @override
  _AlertPageState createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  _showFun() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('删除'),
          content: Text('确认取消吗'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'cancel');
              },
              child: Text('取消'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'ok');
              },
              child: Text('确定'),
            )
          ],
        );
      },
    );
  }

  _selectFun() async {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: [
              SimpleDialogOption(
                child: Text('1'),
              ),
              SimpleDialogOption(
                child: Text('2'),
              ),
              SimpleDialogOption(
                child: Text('3'),
              ),
              SimpleDialogOption(
                child: Text('4'),
              )
            ],
          );
        });
  }

  _bottomFun() async {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200.0,
          child: Column(
            children: [
              ListTile(
                title: Text('分享一'),
              ),
              Divider(color: Colors.black),
              ListTile(
                title: Text('分享二'),
              ),
              Divider(color: Colors.black),
              ListTile(
                title: Text('分享三'),
              )
            ],
          ),
        );
      },
    );
  }

  _toastFun() async {
    Fluttertoast.showToast(
      msg: '提示信息',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹框'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _showFun();
              },
              child: Text('alert弹框'),
            ),
            ElevatedButton(
              onPressed: () {
                _selectFun();
              },
              child: Text('select弹框'),
            ),
            ElevatedButton(
              onPressed: () {
                _bottomFun();
              },
              child: Text('底部弹框'),
            ),
            ElevatedButton(
              onPressed: () {
                _toastFun();
              },
              child: Text('toast弹框'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return MyDialog('关于我们', 'contentcontent');
                    });
              },
              child: Text('自定义Dialog弹框'),
            )
          ],
        ),
      ),
    );
  }
}
