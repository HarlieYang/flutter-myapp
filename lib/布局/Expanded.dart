import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200.0,
          color: Colors.black,
          child: Center(
            child: Text(
              'HarlieYang',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          child: Row(
            children: [
              Expanded(
                child: Image.network(
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1129084263,3532636474&fm=26&gp=0.jpg",
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 150,
                child: Column(
                  children: [
                    Image.network(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c",
                      width: 150,
                      height: 95.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.network(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c",
                      width: 150,
                      height: 95.0,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              )
              // Expanded(
              //     child: Padding(
              //   padding: EdgeInsets.fromLTRB(0, 10, 10, 0),

              // ))
            ],
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
