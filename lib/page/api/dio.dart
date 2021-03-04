import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  List beacons = [];
  @override
  void initState() {
    super.initState();
    this._getDio();
    this._postDio();
  }

  _getDio() async {
    var httpUrl =
        'https://bhapp.jirentech.com.cn/api/building/00020001/beacons';
    var dio = Dio();
    Response result = await dio.get(httpUrl);
    print('data-----${result.statusCode}');
    if (result.statusCode == 200) {
      setState(() {
        this.beacons = result.data['beacons'];
      });
    }
    print('data-----${this.beacons}');
  }

  _postDio() async {
    var httpUrl = 'https://bhapp.jirentech.com.cn/user/login';
    var dio = Dio();
    const data = {'Phone': '18116462666', 'Password': '123456789'};
    Response result = await dio.post(httpUrl, data: data);
    print('data-----${result.statusCode}');
    if (result.statusCode == 200) {
      print('data-----${result.data}');
      // setState(() {
      //   this.beacons = result.data['beacons'];
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dio'),
      ),
      body: Scaffold(
        body: Container(
          child: Column(
            children: (this.beacons).map((value) {
              return ListTile(
                title: Text(value['uuid']),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
