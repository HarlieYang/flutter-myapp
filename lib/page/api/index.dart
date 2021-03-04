import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  ApiPage({Key key}) : super(key: key);

  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  List beacons = [];
  var userInfo;
  @override
  void initState() {
    super.initState();
    this._getRequest();
  }

  // get 请求
  _getRequest() async {
    var httpUrl =
        'https://bhapp.jirentech.com.cn/api/building/00020001/beacons';
    var data = await http.get(httpUrl);
    print('data${data.statusCode}');
    print('data${data.body}');
    print('data${json.decode(data.body)}');
    setState(() {
      var result = json.decode(data.body);
      print(result);
      this.beacons = result['beacons'];
    });
  }

  // post 请求
  _postRequest() async {
    var httpUrl = 'https://bhapp.jirentech.com.cn/user/login';
    var data = await http.post(
      httpUrl,
      // headers: {'Content-Type': 'application/json; charset=utf-8'},
      body: json.encode({'Phone': '18116462666', 'Password': '123456789'}),
    );
    print('data${data.statusCode}');
    print('data${data.body}');
    this.setState(() {
      this.userInfo = json.decode(data.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('接口请求'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Map userInfo = {'name': 'huihui', 'age': 20};
              // Map类型准换成字符串
              var a = json.encode(userInfo);
              print(a);
              print(userInfo is Map);
              print(a is String);
              // 字符串转换成Map
              String userInfo2 = '{"name": "huihui", "age": 20}';
              var b = json.decode(userInfo2);
              print('b$b');
            },
            child: Text('json和Map类型转换'),
          ),
          ElevatedButton(
            onPressed: () {
              this._getRequest();
            },
            child: Text('Http get 请求'),
          ),
          ElevatedButton(
            onPressed: () {
              this._postRequest();
            },
            child: Text('Http post 请求'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/dio');
            },
            child: Text('dfdf'),
          ),
          Row(
            children: [
              Column(
                children: this.beacons.map((value) {
                  print('value$value');
                  return Text(value['uuid']);
                }).toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
