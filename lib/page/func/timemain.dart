import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TimeMainPage extends StatefulWidget {
  TimeMainPage({Key key}) : super(key: key);

  @override
  _TimeMainPageState createState() => _TimeMainPageState();
}

class _TimeMainPageState extends State<TimeMainPage> {
  // var time = DateTime.now();
  DateTime _nowTime = DateTime.now();
  TimeOfDay _dayTime = TimeOfDay.now();
  @override
  void initState() {
    super.initState();
    // 官方组件
    print('当前日期$_nowTime');
    print('时间戳${_nowTime.millisecondsSinceEpoch}');
    print(
        '时间戳转成日期${DateTime.fromMillisecondsSinceEpoch(_nowTime.millisecondsSinceEpoch)}');
    // 第三方组件
    print(formatDate(DateTime(1989, 02, 21), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('官方组件示例'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  print('点击');
                  showDatePicker(
                    context: context,
                    initialDate: _nowTime,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000),
                  ).then((value) {
                    print('日期$value');
                    setState(() {
                      _nowTime = value;
                    });
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${formatDate(_nowTime, [
                      yyyy,
                      '年',
                      mm,
                      '月',
                      dd,
                      '日'
                    ])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  var nowTime = await showTimePicker(
                    context: context,
                    // initialTime: TimeOfDay(
                    //   hour: _nowTime.hour,
                    //   minute: _nowTime.minute,
                    // ),
                    initialTime: _dayTime,
                  );
                  print('nowTime$nowTime');
                  setState(() {
                    _dayTime = nowTime;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("${this._dayTime.format(context)}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
