import 'dart:io';
import 'package:flutter/material.dart';

// 引入插件
import 'package:device_info/device_info.dart';

class DevicePage extends StatefulWidget {
  DevicePage({Key key}) : super(key: key);
  @override
  _DevicePageState createState() => new _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  String deviceId;
  @override
  void initState() {
    super.initState();
    // 获取设备信息
    this._getDeviceInfo();
  }

  _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceId = iosInfo.identifierForVendor;
      print('设备唯一标识：$deviceId');
    } else {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceId = androidInfo.androidId;
      print('设备唯一标识：$deviceId');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              title: Text("设备信息"),
            ),
            body: Text('${this.deviceId}')));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new DevicePage(),
    );
  }
}

void main() => runApp(new MyApp());
