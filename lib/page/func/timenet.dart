import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class TimeNetPage extends StatefulWidget {
  const TimeNetPage({Key key}) : super(key: key);

  @override
  _TimeNetPageState createState() => _TimeNetPageState();
}

class _TimeNetPageState extends State<TimeNetPage> {
  DateTime _currentTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    _showDatePicker() {
      DatePicker.showDatePicker(context,
          minDateTime: DateTime.parse('2020-01-01'),
          maxDateTime: DateTime.parse('2030-01-01'),
          initialDateTime: this._currentTime,
          locale: DateTimePickerLocale.zh_cn,
          // dateFormat: 'yyyy-MM-dd',
          dateFormat: 'yyyy年MM月dd日 EEE,H时:m分', // dateFormat结合pickerModes使用
          pickerMode: DateTimePickerMode.datetime,
          pickerTheme: DateTimePickerTheme.Default,
          onCancel: () {},
          onClose: () {},
          onChange: (dateTime, index) {}, onConfirm: (dateTime, index) {
        setState(() {
          this._currentTime = dateTime;
        });
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('第三方时间示例'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              _showDatePicker();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${formatDate(this._currentTime, [
                  yyyy,
                  '年',
                  mm,
                  '月',
                  dd,
                  '日',
                  HH,
                  ':',
                  mm,
                ])}'),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          )
        ],
      ),
    );
  }
}
