import 'dart:async';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDialog extends Dialog {
  String title;
  String content;
  MyDialog(this.title, this.content);
  // 定时器
  _showTimer(context) {
    var timer = Timer.periodic(
      Duration(milliseconds: 3000),
      (t) {
        print('关闭');
        Navigator.pop(context);
        t.cancel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(this.title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(this.content),
              )
            ],
          ),
        ),
      ),
    );
  }
}
