import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  MinePage({Key key}) : super(key: key);
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => {
            print('跳转到搜索页面'),
            Navigator.pushNamed(
              context,
              '/search',
              arguments: {
                "title": "参数传递",
              },
            )
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return Search();
            //     },
            //   ),
            // ),
          },
          child: Text('搜索页面'),
        )
      ],
    );
  }
}
